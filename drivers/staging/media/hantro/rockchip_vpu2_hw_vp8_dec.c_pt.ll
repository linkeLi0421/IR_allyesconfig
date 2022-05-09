; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c"
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
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
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

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c\00", [40 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str.3, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vp8_dec_lf_level = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 516, i32 18, i32 63 }, %struct.hantro_reg { i32 516, i32 12, i32 63 }, %struct.hantro_reg { i32 516, i32 6, i32 63 }, %struct.hantro_reg { i32 516, i32 0, i32 63 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_mb_adj = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 528, i32 21, i32 127 }, %struct.hantro_reg { i32 528, i32 14, i32 127 }, %struct.hantro_reg { i32 528, i32 7, i32 127 }, %struct.hantro_reg { i32 528, i32 0, i32 127 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_ref_adj = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 532, i32 21, i32 127 }, %struct.hantro_reg { i32 532, i32 14, i32 127 }, %struct.hantro_reg { i32 532, i32 7, i32 127 }, %struct.hantro_reg { i32 532, i32 0, i32 127 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_quant = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 520, i32 11, i32 2047 }, %struct.hantro_reg { i32 520, i32 0, i32 2047 }, %struct.hantro_reg { i32 604, i32 11, i32 2047 }, %struct.hantro_reg { i32 604, i32 0, i32 2047 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_dct_base = internal constant { [8 x %struct.hantro_reg], [32 x i8] } { [8 x %struct.hantro_reg] [%struct.hantro_reg { i32 256, i32 0, i32 -1 }, %struct.hantro_reg { i32 560, i32 0, i32 -1 }, %struct.hantro_reg { i32 564, i32 0, i32 -1 }, %struct.hantro_reg { i32 568, i32 0, i32 -1 }, %struct.hantro_reg { i32 572, i32 0, i32 -1 }, %struct.hantro_reg { i32 576, i32 0, i32 -1 }, %struct.hantro_reg { i32 584, i32 0, i32 -1 }, %struct.hantro_reg { i32 588, i32 0, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@vp8_dec_dct_start_bits = internal constant { [8 x %struct.hantro_reg], [32 x i8] } { [8 x %struct.hantro_reg] [%struct.hantro_reg { i32 488, i32 26, i32 63 }, %struct.hantro_reg { i32 484, i32 26, i32 63 }, %struct.hantro_reg { i32 484, i32 20, i32 63 }, %struct.hantro_reg { i32 600, i32 24, i32 63 }, %struct.hantro_reg { i32 600, i32 18, i32 63 }, %struct.hantro_reg { i32 600, i32 12, i32 63 }, %struct.hantro_reg { i32 600, i32 6, i32 63 }, %struct.hantro_reg { i32 600, i32 0, i32 63 }], [32 x i8] zeroinitializer }, align 32
@vp8_dec_pred_bc_tap = internal constant { [8 x [6 x %struct.hantro_reg]], [128 x i8] } { [8 x [6 x %struct.hantro_reg]] [[6 x %struct.hantro_reg] [%struct.hantro_reg zeroinitializer, %struct.hantro_reg { i32 236, i32 22, i32 1023 }, %struct.hantro_reg { i32 236, i32 12, i32 1023 }, %struct.hantro_reg { i32 236, i32 2, i32 1023 }, %struct.hantro_reg { i32 612, i32 22, i32 1023 }, %struct.hantro_reg zeroinitializer], [6 x %struct.hantro_reg] [%struct.hantro_reg zeroinitializer, %struct.hantro_reg { i32 612, i32 12, i32 1023 }, %struct.hantro_reg { i32 612, i32 2, i32 1023 }, %struct.hantro_reg { i32 616, i32 22, i32 1023 }, %struct.hantro_reg { i32 616, i32 12, i32 1023 }, %struct.hantro_reg zeroinitializer], [6 x %struct.hantro_reg] [%struct.hantro_reg { i32 512, i32 10, i32 3 }, %struct.hantro_reg { i32 616, i32 2, i32 1023 }, %struct.hantro_reg { i32 620, i32 22, i32 1023 }, %struct.hantro_reg { i32 620, i32 12, i32 1023 }, %struct.hantro_reg { i32 620, i32 2, i32 1023 }, %struct.hantro_reg { i32 512, i32 8, i32 3 }], [6 x %struct.hantro_reg] [%struct.hantro_reg zeroinitializer, %struct.hantro_reg { i32 624, i32 22, i32 1023 }, %struct.hantro_reg { i32 624, i32 12, i32 1023 }, %struct.hantro_reg { i32 624, i32 2, i32 1023 }, %struct.hantro_reg { i32 628, i32 22, i32 1023 }, %struct.hantro_reg zeroinitializer], [6 x %struct.hantro_reg] [%struct.hantro_reg { i32 512, i32 6, i32 3 }, %struct.hantro_reg { i32 628, i32 12, i32 1023 }, %struct.hantro_reg { i32 628, i32 2, i32 1023 }, %struct.hantro_reg { i32 632, i32 22, i32 1023 }, %struct.hantro_reg { i32 632, i32 12, i32 1023 }, %struct.hantro_reg { i32 512, i32 4, i32 3 }], [6 x %struct.hantro_reg] [%struct.hantro_reg zeroinitializer, %struct.hantro_reg { i32 632, i32 2, i32 1023 }, %struct.hantro_reg { i32 500, i32 22, i32 1023 }, %struct.hantro_reg { i32 500, i32 12, i32 1023 }, %struct.hantro_reg { i32 500, i32 2, i32 1023 }, %struct.hantro_reg zeroinitializer], [6 x %struct.hantro_reg] [%struct.hantro_reg { i32 512, i32 2, i32 3 }, %struct.hantro_reg { i32 504, i32 22, i32 1023 }, %struct.hantro_reg { i32 504, i32 12, i32 1023 }, %struct.hantro_reg { i32 504, i32 2, i32 1023 }, %struct.hantro_reg { i32 508, i32 22, i32 1023 }, %struct.hantro_reg { i32 512, i32 0, i32 3 }], [6 x %struct.hantro_reg] [%struct.hantro_reg zeroinitializer, %struct.hantro_reg { i32 508, i32 12, i32 1023 }, %struct.hantro_reg { i32 508, i32 2, i32 1023 }, %struct.hantro_reg { i32 512, i32 22, i32 1023 }, %struct.hantro_reg { i32 512, i32 12, i32 1023 }, %struct.hantro_reg zeroinitializer]], [128 x i8] zeroinitializer }, align 32
@hantro_vp8_dec_mc_filter = external dso_local local_unnamed_addr constant [8 x [6 x i32]], align 4
@cfg_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:%d: failed to find last frame ts=%llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfg_ref\00", [24 x i8] zeroinitializer }, align 32
@cfg_ref._entry_ptr = internal global ptr @cfg_ref._entry, section ".printk_index", align 4
@cfg_ref._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:%d: failed to find golden frame ts=%llu\0A\00", [50 x i8] zeroinitializer }, align 32
@cfg_ref._entry_ptr.9 = internal global ptr @cfg_ref._entry.7, section ".printk_index", align 4
@cfg_ref._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:%d: failed to find alt frame ts=%llu\0A\00", [53 x i8] zeroinitializer }, align 32
@cfg_ref._entry_ptr.12 = internal global ptr @cfg_ref._entry.10, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 522, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 392, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 413, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"vp8_dec_lf_level\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 90, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"vp8_dec_mb_adj\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 97, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"vp8_dec_ref_adj\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 104, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"vp8_dec_quant\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 111, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"vp8_dec_dct_base\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 79, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"vp8_dec_dct_start_bits\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 126, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"vp8_dec_pred_bc_tap\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 137, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 455, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 463, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [59 x i8] c"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 473, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @cfg_ref._entry, ptr @cfg_ref._entry.10, ptr @cfg_ref._entry.7, ptr @cfg_ref._entry_ptr, ptr @cfg_ref._entry_ptr.12, ptr @cfg_ref._entry_ptr.9, ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vp8_dec_lf_level, ptr @vp8_dec_mb_adj, ptr @vp8_dec_ref_adj, ptr @vp8_dec_quant, ptr @vp8_dec_dct_base, ptr @vp8_dec_dct_start_bits, ptr @vp8_dec_pred_bc_tap, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_lf_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_mb_adj to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_ref_adj to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_quant to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_dct_base to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_dct_start_bits to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_pred_bc_tap to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ref._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ref._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_vpu2_vp8_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !76

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 522, i32 noundef 9, ptr noundef null) #4
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
  %codec_ops = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 11
  %14 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %codec_ops, align 4
  %reset = getelementptr inbounds %struct.hantro_codec_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 4
  tail call void %17(ptr noundef %ctx) #4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %and35 = and i64 %19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  %spec.select = select i1 %tobool36.not, i32 16432, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %20 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end33.vdpu_write_relaxed.exit_crit_edge, label %do.end.i

if.end33.vdpu_write_relaxed.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 57, i32 noundef %spec.select) #7
  br label %vdpu_write_relaxed.exit

vdpu_write_relaxed.exit:                          ; preds = %do.end.i, %if.end33.vdpu_write_relaxed.exit_crit_edge
  %21 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #4
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #4, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %24 = load i32, ptr @hantro_debug, align 4
  %and.i137 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool.not.i138 = icmp eq i32 %and.i137, 0
  br i1 %tobool.not.i138, label %vdpu_write_relaxed.exit.vdpu_write_relaxed.exit143_crit_edge, label %do.end.i140

vdpu_write_relaxed.exit.vdpu_write_relaxed.exit143_crit_edge: ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit143

do.end.i140:                                      ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 54, i32 noundef 63) #7
  br label %vdpu_write_relaxed.exit143

vdpu_write_relaxed.exit143:                       ; preds = %do.end.i140, %vdpu_write_relaxed.exit.vdpu_write_relaxed.exit143_crit_edge
  %25 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %26, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 1056964608) #4, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %27 = load i32, ptr @hantro_debug, align 4
  %and.i144 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %vdpu_write_relaxed.exit143.vdpu_write_relaxed.exit150_crit_edge, label %do.end.i147

vdpu_write_relaxed.exit143.vdpu_write_relaxed.exit150_crit_edge: ; preds = %vdpu_write_relaxed.exit143
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit150

do.end.i147:                                      ; preds = %vdpu_write_relaxed.exit143
  call void @__sanitizer_cov_trace_pc() #6
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 56, i32 noundef 1048576) #7
  br label %vdpu_write_relaxed.exit150

vdpu_write_relaxed.exit150:                       ; preds = %do.end.i147, %vdpu_write_relaxed.exit143.vdpu_write_relaxed.exit150_crit_edge
  %28 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i149 = getelementptr i8, ptr %29, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 4096) #4, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %30 = load i32, ptr @hantro_debug, align 4
  %and.i151 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool.not.i152 = icmp eq i32 %and.i151, 0
  br i1 %tobool.not.i152, label %vdpu_write_relaxed.exit150.vdpu_write_relaxed.exit157_crit_edge, label %do.end.i154

vdpu_write_relaxed.exit150.vdpu_write_relaxed.exit157_crit_edge: ; preds = %vdpu_write_relaxed.exit150
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit157

do.end.i154:                                      ; preds = %vdpu_write_relaxed.exit150
  call void @__sanitizer_cov_trace_pc() #6
  %call.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 53, i32 noundef 10) #7
  br label %vdpu_write_relaxed.exit157

vdpu_write_relaxed.exit157:                       ; preds = %do.end.i154, %vdpu_write_relaxed.exit150.vdpu_write_relaxed.exit157_crit_edge
  %31 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i156 = getelementptr i8, ptr %32, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 167772160) #4, !srcloc !77
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags, align 8
  %and40 = and i64 %34, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %vdpu_write_relaxed.exit157.if.end43_crit_edge

vdpu_write_relaxed.exit157.if.end43_crit_edge:    ; preds = %vdpu_write_relaxed.exit157
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then42:                                        ; preds = %vdpu_write_relaxed.exit157
  %35 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 200
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !78
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %39 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then42.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

if.then42.vdpu_read_mask.exit.i_crit_edge:        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 50, i32 noundef %38) #7
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %if.then42.vdpu_read_mask.exit.i_crit_edge
  %or.i.i = or i32 %38, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %40 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 50, i32 noundef %or.i.i) #7
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %42 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #4, !srcloc !77
  br label %if.end43

if.end43:                                         ; preds = %hantro_reg_write.exit, %vdpu_write_relaxed.exit157.if.end43_crit_edge
  %level = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp = icmp eq i8 %45, 0
  br i1 %cmp, label %if.then45, label %if.end43.if.end46_crit_edge

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  %46 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i159 = getelementptr i8, ptr %47, i32 200
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i159) #4, !srcloc !78
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %50 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i160 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i160)
  %tobool.not.i.i.i161 = icmp eq i32 %and.i.i.i160, 0
  br i1 %tobool.not.i.i.i161, label %if.then45.vdpu_read_mask.exit.i168_crit_edge, label %do.end.i.i.i163

if.then45.vdpu_read_mask.exit.i168_crit_edge:     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i168

do.end.i.i.i163:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 50, i32 noundef %49) #7
  br label %vdpu_read_mask.exit.i168

vdpu_read_mask.exit.i168:                         ; preds = %do.end.i.i.i163, %if.then45.vdpu_read_mask.exit.i168_crit_edge
  %or.i.i165 = or i32 %49, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %51 = load i32, ptr @hantro_debug, align 4
  %and.i3.i166 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i166)
  %tobool.not.i.i167 = icmp eq i32 %and.i3.i166, 0
  br i1 %tobool.not.i.i167, label %vdpu_read_mask.exit.i168.hantro_reg_write.exit172_crit_edge, label %do.end.i.i170

vdpu_read_mask.exit.i168.hantro_reg_write.exit172_crit_edge: ; preds = %vdpu_read_mask.exit.i168
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit172

do.end.i.i170:                                    ; preds = %vdpu_read_mask.exit.i168
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 50, i32 noundef %or.i.i165) #7
  br label %hantro_reg_write.exit172

hantro_reg_write.exit172:                         ; preds = %do.end.i.i170, %vdpu_read_mask.exit.i168.hantro_reg_write.exit172_crit_edge
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165) #4
  %53 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i171 = getelementptr i8, ptr %54, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i171, i32 %52) #4, !srcloc !77
  br label %if.end46

if.end46:                                         ; preds = %hantro_reg_write.exit172, %if.end43.if.end46_crit_edge
  %sub = add i32 %5, 15
  %sub48 = add i32 %3, 15
  %55 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i174 = getelementptr i8, ptr %56, i32 480
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i174) #4, !srcloc !78
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %59 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i175 = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i175)
  %tobool.not.i.i.i176 = icmp eq i32 %and.i.i.i175, 0
  br i1 %tobool.not.i.i.i176, label %if.end46.vdpu_read_mask.exit.i183_crit_edge, label %do.end.i.i.i178

if.end46.vdpu_read_mask.exit.i183_crit_edge:      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i183

do.end.i.i.i178:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 120, i32 noundef %58) #7
  br label %vdpu_read_mask.exit.i183

vdpu_read_mask.exit.i183:                         ; preds = %do.end.i.i.i178, %if.end46.vdpu_read_mask.exit.i183_crit_edge
  %and.i.i179 = and i32 %58, 8388607
  %60 = shl i32 %sub, 19
  %and2.i.i = and i32 %60, -8388608
  %or.i.i180 = or i32 %and.i.i179, %and2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %61 = load i32, ptr @hantro_debug, align 4
  %and.i3.i181 = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i181)
  %tobool.not.i.i182 = icmp eq i32 %and.i3.i181, 0
  br i1 %tobool.not.i.i182, label %vdpu_read_mask.exit.i183.hantro_reg_write.exit187_crit_edge, label %do.end.i.i185

vdpu_read_mask.exit.i183.hantro_reg_write.exit187_crit_edge: ; preds = %vdpu_read_mask.exit.i183
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit187

do.end.i.i185:                                    ; preds = %vdpu_read_mask.exit.i183
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 120, i32 noundef %or.i.i180) #7
  br label %hantro_reg_write.exit187

hantro_reg_write.exit187:                         ; preds = %do.end.i.i185, %vdpu_read_mask.exit.i183.hantro_reg_write.exit187_crit_edge
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i.i180) #4
  %63 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i186 = getelementptr i8, ptr %64, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i186, i32 %62) #4, !srcloc !77
  %65 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i189 = getelementptr i8, ptr %66, i32 480
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i189) #4, !srcloc !78
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %69 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i190 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i190)
  %tobool.not.i.i.i191 = icmp eq i32 %and.i.i.i190, 0
  br i1 %tobool.not.i.i.i191, label %hantro_reg_write.exit187.vdpu_read_mask.exit.i200_crit_edge, label %do.end.i.i.i193

hantro_reg_write.exit187.vdpu_read_mask.exit.i200_crit_edge: ; preds = %hantro_reg_write.exit187
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i200

do.end.i.i.i193:                                  ; preds = %hantro_reg_write.exit187
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 120, i32 noundef %68) #7
  br label %vdpu_read_mask.exit.i200

vdpu_read_mask.exit.i200:                         ; preds = %do.end.i.i.i193, %hantro_reg_write.exit187.vdpu_read_mask.exit.i200_crit_edge
  %and.i.i194 = and i32 %68, -522241
  %70 = shl i32 %sub48, 7
  %shl4.i.i196 = and i32 %70, 522240
  %or.i.i197 = or i32 %and.i.i194, %shl4.i.i196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %71 = load i32, ptr @hantro_debug, align 4
  %and.i3.i198 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i198)
  %tobool.not.i.i199 = icmp eq i32 %and.i3.i198, 0
  br i1 %tobool.not.i.i199, label %vdpu_read_mask.exit.i200.hantro_reg_write.exit204_crit_edge, label %do.end.i.i202

vdpu_read_mask.exit.i200.hantro_reg_write.exit204_crit_edge: ; preds = %vdpu_read_mask.exit.i200
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit204

do.end.i.i202:                                    ; preds = %vdpu_read_mask.exit.i200
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 120, i32 noundef %or.i.i197) #7
  br label %hantro_reg_write.exit204

hantro_reg_write.exit204:                         ; preds = %do.end.i.i202, %vdpu_read_mask.exit.i200.hantro_reg_write.exit204_crit_edge
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i197) #4
  %73 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i203 = getelementptr i8, ptr %74, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i203, i32 %72) #4, !srcloc !77
  %75 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i206 = getelementptr i8, ptr %76, i32 480
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i206) #4, !srcloc !78
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %79 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i207 = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i207)
  %tobool.not.i.i.i208 = icmp eq i32 %and.i.i.i207, 0
  br i1 %tobool.not.i.i.i208, label %hantro_reg_write.exit204.vdpu_read_mask.exit.i217_crit_edge, label %do.end.i.i.i210

hantro_reg_write.exit204.vdpu_read_mask.exit.i217_crit_edge: ; preds = %hantro_reg_write.exit204
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i217

do.end.i.i.i210:                                  ; preds = %hantro_reg_write.exit204
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 120, i32 noundef %78) #7
  br label %vdpu_read_mask.exit.i217

vdpu_read_mask.exit.i217:                         ; preds = %do.end.i.i.i210, %hantro_reg_write.exit204.vdpu_read_mask.exit.i217_crit_edge
  %and.i.i211 = and i32 %78, -57
  %80 = lshr i32 %sub, 10
  %shl4.i.i213 = and i32 %80, 56
  %or.i.i214 = or i32 %and.i.i211, %shl4.i.i213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %81 = load i32, ptr @hantro_debug, align 4
  %and.i3.i215 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i215)
  %tobool.not.i.i216 = icmp eq i32 %and.i3.i215, 0
  br i1 %tobool.not.i.i216, label %vdpu_read_mask.exit.i217.hantro_reg_write.exit221_crit_edge, label %do.end.i.i219

vdpu_read_mask.exit.i217.hantro_reg_write.exit221_crit_edge: ; preds = %vdpu_read_mask.exit.i217
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit221

do.end.i.i219:                                    ; preds = %vdpu_read_mask.exit.i217
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 120, i32 noundef %or.i.i214) #7
  br label %hantro_reg_write.exit221

hantro_reg_write.exit221:                         ; preds = %do.end.i.i219, %vdpu_read_mask.exit.i217.hantro_reg_write.exit221_crit_edge
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i.i214) #4
  %83 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i220 = getelementptr i8, ptr %84, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i220, i32 %82) #4, !srcloc !77
  %shr50 = lshr i32 %sub48, 12
  %85 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i223 = getelementptr i8, ptr %86, i32 480
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i223) #4, !srcloc !78
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %89 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i224 = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i224)
  %tobool.not.i.i.i225 = icmp eq i32 %and.i.i.i224, 0
  br i1 %tobool.not.i.i.i225, label %hantro_reg_write.exit221.vdpu_read_mask.exit.i233_crit_edge, label %do.end.i.i.i227

hantro_reg_write.exit221.vdpu_read_mask.exit.i233_crit_edge: ; preds = %hantro_reg_write.exit221
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i233

do.end.i.i.i227:                                  ; preds = %hantro_reg_write.exit221
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 120, i32 noundef %88) #7
  br label %vdpu_read_mask.exit.i233

vdpu_read_mask.exit.i233:                         ; preds = %do.end.i.i.i227, %hantro_reg_write.exit221.vdpu_read_mask.exit.i233_crit_edge
  %and.i.i228 = and i32 %88, -8
  %and2.i.i229 = and i32 %shr50, 7
  %or.i.i230 = or i32 %and.i.i228, %and2.i.i229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %90 = load i32, ptr @hantro_debug, align 4
  %and.i3.i231 = and i32 %90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i231)
  %tobool.not.i.i232 = icmp eq i32 %and.i3.i231, 0
  br i1 %tobool.not.i.i232, label %vdpu_read_mask.exit.i233.hantro_reg_write.exit237_crit_edge, label %do.end.i.i235

vdpu_read_mask.exit.i233.hantro_reg_write.exit237_crit_edge: ; preds = %vdpu_read_mask.exit.i233
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit237

do.end.i.i235:                                    ; preds = %vdpu_read_mask.exit.i233
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 120, i32 noundef %or.i.i230) #7
  br label %hantro_reg_write.exit237

hantro_reg_write.exit237:                         ; preds = %do.end.i.i235, %vdpu_read_mask.exit.i233.hantro_reg_write.exit237_crit_edge
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i.i230) #4
  %92 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i236 = getelementptr i8, ptr %93, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i236, i32 %91) #4, !srcloc !77
  %coder_state = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 4
  %94 = ptrtoint ptr %coder_state to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %coder_state, align 8
  %conv51 = zext i8 %95 to i32
  %96 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i239 = getelementptr i8, ptr %97, i32 488
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i239) #4, !srcloc !78
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %100 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i240 = and i32 %100, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i240)
  %tobool.not.i.i.i241 = icmp eq i32 %and.i.i.i240, 0
  br i1 %tobool.not.i.i.i241, label %hantro_reg_write.exit237.vdpu_read_mask.exit.i249_crit_edge, label %do.end.i.i.i243

hantro_reg_write.exit237.vdpu_read_mask.exit.i249_crit_edge: ; preds = %hantro_reg_write.exit237
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i249

do.end.i.i.i243:                                  ; preds = %hantro_reg_write.exit237
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 122, i32 noundef %99) #7
  br label %vdpu_read_mask.exit.i249

vdpu_read_mask.exit.i249:                         ; preds = %do.end.i.i.i243, %hantro_reg_write.exit237.vdpu_read_mask.exit.i249_crit_edge
  %and.i.i244 = and i32 %99, -256
  %or.i.i246 = or i32 %and.i.i244, %conv51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %101 = load i32, ptr @hantro_debug, align 4
  %and.i3.i247 = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i247)
  %tobool.not.i.i248 = icmp eq i32 %and.i3.i247, 0
  br i1 %tobool.not.i.i248, label %vdpu_read_mask.exit.i249.hantro_reg_write.exit253_crit_edge, label %do.end.i.i251

vdpu_read_mask.exit.i249.hantro_reg_write.exit253_crit_edge: ; preds = %vdpu_read_mask.exit.i249
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit253

do.end.i.i251:                                    ; preds = %vdpu_read_mask.exit.i249
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 122, i32 noundef %or.i.i246) #7
  br label %hantro_reg_write.exit253

hantro_reg_write.exit253:                         ; preds = %do.end.i.i251, %vdpu_read_mask.exit.i249.hantro_reg_write.exit253_crit_edge
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i.i246) #4
  %103 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i252 = getelementptr i8, ptr %104, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i252, i32 %102) #4, !srcloc !77
  %value = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %value, align 1
  %conv53 = zext i8 %106 to i32
  %107 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i255 = getelementptr i8, ptr %108, i32 488
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i255) #4, !srcloc !78
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %111 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i256 = and i32 %111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i256)
  %tobool.not.i.i.i257 = icmp eq i32 %and.i.i.i256, 0
  br i1 %tobool.not.i.i.i257, label %hantro_reg_write.exit253.vdpu_read_mask.exit.i266_crit_edge, label %do.end.i.i.i259

hantro_reg_write.exit253.vdpu_read_mask.exit.i266_crit_edge: ; preds = %hantro_reg_write.exit253
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i266

do.end.i.i.i259:                                  ; preds = %hantro_reg_write.exit253
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 122, i32 noundef %110) #7
  br label %vdpu_read_mask.exit.i266

vdpu_read_mask.exit.i266:                         ; preds = %do.end.i.i.i259, %hantro_reg_write.exit253.vdpu_read_mask.exit.i266_crit_edge
  %and.i.i260 = and i32 %110, -65281
  %shl4.i.i262 = shl nuw nsw i32 %conv53, 8
  %or.i.i263 = or i32 %and.i.i260, %shl4.i.i262
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %112 = load i32, ptr @hantro_debug, align 4
  %and.i3.i264 = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i264)
  %tobool.not.i.i265 = icmp eq i32 %and.i3.i264, 0
  br i1 %tobool.not.i.i265, label %vdpu_read_mask.exit.i266.hantro_reg_write.exit270_crit_edge, label %do.end.i.i268

vdpu_read_mask.exit.i266.hantro_reg_write.exit270_crit_edge: ; preds = %vdpu_read_mask.exit.i266
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit270

do.end.i.i268:                                    ; preds = %vdpu_read_mask.exit.i266
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 122, i32 noundef %or.i.i263) #7
  br label %hantro_reg_write.exit270

hantro_reg_write.exit270:                         ; preds = %do.end.i.i268, %vdpu_read_mask.exit.i266.hantro_reg_write.exit270_crit_edge
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i.i263) #4
  %114 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i269 = getelementptr i8, ptr %115, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i269, i32 %113) #4, !srcloc !77
  %116 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i272 = getelementptr i8, ptr %117, i32 484
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i272) #4, !srcloc !78
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %120 = load i32, ptr @hantro_debug, align 4
  %and.i273 = and i32 %120, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool.not.i274 = icmp eq i32 %and.i273, 0
  br i1 %tobool.not.i274, label %hantro_reg_write.exit270.vdpu_read.exit_crit_edge, label %do.end.i275

hantro_reg_write.exit270.vdpu_read.exit_crit_edge: ; preds = %hantro_reg_write.exit270
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit

do.end.i275:                                      ; preds = %hantro_reg_write.exit270
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 121, i32 noundef %119) #7
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i275, %hantro_reg_write.exit270.vdpu_read.exit_crit_edge
  %version = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 9
  %121 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %122)
  %cmp56.not = icmp eq i8 %122, 3
  %or59 = or i32 %119, 8192
  %spec.select136 = select i1 %cmp56.not, i32 %119, i32 %or59
  %123 = and i8 %122, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool64.not = icmp eq i8 %123, 0
  %or66 = or i32 %spec.select136, 4096
  %reg.2 = select i1 %tobool64.not, i32 %spec.select136, i32 %or66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %124 = load i32, ptr @hantro_debug, align 4
  %and.i276 = and i32 %124, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276)
  %tobool.not.i277 = icmp eq i32 %and.i276, 0
  br i1 %tobool.not.i277, label %vdpu_read.exit.vdpu_write_relaxed.exit282_crit_edge, label %do.end.i279

vdpu_read.exit.vdpu_write_relaxed.exit282_crit_edge: ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit282

do.end.i279:                                      ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 121, i32 noundef %reg.2) #7
  br label %vdpu_write_relaxed.exit282

vdpu_write_relaxed.exit282:                       ; preds = %do.end.i279, %vdpu_read.exit.vdpu_write_relaxed.exit282_crit_edge
  %125 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #4
  %126 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i281 = getelementptr i8, ptr %127, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %125) #4, !srcloc !77
  %lf1.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1
  %128 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctx, align 8
  %flags.i = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %call, i32 0, i32 4
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags.i, align 4
  %and.i283 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp eq i32 %and.i283, 0
  br i1 %tobool.not.i284, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %vdpu_write_relaxed.exit282
  %132 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %level, align 1
  %dec_base.i.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %129, i32 0, i32 11
  %134 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %135, i32 516
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #4, !srcloc !78
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %138 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i = and i32 %138, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.vdpu_read_mask.exit.i.i_crit_edge, label %do.end.i.i.i.i

if.then.i.vdpu_read_mask.exit.i.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 129, i32 noundef %137) #7
  br label %vdpu_read_mask.exit.i.i

vdpu_read_mask.exit.i.i:                          ; preds = %do.end.i.i.i.i, %if.then.i.vdpu_read_mask.exit.i.i_crit_edge
  %and.i.i.i285 = and i32 %137, -16515073
  %139 = and i8 %133, 63
  %and2.i.i.i = zext i8 %139 to i32
  %shl4.i.i.i = shl nuw nsw i32 %and2.i.i.i, 18
  %or.i.i.i = or i32 %and.i.i.i285, %shl4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %140 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i = and i32 %140, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i.i.i286 = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i.i.i286, label %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge, label %do.end.i.i.i287

vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge: ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i

do.end.i.i.i287:                                  ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 129, i32 noundef %or.i.i.i) #7
  br label %hantro_reg_write.exit.i

hantro_reg_write.exit.i:                          ; preds = %do.end.i.i.i287, %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge
  %141 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #4
  %142 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i288 = getelementptr i8, ptr %143, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i288, i32 %141) #4, !srcloc !77
  br label %if.end32.i

if.else.i:                                        ; preds = %vdpu_write_relaxed.exit282
  %and3.i = and i32 %131, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %dec_base.i.i.i108.i = getelementptr inbounds %struct.hantro_dev, ptr %129, i32 0, i32 11
  br i1 %tobool4.not.i, label %if.else.i.for.body24.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.for.body24.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body24.i

for.body.i:                                       ; preds = %hantro_reg_write.exit107.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.0178.i = phi i32 [ %inc.i, %hantro_reg_write.exit107.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %144 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %level, align 1
  %conv8.i = zext i8 %145 to i32
  %arrayidx.i = getelementptr %struct.v4l2_vp8_segment, ptr %call, i32 0, i32 1, i32 %i.0178.i
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = sext i8 %147 to i32
  %add.i = add nsw i32 %conv9.i, %conv8.i
  %148 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 0) #4
  %149 = tail call i32 @llvm.umin.i32(i32 %148, i32 63) #4
  %arrayidx19.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.0178.i
  %150 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx19.i, align 4
  %152 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i.i92.i = getelementptr i8, ptr %153, i32 %151
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i92.i) #4, !srcloc !78
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %156 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i93.i = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i93.i)
  %tobool.not.i.i.i94.i = icmp eq i32 %and.i.i.i93.i, 0
  br i1 %tobool.not.i.i.i94.i, label %for.body.i.vdpu_read_mask.exit.i103.i_crit_edge, label %do.end.i.i.i96.i

for.body.i.vdpu_read_mask.exit.i103.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i103.i

do.end.i.i.i96.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i = lshr i32 %151, 2
  %call4.i.i.i95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i, i32 noundef %155) #7
  br label %vdpu_read_mask.exit.i103.i

vdpu_read_mask.exit.i103.i:                       ; preds = %do.end.i.i.i96.i, %for.body.i.vdpu_read_mask.exit.i103.i_crit_edge
  %mask.i.i.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.0178.i, i32 2
  %157 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mask.i.i.i, align 4
  %shift.i.i.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.0178.i, i32 1
  %159 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %shift.i.i.i, align 4
  %shl.i.i.i = shl i32 %158, %160
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i97.i = and i32 %155, %neg.i.i.i
  %and2.i.i98.i = and i32 %158, %149
  %shl4.i.i99.i = shl i32 %and2.i.i98.i, %160
  %or.i.i100.i = or i32 %and.i.i97.i, %shl4.i.i99.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %161 = load i32, ptr @hantro_debug, align 4
  %and.i3.i101.i = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i101.i)
  %tobool.not.i.i102.i = icmp eq i32 %and.i3.i101.i, 0
  br i1 %tobool.not.i.i102.i, label %vdpu_read_mask.exit.i103.i.hantro_reg_write.exit107.i_crit_edge, label %do.end.i.i105.i

vdpu_read_mask.exit.i103.i.hantro_reg_write.exit107.i_crit_edge: ; preds = %vdpu_read_mask.exit.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit107.i

do.end.i.i105.i:                                  ; preds = %vdpu_read_mask.exit.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i = lshr i32 %151, 2
  %call.i.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i, i32 noundef %or.i.i100.i) #7
  br label %hantro_reg_write.exit107.i

hantro_reg_write.exit107.i:                       ; preds = %do.end.i.i105.i, %vdpu_read_mask.exit.i103.i.hantro_reg_write.exit107.i_crit_edge
  %162 = tail call i32 @llvm.bswap.i32(i32 %or.i.i100.i) #4
  %163 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i106.i = getelementptr i8, ptr %164, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106.i, i32 %162) #4, !srcloc !77
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
  %165 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = sext i8 %166 to i32
  %167 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx25.i, align 4
  %169 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i.i109.i = getelementptr i8, ptr %170, i32 %168
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i109.i) #4, !srcloc !78
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %173 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i110.i = and i32 %173, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i110.i)
  %tobool.not.i.i.i111.i = icmp eq i32 %and.i.i.i110.i, 0
  br i1 %tobool.not.i.i.i111.i, label %for.body24.i.vdpu_read_mask.exit.i125.i_crit_edge, label %do.end.i.i.i114.i

for.body24.i.vdpu_read_mask.exit.i125.i_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i125.i

do.end.i.i.i114.i:                                ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i112.i = lshr i32 %168, 2
  %call4.i.i.i113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i112.i, i32 noundef %172) #7
  br label %vdpu_read_mask.exit.i125.i

vdpu_read_mask.exit.i125.i:                       ; preds = %do.end.i.i.i114.i, %for.body24.i.vdpu_read_mask.exit.i125.i_crit_edge
  %mask.i.i115.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.1179.i, i32 2
  %174 = ptrtoint ptr %mask.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mask.i.i115.i, align 4
  %shift.i.i116.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.1179.i, i32 1
  %176 = ptrtoint ptr %shift.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %shift.i.i116.i, align 4
  %shl.i.i117.i = shl i32 %175, %177
  %neg.i.i118.i = xor i32 %shl.i.i117.i, -1
  %and.i.i119.i = and i32 %172, %neg.i.i118.i
  %and2.i.i120.i = and i32 %175, %conv28.i
  %shl4.i.i121.i = shl i32 %and2.i.i120.i, %177
  %or.i.i122.i = or i32 %and.i.i119.i, %shl4.i.i121.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %178 = load i32, ptr @hantro_debug, align 4
  %and.i3.i123.i = and i32 %178, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i123.i)
  %tobool.not.i.i124.i = icmp eq i32 %and.i3.i123.i, 0
  br i1 %tobool.not.i.i124.i, label %vdpu_read_mask.exit.i125.i.hantro_reg_write.exit130.i_crit_edge, label %do.end.i.i128.i

vdpu_read_mask.exit.i125.i.hantro_reg_write.exit130.i_crit_edge: ; preds = %vdpu_read_mask.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit130.i

do.end.i.i128.i:                                  ; preds = %vdpu_read_mask.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i126.i = lshr i32 %168, 2
  %call.i.i127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i126.i, i32 noundef %or.i.i122.i) #7
  br label %hantro_reg_write.exit130.i

hantro_reg_write.exit130.i:                       ; preds = %do.end.i.i128.i, %vdpu_read_mask.exit.i125.i.hantro_reg_write.exit130.i_crit_edge
  %179 = tail call i32 @llvm.bswap.i32(i32 %or.i.i122.i) #4
  %180 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i129.i = getelementptr i8, ptr %181, i32 %168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129.i, i32 %179) #4, !srcloc !77
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
  %182 = ptrtoint ptr %sharpness_level.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %sharpness_level.i, align 4
  %184 = and i8 %183, 7
  %and34.i = zext i8 %184 to i32
  %shl.i = shl nuw nsw i32 %and34.i, 28
  %flags35.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1, i32 5
  %185 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags35.i, align 4
  %and36.i = shl i32 %186, 29
  %187 = and i32 %and36.i, -2147483648
  %188 = or i32 %187, %shl.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %189 = load i32, ptr @hantro_debug, align 4
  %and.i.i289 = and i32 %189, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i289)
  %tobool.not.i.i290 = icmp eq i32 %and.i.i289, 0
  br i1 %tobool.not.i.i290, label %if.end32.i.vdpu_write_relaxed.exit.i_crit_edge, label %do.end.i.i292

if.end32.i.vdpu_write_relaxed.exit.i_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i

do.end.i.i292:                                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 132, i32 noundef %188) #7
  br label %vdpu_write_relaxed.exit.i

vdpu_write_relaxed.exit.i:                        ; preds = %do.end.i.i292, %if.end32.i.vdpu_write_relaxed.exit.i_crit_edge
  %190 = lshr exact i32 %188, 24
  %dec_base.i.i = getelementptr inbounds %struct.hantro_dev, ptr %129, i32 0, i32 11
  %191 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i293 = getelementptr i8, ptr %192, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i293, i32 %190) #4, !srcloc !77
  %193 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flags35.i, align 4
  %and41.i = and i32 %194, 1
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
  %195 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = sext i8 %196 to i32
  %197 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx48.i, align 4
  %199 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i.i132.i = getelementptr i8, ptr %200, i32 %198
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i132.i) #4, !srcloc !78
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %203 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i133.i = and i32 %203, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i133.i)
  %tobool.not.i.i.i134.i = icmp eq i32 %and.i.i.i133.i, 0
  br i1 %tobool.not.i.i.i134.i, label %for.body47.i.vdpu_read_mask.exit.i148.i_crit_edge, label %do.end.i.i.i137.i

for.body47.i.vdpu_read_mask.exit.i148.i_crit_edge: ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i148.i

do.end.i.i.i137.i:                                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i135.i = lshr i32 %198, 2
  %call4.i.i.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i135.i, i32 noundef %202) #7
  br label %vdpu_read_mask.exit.i148.i

vdpu_read_mask.exit.i148.i:                       ; preds = %do.end.i.i.i137.i, %for.body47.i.vdpu_read_mask.exit.i148.i_crit_edge
  %mask.i.i138.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_mb_adj, i32 0, i32 %i.2180.i, i32 2
  %204 = ptrtoint ptr %mask.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %mask.i.i138.i, align 4
  %shift.i.i139.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_mb_adj, i32 0, i32 %i.2180.i, i32 1
  %206 = ptrtoint ptr %shift.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %shift.i.i139.i, align 4
  %shl.i.i140.i = shl i32 %205, %207
  %neg.i.i141.i = xor i32 %shl.i.i140.i, -1
  %and.i.i142.i = and i32 %202, %neg.i.i141.i
  %and2.i.i143.i = and i32 %205, %conv50.i
  %shl4.i.i144.i = shl i32 %and2.i.i143.i, %207
  %or.i.i145.i = or i32 %and.i.i142.i, %shl4.i.i144.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %208 = load i32, ptr @hantro_debug, align 4
  %and.i3.i146.i = and i32 %208, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i146.i)
  %tobool.not.i.i147.i = icmp eq i32 %and.i3.i146.i, 0
  br i1 %tobool.not.i.i147.i, label %vdpu_read_mask.exit.i148.i.hantro_reg_write.exit153.i_crit_edge, label %do.end.i.i151.i

vdpu_read_mask.exit.i148.i.hantro_reg_write.exit153.i_crit_edge: ; preds = %vdpu_read_mask.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit153.i

do.end.i.i151.i:                                  ; preds = %vdpu_read_mask.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i149.i = lshr i32 %198, 2
  %call.i.i150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i149.i, i32 noundef %or.i.i145.i) #7
  br label %hantro_reg_write.exit153.i

hantro_reg_write.exit153.i:                       ; preds = %do.end.i.i151.i, %vdpu_read_mask.exit.i148.i.hantro_reg_write.exit153.i_crit_edge
  %209 = tail call i32 @llvm.bswap.i32(i32 %or.i.i145.i) #4
  %210 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i152.i = getelementptr i8, ptr %211, i32 %198
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152.i, i32 %209) #4, !srcloc !77
  %arrayidx51.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_ref_adj, i32 0, i32 %i.2180.i
  %arrayidx52.i = getelementptr [4 x i8], ptr %lf1.i, i32 0, i32 %i.2180.i
  %212 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = sext i8 %213 to i32
  %214 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx51.i, align 4
  %216 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i.i155.i = getelementptr i8, ptr %217, i32 %215
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i155.i) #4, !srcloc !78
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %220 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i156.i = and i32 %220, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i156.i)
  %tobool.not.i.i.i157.i = icmp eq i32 %and.i.i.i156.i, 0
  br i1 %tobool.not.i.i.i157.i, label %hantro_reg_write.exit153.i.vdpu_read_mask.exit.i171.i_crit_edge, label %do.end.i.i.i160.i

hantro_reg_write.exit153.i.vdpu_read_mask.exit.i171.i_crit_edge: ; preds = %hantro_reg_write.exit153.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i171.i

do.end.i.i.i160.i:                                ; preds = %hantro_reg_write.exit153.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i158.i = lshr i32 %215, 2
  %call4.i.i.i159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i158.i, i32 noundef %219) #7
  br label %vdpu_read_mask.exit.i171.i

vdpu_read_mask.exit.i171.i:                       ; preds = %do.end.i.i.i160.i, %hantro_reg_write.exit153.i.vdpu_read_mask.exit.i171.i_crit_edge
  %mask.i.i161.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_ref_adj, i32 0, i32 %i.2180.i, i32 2
  %221 = ptrtoint ptr %mask.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %mask.i.i161.i, align 4
  %shift.i.i162.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_ref_adj, i32 0, i32 %i.2180.i, i32 1
  %223 = ptrtoint ptr %shift.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %shift.i.i162.i, align 4
  %shl.i.i163.i = shl i32 %222, %224
  %neg.i.i164.i = xor i32 %shl.i.i163.i, -1
  %and.i.i165.i = and i32 %219, %neg.i.i164.i
  %and2.i.i166.i = and i32 %222, %conv53.i
  %shl4.i.i167.i = shl i32 %and2.i.i166.i, %224
  %or.i.i168.i = or i32 %and.i.i165.i, %shl4.i.i167.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %225 = load i32, ptr @hantro_debug, align 4
  %and.i3.i169.i = and i32 %225, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i169.i)
  %tobool.not.i.i170.i = icmp eq i32 %and.i3.i169.i, 0
  br i1 %tobool.not.i.i170.i, label %vdpu_read_mask.exit.i171.i.hantro_reg_write.exit176.i_crit_edge, label %do.end.i.i174.i

vdpu_read_mask.exit.i171.i.hantro_reg_write.exit176.i_crit_edge: ; preds = %vdpu_read_mask.exit.i171.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit176.i

do.end.i.i174.i:                                  ; preds = %vdpu_read_mask.exit.i171.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i172.i = lshr i32 %215, 2
  %call.i.i173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i172.i, i32 noundef %or.i.i168.i) #7
  br label %hantro_reg_write.exit176.i

hantro_reg_write.exit176.i:                       ; preds = %do.end.i.i174.i, %vdpu_read_mask.exit.i171.i.hantro_reg_write.exit176.i_crit_edge
  %226 = tail call i32 @llvm.bswap.i32(i32 %or.i.i168.i) #4
  %227 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i175.i = getelementptr i8, ptr %228, i32 %215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i175.i, i32 %226) #4, !srcloc !77
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
  %229 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ctx, align 8
  %231 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flags.i, align 4
  %and.i295 = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i295)
  %tobool.not.i296 = icmp eq i32 %and.i295, 0
  br i1 %tobool.not.i296, label %if.then.i301, label %if.else.i314

if.then.i301:                                     ; preds = %cfg_lf.exit
  %233 = ptrtoint ptr %quant.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %quant.i, align 2
  %conv.i = zext i8 %234 to i32
  %dec_base.i.i.i.i297 = getelementptr inbounds %struct.hantro_dev, ptr %230, i32 0, i32 11
  %235 = ptrtoint ptr %dec_base.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dec_base.i.i.i.i297, align 8
  %add.ptr.i.i.i.i298 = getelementptr i8, ptr %236, i32 520
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i298) #4, !srcloc !78
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %239 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i299 = and i32 %239, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i299)
  %tobool.not.i.i.i.i300 = icmp eq i32 %and.i.i.i.i299, 0
  br i1 %tobool.not.i.i.i.i300, label %if.then.i301.vdpu_read_mask.exit.i.i309_crit_edge, label %do.end.i.i.i.i303

if.then.i301.vdpu_read_mask.exit.i.i309_crit_edge: ; preds = %if.then.i301
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i309

do.end.i.i.i.i303:                                ; preds = %if.then.i301
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i.i302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 130, i32 noundef %238) #7
  br label %vdpu_read_mask.exit.i.i309

vdpu_read_mask.exit.i.i309:                       ; preds = %do.end.i.i.i.i303, %if.then.i301.vdpu_read_mask.exit.i.i309_crit_edge
  %and.i.i.i304 = and i32 %238, -4192257
  %shl4.i.i.i305 = shl nuw nsw i32 %conv.i, 11
  %or.i.i.i306 = or i32 %and.i.i.i304, %shl4.i.i.i305
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %240 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i307 = and i32 %240, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i307)
  %tobool.not.i.i.i308 = icmp eq i32 %and.i3.i.i307, 0
  br i1 %tobool.not.i.i.i308, label %vdpu_read_mask.exit.i.i309.hantro_reg_write.exit.i313_crit_edge, label %do.end.i.i.i311

vdpu_read_mask.exit.i.i309.hantro_reg_write.exit.i313_crit_edge: ; preds = %vdpu_read_mask.exit.i.i309
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i313

do.end.i.i.i311:                                  ; preds = %vdpu_read_mask.exit.i.i309
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 130, i32 noundef %or.i.i.i306) #7
  br label %hantro_reg_write.exit.i313

hantro_reg_write.exit.i313:                       ; preds = %do.end.i.i.i311, %vdpu_read_mask.exit.i.i309.hantro_reg_write.exit.i313_crit_edge
  %241 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i306) #4
  %242 = ptrtoint ptr %dec_base.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dec_base.i.i.i.i297, align 8
  %add.ptr.i.i.i312 = getelementptr i8, ptr %243, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i312, i32 %241) #4, !srcloc !77
  br label %if.end32.i334

if.else.i314:                                     ; preds = %cfg_lf.exit
  %and2.i = and i32 %232, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %dec_base.i.i.i83.i = getelementptr inbounds %struct.hantro_dev, ptr %230, i32 0, i32 11
  br i1 %tobool3.not.i, label %if.else.i314.for.body24.i332_crit_edge, label %if.else.i314.for.body.i320_crit_edge

if.else.i314.for.body.i320_crit_edge:             ; preds = %if.else.i314
  br label %for.body.i320

if.else.i314.for.body24.i332_crit_edge:           ; preds = %if.else.i314
  br label %for.body24.i332

for.body.i320:                                    ; preds = %hantro_reg_write.exit82.i.for.body.i320_crit_edge, %if.else.i314.for.body.i320_crit_edge
  %i.0197.i = phi i32 [ %inc.i327, %hantro_reg_write.exit82.i.for.body.i320_crit_edge ], [ 0, %if.else.i314.for.body.i320_crit_edge ]
  %244 = ptrtoint ptr %quant.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %quant.i, align 2
  %conv8.i315 = zext i8 %245 to i32
  %arrayidx.i316 = getelementptr [4 x i8], ptr %call, i32 0, i32 %i.0197.i
  %246 = ptrtoint ptr %arrayidx.i316 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx.i316, align 1
  %conv9.i317 = sext i8 %247 to i32
  %add.i318 = add nsw i32 %conv9.i317, %conv8.i315
  %248 = tail call i32 @llvm.smax.i32(i32 %add.i318, i32 0) #4
  %249 = tail call i32 @llvm.umin.i32(i32 %248, i32 127) #4
  %arrayidx19.i319 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.0197.i
  %250 = ptrtoint ptr %arrayidx19.i319 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx19.i319, align 4
  %252 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i.i67.i = getelementptr i8, ptr %253, i32 %251
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i67.i) #4, !srcloc !78
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %256 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i68.i = and i32 %256, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i68.i)
  %tobool.not.i.i.i69.i = icmp eq i32 %and.i.i.i68.i, 0
  br i1 %tobool.not.i.i.i69.i, label %for.body.i320.vdpu_read_mask.exit.i78.i_crit_edge, label %do.end.i.i.i71.i

for.body.i320.vdpu_read_mask.exit.i78.i_crit_edge: ; preds = %for.body.i320
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i78.i

do.end.i.i.i71.i:                                 ; preds = %for.body.i320
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i321 = lshr i32 %251, 2
  %call4.i.i.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i321, i32 noundef %255) #7
  br label %vdpu_read_mask.exit.i78.i

vdpu_read_mask.exit.i78.i:                        ; preds = %do.end.i.i.i71.i, %for.body.i320.vdpu_read_mask.exit.i78.i_crit_edge
  %mask.i.i.i322 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.0197.i, i32 2
  %257 = ptrtoint ptr %mask.i.i.i322 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %mask.i.i.i322, align 4
  %shift.i.i.i323 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.0197.i, i32 1
  %259 = ptrtoint ptr %shift.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %shift.i.i.i323, align 4
  %shl.i.i.i324 = shl i32 %258, %260
  %neg.i.i.i325 = xor i32 %shl.i.i.i324, -1
  %and.i.i72.i = and i32 %255, %neg.i.i.i325
  %and2.i.i73.i = and i32 %258, %249
  %shl4.i.i74.i = shl i32 %and2.i.i73.i, %260
  %or.i.i75.i = or i32 %and.i.i72.i, %shl4.i.i74.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %261 = load i32, ptr @hantro_debug, align 4
  %and.i3.i76.i = and i32 %261, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i76.i)
  %tobool.not.i.i77.i = icmp eq i32 %and.i3.i76.i, 0
  br i1 %tobool.not.i.i77.i, label %vdpu_read_mask.exit.i78.i.hantro_reg_write.exit82.i_crit_edge, label %do.end.i.i80.i

vdpu_read_mask.exit.i78.i.hantro_reg_write.exit82.i_crit_edge: ; preds = %vdpu_read_mask.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit82.i

do.end.i.i80.i:                                   ; preds = %vdpu_read_mask.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i326 = lshr i32 %251, 2
  %call.i.i79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i326, i32 noundef %or.i.i75.i) #7
  br label %hantro_reg_write.exit82.i

hantro_reg_write.exit82.i:                        ; preds = %do.end.i.i80.i, %vdpu_read_mask.exit.i78.i.hantro_reg_write.exit82.i_crit_edge
  %262 = tail call i32 @llvm.bswap.i32(i32 %or.i.i75.i) #4
  %263 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i81.i = getelementptr i8, ptr %264, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81.i, i32 %262) #4, !srcloc !77
  %inc.i327 = add nuw nsw i32 %i.0197.i, 1
  %exitcond.not.i328 = icmp eq i32 %inc.i327, 4
  br i1 %exitcond.not.i328, label %hantro_reg_write.exit82.i.if.end32.i334_crit_edge, label %hantro_reg_write.exit82.i.for.body.i320_crit_edge

hantro_reg_write.exit82.i.for.body.i320_crit_edge: ; preds = %hantro_reg_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i320

hantro_reg_write.exit82.i.if.end32.i334_crit_edge: ; preds = %hantro_reg_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i334

for.body24.i332:                                  ; preds = %hantro_reg_write.exit105.i.for.body24.i332_crit_edge, %if.else.i314.for.body24.i332_crit_edge
  %i.1198.i = phi i32 [ %inc30.i333, %hantro_reg_write.exit105.i.for.body24.i332_crit_edge ], [ 0, %if.else.i314.for.body24.i332_crit_edge ]
  %arrayidx25.i329 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.1198.i
  %arrayidx27.i330 = getelementptr [4 x i8], ptr %call, i32 0, i32 %i.1198.i
  %265 = ptrtoint ptr %arrayidx27.i330 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx27.i330, align 1
  %conv28.i331 = sext i8 %266 to i32
  %267 = ptrtoint ptr %arrayidx25.i329 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx25.i329, align 4
  %269 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i.i84.i = getelementptr i8, ptr %270, i32 %268
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i84.i) #4, !srcloc !78
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %273 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i85.i = and i32 %273, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85.i)
  %tobool.not.i.i.i86.i = icmp eq i32 %and.i.i.i85.i, 0
  br i1 %tobool.not.i.i.i86.i, label %for.body24.i332.vdpu_read_mask.exit.i100.i_crit_edge, label %do.end.i.i.i89.i

for.body24.i332.vdpu_read_mask.exit.i100.i_crit_edge: ; preds = %for.body24.i332
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i100.i

do.end.i.i.i89.i:                                 ; preds = %for.body24.i332
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i87.i = lshr i32 %268, 2
  %call4.i.i.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i87.i, i32 noundef %272) #7
  br label %vdpu_read_mask.exit.i100.i

vdpu_read_mask.exit.i100.i:                       ; preds = %do.end.i.i.i89.i, %for.body24.i332.vdpu_read_mask.exit.i100.i_crit_edge
  %mask.i.i90.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.1198.i, i32 2
  %274 = ptrtoint ptr %mask.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %mask.i.i90.i, align 4
  %shift.i.i91.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.1198.i, i32 1
  %276 = ptrtoint ptr %shift.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %shift.i.i91.i, align 4
  %shl.i.i92.i = shl i32 %275, %277
  %neg.i.i93.i = xor i32 %shl.i.i92.i, -1
  %and.i.i94.i = and i32 %272, %neg.i.i93.i
  %and2.i.i95.i = and i32 %275, %conv28.i331
  %shl4.i.i96.i = shl i32 %and2.i.i95.i, %277
  %or.i.i97.i = or i32 %and.i.i94.i, %shl4.i.i96.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %278 = load i32, ptr @hantro_debug, align 4
  %and.i3.i98.i = and i32 %278, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i98.i)
  %tobool.not.i.i99.i = icmp eq i32 %and.i3.i98.i, 0
  br i1 %tobool.not.i.i99.i, label %vdpu_read_mask.exit.i100.i.hantro_reg_write.exit105.i_crit_edge, label %do.end.i.i103.i

vdpu_read_mask.exit.i100.i.hantro_reg_write.exit105.i_crit_edge: ; preds = %vdpu_read_mask.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit105.i

do.end.i.i103.i:                                  ; preds = %vdpu_read_mask.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i101.i = lshr i32 %268, 2
  %call.i.i102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i101.i, i32 noundef %or.i.i97.i) #7
  br label %hantro_reg_write.exit105.i

hantro_reg_write.exit105.i:                       ; preds = %do.end.i.i103.i, %vdpu_read_mask.exit.i100.i.hantro_reg_write.exit105.i_crit_edge
  %279 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97.i) #4
  %280 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i104.i = getelementptr i8, ptr %281, i32 %268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104.i, i32 %279) #4, !srcloc !77
  %inc30.i333 = add nuw nsw i32 %i.1198.i, 1
  %exitcond200.not.i = icmp eq i32 %inc30.i333, 4
  br i1 %exitcond200.not.i, label %hantro_reg_write.exit105.i.if.end32.i334_crit_edge, label %hantro_reg_write.exit105.i.for.body24.i332_crit_edge

hantro_reg_write.exit105.i.for.body24.i332_crit_edge: ; preds = %hantro_reg_write.exit105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24.i332

hantro_reg_write.exit105.i.if.end32.i334_crit_edge: ; preds = %hantro_reg_write.exit105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i334

if.end32.i334:                                    ; preds = %hantro_reg_write.exit105.i.if.end32.i334_crit_edge, %hantro_reg_write.exit82.i.if.end32.i334_crit_edge, %hantro_reg_write.exit.i313
  %y_dc_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 1
  %282 = ptrtoint ptr %y_dc_delta.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %y_dc_delta.i, align 1
  %dec_base.i.i.i106.i = getelementptr inbounds %struct.hantro_dev, ptr %230, i32 0, i32 11
  %284 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i107.i = getelementptr i8, ptr %285, i32 520
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i107.i) #4, !srcloc !78
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %288 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i108.i = and i32 %288, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i108.i)
  %tobool.not.i.i.i109.i = icmp eq i32 %and.i.i.i108.i, 0
  br i1 %tobool.not.i.i.i109.i, label %if.end32.i334.vdpu_read_mask.exit.i118.i_crit_edge, label %do.end.i.i.i111.i

if.end32.i334.vdpu_read_mask.exit.i118.i_crit_edge: ; preds = %if.end32.i334
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i118.i

do.end.i.i.i111.i:                                ; preds = %if.end32.i334
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 130, i32 noundef %287) #7
  br label %vdpu_read_mask.exit.i118.i

vdpu_read_mask.exit.i118.i:                       ; preds = %do.end.i.i.i111.i, %if.end32.i334.vdpu_read_mask.exit.i118.i_crit_edge
  %and.i.i112.i = and i32 %287, 134217727
  %289 = and i8 %283, 31
  %and2.i.i113.i = zext i8 %289 to i32
  %shl4.i.i114.i = shl nuw i32 %and2.i.i113.i, 27
  %or.i.i115.i = or i32 %and.i.i112.i, %shl4.i.i114.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %290 = load i32, ptr @hantro_debug, align 4
  %and.i3.i116.i = and i32 %290, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i116.i)
  %tobool.not.i.i117.i = icmp eq i32 %and.i3.i116.i, 0
  br i1 %tobool.not.i.i117.i, label %vdpu_read_mask.exit.i118.i.hantro_reg_write.exit122.i_crit_edge, label %do.end.i.i120.i

vdpu_read_mask.exit.i118.i.hantro_reg_write.exit122.i_crit_edge: ; preds = %vdpu_read_mask.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit122.i

do.end.i.i120.i:                                  ; preds = %vdpu_read_mask.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 130, i32 noundef %or.i.i115.i) #7
  br label %hantro_reg_write.exit122.i

hantro_reg_write.exit122.i:                       ; preds = %do.end.i.i120.i, %vdpu_read_mask.exit.i118.i.hantro_reg_write.exit122.i_crit_edge
  %291 = tail call i32 @llvm.bswap.i32(i32 %or.i.i115.i) #4
  %292 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i121.i = getelementptr i8, ptr %293, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121.i, i32 %291) #4, !srcloc !77
  %y2_dc_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 2
  %294 = ptrtoint ptr %y2_dc_delta.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %y2_dc_delta.i, align 2
  %296 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i124.i = getelementptr i8, ptr %297, i32 520
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i124.i) #4, !srcloc !78
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %300 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i125.i = and i32 %300, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i125.i)
  %tobool.not.i.i.i126.i = icmp eq i32 %and.i.i.i125.i, 0
  br i1 %tobool.not.i.i.i126.i, label %hantro_reg_write.exit122.i.vdpu_read_mask.exit.i135.i_crit_edge, label %do.end.i.i.i128.i

hantro_reg_write.exit122.i.vdpu_read_mask.exit.i135.i_crit_edge: ; preds = %hantro_reg_write.exit122.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i135.i

do.end.i.i.i128.i:                                ; preds = %hantro_reg_write.exit122.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 130, i32 noundef %299) #7
  br label %vdpu_read_mask.exit.i135.i

vdpu_read_mask.exit.i135.i:                       ; preds = %do.end.i.i.i128.i, %hantro_reg_write.exit122.i.vdpu_read_mask.exit.i135.i_crit_edge
  %and.i.i129.i = and i32 %299, -130023425
  %301 = and i8 %295, 31
  %and2.i.i130.i = zext i8 %301 to i32
  %shl4.i.i131.i = shl nuw nsw i32 %and2.i.i130.i, 22
  %or.i.i132.i = or i32 %and.i.i129.i, %shl4.i.i131.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %302 = load i32, ptr @hantro_debug, align 4
  %and.i3.i133.i = and i32 %302, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i133.i)
  %tobool.not.i.i134.i = icmp eq i32 %and.i3.i133.i, 0
  br i1 %tobool.not.i.i134.i, label %vdpu_read_mask.exit.i135.i.hantro_reg_write.exit139.i_crit_edge, label %do.end.i.i137.i

vdpu_read_mask.exit.i135.i.hantro_reg_write.exit139.i_crit_edge: ; preds = %vdpu_read_mask.exit.i135.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit139.i

do.end.i.i137.i:                                  ; preds = %vdpu_read_mask.exit.i135.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 130, i32 noundef %or.i.i132.i) #7
  br label %hantro_reg_write.exit139.i

hantro_reg_write.exit139.i:                       ; preds = %do.end.i.i137.i, %vdpu_read_mask.exit.i135.i.hantro_reg_write.exit139.i_crit_edge
  %303 = tail call i32 @llvm.bswap.i32(i32 %or.i.i132.i) #4
  %304 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i138.i = getelementptr i8, ptr %305, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i, i32 %303) #4, !srcloc !77
  %y2_ac_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 3
  %306 = ptrtoint ptr %y2_ac_delta.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %y2_ac_delta.i, align 1
  %308 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i141.i = getelementptr i8, ptr %309, i32 604
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i141.i) #4, !srcloc !78
  %311 = tail call i32 @llvm.bswap.i32(i32 %310) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %312 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i142.i = and i32 %312, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i142.i)
  %tobool.not.i.i.i143.i = icmp eq i32 %and.i.i.i142.i, 0
  br i1 %tobool.not.i.i.i143.i, label %hantro_reg_write.exit139.i.vdpu_read_mask.exit.i152.i_crit_edge, label %do.end.i.i.i145.i

hantro_reg_write.exit139.i.vdpu_read_mask.exit.i152.i_crit_edge: ; preds = %hantro_reg_write.exit139.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i152.i

do.end.i.i.i145.i:                                ; preds = %hantro_reg_write.exit139.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 151, i32 noundef %311) #7
  br label %vdpu_read_mask.exit.i152.i

vdpu_read_mask.exit.i152.i:                       ; preds = %do.end.i.i.i145.i, %hantro_reg_write.exit139.i.vdpu_read_mask.exit.i152.i_crit_edge
  %and.i.i146.i = and i32 %311, 134217727
  %313 = and i8 %307, 31
  %and2.i.i147.i = zext i8 %313 to i32
  %shl4.i.i148.i = shl nuw i32 %and2.i.i147.i, 27
  %or.i.i149.i = or i32 %and.i.i146.i, %shl4.i.i148.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %314 = load i32, ptr @hantro_debug, align 4
  %and.i3.i150.i = and i32 %314, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i150.i)
  %tobool.not.i.i151.i = icmp eq i32 %and.i3.i150.i, 0
  br i1 %tobool.not.i.i151.i, label %vdpu_read_mask.exit.i152.i.hantro_reg_write.exit156.i_crit_edge, label %do.end.i.i154.i

vdpu_read_mask.exit.i152.i.hantro_reg_write.exit156.i_crit_edge: ; preds = %vdpu_read_mask.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit156.i

do.end.i.i154.i:                                  ; preds = %vdpu_read_mask.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i153.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 151, i32 noundef %or.i.i149.i) #7
  br label %hantro_reg_write.exit156.i

hantro_reg_write.exit156.i:                       ; preds = %do.end.i.i154.i, %vdpu_read_mask.exit.i152.i.hantro_reg_write.exit156.i_crit_edge
  %315 = tail call i32 @llvm.bswap.i32(i32 %or.i.i149.i) #4
  %316 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i155.i = getelementptr i8, ptr %317, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155.i, i32 %315) #4, !srcloc !77
  %uv_dc_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 4
  %318 = ptrtoint ptr %uv_dc_delta.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %uv_dc_delta.i, align 2
  %320 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i158.i = getelementptr i8, ptr %321, i32 604
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i158.i) #4, !srcloc !78
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %324 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i159.i = and i32 %324, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i159.i)
  %tobool.not.i.i.i160.i = icmp eq i32 %and.i.i.i159.i, 0
  br i1 %tobool.not.i.i.i160.i, label %hantro_reg_write.exit156.i.vdpu_read_mask.exit.i169.i_crit_edge, label %do.end.i.i.i162.i

hantro_reg_write.exit156.i.vdpu_read_mask.exit.i169.i_crit_edge: ; preds = %hantro_reg_write.exit156.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i169.i

do.end.i.i.i162.i:                                ; preds = %hantro_reg_write.exit156.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 151, i32 noundef %323) #7
  br label %vdpu_read_mask.exit.i169.i

vdpu_read_mask.exit.i169.i:                       ; preds = %do.end.i.i.i162.i, %hantro_reg_write.exit156.i.vdpu_read_mask.exit.i169.i_crit_edge
  %and.i.i163.i = and i32 %323, -130023425
  %325 = and i8 %319, 31
  %and2.i.i164.i = zext i8 %325 to i32
  %shl4.i.i165.i = shl nuw nsw i32 %and2.i.i164.i, 22
  %or.i.i166.i = or i32 %and.i.i163.i, %shl4.i.i165.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %326 = load i32, ptr @hantro_debug, align 4
  %and.i3.i167.i = and i32 %326, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i167.i)
  %tobool.not.i.i168.i = icmp eq i32 %and.i3.i167.i, 0
  br i1 %tobool.not.i.i168.i, label %vdpu_read_mask.exit.i169.i.hantro_reg_write.exit173.i_crit_edge, label %do.end.i.i171.i

vdpu_read_mask.exit.i169.i.hantro_reg_write.exit173.i_crit_edge: ; preds = %vdpu_read_mask.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit173.i

do.end.i.i171.i:                                  ; preds = %vdpu_read_mask.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 151, i32 noundef %or.i.i166.i) #7
  br label %hantro_reg_write.exit173.i

hantro_reg_write.exit173.i:                       ; preds = %do.end.i.i171.i, %vdpu_read_mask.exit.i169.i.hantro_reg_write.exit173.i_crit_edge
  %327 = tail call i32 @llvm.bswap.i32(i32 %or.i.i166.i) #4
  %328 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i172.i = getelementptr i8, ptr %329, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172.i, i32 %327) #4, !srcloc !77
  %uv_ac_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 5
  %330 = ptrtoint ptr %uv_ac_delta.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %uv_ac_delta.i, align 1
  %332 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i175.i = getelementptr i8, ptr %333, i32 608
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i175.i) #4, !srcloc !78
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %336 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i176.i = and i32 %336, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i176.i)
  %tobool.not.i.i.i177.i = icmp eq i32 %and.i.i.i176.i, 0
  br i1 %tobool.not.i.i.i177.i, label %hantro_reg_write.exit173.i.vdpu_read_mask.exit.i186.i_crit_edge, label %do.end.i.i.i179.i

hantro_reg_write.exit173.i.vdpu_read_mask.exit.i186.i_crit_edge: ; preds = %hantro_reg_write.exit173.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i186.i

do.end.i.i.i179.i:                                ; preds = %hantro_reg_write.exit173.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i178.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 152, i32 noundef %335) #7
  br label %vdpu_read_mask.exit.i186.i

vdpu_read_mask.exit.i186.i:                       ; preds = %do.end.i.i.i179.i, %hantro_reg_write.exit173.i.vdpu_read_mask.exit.i186.i_crit_edge
  %and.i.i180.i = and i32 %335, 134217727
  %337 = and i8 %331, 31
  %and2.i.i181.i = zext i8 %337 to i32
  %shl4.i.i182.i = shl nuw i32 %and2.i.i181.i, 27
  %or.i.i183.i = or i32 %and.i.i180.i, %shl4.i.i182.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %338 = load i32, ptr @hantro_debug, align 4
  %and.i3.i184.i = and i32 %338, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i184.i)
  %tobool.not.i.i185.i = icmp eq i32 %and.i3.i184.i, 0
  br i1 %tobool.not.i.i185.i, label %vdpu_read_mask.exit.i186.i.cfg_qp.exit_crit_edge, label %do.end.i.i188.i

vdpu_read_mask.exit.i186.i.cfg_qp.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_qp.exit

do.end.i.i188.i:                                  ; preds = %vdpu_read_mask.exit.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i187.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 152, i32 noundef %or.i.i183.i) #7
  br label %cfg_qp.exit

cfg_qp.exit:                                      ; preds = %do.end.i.i188.i, %vdpu_read_mask.exit.i186.i.cfg_qp.exit_crit_edge
  %339 = tail call i32 @llvm.bswap.i32(i32 %or.i.i183.i) #4
  %340 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i189.i = getelementptr i8, ptr %341, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i189.i, i32 %339) #4, !srcloc !77
  %342 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ctx, align 8
  %344 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %flags, align 8
  %and.i336 = and i64 %345, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i336)
  %tobool.not.i337 = icmp eq i64 %and.i336, 0
  %cond.i = select i1 %tobool.not.i337, i32 3, i32 10
  %m2m_ctx.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %346 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %m2m_ctx.i.i, align 4
  %out_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %347, i32 0, i32 8
  %call.i.i.i338 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i.i) #4
  %call.i.i339 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i.i338, i32 noundef 0) #4
  %348 = ptrtoint ptr %call.i.i339 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %call.i.i339, align 4
  %mul.i = shl nuw nsw i32 %cond.i, 3
  %first_part_header_bits.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 16
  %350 = ptrtoint ptr %first_part_header_bits.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %first_part_header_bits.i, align 4
  %add.i340 = add nuw nsw i32 %mul.i, 8
  %add3.i = add i32 %add.i340, %351
  %div83.i = lshr i32 %add3.i, 3
  %and4.i = and i32 %div83.i, 536870904
  %first_part_size.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 15
  %352 = ptrtoint ptr %first_part_size.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %first_part_size.i, align 8
  %and8.i = and i32 %div83.i, 7
  %sub6.neg.i = add i32 %353, %cond.i
  %sub7.i = sub i32 %sub6.neg.i, %div83.i
  %add9.i = add i32 %sub7.i, %and8.i
  %add11.i = add i32 %and4.i, %349
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %354 = load i32, ptr @hantro_debug, align 4
  %and.i.i341 = and i32 %354, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i341)
  %tobool.not.i.i342 = icmp eq i32 %and.i.i341, 0
  br i1 %tobool.not.i.i342, label %cfg_qp.exit.vdpu_write_relaxed.exit.i349_crit_edge, label %do.end.i.i343

cfg_qp.exit.vdpu_write_relaxed.exit.i349_crit_edge: ; preds = %cfg_qp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i349

do.end.i.i343:                                    ; preds = %cfg_qp.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 145, i32 noundef %add11.i) #7
  br label %vdpu_write_relaxed.exit.i349

vdpu_write_relaxed.exit.i349:                     ; preds = %do.end.i.i343, %cfg_qp.exit.vdpu_write_relaxed.exit.i349_crit_edge
  %355 = tail call i32 @llvm.bswap.i32(i32 %add11.i) #4
  %dec_base.i.i344 = getelementptr inbounds %struct.hantro_dev, ptr %343, i32 0, i32 11
  %356 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i345 = getelementptr i8, ptr %357, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i345, i32 %355) #4, !srcloc !77
  %358 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i.i346 = getelementptr i8, ptr %359, i32 488
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i346) #4, !srcloc !78
  %361 = tail call i32 @llvm.bswap.i32(i32 %360) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %362 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i347 = and i32 %362, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i347)
  %tobool.not.i.i.i.i348 = icmp eq i32 %and.i.i.i.i347, 0
  br i1 %tobool.not.i.i.i.i348, label %vdpu_write_relaxed.exit.i349.vdpu_read_mask.exit.i.i358_crit_edge, label %do.end.i.i.i.i351

vdpu_write_relaxed.exit.i349.vdpu_read_mask.exit.i.i358_crit_edge: ; preds = %vdpu_write_relaxed.exit.i349
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i358

do.end.i.i.i.i351:                                ; preds = %vdpu_write_relaxed.exit.i349
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i.i350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 122, i32 noundef %361) #7
  br label %vdpu_read_mask.exit.i.i358

vdpu_read_mask.exit.i.i358:                       ; preds = %do.end.i.i.i.i351, %vdpu_write_relaxed.exit.i349.vdpu_read_mask.exit.i.i358_crit_edge
  %and.i.i.i352 = and i32 %361, -16515073
  %and2.i.i.i353 = shl i32 %add3.i, 18
  %shl4.i.i.i354 = and i32 %and2.i.i.i353, 16515072
  %or.i.i.i355 = or i32 %and.i.i.i352, %shl4.i.i.i354
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %363 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i356 = and i32 %363, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i356)
  %tobool.not.i.i.i357 = icmp eq i32 %and.i3.i.i356, 0
  br i1 %tobool.not.i.i.i357, label %vdpu_read_mask.exit.i.i358.hantro_reg_write.exit.i361_crit_edge, label %do.end.i.i.i359

vdpu_read_mask.exit.i.i358.hantro_reg_write.exit.i361_crit_edge: ; preds = %vdpu_read_mask.exit.i.i358
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i361

do.end.i.i.i359:                                  ; preds = %vdpu_read_mask.exit.i.i358
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 122, i32 noundef %or.i.i.i355) #7
  br label %hantro_reg_write.exit.i361

hantro_reg_write.exit.i361:                       ; preds = %do.end.i.i.i359, %vdpu_read_mask.exit.i.i358.hantro_reg_write.exit.i361_crit_edge
  %364 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i355) #4
  %365 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i360 = getelementptr i8, ptr %366, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i360, i32 %364) #4, !srcloc !77
  %367 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i87.i = getelementptr i8, ptr %368, i32 496
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i87.i) #4, !srcloc !78
  %370 = tail call i32 @llvm.bswap.i32(i32 %369) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %371 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i88.i = and i32 %371, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i88.i)
  %tobool.not.i.i.i89.i = icmp eq i32 %and.i.i.i88.i, 0
  br i1 %tobool.not.i.i.i89.i, label %hantro_reg_write.exit.i361.vdpu_read_mask.exit.i97.i_crit_edge, label %do.end.i.i.i91.i

hantro_reg_write.exit.i361.vdpu_read_mask.exit.i97.i_crit_edge: ; preds = %hantro_reg_write.exit.i361
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i97.i

do.end.i.i.i91.i:                                 ; preds = %hantro_reg_write.exit.i361
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 124, i32 noundef %370) #7
  br label %vdpu_read_mask.exit.i97.i

vdpu_read_mask.exit.i97.i:                        ; preds = %do.end.i.i.i91.i, %hantro_reg_write.exit.i361.vdpu_read_mask.exit.i97.i_crit_edge
  %and.i.i92.i = and i32 %370, -4194304
  %and2.i.i93.i = and i32 %add9.i, 4194303
  %or.i.i94.i = or i32 %and.i.i92.i, %and2.i.i93.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %372 = load i32, ptr @hantro_debug, align 4
  %and.i3.i95.i = and i32 %372, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i3.i95.i, 0
  br i1 %tobool.not.i.i96.i, label %vdpu_read_mask.exit.i97.i.hantro_reg_write.exit101.i_crit_edge, label %do.end.i.i99.i

vdpu_read_mask.exit.i97.i.hantro_reg_write.exit101.i_crit_edge: ; preds = %vdpu_read_mask.exit.i97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit101.i

do.end.i.i99.i:                                   ; preds = %vdpu_read_mask.exit.i97.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 124, i32 noundef %or.i.i94.i) #7
  br label %hantro_reg_write.exit101.i

hantro_reg_write.exit101.i:                       ; preds = %do.end.i.i99.i, %vdpu_read_mask.exit.i97.i.hantro_reg_write.exit101.i_crit_edge
  %373 = tail call i32 @llvm.bswap.i32(i32 %or.i.i94.i) #4
  %374 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i100.i = getelementptr i8, ptr %375, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100.i, i32 %373) #4, !srcloc !77
  %num_dct_parts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 14
  %376 = ptrtoint ptr %num_dct_parts.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %num_dct_parts.i, align 1
  %conv.i362 = zext i8 %377 to i32
  %378 = mul nuw nsw i32 %conv.i362, 3
  %mul13.i = add nsw i32 %378, -3
  %379 = ptrtoint ptr %first_part_size.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %first_part_size.i, align 8
  %add15.i = add i32 %380, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %cmp175.not.i = icmp eq i8 %377, 0
  br i1 %cmp175.not.i, label %hantro_reg_write.exit101.i.for.end.i_crit_edge, label %hantro_reg_write.exit101.i.for.body.i366_crit_edge

hantro_reg_write.exit101.i.for.body.i366_crit_edge: ; preds = %hantro_reg_write.exit101.i
  br label %for.body.i366

hantro_reg_write.exit101.i.for.end.i_crit_edge:   ; preds = %hantro_reg_write.exit101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i366:                                    ; preds = %for.body.i366.for.body.i366_crit_edge, %hantro_reg_write.exit101.i.for.body.i366_crit_edge
  %i.0177.i = phi i32 [ %inc.i364, %for.body.i366.for.body.i366_crit_edge ], [ 0, %hantro_reg_write.exit101.i.for.body.i366_crit_edge ]
  %dct_part_total_len.0176.i = phi i32 [ %add19.i, %for.body.i366.for.body.i366_crit_edge ], [ 0, %hantro_reg_write.exit101.i.for.body.i366_crit_edge ]
  %arrayidx.i363 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 17, i32 %i.0177.i
  %381 = ptrtoint ptr %arrayidx.i363 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx.i363, align 4
  %add19.i = add i32 %382, %dct_part_total_len.0176.i
  %inc.i364 = add nuw nsw i32 %i.0177.i, 1
  %exitcond.not.i365 = icmp eq i32 %inc.i364, %conv.i362
  br i1 %exitcond.not.i365, label %for.body.i366.for.end.i_crit_edge, label %for.body.i366.for.body.i366_crit_edge

for.body.i366.for.body.i366_crit_edge:            ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i366

for.body.i366.for.end.i_crit_edge:                ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i366.for.end.i_crit_edge, %hantro_reg_write.exit101.i.for.end.i_crit_edge
  %dct_part_total_len.0.lcssa.i = phi i32 [ 0, %hantro_reg_write.exit101.i.for.end.i_crit_edge ], [ %add19.i, %for.body.i366.for.end.i_crit_edge ]
  %and21.i = and i32 %add15.i, 7
  %add20.i = add nsw i32 %and21.i, %mul13.i
  %add22.i = add i32 %add20.i, %dct_part_total_len.0.lcssa.i
  %383 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i103.i = getelementptr i8, ptr %384, i32 496
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i103.i) #4, !srcloc !78
  %386 = tail call i32 @llvm.bswap.i32(i32 %385) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %387 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i104.i = and i32 %387, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i104.i)
  %tobool.not.i.i.i105.i = icmp eq i32 %and.i.i.i104.i, 0
  br i1 %tobool.not.i.i.i105.i, label %for.end.i.vdpu_read_mask.exit.i114.i_crit_edge, label %do.end.i.i.i107.i

for.end.i.vdpu_read_mask.exit.i114.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i114.i

do.end.i.i.i107.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 124, i32 noundef %386) #7
  br label %vdpu_read_mask.exit.i114.i

vdpu_read_mask.exit.i114.i:                       ; preds = %do.end.i.i.i107.i, %for.end.i.vdpu_read_mask.exit.i114.i_crit_edge
  %and.i.i108.i = and i32 %386, -251658241
  %sub25.i = shl nuw i32 %conv.i362, 24
  %and2.i.i109.i = add i32 %sub25.i, 251658240
  %shl4.i.i110.i = and i32 %and2.i.i109.i, 251658240
  %or.i.i111.i = or i32 %and.i.i108.i, %shl4.i.i110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %388 = load i32, ptr @hantro_debug, align 4
  %and.i3.i112.i = and i32 %388, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i112.i)
  %tobool.not.i.i113.i = icmp eq i32 %and.i3.i112.i, 0
  br i1 %tobool.not.i.i113.i, label %vdpu_read_mask.exit.i114.i.hantro_reg_write.exit118.i_crit_edge, label %do.end.i.i116.i

vdpu_read_mask.exit.i114.i.hantro_reg_write.exit118.i_crit_edge: ; preds = %vdpu_read_mask.exit.i114.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit118.i

do.end.i.i116.i:                                  ; preds = %vdpu_read_mask.exit.i114.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 124, i32 noundef %or.i.i111.i) #7
  br label %hantro_reg_write.exit118.i

hantro_reg_write.exit118.i:                       ; preds = %do.end.i.i116.i, %vdpu_read_mask.exit.i114.i.hantro_reg_write.exit118.i_crit_edge
  %389 = tail call i32 @llvm.bswap.i32(i32 %or.i.i111.i) #4
  %390 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i117.i = getelementptr i8, ptr %391, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117.i, i32 %389) #4, !srcloc !77
  %392 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i120.i = getelementptr i8, ptr %393, i32 204
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i120.i) #4, !srcloc !78
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %396 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i121.i = and i32 %396, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i121.i)
  %tobool.not.i.i.i122.i = icmp eq i32 %and.i.i.i121.i, 0
  br i1 %tobool.not.i.i.i122.i, label %hantro_reg_write.exit118.i.vdpu_read_mask.exit.i130.i_crit_edge, label %do.end.i.i.i124.i

hantro_reg_write.exit118.i.vdpu_read_mask.exit.i130.i_crit_edge: ; preds = %hantro_reg_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i130.i

do.end.i.i.i124.i:                                ; preds = %hantro_reg_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 51, i32 noundef %395) #7
  br label %vdpu_read_mask.exit.i130.i

vdpu_read_mask.exit.i130.i:                       ; preds = %do.end.i.i.i124.i, %hantro_reg_write.exit118.i.vdpu_read_mask.exit.i130.i_crit_edge
  %and.i.i125.i = and i32 %395, -16777216
  %and2.i.i126.i = and i32 %add22.i, 16777215
  %or.i.i127.i = or i32 %and.i.i125.i, %and2.i.i126.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %397 = load i32, ptr @hantro_debug, align 4
  %and.i3.i128.i = and i32 %397, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i128.i)
  %tobool.not.i.i129.i = icmp eq i32 %and.i3.i128.i, 0
  br i1 %tobool.not.i.i129.i, label %vdpu_read_mask.exit.i130.i.hantro_reg_write.exit134.i_crit_edge, label %do.end.i.i132.i

vdpu_read_mask.exit.i130.i.hantro_reg_write.exit134.i_crit_edge: ; preds = %vdpu_read_mask.exit.i130.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit134.i

do.end.i.i132.i:                                  ; preds = %vdpu_read_mask.exit.i130.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 51, i32 noundef %or.i.i127.i) #7
  br label %hantro_reg_write.exit134.i

hantro_reg_write.exit134.i:                       ; preds = %do.end.i.i132.i, %vdpu_read_mask.exit.i130.i.hantro_reg_write.exit134.i_crit_edge
  %398 = tail call i32 @llvm.bswap.i32(i32 %or.i.i127.i) #4
  %399 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i133.i = getelementptr i8, ptr %400, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i133.i, i32 %398) #4, !srcloc !77
  %401 = ptrtoint ptr %num_dct_parts.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %num_dct_parts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %cmp29179.not.i = icmp eq i8 %402, 0
  br i1 %cmp29179.not.i, label %hantro_reg_write.exit134.i.cfg_parts.exit_crit_edge, label %for.body31.lr.ph.i

hantro_reg_write.exit134.i.cfg_parts.exit_crit_edge: ; preds = %hantro_reg_write.exit134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_parts.exit

for.body31.lr.ph.i:                               ; preds = %hantro_reg_write.exit134.i
  %add32.i = add i32 %mul13.i, %add15.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %hantro_reg_write.exit174.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %i.1181.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %inc44.i, %hantro_reg_write.exit174.i.for.body31.i_crit_edge ]
  %count.0180.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %add42.i, %hantro_reg_write.exit174.i.for.body31.i_crit_edge ]
  %add33.i = add i32 %add32.i, %count.0180.i
  %add34.i = add i32 %add33.i, %349
  %arrayidx35.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_base, i32 0, i32 %i.1181.i
  %and36.i367 = and i32 %add34.i, -8
  %403 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %arrayidx35.i, align 4
  %405 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i136.i = getelementptr i8, ptr %406, i32 %404
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i136.i) #4, !srcloc !78
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %409 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i137.i = and i32 %409, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i137.i)
  %tobool.not.i.i.i138.i = icmp eq i32 %and.i.i.i137.i, 0
  br i1 %tobool.not.i.i.i138.i, label %for.body31.i.vdpu_read_mask.exit.i147.i_crit_edge, label %do.end.i.i.i140.i

for.body31.i.vdpu_read_mask.exit.i147.i_crit_edge: ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i147.i

do.end.i.i.i140.i:                                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i368 = lshr i32 %404, 2
  %call4.i.i.i139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i368, i32 noundef %408) #7
  br label %vdpu_read_mask.exit.i147.i

vdpu_read_mask.exit.i147.i:                       ; preds = %do.end.i.i.i140.i, %for.body31.i.vdpu_read_mask.exit.i147.i_crit_edge
  %mask.i.i.i369 = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_base, i32 0, i32 %i.1181.i, i32 2
  %410 = ptrtoint ptr %mask.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %mask.i.i.i369, align 4
  %shift.i.i.i370 = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_base, i32 0, i32 %i.1181.i, i32 1
  %412 = ptrtoint ptr %shift.i.i.i370 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %shift.i.i.i370, align 4
  %shl.i.i.i371 = shl i32 %411, %413
  %neg.i.i.i372 = xor i32 %shl.i.i.i371, -1
  %and.i.i141.i = and i32 %408, %neg.i.i.i372
  %and2.i.i142.i = and i32 %and36.i367, %411
  %shl4.i.i143.i = shl i32 %and2.i.i142.i, %413
  %or.i.i144.i = or i32 %and.i.i141.i, %shl4.i.i143.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %414 = load i32, ptr @hantro_debug, align 4
  %and.i3.i145.i = and i32 %414, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i145.i)
  %tobool.not.i.i146.i = icmp eq i32 %and.i3.i145.i, 0
  br i1 %tobool.not.i.i146.i, label %vdpu_read_mask.exit.i147.i.hantro_reg_write.exit151.i_crit_edge, label %do.end.i.i149.i

vdpu_read_mask.exit.i147.i.hantro_reg_write.exit151.i_crit_edge: ; preds = %vdpu_read_mask.exit.i147.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit151.i

do.end.i.i149.i:                                  ; preds = %vdpu_read_mask.exit.i147.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i373 = lshr i32 %404, 2
  %call.i.i148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i373, i32 noundef %or.i.i144.i) #7
  br label %hantro_reg_write.exit151.i

hantro_reg_write.exit151.i:                       ; preds = %do.end.i.i149.i, %vdpu_read_mask.exit.i147.i.hantro_reg_write.exit151.i_crit_edge
  %415 = tail call i32 @llvm.bswap.i32(i32 %or.i.i144.i) #4
  %416 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i150.i = getelementptr i8, ptr %417, i32 %404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.i, i32 %415) #4, !srcloc !77
  %arrayidx37.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_start_bits, i32 0, i32 %i.1181.i
  %and38.i = shl i32 %add33.i, 3
  %mul39.i = and i32 %and38.i, 56
  %418 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx37.i, align 4
  %420 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i.i153.i = getelementptr i8, ptr %421, i32 %419
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i153.i) #4, !srcloc !78
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %424 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i154.i = and i32 %424, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i154.i)
  %tobool.not.i.i.i155.i = icmp eq i32 %and.i.i.i154.i, 0
  br i1 %tobool.not.i.i.i155.i, label %hantro_reg_write.exit151.i.vdpu_read_mask.exit.i169.i380_crit_edge, label %do.end.i.i.i158.i

hantro_reg_write.exit151.i.vdpu_read_mask.exit.i169.i380_crit_edge: ; preds = %hantro_reg_write.exit151.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i169.i380

do.end.i.i.i158.i:                                ; preds = %hantro_reg_write.exit151.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i156.i = lshr i32 %419, 2
  %call4.i.i.i157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i156.i, i32 noundef %423) #7
  br label %vdpu_read_mask.exit.i169.i380

vdpu_read_mask.exit.i169.i380:                    ; preds = %do.end.i.i.i158.i, %hantro_reg_write.exit151.i.vdpu_read_mask.exit.i169.i380_crit_edge
  %mask.i.i159.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_start_bits, i32 0, i32 %i.1181.i, i32 2
  %425 = ptrtoint ptr %mask.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %mask.i.i159.i, align 4
  %shift.i.i160.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_start_bits, i32 0, i32 %i.1181.i, i32 1
  %427 = ptrtoint ptr %shift.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %shift.i.i160.i, align 4
  %shl.i.i161.i = shl i32 %426, %428
  %neg.i.i162.i = xor i32 %shl.i.i161.i, -1
  %and.i.i163.i374 = and i32 %423, %neg.i.i162.i
  %and2.i.i164.i375 = and i32 %mul39.i, %426
  %shl4.i.i165.i376 = shl i32 %and2.i.i164.i375, %428
  %or.i.i166.i377 = or i32 %and.i.i163.i374, %shl4.i.i165.i376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %429 = load i32, ptr @hantro_debug, align 4
  %and.i3.i167.i378 = and i32 %429, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i167.i378)
  %tobool.not.i.i168.i379 = icmp eq i32 %and.i3.i167.i378, 0
  br i1 %tobool.not.i.i168.i379, label %vdpu_read_mask.exit.i169.i380.hantro_reg_write.exit174.i_crit_edge, label %do.end.i.i172.i

vdpu_read_mask.exit.i169.i380.hantro_reg_write.exit174.i_crit_edge: ; preds = %vdpu_read_mask.exit.i169.i380
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit174.i

do.end.i.i172.i:                                  ; preds = %vdpu_read_mask.exit.i169.i380
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i170.i = lshr i32 %419, 2
  %call.i.i171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i170.i, i32 noundef %or.i.i166.i377) #7
  br label %hantro_reg_write.exit174.i

hantro_reg_write.exit174.i:                       ; preds = %do.end.i.i172.i, %vdpu_read_mask.exit.i169.i380.hantro_reg_write.exit174.i_crit_edge
  %430 = tail call i32 @llvm.bswap.i32(i32 %or.i.i166.i377) #4
  %431 = ptrtoint ptr %dec_base.i.i344 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %dec_base.i.i344, align 8
  %add.ptr.i.i173.i = getelementptr i8, ptr %432, i32 %419
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i173.i, i32 %430) #4, !srcloc !77
  %arrayidx41.i = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 17, i32 %i.1181.i
  %433 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx41.i, align 4
  %add42.i = add i32 %434, %count.0180.i
  %inc44.i = add nuw nsw i32 %i.1181.i, 1
  %435 = ptrtoint ptr %num_dct_parts.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %num_dct_parts.i, align 1
  %conv28.i381 = zext i8 %436 to i32
  %cmp29.i = icmp ult i32 %inc44.i, %conv28.i381
  br i1 %cmp29.i, label %hantro_reg_write.exit174.i.for.body31.i_crit_edge, label %hantro_reg_write.exit174.i.cfg_parts.exit_crit_edge

hantro_reg_write.exit174.i.cfg_parts.exit_crit_edge: ; preds = %hantro_reg_write.exit174.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_parts.exit

hantro_reg_write.exit174.i.for.body31.i_crit_edge: ; preds = %hantro_reg_write.exit174.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31.i

cfg_parts.exit:                                   ; preds = %hantro_reg_write.exit174.i.cfg_parts.exit_crit_edge, %hantro_reg_write.exit134.i.cfg_parts.exit_crit_edge
  %437 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %version, align 2
  %439 = and i8 %438, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %439)
  %cmp.not.i = icmp eq i8 %439, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i383, label %cfg_parts.exit.cfg_tap.exit_crit_edge

cfg_parts.exit.cfg_tap.exit_crit_edge:            ; preds = %cfg_parts.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_tap.exit

for.cond.preheader.i383:                          ; preds = %cfg_parts.exit
  %440 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i382 = getelementptr inbounds %struct.hantro_dev, ptr %441, i32 0, i32 11
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc17.i.for.cond4.preheader.i_crit_edge, %for.cond.preheader.i383
  %i.032.i = phi i32 [ 0, %for.cond.preheader.i383 ], [ %inc18.i, %for.inc17.i.for.cond4.preheader.i_crit_edge ]
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.cond4.preheader.i
  %j.030.i = phi i32 [ 0, %for.cond4.preheader.i ], [ %inc.i406, %for.inc.i.for.body7.i_crit_edge ]
  %arrayidx8.i = getelementptr [8 x [6 x %struct.hantro_reg]], ptr @vp8_dec_pred_bc_tap, i32 0, i32 %i.032.i, i32 %j.030.i
  %442 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %443)
  %cmp9.not.i = icmp eq i32 %443, 0
  br i1 %cmp9.not.i, label %for.body7.i.for.inc.i_crit_edge, label %if.then11.i

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body7.i
  %arrayidx15.i = getelementptr [8 x [6 x i32]], ptr @hantro_vp8_dec_mc_filter, i32 0, i32 %i.032.i, i32 %j.030.i
  %444 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx15.i, align 4
  %446 = ptrtoint ptr %dec_base.i.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %dec_base.i.i.i.i382, align 8
  %add.ptr.i.i.i.i384 = getelementptr i8, ptr %447, i32 %443
  %448 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i384) #4, !srcloc !78
  %449 = tail call i32 @llvm.bswap.i32(i32 %448) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %450 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i385 = and i32 %450, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i385)
  %tobool.not.i.i.i.i386 = icmp eq i32 %and.i.i.i.i385, 0
  br i1 %tobool.not.i.i.i.i386, label %if.then11.i.vdpu_read_mask.exit.i.i400_crit_edge, label %do.end.i.i.i.i389

if.then11.i.vdpu_read_mask.exit.i.i400_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i400

do.end.i.i.i.i389:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i387 = lshr i32 %443, 2
  %call4.i.i.i.i388 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i387, i32 noundef %449) #7
  br label %vdpu_read_mask.exit.i.i400

vdpu_read_mask.exit.i.i400:                       ; preds = %do.end.i.i.i.i389, %if.then11.i.vdpu_read_mask.exit.i.i400_crit_edge
  %mask.i.i.i390 = getelementptr [8 x [6 x %struct.hantro_reg]], ptr @vp8_dec_pred_bc_tap, i32 0, i32 %i.032.i, i32 %j.030.i, i32 2
  %451 = ptrtoint ptr %mask.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %mask.i.i.i390, align 4
  %shift.i.i.i391 = getelementptr [8 x [6 x %struct.hantro_reg]], ptr @vp8_dec_pred_bc_tap, i32 0, i32 %i.032.i, i32 %j.030.i, i32 1
  %453 = ptrtoint ptr %shift.i.i.i391 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %shift.i.i.i391, align 4
  %shl.i.i.i392 = shl i32 %452, %454
  %neg.i.i.i393 = xor i32 %shl.i.i.i392, -1
  %and.i.i.i394 = and i32 %449, %neg.i.i.i393
  %and2.i.i.i395 = and i32 %452, %445
  %shl4.i.i.i396 = shl i32 %and2.i.i.i395, %454
  %or.i.i.i397 = or i32 %and.i.i.i394, %shl4.i.i.i396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %455 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i398 = and i32 %455, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i398)
  %tobool.not.i.i.i399 = icmp eq i32 %and.i3.i.i398, 0
  br i1 %tobool.not.i.i.i399, label %vdpu_read_mask.exit.i.i400.hantro_reg_write.exit.i405_crit_edge, label %do.end.i.i.i403

vdpu_read_mask.exit.i.i400.hantro_reg_write.exit.i405_crit_edge: ; preds = %vdpu_read_mask.exit.i.i400
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i405

do.end.i.i.i403:                                  ; preds = %vdpu_read_mask.exit.i.i400
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i401 = lshr i32 %443, 2
  %call.i.i.i402 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i401, i32 noundef %or.i.i.i397) #7
  br label %hantro_reg_write.exit.i405

hantro_reg_write.exit.i405:                       ; preds = %do.end.i.i.i403, %vdpu_read_mask.exit.i.i400.hantro_reg_write.exit.i405_crit_edge
  %456 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i397) #4
  %457 = ptrtoint ptr %dec_base.i.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %dec_base.i.i.i.i382, align 8
  %add.ptr.i.i.i404 = getelementptr i8, ptr %458, i32 %443
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i404, i32 %456) #4, !srcloc !77
  br label %for.inc.i

for.inc.i:                                        ; preds = %hantro_reg_write.exit.i405, %for.body7.i.for.inc.i_crit_edge
  %inc.i406 = add nuw nsw i32 %j.030.i, 1
  %exitcond.not.i407 = icmp eq i32 %inc.i406, 6
  br i1 %exitcond.not.i407, label %for.inc17.i, label %for.inc.i.for.body7.i_crit_edge

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7.i

for.inc17.i:                                      ; preds = %for.inc.i
  %inc18.i = add nuw nsw i32 %i.032.i, 1
  %exitcond33.not.i = icmp eq i32 %inc18.i, 8
  br i1 %exitcond33.not.i, label %for.inc17.i.cfg_tap.exit_crit_edge, label %for.inc17.i.for.cond4.preheader.i_crit_edge

for.inc17.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond4.preheader.i

for.inc17.i.cfg_tap.exit_crit_edge:               ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_tap.exit

cfg_tap.exit:                                     ; preds = %for.inc17.i.cfg_tap.exit_crit_edge, %cfg_parts.exit.cfg_tap.exit_crit_edge
  %459 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %m2m_ctx.i.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %460, i32 0, i32 7
  %call.i.i408 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #4
  %461 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %ctx, align 8
  %last_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 18
  %463 = ptrtoint ptr %last_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %463)
  %464 = load i64, ptr %last_frame_ts.i, align 8
  %call.i409 = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %464) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i409)
  %tobool.not.i410 = icmp eq i32 %call.i409, 0
  br i1 %tobool.not.i410, label %do.body.i, label %cfg_tap.exit.if.end9.i_crit_edge

cfg_tap.exit.if.end9.i_crit_edge:                 ; preds = %cfg_tap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

do.body.i:                                        ; preds = %cfg_tap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %465 = load i32, ptr @hantro_debug, align 4
  %and.i411 = and i32 %465, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i411)
  %tobool1.not.i = icmp eq i32 %and.i411, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i412

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7.i

do.end.i412:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %466 = ptrtoint ptr %last_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %last_frame_ts.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 456, i64 noundef %467) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i412, %do.body.i.do.end7.i_crit_edge
  %call.i.i413 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i408, i32 noundef 0) #4
  %468 = ptrtoint ptr %call.i.i413 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %call.i.i413, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end7.i, %cfg_tap.exit.if.end9.i_crit_edge
  %ref.0.i = phi i32 [ %call.i409, %cfg_tap.exit.if.end9.i_crit_edge ], [ %469, %do.end7.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %470 = load i32, ptr @hantro_debug, align 4
  %and.i.i414 = and i32 %470, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i414)
  %tobool.not.i.i415 = icmp eq i32 %and.i.i414, 0
  br i1 %tobool.not.i.i415, label %if.end9.i.vdpu_write_relaxed.exit.i419_crit_edge, label %do.end.i.i416

if.end9.i.vdpu_write_relaxed.exit.i419_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i419

do.end.i.i416:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 131, i32 noundef %ref.0.i) #7
  br label %vdpu_write_relaxed.exit.i419

vdpu_write_relaxed.exit.i419:                     ; preds = %do.end.i.i416, %if.end9.i.vdpu_write_relaxed.exit.i419_crit_edge
  %471 = tail call i32 @llvm.bswap.i32(i32 %ref.0.i) #4
  %dec_base.i.i417 = getelementptr inbounds %struct.hantro_dev, ptr %462, i32 0, i32 11
  %472 = ptrtoint ptr %dec_base.i.i417 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dec_base.i.i417, align 8
  %add.ptr.i.i418 = getelementptr i8, ptr %473, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i418, i32 %471) #4, !srcloc !77
  %golden_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 19
  %474 = ptrtoint ptr %golden_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %474)
  %475 = load i64, ptr %golden_frame_ts.i, align 8
  %call10.i = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %475) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i, label %vdpu_write_relaxed.exit.i419.if.end33.i_crit_edge

vdpu_write_relaxed.exit.i419.if.end33.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i419
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %vdpu_write_relaxed.exit.i419
  %476 = ptrtoint ptr %golden_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %476)
  %477 = load i64, ptr %golden_frame_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %477)
  %tobool13.not.i = icmp eq i64 %477, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.then30.i_crit_edge, label %do.body15.i

land.lhs.true.i.if.then30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

do.body15.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %478 = load i32, ptr @hantro_debug, align 4
  %and16.i = and i32 %478, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.if.then30.i_crit_edge, label %do.end21.i

do.body15.i.if.then30.i_crit_edge:                ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 464, i64 noundef %477) #7
  br label %if.then30.i

if.then30.i:                                      ; preds = %do.end21.i, %do.body15.i.if.then30.i_crit_edge, %land.lhs.true.i.if.then30.i_crit_edge
  %call.i101.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i408, i32 noundef 0) #4
  %479 = ptrtoint ptr %call.i101.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %call.i101.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %vdpu_write_relaxed.exit.i419.if.end33.i_crit_edge
  %ref.1.i = phi i32 [ %480, %if.then30.i ], [ %call10.i, %vdpu_write_relaxed.exit.i419.if.end33.i_crit_edge ]
  %481 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %481)
  %482 = load i64, ptr %flags, align 8
  %483 = trunc i64 %482 to i32
  %484 = lshr i32 %483, 4
  %485 = and i32 %484, 1
  %486 = or i32 %485, %ref.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %487 = load i32, ptr @hantro_debug, align 4
  %and.i102.i = and i32 %487, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102.i)
  %tobool.not.i103.i = icmp eq i32 %and.i102.i, 0
  br i1 %tobool.not.i103.i, label %if.end33.i.vdpu_write_relaxed.exit108.i_crit_edge, label %do.end.i105.i

if.end33.i.vdpu_write_relaxed.exit108.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit108.i

do.end.i105.i:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 136, i32 noundef %486) #7
  br label %vdpu_write_relaxed.exit108.i

vdpu_write_relaxed.exit108.i:                     ; preds = %do.end.i105.i, %if.end33.i.vdpu_write_relaxed.exit108.i_crit_edge
  %488 = tail call i32 @llvm.bswap.i32(i32 %486) #4
  %489 = ptrtoint ptr %dec_base.i.i417 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %dec_base.i.i417, align 8
  %add.ptr.i107.i = getelementptr i8, ptr %490, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %488) #4, !srcloc !77
  %alt_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 20
  %491 = ptrtoint ptr %alt_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %alt_frame_ts.i, align 8
  %call38.i = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %492) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge

vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge: ; preds = %vdpu_write_relaxed.exit108.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

land.lhs.true40.i:                                ; preds = %vdpu_write_relaxed.exit108.i
  %493 = ptrtoint ptr %alt_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %493)
  %494 = load i64, ptr %alt_frame_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %494)
  %tobool42.not.i421 = icmp eq i64 %494, 0
  br i1 %tobool42.not.i421, label %land.lhs.true40.i.if.then59.i_crit_edge, label %do.body44.i

land.lhs.true40.i.if.then59.i_crit_edge:          ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

do.body44.i:                                      ; preds = %land.lhs.true40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %495 = load i32, ptr @hantro_debug, align 4
  %and45.i = and i32 %495, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.body44.i.if.then59.i_crit_edge, label %do.end50.i

do.body44.i.if.then59.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

do.end50.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef 474, i64 noundef %494) #7
  br label %if.then59.i

if.then59.i:                                      ; preds = %do.end50.i, %do.body44.i.if.then59.i_crit_edge, %land.lhs.true40.i.if.then59.i_crit_edge
  %call.i109.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i408, i32 noundef 0) #4
  %496 = ptrtoint ptr %call.i109.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %call.i109.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge
  %ref.3.i = phi i32 [ %497, %if.then59.i ], [ %call38.i, %vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge ]
  %498 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %498)
  %499 = load i64, ptr %flags, align 8
  %500 = trunc i64 %499 to i32
  %501 = lshr i32 %500, 5
  %502 = and i32 %501, 1
  %503 = or i32 %502, %ref.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %504 = load i32, ptr @hantro_debug, align 4
  %and.i110.i = and i32 %504, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110.i)
  %tobool.not.i111.i = icmp eq i32 %and.i110.i, 0
  br i1 %tobool.not.i111.i, label %if.end62.i.cfg_ref.exit_crit_edge, label %do.end.i113.i

if.end62.i.cfg_ref.exit_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_ref.exit

do.end.i113.i:                                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 137, i32 noundef %503) #7
  br label %cfg_ref.exit

cfg_ref.exit:                                     ; preds = %do.end.i113.i, %if.end62.i.cfg_ref.exit_crit_edge
  %505 = tail call i32 @llvm.bswap.i32(i32 %503) #4
  %506 = ptrtoint ptr %dec_base.i.i417 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %dec_base.i.i417, align 8
  %add.ptr.i115.i = getelementptr i8, ptr %507, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %505) #4, !srcloc !77
  %508 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %ctx, align 8
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %510 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %512 = load i32, ptr @hantro_debug, align 4
  %and.i.i422 = and i32 %512, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i422)
  %tobool.not.i.i423 = icmp eq i32 %and.i.i422, 0
  br i1 %tobool.not.i.i423, label %cfg_ref.exit.vdpu_write_relaxed.exit.i432_crit_edge, label %do.end.i.i425

cfg_ref.exit.vdpu_write_relaxed.exit.i432_crit_edge: ; preds = %cfg_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i432

do.end.i.i425:                                    ; preds = %cfg_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i424 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 61, i32 noundef %511) #7
  br label %vdpu_write_relaxed.exit.i432

vdpu_write_relaxed.exit.i432:                     ; preds = %do.end.i.i425, %cfg_ref.exit.vdpu_write_relaxed.exit.i432_crit_edge
  %513 = tail call i32 @llvm.bswap.i32(i32 %511) #4
  %dec_base.i.i426 = getelementptr inbounds %struct.hantro_dev, ptr %509, i32 0, i32 11
  %514 = ptrtoint ptr %dec_base.i.i426 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %dec_base.i.i426, align 8
  %add.ptr.i.i427 = getelementptr i8, ptr %515, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i427, i32 %513) #4, !srcloc !77
  %dma1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %516 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %dma1.i, align 4
  %518 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %flags.i, align 4
  %and.i429 = and i32 %519, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i429)
  %tobool.not.i430 = icmp eq i32 %and.i429, 0
  %and3.i431 = and i32 %519, 2
  %520 = or i32 %517, %and3.i431
  %spec.select.i = or i32 %520, 1
  %reg.0.i = select i1 %tobool.not.i430, i32 %517, i32 %spec.select.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %521 = load i32, ptr @hantro_debug, align 4
  %and.i15.i = and i32 %521, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not.i16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.not.i16.i, label %vdpu_write_relaxed.exit.i432.vdpu_write_relaxed.exit21.i_crit_edge, label %do.end.i18.i

vdpu_write_relaxed.exit.i432.vdpu_write_relaxed.exit21.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i432
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit21.i

do.end.i18.i:                                     ; preds = %vdpu_write_relaxed.exit.i432
  call void @__sanitizer_cov_trace_pc() #6
  %call.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 149, i32 noundef %reg.0.i) #7
  br label %vdpu_write_relaxed.exit21.i

vdpu_write_relaxed.exit21.i:                      ; preds = %do.end.i18.i, %vdpu_write_relaxed.exit.i432.vdpu_write_relaxed.exit21.i_crit_edge
  %522 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %523 = ptrtoint ptr %dec_base.i.i426 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %dec_base.i.i426, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %524, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %522) #4, !srcloc !77
  %call.i22.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i408, i32 noundef 0) #4
  %525 = ptrtoint ptr %call.i22.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %call.i22.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %527 = load i32, ptr @hantro_debug, align 4
  %and.i23.i = and i32 %527, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.not.i24.i = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.not.i24.i, label %vdpu_write_relaxed.exit21.i.cfg_buffers.exit_crit_edge, label %do.end.i26.i

vdpu_write_relaxed.exit21.i.cfg_buffers.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_buffers.exit

do.end.i26.i:                                     ; preds = %vdpu_write_relaxed.exit21.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 63, i32 noundef %526) #7
  br label %cfg_buffers.exit

cfg_buffers.exit:                                 ; preds = %do.end.i26.i, %vdpu_write_relaxed.exit21.i.cfg_buffers.exit_crit_edge
  %528 = tail call i32 @llvm.bswap.i32(i32 %526) #4
  %529 = ptrtoint ptr %dec_base.i.i426 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %dec_base.i.i426, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %530, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %528) #4, !srcloc !77
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #4
  %531 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i.i434 = getelementptr i8, ptr %532, i32 228
  %533 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i434) #4, !srcloc !78
  %534 = tail call i32 @llvm.bswap.i32(i32 %533) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %535 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i435 = and i32 %535, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i435)
  %tobool.not.i.i.i436 = icmp eq i32 %and.i.i.i435, 0
  br i1 %tobool.not.i.i.i436, label %cfg_buffers.exit.vdpu_read_mask.exit.i443_crit_edge, label %do.end.i.i.i438

cfg_buffers.exit.vdpu_read_mask.exit.i443_crit_edge: ; preds = %cfg_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i443

do.end.i.i.i438:                                  ; preds = %cfg_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 57, i32 noundef %534) #7
  br label %vdpu_read_mask.exit.i443

vdpu_read_mask.exit.i443:                         ; preds = %do.end.i.i.i438, %cfg_buffers.exit.vdpu_read_mask.exit.i443_crit_edge
  %or.i.i440 = or i32 %534, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %536 = load i32, ptr @hantro_debug, align 4
  %and.i3.i441 = and i32 %536, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i441)
  %tobool.not.i.i442 = icmp eq i32 %and.i3.i441, 0
  br i1 %tobool.not.i.i442, label %vdpu_read_mask.exit.i443.hantro_reg_write.exit448_crit_edge, label %do.end.i.i445

vdpu_read_mask.exit.i443.hantro_reg_write.exit448_crit_edge: ; preds = %vdpu_read_mask.exit.i443
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit448

do.end.i.i445:                                    ; preds = %vdpu_read_mask.exit.i443
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i444 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 57, i32 noundef %or.i.i440) #7
  br label %hantro_reg_write.exit448

hantro_reg_write.exit448:                         ; preds = %do.end.i.i445, %vdpu_read_mask.exit.i443.hantro_reg_write.exit448_crit_edge
  %537 = tail call i32 @llvm.bswap.i32(i32 %or.i.i440) #4
  %538 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i446 = getelementptr i8, ptr %539, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i446, i32 %537) #4, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %hantro_reg_write.exit448, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %hantro_reg_write.exit448 ]
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 522, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro.h", i32 392, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdpu_write_relaxed._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdpu_write_relaxed._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"vp8_dec_skip_mode", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 263, i32 32}
!10 = distinct !{null, !11, !"vp8_dec_filter_disable", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 257, i32 32}
!12 = distinct !{null, !13, !"vp8_dec_mb_width", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 221, i32 32}
!14 = distinct !{null, !15, !"vp8_dec_mb_height", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 227, i32 32}
!16 = distinct !{null, !17, !"vp8_dec_mb_width_ext", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 233, i32 32}
!18 = distinct !{null, !19, !"vp8_dec_mb_height_ext", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 239, i32 32}
!20 = distinct !{null, !21, !"vp8_dec_bool_range", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 245, i32 32}
!22 = distinct !{null, !23, !"vp8_dec_bool_value", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 251, i32 32}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!26 = !{ptr @vdpu_read._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vdpu_read._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @vp8_dec_lf_level, !29, !"vp8_dec_lf_level", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 90, i32 32}
!30 = !{ptr @vp8_dec_mb_adj, !31, !"vp8_dec_mb_adj", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 97, i32 32}
!32 = !{ptr @vp8_dec_ref_adj, !33, !"vp8_dec_ref_adj", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 104, i32 32}
!34 = !{ptr @vp8_dec_quant, !35, !"vp8_dec_quant", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 111, i32 32}
!36 = distinct !{null, !37, !"vp8_dec_quant_delta", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 118, i32 32}
!38 = distinct !{null, !39, !"vp8_dec_mb_start_bit", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 197, i32 32}
!40 = distinct !{null, !41, !"vp8_dec_mb_aligned_data_len", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 203, i32 32}
!42 = distinct !{null, !43, !"vp8_dec_num_dct_partitions", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 209, i32 32}
!44 = distinct !{null, !45, !"vp8_dec_stream_len", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 215, i32 32}
!46 = !{ptr @vp8_dec_dct_base, !47, !"vp8_dec_dct_base", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 79, i32 32}
!48 = !{ptr @vp8_dec_dct_start_bits, !49, !"vp8_dec_dct_start_bits", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 126, i32 32}
!50 = !{ptr @vp8_dec_pred_bc_tap, !51, !"vp8_dec_pred_bc_tap", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 137, i32 32}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 455, i32 3}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cfg_ref._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cfg_ref._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 463, i32 3}
!59 = !{ptr @cfg_ref._entry.7, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cfg_ref._entry_ptr.9, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 473, i32 3}
!63 = !{ptr @cfg_ref._entry.10, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cfg_ref._entry_ptr.12, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"vp8_dec_start_dec", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c", i32 269, i32 32}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 5424370}
!78 = !{i64 5424788}
!79 = !{i64 2156564719}
