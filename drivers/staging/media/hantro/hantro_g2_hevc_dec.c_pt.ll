; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_g2_hevc_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_g2_hevc_dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_reg = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.v4l2_ctrl_hevc_sps = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64 }
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
%struct.v4l2_ctrl_hevc_decode_params = type { i32, i8, [16 x %struct.v4l2_hevc_dpb_entry], i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i64 }
%struct.v4l2_hevc_dpb_entry = type { i64, i8, i8, [2 x i16], [2 x i8] }
%struct.v4l2_ctrl_hevc_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [20 x i8], [22 x i8], i8, i8, i8, [4 x i8], i64 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_ctrl_hevc_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]], [6 x [64 x i8]], [2 x [64 x i8]], [6 x i8], [2 x i8] }

@set_ref.cur_poc = internal constant { [16 x %struct.hantro_reg], [32 x i8] } { [16 x %struct.hantro_reg] [%struct.hantro_reg { i32 184, i32 24, i32 255 }, %struct.hantro_reg { i32 184, i32 16, i32 255 }, %struct.hantro_reg { i32 184, i32 8, i32 255 }, %struct.hantro_reg { i32 184, i32 0, i32 255 }, %struct.hantro_reg { i32 188, i32 24, i32 255 }, %struct.hantro_reg { i32 188, i32 16, i32 255 }, %struct.hantro_reg { i32 188, i32 8, i32 255 }, %struct.hantro_reg { i32 188, i32 0, i32 255 }, %struct.hantro_reg { i32 192, i32 24, i32 255 }, %struct.hantro_reg { i32 192, i32 16, i32 255 }, %struct.hantro_reg { i32 192, i32 8, i32 255 }, %struct.hantro_reg { i32 192, i32 0, i32 255 }, %struct.hantro_reg { i32 196, i32 24, i32 255 }, %struct.hantro_reg { i32 196, i32 16, i32 255 }, %struct.hantro_reg { i32 196, i32 8, i32 255 }, %struct.hantro_reg { i32 196, i32 0, i32 255 }], [32 x i8] zeroinitializer }, align 32
@set_ref_pic_list.ref_pic_regs0 = internal constant { [16 x %struct.hantro_reg], [32 x i8] } { [16 x %struct.hantro_reg] [%struct.hantro_reg { i32 56, i32 0, i32 31 }, %struct.hantro_reg { i32 56, i32 10, i32 31 }, %struct.hantro_reg { i32 56, i32 20, i32 31 }, %struct.hantro_reg { i32 60, i32 0, i32 31 }, %struct.hantro_reg { i32 60, i32 10, i32 31 }, %struct.hantro_reg { i32 60, i32 20, i32 31 }, %struct.hantro_reg { i32 64, i32 0, i32 31 }, %struct.hantro_reg { i32 64, i32 10, i32 31 }, %struct.hantro_reg { i32 64, i32 20, i32 31 }, %struct.hantro_reg { i32 68, i32 0, i32 31 }, %struct.hantro_reg { i32 68, i32 10, i32 31 }, %struct.hantro_reg { i32 68, i32 20, i32 31 }, %struct.hantro_reg { i32 72, i32 0, i32 31 }, %struct.hantro_reg { i32 72, i32 10, i32 31 }, %struct.hantro_reg { i32 72, i32 20, i32 31 }, %struct.hantro_reg { i32 76, i32 0, i32 31 }], [32 x i8] zeroinitializer }, align 32
@set_ref_pic_list.ref_pic_regs1 = internal constant { [16 x %struct.hantro_reg], [32 x i8] } { [16 x %struct.hantro_reg] [%struct.hantro_reg { i32 56, i32 5, i32 31 }, %struct.hantro_reg { i32 56, i32 15, i32 31 }, %struct.hantro_reg { i32 56, i32 25, i32 31 }, %struct.hantro_reg { i32 60, i32 5, i32 31 }, %struct.hantro_reg { i32 60, i32 15, i32 31 }, %struct.hantro_reg { i32 60, i32 25, i32 31 }, %struct.hantro_reg { i32 64, i32 5, i32 31 }, %struct.hantro_reg { i32 64, i32 15, i32 31 }, %struct.hantro_reg { i32 64, i32 25, i32 31 }, %struct.hantro_reg { i32 68, i32 5, i32 31 }, %struct.hantro_reg { i32 68, i32 15, i32 31 }, %struct.hantro_reg { i32 68, i32 25, i32 31 }, %struct.hantro_reg { i32 72, i32 5, i32 31 }, %struct.hantro_reg { i32 72, i32 15, i32 31 }, %struct.hantro_reg { i32 72, i32 25, i32 31 }, %struct.hantro_reg { i32 76, i32 5, i32 31 }], [32 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@prepare_tile_info_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s:%d: Preparing tile sizes buffer for %dx%d CTBs (CTB size %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"prepare_tile_info_buffer\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/media/hantro/hantro_g2_hevc_dec.c\00", [46 x i8] zeroinitializer }, align 32
@prepare_tile_info_buffer._entry_ptr = internal global ptr @prepare_tile_info_buffer._entry, section ".printk_index", align 4
@prepare_tile_info_buffer._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:%d: Tiles enabled! %dx%d\0A\00", [33 x i8] zeroinitializer }, align 32
@prepare_tile_info_buffer._entry_ptr.5 = internal global ptr @prepare_tile_info_buffer._entry.3, section ".printk_index", align 4
@prepare_tile_info_buffer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s:%d: %s: no chroma!\0A\00", [39 x i8] zeroinitializer }, align 32
@prepare_tile_info_buffer._entry_ptr.8 = internal global ptr @prepare_tile_info_buffer._entry.6, section ".printk_index", align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.11, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.13, ptr @.str.11, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"cur_poc\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 363, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"ref_pic_regs0\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 278, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"ref_pic_regs1\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 296, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 38, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 3 }
@___asan_gen_.45 = private constant [53 x i8] c"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 103, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 392, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 413, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 398, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @prepare_tile_info_buffer._entry, ptr @prepare_tile_info_buffer._entry.3, ptr @prepare_tile_info_buffer._entry.6, ptr @prepare_tile_info_buffer._entry_ptr, ptr @prepare_tile_info_buffer._entry_ptr.5, ptr @prepare_tile_info_buffer._entry_ptr.8, ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @set_ref.cur_poc, ptr @set_ref_pic_list.ref_pic_regs0, ptr @set_ref_pic_list.ref_pic_regs1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ref.cur_poc to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ref_pic_list.ref_pic_regs0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_ref_pic_list.ref_pic_regs1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_tile_info_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_tile_info_buffer._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_tile_info_buffer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_g2_hevc_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %list0.i.i = alloca [16 x i32], align 4
  %list1.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  tail call void @hantro_g2_check_idle(ptr noundef %1) #5
  %call = tail call i32 @hantro_hevc_dec_prepare_run(ptr noundef %ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrls1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1
  %sps2.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sps2.i, align 4
  %pps3.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %pps3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pps3.i, align 4
  %6 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrls1.i, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %bit_depth_luma_minus8.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %bit_depth_luma_minus8.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bit_depth_luma_minus8.i, align 4
  %dec_base.i.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !43
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %16 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.vdpu_read_mask.exit.i.i_crit_edge, label %do.end.i.i.i.i

if.end.vdpu_read_mask.exit.i.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %15) #8
  br label %vdpu_read_mask.exit.i.i

vdpu_read_mask.exit.i.i:                          ; preds = %do.end.i.i.i.i, %if.end.vdpu_read_mask.exit.i.i_crit_edge
  %and.i.i.i = and i32 %15, -193
  %17 = shl i8 %11, 6
  %shl4.i.i.i = zext i8 %17 to i32
  %or.i.i.i = or i32 %and.i.i.i, %shl4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %18 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i.i.i, label %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge, label %do.end.i.i.i

vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge: ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i

do.end.i.i.i:                                     ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i.i) #8
  br label %hantro_reg_write.exit.i

hantro_reg_write.exit.i:                          ; preds = %do.end.i.i.i, %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %20 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %19) #5, !srcloc !45
  %bit_depth_chroma_minus8.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %bit_depth_chroma_minus8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bit_depth_chroma_minus8.i, align 1
  %24 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i645.i = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i645.i) #5, !srcloc !43
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %28 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i646.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i646.i)
  %tobool.not.i.i.i647.i = icmp eq i32 %and.i.i.i646.i, 0
  br i1 %tobool.not.i.i.i647.i, label %hantro_reg_write.exit.i.vdpu_read_mask.exit.i661.i_crit_edge, label %do.end.i.i.i650.i

hantro_reg_write.exit.i.vdpu_read_mask.exit.i661.i_crit_edge: ; preds = %hantro_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i661.i

do.end.i.i.i650.i:                                ; preds = %hantro_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i649.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %27) #8
  br label %vdpu_read_mask.exit.i661.i

vdpu_read_mask.exit.i661.i:                       ; preds = %do.end.i.i.i650.i, %hantro_reg_write.exit.i.vdpu_read_mask.exit.i661.i_crit_edge
  %and.i.i655.i = and i32 %27, -49
  %29 = shl i8 %23, 4
  %30 = and i8 %29, 48
  %shl4.i.i657.i = zext i8 %30 to i32
  %or.i.i658.i = or i32 %and.i.i655.i, %shl4.i.i657.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %31 = load i32, ptr @hantro_debug, align 4
  %and.i3.i659.i = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i659.i)
  %tobool.not.i.i660.i = icmp eq i32 %and.i3.i659.i, 0
  br i1 %tobool.not.i.i660.i, label %vdpu_read_mask.exit.i661.i.hantro_reg_write.exit666.i_crit_edge, label %do.end.i.i664.i

vdpu_read_mask.exit.i661.i.hantro_reg_write.exit666.i_crit_edge: ; preds = %vdpu_read_mask.exit.i661.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit666.i

do.end.i.i664.i:                                  ; preds = %vdpu_read_mask.exit.i661.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i663.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i658.i) #8
  br label %hantro_reg_write.exit666.i

hantro_reg_write.exit666.i:                       ; preds = %do.end.i.i664.i, %vdpu_read_mask.exit.i661.i.hantro_reg_write.exit666.i_crit_edge
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i658.i) #5
  %33 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i665.i = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i665.i, i32 %32) #5, !srcloc !45
  %35 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i668.i = getelementptr i8, ptr %36, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i668.i) #5, !srcloc !43
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %39 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i669.i = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i669.i)
  %tobool.not.i.i.i670.i = icmp eq i32 %and.i.i.i669.i, 0
  br i1 %tobool.not.i.i.i670.i, label %hantro_reg_write.exit666.i.vdpu_read_mask.exit.i681.i_crit_edge, label %do.end.i.i.i673.i

hantro_reg_write.exit666.i.vdpu_read_mask.exit.i681.i_crit_edge: ; preds = %hantro_reg_write.exit666.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i681.i

do.end.i.i.i673.i:                                ; preds = %hantro_reg_write.exit666.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i672.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %38) #8
  br label %vdpu_read_mask.exit.i681.i

vdpu_read_mask.exit.i681.i:                       ; preds = %do.end.i.i.i673.i, %hantro_reg_write.exit666.i.vdpu_read_mask.exit.i681.i_crit_edge
  %and.i.i678.i = and i32 %38, -9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %40 = load i32, ptr @hantro_debug, align 4
  %and.i3.i679.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i679.i)
  %tobool.not.i.i680.i = icmp eq i32 %and.i3.i679.i, 0
  br i1 %tobool.not.i.i680.i, label %vdpu_read_mask.exit.i681.i.hantro_reg_write.exit686.i_crit_edge, label %do.end.i.i684.i

vdpu_read_mask.exit.i681.i.hantro_reg_write.exit686.i_crit_edge: ; preds = %vdpu_read_mask.exit.i681.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit686.i

do.end.i.i684.i:                                  ; preds = %vdpu_read_mask.exit.i681.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i683.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %and.i.i678.i) #8
  br label %hantro_reg_write.exit686.i

hantro_reg_write.exit686.i:                       ; preds = %do.end.i.i684.i, %vdpu_read_mask.exit.i681.i.hantro_reg_write.exit686.i_crit_edge
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i.i678.i) #5
  %42 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i685.i = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i685.i, i32 %41) #5, !srcloc !45
  %hevc_hdr_skip_length.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %hevc_hdr_skip_length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hevc_hdr_skip_length.i, align 4
  %46 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i688.i = getelementptr i8, ptr %47, i32 36
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i688.i) #5, !srcloc !43
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %50 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i689.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i689.i)
  %tobool.not.i.i.i690.i = icmp eq i32 %and.i.i.i689.i, 0
  br i1 %tobool.not.i.i.i690.i, label %hantro_reg_write.exit686.i.vdpu_read_mask.exit.i704.i_crit_edge, label %do.end.i.i.i693.i

hantro_reg_write.exit686.i.vdpu_read_mask.exit.i704.i_crit_edge: ; preds = %hantro_reg_write.exit686.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i704.i

do.end.i.i.i693.i:                                ; preds = %hantro_reg_write.exit686.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i692.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 9, i32 noundef %49) #8
  br label %vdpu_read_mask.exit.i704.i

vdpu_read_mask.exit.i704.i:                       ; preds = %do.end.i.i.i693.i, %hantro_reg_write.exit686.i.vdpu_read_mask.exit.i704.i_crit_edge
  %and.i.i698.i = and i32 %49, -16384
  %and2.i.i699.i = and i32 %45, 16383
  %or.i.i701.i = or i32 %and.i.i698.i, %and2.i.i699.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %51 = load i32, ptr @hantro_debug, align 4
  %and.i3.i702.i = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i702.i)
  %tobool.not.i.i703.i = icmp eq i32 %and.i3.i702.i, 0
  br i1 %tobool.not.i.i703.i, label %vdpu_read_mask.exit.i704.i.hantro_reg_write.exit709.i_crit_edge, label %do.end.i.i707.i

vdpu_read_mask.exit.i704.i.hantro_reg_write.exit709.i_crit_edge: ; preds = %vdpu_read_mask.exit.i704.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit709.i

do.end.i.i707.i:                                  ; preds = %vdpu_read_mask.exit.i704.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i706.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 9, i32 noundef %or.i.i701.i) #8
  br label %hantro_reg_write.exit709.i

hantro_reg_write.exit709.i:                       ; preds = %do.end.i.i707.i, %vdpu_read_mask.exit.i704.i.hantro_reg_write.exit709.i_crit_edge
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i701.i) #5
  %53 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i708.i = getelementptr i8, ptr %54, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i708.i, i32 %52) #5, !srcloc !45
  %log2_min_luma_coding_block_size_minus3.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 8
  %55 = ptrtoint ptr %log2_min_luma_coding_block_size_minus3.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %log2_min_luma_coding_block_size_minus3.i, align 2
  %conv18.i = zext i8 %56 to i32
  %add.i = add nuw nsw i32 %conv18.i, 3
  %log2_diff_max_min_luma_coding_block_size.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 9
  %57 = ptrtoint ptr %log2_diff_max_min_luma_coding_block_size.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %log2_diff_max_min_luma_coding_block_size.i, align 1
  %conv19.i = zext i8 %58 to i32
  %add20.i = add nuw nsw i32 %add.i, %conv19.i
  %59 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i711.i = getelementptr i8, ptr %60, i32 48
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i711.i) #5, !srcloc !43
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %63 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i712.i = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i712.i)
  %tobool.not.i.i.i713.i = icmp eq i32 %and.i.i.i712.i, 0
  br i1 %tobool.not.i.i.i713.i, label %hantro_reg_write.exit709.i.vdpu_read_mask.exit.i727.i_crit_edge, label %do.end.i.i.i716.i

hantro_reg_write.exit709.i.vdpu_read_mask.exit.i727.i_crit_edge: ; preds = %hantro_reg_write.exit709.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i727.i

do.end.i.i.i716.i:                                ; preds = %hantro_reg_write.exit709.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i715.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %62) #8
  br label %vdpu_read_mask.exit.i727.i

vdpu_read_mask.exit.i727.i:                       ; preds = %do.end.i.i.i716.i, %hantro_reg_write.exit709.i.vdpu_read_mask.exit.i727.i_crit_edge
  %and.i.i721.i = and i32 %62, -57345
  %and2.i.i722.i = shl nuw nsw i32 %add.i, 13
  %shl4.i.i723.i = and i32 %and2.i.i722.i, 57344
  %or.i.i724.i = or i32 %and.i.i721.i, %shl4.i.i723.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %64 = load i32, ptr @hantro_debug, align 4
  %and.i3.i725.i = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i725.i)
  %tobool.not.i.i726.i = icmp eq i32 %and.i3.i725.i, 0
  br i1 %tobool.not.i.i726.i, label %vdpu_read_mask.exit.i727.i.hantro_reg_write.exit732.i_crit_edge, label %do.end.i.i730.i

vdpu_read_mask.exit.i727.i.hantro_reg_write.exit732.i_crit_edge: ; preds = %vdpu_read_mask.exit.i727.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit732.i

do.end.i.i730.i:                                  ; preds = %vdpu_read_mask.exit.i727.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i729.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i724.i) #8
  br label %hantro_reg_write.exit732.i

hantro_reg_write.exit732.i:                       ; preds = %do.end.i.i730.i, %vdpu_read_mask.exit.i727.i.hantro_reg_write.exit732.i_crit_edge
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i.i724.i) #5
  %66 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i731.i = getelementptr i8, ptr %67, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i731.i, i32 %65) #5, !srcloc !45
  %68 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i734.i = getelementptr i8, ptr %69, i32 48
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i734.i) #5, !srcloc !43
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %72 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i735.i = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i735.i)
  %tobool.not.i.i.i736.i = icmp eq i32 %and.i.i.i735.i, 0
  br i1 %tobool.not.i.i.i736.i, label %hantro_reg_write.exit732.i.vdpu_read_mask.exit.i750.i_crit_edge, label %do.end.i.i.i739.i

hantro_reg_write.exit732.i.vdpu_read_mask.exit.i750.i_crit_edge: ; preds = %hantro_reg_write.exit732.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i750.i

do.end.i.i.i739.i:                                ; preds = %hantro_reg_write.exit732.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i738.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %71) #8
  br label %vdpu_read_mask.exit.i750.i

vdpu_read_mask.exit.i750.i:                       ; preds = %do.end.i.i.i739.i, %hantro_reg_write.exit732.i.vdpu_read_mask.exit.i750.i_crit_edge
  %and.i.i744.i = and i32 %71, -7169
  %and2.i.i745.i = shl nuw nsw i32 %add20.i, 10
  %shl4.i.i746.i = and i32 %and2.i.i745.i, 7168
  %or.i.i747.i = or i32 %and.i.i744.i, %shl4.i.i746.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %73 = load i32, ptr @hantro_debug, align 4
  %and.i3.i748.i = and i32 %73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i748.i)
  %tobool.not.i.i749.i = icmp eq i32 %and.i3.i748.i, 0
  br i1 %tobool.not.i.i749.i, label %vdpu_read_mask.exit.i750.i.hantro_reg_write.exit755.i_crit_edge, label %do.end.i.i753.i

vdpu_read_mask.exit.i750.i.hantro_reg_write.exit755.i_crit_edge: ; preds = %vdpu_read_mask.exit.i750.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit755.i

do.end.i.i753.i:                                  ; preds = %vdpu_read_mask.exit.i750.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i752.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i747.i) #8
  br label %hantro_reg_write.exit755.i

hantro_reg_write.exit755.i:                       ; preds = %do.end.i.i753.i, %vdpu_read_mask.exit.i750.i.hantro_reg_write.exit755.i_crit_edge
  %74 = tail call i32 @llvm.bswap.i32(i32 %or.i.i747.i) #5
  %75 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i754.i = getelementptr i8, ptr %76, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i754.i, i32 %74) #5, !srcloc !45
  %shl.i = shl i32 8, %conv18.i
  %shl29.i = shl nuw i32 1, %add20.i
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %3, align 8
  %conv30.i = zext i16 %78 to i32
  %div640.i = lshr i32 %conv30.i, %add.i
  %pic_height_in_luma_samples.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 1
  %79 = ptrtoint ptr %pic_height_in_luma_samples.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pic_height_in_luma_samples.i, align 2
  %conv31.i = zext i16 %80 to i32
  %div32641.i = lshr i32 %conv31.i, %add.i
  %conv36.i = and i32 %shl29.i, 65535
  %sub.i = add nsw i32 %conv36.i, -1
  %add37.i = add nsw i32 %sub.i, %conv30.i
  %neg.i = sub nsw i32 0, %conv36.i
  %and.i = and i32 %add37.i, %neg.i
  %add46.i = add nsw i32 %sub.i, %conv31.i
  %and51.i = and i32 %add46.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv30.i)
  %cmp.not.i = icmp eq i32 %and.i, %conv30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and51.i, i32 %conv31.i)
  %cmp58.not.i = icmp eq i32 %and51.i, %conv31.i
  %81 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i757.i = getelementptr i8, ptr %82, i32 80
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i757.i) #5, !srcloc !43
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %85 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i758.i = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i758.i)
  %tobool.not.i.i.i759.i = icmp eq i32 %and.i.i.i758.i, 0
  br i1 %tobool.not.i.i.i759.i, label %hantro_reg_write.exit755.i.vdpu_read_mask.exit.i773.i_crit_edge, label %do.end.i.i.i762.i

hantro_reg_write.exit755.i.vdpu_read_mask.exit.i773.i_crit_edge: ; preds = %hantro_reg_write.exit755.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i773.i

do.end.i.i.i762.i:                                ; preds = %hantro_reg_write.exit755.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i761.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 20, i32 noundef %84) #8
  br label %vdpu_read_mask.exit.i773.i

vdpu_read_mask.exit.i773.i:                       ; preds = %do.end.i.i.i762.i, %hantro_reg_write.exit755.i.vdpu_read_mask.exit.i773.i_crit_edge
  %and.i.i767.i = and i32 %84, 2147483647
  %shl4.i.i769.i = select i1 %cmp.not.i, i32 0, i32 -2147483648
  %or.i.i770.i = or i32 %and.i.i767.i, %shl4.i.i769.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %86 = load i32, ptr @hantro_debug, align 4
  %and.i3.i771.i = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i771.i)
  %tobool.not.i.i772.i = icmp eq i32 %and.i3.i771.i, 0
  br i1 %tobool.not.i.i772.i, label %vdpu_read_mask.exit.i773.i.hantro_reg_write.exit778.i_crit_edge, label %do.end.i.i776.i

vdpu_read_mask.exit.i773.i.hantro_reg_write.exit778.i_crit_edge: ; preds = %vdpu_read_mask.exit.i773.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit778.i

do.end.i.i776.i:                                  ; preds = %vdpu_read_mask.exit.i773.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i775.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 20, i32 noundef %or.i.i770.i) #8
  br label %hantro_reg_write.exit778.i

hantro_reg_write.exit778.i:                       ; preds = %do.end.i.i776.i, %vdpu_read_mask.exit.i773.i.hantro_reg_write.exit778.i_crit_edge
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i.i770.i) #5
  %88 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i777.i = getelementptr i8, ptr %89, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i777.i, i32 %87) #5, !srcloc !45
  %90 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i780.i = getelementptr i8, ptr %91, i32 80
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i780.i) #5, !srcloc !43
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %94 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i781.i = and i32 %94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i781.i)
  %tobool.not.i.i.i782.i = icmp eq i32 %and.i.i.i781.i, 0
  br i1 %tobool.not.i.i.i782.i, label %hantro_reg_write.exit778.i.vdpu_read_mask.exit.i796.i_crit_edge, label %do.end.i.i.i785.i

hantro_reg_write.exit778.i.vdpu_read_mask.exit.i796.i_crit_edge: ; preds = %hantro_reg_write.exit778.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i796.i

do.end.i.i.i785.i:                                ; preds = %hantro_reg_write.exit778.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i784.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 20, i32 noundef %93) #8
  br label %vdpu_read_mask.exit.i796.i

vdpu_read_mask.exit.i796.i:                       ; preds = %do.end.i.i.i785.i, %hantro_reg_write.exit778.i.vdpu_read_mask.exit.i796.i_crit_edge
  %and.i.i790.i = and i32 %93, -1073741825
  %shl4.i.i792.i = select i1 %cmp58.not.i, i32 0, i32 1073741824
  %or.i.i793.i = or i32 %and.i.i790.i, %shl4.i.i792.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %95 = load i32, ptr @hantro_debug, align 4
  %and.i3.i794.i = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i794.i)
  %tobool.not.i.i795.i = icmp eq i32 %and.i3.i794.i, 0
  br i1 %tobool.not.i.i795.i, label %vdpu_read_mask.exit.i796.i.hantro_reg_write.exit801.i_crit_edge, label %do.end.i.i799.i

vdpu_read_mask.exit.i796.i.hantro_reg_write.exit801.i_crit_edge: ; preds = %vdpu_read_mask.exit.i796.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit801.i

do.end.i.i799.i:                                  ; preds = %vdpu_read_mask.exit.i796.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i798.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 20, i32 noundef %or.i.i793.i) #8
  br label %hantro_reg_write.exit801.i

hantro_reg_write.exit801.i:                       ; preds = %do.end.i.i799.i, %vdpu_read_mask.exit.i796.i.hantro_reg_write.exit801.i_crit_edge
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i793.i) #5
  %97 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i800.i = getelementptr i8, ptr %98, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i800.i, i32 %96) #5, !srcloc !45
  %99 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i803.i = getelementptr i8, ptr %100, i32 16
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i803.i) #5, !srcloc !43
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %103 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i804.i = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i804.i)
  %tobool.not.i.i.i805.i = icmp eq i32 %and.i.i.i804.i, 0
  br i1 %tobool.not.i.i.i805.i, label %hantro_reg_write.exit801.i.vdpu_read_mask.exit.i819.i_crit_edge, label %do.end.i.i.i808.i

hantro_reg_write.exit801.i.vdpu_read_mask.exit.i819.i_crit_edge: ; preds = %hantro_reg_write.exit801.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i819.i

do.end.i.i.i808.i:                                ; preds = %hantro_reg_write.exit801.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i807.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 4, i32 noundef %102) #8
  br label %vdpu_read_mask.exit.i819.i

vdpu_read_mask.exit.i819.i:                       ; preds = %do.end.i.i.i808.i, %hantro_reg_write.exit801.i.vdpu_read_mask.exit.i819.i_crit_edge
  %and.i.i813.i = and i32 %102, 524287
  %and2.i.i814.i = shl nuw i32 %div640.i, 19
  %or.i.i816.i = or i32 %and.i.i813.i, %and2.i.i814.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %104 = load i32, ptr @hantro_debug, align 4
  %and.i3.i817.i = and i32 %104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i817.i)
  %tobool.not.i.i818.i = icmp eq i32 %and.i3.i817.i, 0
  br i1 %tobool.not.i.i818.i, label %vdpu_read_mask.exit.i819.i.hantro_reg_write.exit824.i_crit_edge, label %do.end.i.i822.i

vdpu_read_mask.exit.i819.i.hantro_reg_write.exit824.i_crit_edge: ; preds = %vdpu_read_mask.exit.i819.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit824.i

do.end.i.i822.i:                                  ; preds = %vdpu_read_mask.exit.i819.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i821.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 4, i32 noundef %or.i.i816.i) #8
  br label %hantro_reg_write.exit824.i

hantro_reg_write.exit824.i:                       ; preds = %do.end.i.i822.i, %vdpu_read_mask.exit.i819.i.hantro_reg_write.exit824.i_crit_edge
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i.i816.i) #5
  %106 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i823.i = getelementptr i8, ptr %107, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i823.i, i32 %105) #5, !srcloc !45
  %108 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i826.i = getelementptr i8, ptr %109, i32 16
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i826.i) #5, !srcloc !43
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %112 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i827.i = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i827.i)
  %tobool.not.i.i.i828.i = icmp eq i32 %and.i.i.i827.i, 0
  br i1 %tobool.not.i.i.i828.i, label %hantro_reg_write.exit824.i.vdpu_read_mask.exit.i842.i_crit_edge, label %do.end.i.i.i831.i

hantro_reg_write.exit824.i.vdpu_read_mask.exit.i842.i_crit_edge: ; preds = %hantro_reg_write.exit824.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i842.i

do.end.i.i.i831.i:                                ; preds = %hantro_reg_write.exit824.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i830.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 4, i32 noundef %111) #8
  br label %vdpu_read_mask.exit.i842.i

vdpu_read_mask.exit.i842.i:                       ; preds = %do.end.i.i.i831.i, %hantro_reg_write.exit824.i.vdpu_read_mask.exit.i842.i_crit_edge
  %and.i.i836.i = and i32 %111, -524225
  %and2.i.i837.i = shl nuw nsw i32 %div32641.i, 6
  %shl4.i.i838.i = and i32 %and2.i.i837.i, 524224
  %or.i.i839.i = or i32 %and.i.i836.i, %shl4.i.i838.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %113 = load i32, ptr @hantro_debug, align 4
  %and.i3.i840.i = and i32 %113, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i840.i)
  %tobool.not.i.i841.i = icmp eq i32 %and.i3.i840.i, 0
  br i1 %tobool.not.i.i841.i, label %vdpu_read_mask.exit.i842.i.hantro_reg_write.exit847.i_crit_edge, label %do.end.i.i845.i

vdpu_read_mask.exit.i842.i.hantro_reg_write.exit847.i_crit_edge: ; preds = %vdpu_read_mask.exit.i842.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit847.i

do.end.i.i845.i:                                  ; preds = %vdpu_read_mask.exit.i842.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i844.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 4, i32 noundef %or.i.i839.i) #8
  br label %hantro_reg_write.exit847.i

hantro_reg_write.exit847.i:                       ; preds = %do.end.i.i845.i, %vdpu_read_mask.exit.i842.i.hantro_reg_write.exit847.i_crit_edge
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i.i839.i) #5
  %115 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i846.i = getelementptr i8, ptr %116, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i846.i, i32 %114) #5, !srcloc !45
  %117 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i849.i = getelementptr i8, ptr %118, i32 80
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i849.i) #5, !srcloc !43
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %121 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i850.i = and i32 %121, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i850.i)
  %tobool.not.i.i.i851.i = icmp eq i32 %and.i.i.i850.i, 0
  br i1 %tobool.not.i.i.i851.i, label %hantro_reg_write.exit847.i.vdpu_read_mask.exit.i865.i_crit_edge, label %do.end.i.i.i854.i

hantro_reg_write.exit847.i.vdpu_read_mask.exit.i865.i_crit_edge: ; preds = %hantro_reg_write.exit847.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i865.i

do.end.i.i.i854.i:                                ; preds = %hantro_reg_write.exit847.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i853.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 20, i32 noundef %120) #8
  br label %vdpu_read_mask.exit.i865.i

vdpu_read_mask.exit.i865.i:                       ; preds = %do.end.i.i.i854.i, %hantro_reg_write.exit847.i.vdpu_read_mask.exit.i865.i_crit_edge
  %and.i.i859.i = and i32 %120, -268369921
  %mul.i = shl i32 %shl.i, 14
  %and2.i.i860.i = mul i32 %mul.i, %div640.i
  %shl4.i.i861.i = and i32 %and2.i.i860.i, 268304384
  %or.i.i862.i = or i32 %and.i.i859.i, %shl4.i.i861.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %122 = load i32, ptr @hantro_debug, align 4
  %and.i3.i863.i = and i32 %122, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i863.i)
  %tobool.not.i.i864.i = icmp eq i32 %and.i3.i863.i, 0
  br i1 %tobool.not.i.i864.i, label %vdpu_read_mask.exit.i865.i.hantro_reg_write.exit870.i_crit_edge, label %do.end.i.i868.i

vdpu_read_mask.exit.i865.i.hantro_reg_write.exit870.i_crit_edge: ; preds = %vdpu_read_mask.exit.i865.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit870.i

do.end.i.i868.i:                                  ; preds = %vdpu_read_mask.exit.i865.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i867.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 20, i32 noundef %or.i.i862.i) #8
  br label %hantro_reg_write.exit870.i

hantro_reg_write.exit870.i:                       ; preds = %do.end.i.i868.i, %vdpu_read_mask.exit.i865.i.hantro_reg_write.exit870.i_crit_edge
  %123 = tail call i32 @llvm.bswap.i32(i32 %or.i.i862.i) #5
  %124 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i869.i = getelementptr i8, ptr %125, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i869.i, i32 %123) #5, !srcloc !45
  %mul89.i = mul i32 %div32641.i, %shl.i
  %div90643.i = lshr exact i32 %mul89.i, 2
  %126 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i872.i = getelementptr i8, ptr %127, i32 80
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i872.i) #5, !srcloc !43
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %130 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i873.i = and i32 %130, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i873.i)
  %tobool.not.i.i.i874.i = icmp eq i32 %and.i.i.i873.i, 0
  br i1 %tobool.not.i.i.i874.i, label %hantro_reg_write.exit870.i.vdpu_read_mask.exit.i888.i_crit_edge, label %do.end.i.i.i877.i

hantro_reg_write.exit870.i.vdpu_read_mask.exit.i888.i_crit_edge: ; preds = %hantro_reg_write.exit870.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i888.i

do.end.i.i.i877.i:                                ; preds = %hantro_reg_write.exit870.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i876.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 20, i32 noundef %129) #8
  br label %vdpu_read_mask.exit.i888.i

vdpu_read_mask.exit.i888.i:                       ; preds = %do.end.i.i.i877.i, %hantro_reg_write.exit870.i.vdpu_read_mask.exit.i888.i_crit_edge
  %and.i.i882.i = and i32 %129, -4096
  %and2.i.i883.i = and i32 %div90643.i, 4094
  %or.i.i885.i = or i32 %and.i.i882.i, %and2.i.i883.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %131 = load i32, ptr @hantro_debug, align 4
  %and.i3.i886.i = and i32 %131, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i886.i)
  %tobool.not.i.i887.i = icmp eq i32 %and.i3.i886.i, 0
  br i1 %tobool.not.i.i887.i, label %vdpu_read_mask.exit.i888.i.hantro_reg_write.exit893.i_crit_edge, label %do.end.i.i891.i

vdpu_read_mask.exit.i888.i.hantro_reg_write.exit893.i_crit_edge: ; preds = %vdpu_read_mask.exit.i888.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit893.i

do.end.i.i891.i:                                  ; preds = %vdpu_read_mask.exit.i888.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i890.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 20, i32 noundef %or.i.i885.i) #8
  br label %hantro_reg_write.exit893.i

hantro_reg_write.exit893.i:                       ; preds = %do.end.i.i891.i, %vdpu_read_mask.exit.i888.i.hantro_reg_write.exit893.i_crit_edge
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i.i885.i) #5
  %133 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i892.i = getelementptr i8, ptr %134, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i892.i, i32 %132) #5, !srcloc !45
  %max_transform_hierarchy_depth_inter.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 12
  %135 = ptrtoint ptr %max_transform_hierarchy_depth_inter.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %max_transform_hierarchy_depth_inter.i, align 2
  %137 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i895.i = getelementptr i8, ptr %138, i32 52
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i895.i) #5, !srcloc !43
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %141 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i896.i = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i896.i)
  %tobool.not.i.i.i897.i = icmp eq i32 %and.i.i.i896.i, 0
  br i1 %tobool.not.i.i.i897.i, label %hantro_reg_write.exit893.i.vdpu_read_mask.exit.i911.i_crit_edge, label %do.end.i.i.i900.i

hantro_reg_write.exit893.i.vdpu_read_mask.exit.i911.i_crit_edge: ; preds = %hantro_reg_write.exit893.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i911.i

do.end.i.i.i900.i:                                ; preds = %hantro_reg_write.exit893.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i899.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 13, i32 noundef %140) #8
  br label %vdpu_read_mask.exit.i911.i

vdpu_read_mask.exit.i911.i:                       ; preds = %do.end.i.i.i900.i, %hantro_reg_write.exit893.i.vdpu_read_mask.exit.i911.i_crit_edge
  %and.i.i905.i = and i32 %140, -113
  %142 = shl i8 %136, 4
  %143 = and i8 %142, 112
  %shl4.i.i907.i = zext i8 %143 to i32
  %or.i.i908.i = or i32 %and.i.i905.i, %shl4.i.i907.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %144 = load i32, ptr @hantro_debug, align 4
  %and.i3.i909.i = and i32 %144, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i909.i)
  %tobool.not.i.i910.i = icmp eq i32 %and.i3.i909.i, 0
  br i1 %tobool.not.i.i910.i, label %vdpu_read_mask.exit.i911.i.hantro_reg_write.exit916.i_crit_edge, label %do.end.i.i914.i

vdpu_read_mask.exit.i911.i.hantro_reg_write.exit916.i_crit_edge: ; preds = %vdpu_read_mask.exit.i911.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit916.i

do.end.i.i914.i:                                  ; preds = %vdpu_read_mask.exit.i911.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i913.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i908.i) #8
  br label %hantro_reg_write.exit916.i

hantro_reg_write.exit916.i:                       ; preds = %do.end.i.i914.i, %vdpu_read_mask.exit.i911.i.hantro_reg_write.exit916.i_crit_edge
  %145 = tail call i32 @llvm.bswap.i32(i32 %or.i.i908.i) #5
  %146 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i915.i = getelementptr i8, ptr %147, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i915.i, i32 %145) #5, !srcloc !45
  %max_transform_hierarchy_depth_intra.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 13
  %148 = ptrtoint ptr %max_transform_hierarchy_depth_intra.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %max_transform_hierarchy_depth_intra.i, align 1
  %150 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i918.i = getelementptr i8, ptr %151, i32 52
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i918.i) #5, !srcloc !43
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %154 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i919.i = and i32 %154, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i919.i)
  %tobool.not.i.i.i920.i = icmp eq i32 %and.i.i.i919.i, 0
  br i1 %tobool.not.i.i.i920.i, label %hantro_reg_write.exit916.i.vdpu_read_mask.exit.i934.i_crit_edge, label %do.end.i.i.i923.i

hantro_reg_write.exit916.i.vdpu_read_mask.exit.i934.i_crit_edge: ; preds = %hantro_reg_write.exit916.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i934.i

do.end.i.i.i923.i:                                ; preds = %hantro_reg_write.exit916.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i922.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 13, i32 noundef %153) #8
  br label %vdpu_read_mask.exit.i934.i

vdpu_read_mask.exit.i934.i:                       ; preds = %do.end.i.i.i923.i, %hantro_reg_write.exit916.i.vdpu_read_mask.exit.i934.i_crit_edge
  %and.i.i928.i = and i32 %153, -897
  %155 = and i8 %149, 7
  %and2.i.i929.i = zext i8 %155 to i32
  %shl4.i.i930.i = shl nuw nsw i32 %and2.i.i929.i, 7
  %or.i.i931.i = or i32 %and.i.i928.i, %shl4.i.i930.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %156 = load i32, ptr @hantro_debug, align 4
  %and.i3.i932.i = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i932.i)
  %tobool.not.i.i933.i = icmp eq i32 %and.i3.i932.i, 0
  br i1 %tobool.not.i.i933.i, label %vdpu_read_mask.exit.i934.i.hantro_reg_write.exit939.i_crit_edge, label %do.end.i.i937.i

vdpu_read_mask.exit.i934.i.hantro_reg_write.exit939.i_crit_edge: ; preds = %vdpu_read_mask.exit.i934.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit939.i

do.end.i.i937.i:                                  ; preds = %vdpu_read_mask.exit.i934.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i936.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i931.i) #8
  br label %hantro_reg_write.exit939.i

hantro_reg_write.exit939.i:                       ; preds = %do.end.i.i937.i, %vdpu_read_mask.exit.i934.i.hantro_reg_write.exit939.i_crit_edge
  %157 = tail call i32 @llvm.bswap.i32(i32 %or.i.i931.i) #5
  %158 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i938.i = getelementptr i8, ptr %159, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i938.i, i32 %157) #5, !srcloc !45
  %log2_min_luma_transform_block_size_minus2.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 10
  %160 = ptrtoint ptr %log2_min_luma_transform_block_size_minus2.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %log2_min_luma_transform_block_size_minus2.i, align 4
  %162 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i941.i = getelementptr i8, ptr %163, i32 52
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i941.i) #5, !srcloc !43
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %166 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i942.i = and i32 %166, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i942.i)
  %tobool.not.i.i.i943.i = icmp eq i32 %and.i.i.i942.i, 0
  br i1 %tobool.not.i.i.i943.i, label %hantro_reg_write.exit939.i.vdpu_read_mask.exit.i957.i_crit_edge, label %do.end.i.i.i946.i

hantro_reg_write.exit939.i.vdpu_read_mask.exit.i957.i_crit_edge: ; preds = %hantro_reg_write.exit939.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i957.i

do.end.i.i.i946.i:                                ; preds = %hantro_reg_write.exit939.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i945.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 13, i32 noundef %165) #8
  br label %vdpu_read_mask.exit.i957.i

vdpu_read_mask.exit.i957.i:                       ; preds = %do.end.i.i.i946.i, %hantro_reg_write.exit939.i.vdpu_read_mask.exit.i957.i_crit_edge
  %and.i.i951.i = and i32 %165, -57345
  %167 = add i8 %161, 2
  %168 = and i8 %167, 7
  %and2.i.i952.i = zext i8 %168 to i32
  %shl4.i.i953.i = shl nuw nsw i32 %and2.i.i952.i, 13
  %or.i.i954.i = or i32 %and.i.i951.i, %shl4.i.i953.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %169 = load i32, ptr @hantro_debug, align 4
  %and.i3.i955.i = and i32 %169, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i955.i)
  %tobool.not.i.i956.i = icmp eq i32 %and.i3.i955.i, 0
  br i1 %tobool.not.i.i956.i, label %vdpu_read_mask.exit.i957.i.hantro_reg_write.exit962.i_crit_edge, label %do.end.i.i960.i

vdpu_read_mask.exit.i957.i.hantro_reg_write.exit962.i_crit_edge: ; preds = %vdpu_read_mask.exit.i957.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit962.i

do.end.i.i960.i:                                  ; preds = %vdpu_read_mask.exit.i957.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i959.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i954.i) #8
  br label %hantro_reg_write.exit962.i

hantro_reg_write.exit962.i:                       ; preds = %do.end.i.i960.i, %vdpu_read_mask.exit.i957.i.hantro_reg_write.exit962.i_crit_edge
  %170 = tail call i32 @llvm.bswap.i32(i32 %or.i.i954.i) #5
  %171 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i961.i = getelementptr i8, ptr %172, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i961.i, i32 %170) #5, !srcloc !45
  %173 = ptrtoint ptr %log2_min_luma_transform_block_size_minus2.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %log2_min_luma_transform_block_size_minus2.i, align 4
  %conv112.i = zext i8 %174 to i32
  %add113.i = add nuw nsw i32 %conv112.i, 2
  %log2_diff_max_min_luma_transform_block_size.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 11
  %175 = ptrtoint ptr %log2_diff_max_min_luma_transform_block_size.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %log2_diff_max_min_luma_transform_block_size.i, align 1
  %conv114.i = zext i8 %176 to i32
  %add115.i = add nuw nsw i32 %add113.i, %conv114.i
  %177 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i964.i = getelementptr i8, ptr %178, i32 52
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i964.i) #5, !srcloc !43
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %181 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i965.i = and i32 %181, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i965.i)
  %tobool.not.i.i.i966.i = icmp eq i32 %and.i.i.i965.i, 0
  br i1 %tobool.not.i.i.i966.i, label %hantro_reg_write.exit962.i.vdpu_read_mask.exit.i980.i_crit_edge, label %do.end.i.i.i969.i

hantro_reg_write.exit962.i.vdpu_read_mask.exit.i980.i_crit_edge: ; preds = %hantro_reg_write.exit962.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i980.i

do.end.i.i.i969.i:                                ; preds = %hantro_reg_write.exit962.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i968.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 13, i32 noundef %180) #8
  br label %vdpu_read_mask.exit.i980.i

vdpu_read_mask.exit.i980.i:                       ; preds = %do.end.i.i.i969.i, %hantro_reg_write.exit962.i.vdpu_read_mask.exit.i980.i_crit_edge
  %and.i.i974.i = and i32 %180, -7169
  %and2.i.i975.i = shl nuw nsw i32 %add115.i, 10
  %shl4.i.i976.i = and i32 %and2.i.i975.i, 7168
  %or.i.i977.i = or i32 %and.i.i974.i, %shl4.i.i976.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %182 = load i32, ptr @hantro_debug, align 4
  %and.i3.i978.i = and i32 %182, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i978.i)
  %tobool.not.i.i979.i = icmp eq i32 %and.i3.i978.i, 0
  br i1 %tobool.not.i.i979.i, label %vdpu_read_mask.exit.i980.i.hantro_reg_write.exit985.i_crit_edge, label %do.end.i.i983.i

vdpu_read_mask.exit.i980.i.hantro_reg_write.exit985.i_crit_edge: ; preds = %vdpu_read_mask.exit.i980.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit985.i

do.end.i.i983.i:                                  ; preds = %vdpu_read_mask.exit.i980.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i982.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i977.i) #8
  br label %hantro_reg_write.exit985.i

hantro_reg_write.exit985.i:                       ; preds = %do.end.i.i983.i, %vdpu_read_mask.exit.i980.i.hantro_reg_write.exit985.i_crit_edge
  %183 = tail call i32 @llvm.bswap.i32(i32 %or.i.i977.i) #5
  %184 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i984.i = getelementptr i8, ptr %185, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i984.i, i32 %183) #5, !srcloc !45
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 22
  %186 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %flags.i, align 8
  %and120.i = and i64 %187, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120.i)
  %tobool.not.i = icmp eq i64 %and120.i, 0
  br i1 %tobool.not.i, label %hantro_reg_write.exit985.i.land.end.i_crit_edge, label %land.rhs.i

hantro_reg_write.exit985.i.land.end.i_crit_edge:  ; preds = %hantro_reg_write.exit985.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %hantro_reg_write.exit985.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags121.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %7, i32 0, i32 9
  %188 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %flags121.i, align 8
  %190 = trunc i64 %189 to i32
  %191 = lshr i32 %190, 1
  %192 = and i32 %191, 1
  %193 = xor i32 %192, 1
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %hantro_reg_write.exit985.i.land.end.i_crit_edge
  %194 = phi i32 [ 0, %hantro_reg_write.exit985.i.land.end.i_crit_edge ], [ %193, %land.rhs.i ]
  %195 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i987.i = getelementptr i8, ptr %196, i32 20
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i987.i) #5, !srcloc !43
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %199 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i988.i = and i32 %199, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i988.i)
  %tobool.not.i.i.i989.i = icmp eq i32 %and.i.i.i988.i, 0
  br i1 %tobool.not.i.i.i989.i, label %land.end.i.vdpu_read_mask.exit.i1003.i_crit_edge, label %do.end.i.i.i992.i

land.end.i.vdpu_read_mask.exit.i1003.i_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1003.i

do.end.i.i.i992.i:                                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i991.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %198) #8
  br label %vdpu_read_mask.exit.i1003.i

vdpu_read_mask.exit.i1003.i:                      ; preds = %do.end.i.i.i992.i, %land.end.i.vdpu_read_mask.exit.i1003.i_crit_edge
  %and.i.i997.i = and i32 %198, -2049
  %and2.i.i998.i = shl nsw i32 %194, 11
  %shl4.i.i999.i = and i32 %and2.i.i998.i, 2048
  %or.i.i1000.i = or i32 %and.i.i997.i, %shl4.i.i999.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %200 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1001.i = and i32 %200, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1001.i)
  %tobool.not.i.i1002.i = icmp eq i32 %and.i3.i1001.i, 0
  br i1 %tobool.not.i.i1002.i, label %vdpu_read_mask.exit.i1003.i.hantro_reg_write.exit1008.i_crit_edge, label %do.end.i.i1006.i

vdpu_read_mask.exit.i1003.i.hantro_reg_write.exit1008.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1003.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1008.i

do.end.i.i1006.i:                                 ; preds = %vdpu_read_mask.exit.i1003.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1005.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i1000.i) #8
  br label %hantro_reg_write.exit1008.i

hantro_reg_write.exit1008.i:                      ; preds = %do.end.i.i1006.i, %vdpu_read_mask.exit.i1003.i.hantro_reg_write.exit1008.i_crit_edge
  %201 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1000.i) #5
  %202 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1007.i = getelementptr i8, ptr %203, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1007.i, i32 %201) #5, !srcloc !45
  %204 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %flags.i, align 8
  %206 = trunc i64 %205 to i32
  %207 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1010.i = getelementptr i8, ptr %208, i32 28
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1010.i) #5, !srcloc !43
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %211 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1011.i = and i32 %211, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1011.i)
  %tobool.not.i.i.i1012.i = icmp eq i32 %and.i.i.i1011.i, 0
  br i1 %tobool.not.i.i.i1012.i, label %hantro_reg_write.exit1008.i.vdpu_read_mask.exit.i1026.i_crit_edge, label %do.end.i.i.i1015.i

hantro_reg_write.exit1008.i.vdpu_read_mask.exit.i1026.i_crit_edge: ; preds = %hantro_reg_write.exit1008.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1026.i

do.end.i.i.i1015.i:                               ; preds = %hantro_reg_write.exit1008.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1014.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %210) #8
  br label %vdpu_read_mask.exit.i1026.i

vdpu_read_mask.exit.i1026.i:                      ; preds = %do.end.i.i.i1015.i, %hantro_reg_write.exit1008.i.vdpu_read_mask.exit.i1026.i_crit_edge
  %and.i.i1020.i = and i32 %210, -131073
  %212 = shl i32 %206, 9
  %shl4.i.i1022.i = and i32 %212, 131072
  %or.i.i1023.i = or i32 %and.i.i1020.i, %shl4.i.i1022.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %213 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1024.i = and i32 %213, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1024.i)
  %tobool.not.i.i1025.i = icmp eq i32 %and.i3.i1024.i, 0
  br i1 %tobool.not.i.i1025.i, label %vdpu_read_mask.exit.i1026.i.hantro_reg_write.exit1031.i_crit_edge, label %do.end.i.i1029.i

vdpu_read_mask.exit.i1026.i.hantro_reg_write.exit1031.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1026.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1031.i

do.end.i.i1029.i:                                 ; preds = %vdpu_read_mask.exit.i1026.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1028.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1023.i) #8
  br label %hantro_reg_write.exit1031.i

hantro_reg_write.exit1031.i:                      ; preds = %do.end.i.i1029.i, %vdpu_read_mask.exit.i1026.i.hantro_reg_write.exit1031.i_crit_edge
  %214 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1023.i) #5
  %215 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1030.i = getelementptr i8, ptr %216, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1030.i, i32 %214) #5, !srcloc !45
  %217 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %flags.i, align 8
  %219 = trunc i64 %218 to i32
  %220 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1033.i = getelementptr i8, ptr %221, i32 28
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1033.i) #5, !srcloc !43
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %224 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1034.i = and i32 %224, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1034.i)
  %tobool.not.i.i.i1035.i = icmp eq i32 %and.i.i.i1034.i, 0
  br i1 %tobool.not.i.i.i1035.i, label %hantro_reg_write.exit1031.i.vdpu_read_mask.exit.i1049.i_crit_edge, label %do.end.i.i.i1038.i

hantro_reg_write.exit1031.i.vdpu_read_mask.exit.i1049.i_crit_edge: ; preds = %hantro_reg_write.exit1031.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1049.i

do.end.i.i.i1038.i:                               ; preds = %hantro_reg_write.exit1031.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1037.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %223) #8
  br label %vdpu_read_mask.exit.i1049.i

vdpu_read_mask.exit.i1049.i:                      ; preds = %do.end.i.i.i1038.i, %hantro_reg_write.exit1031.i.vdpu_read_mask.exit.i1049.i_crit_edge
  %and.i.i1043.i = and i32 %223, -8388609
  %225 = shl i32 %219, 21
  %shl4.i.i1045.i = and i32 %225, 8388608
  %or.i.i1046.i = or i32 %and.i.i1043.i, %shl4.i.i1045.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %226 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1047.i = and i32 %226, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1047.i)
  %tobool.not.i.i1048.i = icmp eq i32 %and.i3.i1047.i, 0
  br i1 %tobool.not.i.i1048.i, label %vdpu_read_mask.exit.i1049.i.hantro_reg_write.exit1054.i_crit_edge, label %do.end.i.i1052.i

vdpu_read_mask.exit.i1049.i.hantro_reg_write.exit1054.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1049.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1054.i

do.end.i.i1052.i:                                 ; preds = %vdpu_read_mask.exit.i1049.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1051.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1046.i) #8
  br label %hantro_reg_write.exit1054.i

hantro_reg_write.exit1054.i:                      ; preds = %do.end.i.i1052.i, %vdpu_read_mask.exit.i1049.i.hantro_reg_write.exit1054.i_crit_edge
  %227 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1046.i) #5
  %228 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1053.i = getelementptr i8, ptr %229, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1053.i, i32 %227) #5, !srcloc !45
  %230 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %flags.i, align 8
  %232 = trunc i64 %231 to i32
  %233 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1056.i = getelementptr i8, ptr %234, i32 28
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1056.i) #5, !srcloc !43
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %237 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1057.i = and i32 %237, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1057.i)
  %tobool.not.i.i.i1058.i = icmp eq i32 %and.i.i.i1057.i, 0
  br i1 %tobool.not.i.i.i1058.i, label %hantro_reg_write.exit1054.i.vdpu_read_mask.exit.i1072.i_crit_edge, label %do.end.i.i.i1061.i

hantro_reg_write.exit1054.i.vdpu_read_mask.exit.i1072.i_crit_edge: ; preds = %hantro_reg_write.exit1054.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1072.i

do.end.i.i.i1061.i:                               ; preds = %hantro_reg_write.exit1054.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1060.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %236) #8
  br label %vdpu_read_mask.exit.i1072.i

vdpu_read_mask.exit.i1072.i:                      ; preds = %do.end.i.i.i1061.i, %hantro_reg_write.exit1054.i.vdpu_read_mask.exit.i1072.i_crit_edge
  %and.i.i1066.i = and i32 %236, -4194305
  %238 = shl i32 %232, 19
  %shl4.i.i1068.i = and i32 %238, 4194304
  %or.i.i1069.i = or i32 %and.i.i1066.i, %shl4.i.i1068.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %239 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1070.i = and i32 %239, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1070.i)
  %tobool.not.i.i1071.i = icmp eq i32 %and.i3.i1070.i, 0
  br i1 %tobool.not.i.i1071.i, label %vdpu_read_mask.exit.i1072.i.hantro_reg_write.exit1077.i_crit_edge, label %do.end.i.i1075.i

vdpu_read_mask.exit.i1072.i.hantro_reg_write.exit1077.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1072.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1077.i

do.end.i.i1075.i:                                 ; preds = %vdpu_read_mask.exit.i1072.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1074.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1069.i) #8
  br label %hantro_reg_write.exit1077.i

hantro_reg_write.exit1077.i:                      ; preds = %do.end.i.i1075.i, %vdpu_read_mask.exit.i1072.i.hantro_reg_write.exit1077.i_crit_edge
  %240 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1069.i) #5
  %241 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1076.i = getelementptr i8, ptr %242, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1076.i, i32 %240) #5, !srcloc !45
  %flags163.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 15
  %243 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %flags163.i, align 8
  %245 = trunc i64 %244 to i32
  %246 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1079.i = getelementptr i8, ptr %247, i32 20
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1079.i) #5, !srcloc !43
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %250 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1080.i = and i32 %250, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1080.i)
  %tobool.not.i.i.i1081.i = icmp eq i32 %and.i.i.i1080.i, 0
  br i1 %tobool.not.i.i.i1081.i, label %hantro_reg_write.exit1077.i.vdpu_read_mask.exit.i1095.i_crit_edge, label %do.end.i.i.i1084.i

hantro_reg_write.exit1077.i.vdpu_read_mask.exit.i1095.i_crit_edge: ; preds = %hantro_reg_write.exit1077.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1095.i

do.end.i.i.i1084.i:                               ; preds = %hantro_reg_write.exit1077.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1083.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %249) #8
  br label %vdpu_read_mask.exit.i1095.i

vdpu_read_mask.exit.i1095.i:                      ; preds = %do.end.i.i.i1084.i, %hantro_reg_write.exit1077.i.vdpu_read_mask.exit.i1095.i_crit_edge
  %and.i.i1089.i = and i32 %249, -4097
  %251 = shl i32 %245, 10
  %shl4.i.i1091.i = and i32 %251, 4096
  %or.i.i1092.i = or i32 %and.i.i1089.i, %shl4.i.i1091.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %252 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1093.i = and i32 %252, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1093.i)
  %tobool.not.i.i1094.i = icmp eq i32 %and.i3.i1093.i, 0
  br i1 %tobool.not.i.i1094.i, label %vdpu_read_mask.exit.i1095.i.hantro_reg_write.exit1100.i_crit_edge, label %do.end.i.i1098.i

vdpu_read_mask.exit.i1095.i.hantro_reg_write.exit1100.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1095.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1100.i

do.end.i.i1098.i:                                 ; preds = %vdpu_read_mask.exit.i1095.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1097.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i1092.i) #8
  br label %hantro_reg_write.exit1100.i

hantro_reg_write.exit1100.i:                      ; preds = %do.end.i.i1098.i, %vdpu_read_mask.exit.i1095.i.hantro_reg_write.exit1100.i_crit_edge
  %253 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1092.i) #5
  %254 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1099.i = getelementptr i8, ptr %255, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1099.i, i32 %253) #5, !srcloc !45
  %256 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %flags163.i, align 8
  %and171.i = and i64 %257, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and171.i)
  %tobool172.not.i = icmp eq i64 %and171.i, 0
  %258 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1148.i = getelementptr i8, ptr %259, i32 20
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1148.i) #5
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %262 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1149.i = and i32 %262, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1149.i)
  %tobool.not.i.i.i1150.i = icmp eq i32 %and.i.i.i1149.i, 0
  br i1 %tobool172.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %hantro_reg_write.exit1100.i
  br i1 %tobool.not.i.i.i1150.i, label %if.then.i.vdpu_read_mask.exit.i1118.i_crit_edge, label %do.end.i.i.i1107.i

if.then.i.vdpu_read_mask.exit.i1118.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1118.i

do.end.i.i.i1107.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %261) #8
  br label %vdpu_read_mask.exit.i1118.i

vdpu_read_mask.exit.i1118.i:                      ; preds = %do.end.i.i.i1107.i, %if.then.i.vdpu_read_mask.exit.i1118.i_crit_edge
  %or.i.i1115.i = or i32 %261, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %263 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1116.i = and i32 %263, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1116.i)
  %tobool.not.i.i1117.i = icmp eq i32 %and.i3.i1116.i, 0
  br i1 %tobool.not.i.i1117.i, label %vdpu_read_mask.exit.i1118.i.hantro_reg_write.exit1123.i_crit_edge, label %do.end.i.i1121.i

vdpu_read_mask.exit.i1118.i.hantro_reg_write.exit1123.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1123.i

do.end.i.i1121.i:                                 ; preds = %vdpu_read_mask.exit.i1118.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i1115.i) #8
  br label %hantro_reg_write.exit1123.i

hantro_reg_write.exit1123.i:                      ; preds = %do.end.i.i1121.i, %vdpu_read_mask.exit.i1118.i.hantro_reg_write.exit1123.i_crit_edge
  %264 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1115.i) #5
  %265 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1122.i = getelementptr i8, ptr %266, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1122.i, i32 %264) #5, !srcloc !45
  %diff_cu_qp_delta_depth.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 4
  %267 = ptrtoint ptr %diff_cu_qp_delta_depth.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %diff_cu_qp_delta_depth.i, align 4
  %269 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1125.i = getelementptr i8, ptr %270, i32 20
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1125.i) #5, !srcloc !43
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %273 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1126.i = and i32 %273, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1126.i)
  %tobool.not.i.i.i1127.i = icmp eq i32 %and.i.i.i1126.i, 0
  br i1 %tobool.not.i.i.i1127.i, label %hantro_reg_write.exit1123.i.vdpu_read_mask.exit.i1141.i_crit_edge, label %do.end.i.i.i1130.i

hantro_reg_write.exit1123.i.vdpu_read_mask.exit.i1141.i_crit_edge: ; preds = %hantro_reg_write.exit1123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1141.i

do.end.i.i.i1130.i:                               ; preds = %hantro_reg_write.exit1123.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %272) #8
  br label %vdpu_read_mask.exit.i1141.i

vdpu_read_mask.exit.i1141.i:                      ; preds = %do.end.i.i.i1130.i, %hantro_reg_write.exit1123.i.vdpu_read_mask.exit.i1141.i_crit_edge
  %and.i.i1135.i = and i32 %272, -2017
  %274 = and i8 %268, 63
  %and2.i.i1136.i = zext i8 %274 to i32
  %shl4.i.i1137.i = shl nuw nsw i32 %and2.i.i1136.i, 5
  %or.i.i1138.i = or i32 %and.i.i1135.i, %shl4.i.i1137.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %275 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1139.i = and i32 %275, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1139.i)
  %tobool.not.i.i1140.i = icmp eq i32 %and.i3.i1139.i, 0
  br i1 %tobool.not.i.i1140.i, label %vdpu_read_mask.exit.i1141.i.hantro_reg_write.exit1146.i_crit_edge, label %do.end.i.i1144.i

vdpu_read_mask.exit.i1141.i.hantro_reg_write.exit1146.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1146.i

do.end.i.i1144.i:                                 ; preds = %vdpu_read_mask.exit.i1141.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1143.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i1138.i) #8
  br label %hantro_reg_write.exit1146.i

hantro_reg_write.exit1146.i:                      ; preds = %do.end.i.i1144.i, %vdpu_read_mask.exit.i1141.i.hantro_reg_write.exit1146.i_crit_edge
  %276 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1138.i) #5
  %277 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1145.i = getelementptr i8, ptr %278, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1145.i, i32 %276) #5, !srcloc !45
  br label %if.end.i

if.else.i:                                        ; preds = %hantro_reg_write.exit1100.i
  br i1 %tobool.not.i.i.i1150.i, label %if.else.i.vdpu_read_mask.exit.i1161.i_crit_edge, label %do.end.i.i.i1153.i

if.else.i.vdpu_read_mask.exit.i1161.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1161.i

do.end.i.i.i1153.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %261) #8
  br label %vdpu_read_mask.exit.i1161.i

vdpu_read_mask.exit.i1161.i:                      ; preds = %do.end.i.i.i1153.i, %if.else.i.vdpu_read_mask.exit.i1161.i_crit_edge
  %and.i.i1158.i = and i32 %261, -17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %279 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1159.i = and i32 %279, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1159.i)
  %tobool.not.i.i1160.i = icmp eq i32 %and.i3.i1159.i, 0
  br i1 %tobool.not.i.i1160.i, label %vdpu_read_mask.exit.i1161.i.hantro_reg_write.exit1166.i_crit_edge, label %do.end.i.i1164.i

vdpu_read_mask.exit.i1161.i.hantro_reg_write.exit1166.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1166.i

do.end.i.i1164.i:                                 ; preds = %vdpu_read_mask.exit.i1161.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1163.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %and.i.i1158.i) #8
  br label %hantro_reg_write.exit1166.i

hantro_reg_write.exit1166.i:                      ; preds = %do.end.i.i1164.i, %vdpu_read_mask.exit.i1161.i.hantro_reg_write.exit1166.i_crit_edge
  %280 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1158.i) #5
  %281 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1165.i = getelementptr i8, ptr %282, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1165.i, i32 %280) #5, !srcloc !45
  %283 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1168.i = getelementptr i8, ptr %284, i32 20
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1168.i) #5, !srcloc !43
  %286 = tail call i32 @llvm.bswap.i32(i32 %285) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %287 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1169.i = and i32 %287, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1169.i)
  %tobool.not.i.i.i1170.i = icmp eq i32 %and.i.i.i1169.i, 0
  br i1 %tobool.not.i.i.i1170.i, label %hantro_reg_write.exit1166.i.vdpu_read_mask.exit.i1181.i_crit_edge, label %do.end.i.i.i1173.i

hantro_reg_write.exit1166.i.vdpu_read_mask.exit.i1181.i_crit_edge: ; preds = %hantro_reg_write.exit1166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1181.i

do.end.i.i.i1173.i:                               ; preds = %hantro_reg_write.exit1166.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1172.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %286) #8
  br label %vdpu_read_mask.exit.i1181.i

vdpu_read_mask.exit.i1181.i:                      ; preds = %do.end.i.i.i1173.i, %hantro_reg_write.exit1166.i.vdpu_read_mask.exit.i1181.i_crit_edge
  %and.i.i1178.i = and i32 %286, -2017
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %288 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1179.i = and i32 %288, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1179.i)
  %tobool.not.i.i1180.i = icmp eq i32 %and.i3.i1179.i, 0
  br i1 %tobool.not.i.i1180.i, label %vdpu_read_mask.exit.i1181.i.hantro_reg_write.exit1186.i_crit_edge, label %do.end.i.i1184.i

vdpu_read_mask.exit.i1181.i.hantro_reg_write.exit1186.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1186.i

do.end.i.i1184.i:                                 ; preds = %vdpu_read_mask.exit.i1181.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1183.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %and.i.i1178.i) #8
  br label %hantro_reg_write.exit1186.i

hantro_reg_write.exit1186.i:                      ; preds = %do.end.i.i1184.i, %vdpu_read_mask.exit.i1181.i.hantro_reg_write.exit1186.i_crit_edge
  %289 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1178.i) #5
  %290 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1185.i = getelementptr i8, ptr %291, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1185.i, i32 %289) #5, !srcloc !45
  br label %if.end.i

if.end.i:                                         ; preds = %hantro_reg_write.exit1186.i, %hantro_reg_write.exit1146.i
  %292 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %flags163.i, align 8
  %and191.i = and i64 %293, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and191.i)
  %tobool192.not.i = icmp eq i64 %and191.i, 0
  br i1 %tobool192.not.i, label %if.else204.i, label %if.then193.i

if.then193.i:                                     ; preds = %if.end.i
  %pps_cb_qp_offset.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 5
  %294 = ptrtoint ptr %pps_cb_qp_offset.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %pps_cb_qp_offset.i, align 1
  %296 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1188.i = getelementptr i8, ptr %297, i32 20
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1188.i) #5, !srcloc !43
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %300 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1189.i = and i32 %300, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1189.i)
  %tobool.not.i.i.i1190.i = icmp eq i32 %and.i.i.i1189.i, 0
  br i1 %tobool.not.i.i.i1190.i, label %if.then193.i.vdpu_read_mask.exit.i1204.i_crit_edge, label %do.end.i.i.i1193.i

if.then193.i.vdpu_read_mask.exit.i1204.i_crit_edge: ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1204.i

do.end.i.i.i1193.i:                               ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1192.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %299) #8
  br label %vdpu_read_mask.exit.i1204.i

vdpu_read_mask.exit.i1204.i:                      ; preds = %do.end.i.i.i1193.i, %if.then193.i.vdpu_read_mask.exit.i1204.i_crit_edge
  %and.i.i1198.i = and i32 %299, -16252929
  %301 = and i8 %295, 31
  %and2.i.i1199.i = zext i8 %301 to i32
  %shl4.i.i1200.i = shl nuw nsw i32 %and2.i.i1199.i, 19
  %or.i.i1201.i = or i32 %and.i.i1198.i, %shl4.i.i1200.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %302 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1202.i = and i32 %302, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1202.i)
  %tobool.not.i.i1203.i = icmp eq i32 %and.i3.i1202.i, 0
  br i1 %tobool.not.i.i1203.i, label %vdpu_read_mask.exit.i1204.i.hantro_reg_write.exit1209.i_crit_edge, label %do.end.i.i1207.i

vdpu_read_mask.exit.i1204.i.hantro_reg_write.exit1209.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1204.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1209.i

do.end.i.i1207.i:                                 ; preds = %vdpu_read_mask.exit.i1204.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1206.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i1201.i) #8
  br label %hantro_reg_write.exit1209.i

hantro_reg_write.exit1209.i:                      ; preds = %do.end.i.i1207.i, %vdpu_read_mask.exit.i1204.i.hantro_reg_write.exit1209.i_crit_edge
  %303 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1201.i) #5
  %304 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1208.i = getelementptr i8, ptr %305, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1208.i, i32 %303) #5, !srcloc !45
  %pps_cr_qp_offset.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 6
  %306 = ptrtoint ptr %pps_cr_qp_offset.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %pps_cr_qp_offset.i, align 2
  %308 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1211.i = getelementptr i8, ptr %309, i32 20
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1211.i) #5, !srcloc !43
  %311 = tail call i32 @llvm.bswap.i32(i32 %310) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %312 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1212.i = and i32 %312, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1212.i)
  %tobool.not.i.i.i1213.i = icmp eq i32 %and.i.i.i1212.i, 0
  br i1 %tobool.not.i.i.i1213.i, label %hantro_reg_write.exit1209.i.vdpu_read_mask.exit.i1227.i_crit_edge, label %do.end.i.i.i1216.i

hantro_reg_write.exit1209.i.vdpu_read_mask.exit.i1227.i_crit_edge: ; preds = %hantro_reg_write.exit1209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1227.i

do.end.i.i.i1216.i:                               ; preds = %hantro_reg_write.exit1209.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1215.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %311) #8
  br label %vdpu_read_mask.exit.i1227.i

vdpu_read_mask.exit.i1227.i:                      ; preds = %do.end.i.i.i1216.i, %hantro_reg_write.exit1209.i.vdpu_read_mask.exit.i1227.i_crit_edge
  %and.i.i1221.i = and i32 %311, -507905
  %313 = and i8 %307, 31
  %and2.i.i1222.i = zext i8 %313 to i32
  %shl4.i.i1223.i = shl nuw nsw i32 %and2.i.i1222.i, 14
  %or.i.i1224.i = or i32 %and.i.i1221.i, %shl4.i.i1223.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %314 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1225.i = and i32 %314, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1225.i)
  %tobool.not.i.i1226.i = icmp eq i32 %and.i3.i1225.i, 0
  br i1 %tobool.not.i.i1226.i, label %vdpu_read_mask.exit.i1227.i.hantro_reg_write.exit1232.i_crit_edge, label %do.end.i.i1230.i

vdpu_read_mask.exit.i1227.i.hantro_reg_write.exit1232.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1227.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1232.i

do.end.i.i1230.i:                                 ; preds = %vdpu_read_mask.exit.i1227.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1229.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i1224.i) #8
  br label %hantro_reg_write.exit1232.i

hantro_reg_write.exit1232.i:                      ; preds = %do.end.i.i1230.i, %vdpu_read_mask.exit.i1227.i.hantro_reg_write.exit1232.i_crit_edge
  %315 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1224.i) #5
  %316 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1231.i = getelementptr i8, ptr %317, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1231.i, i32 %315) #5, !srcloc !45
  br label %if.end213.i

if.else204.i:                                     ; preds = %if.end.i
  %318 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1234.i = getelementptr i8, ptr %319, i32 20
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1234.i) #5, !srcloc !43
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %322 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1235.i = and i32 %322, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1235.i)
  %tobool.not.i.i.i1236.i = icmp eq i32 %and.i.i.i1235.i, 0
  br i1 %tobool.not.i.i.i1236.i, label %if.else204.i.vdpu_read_mask.exit.i1247.i_crit_edge, label %do.end.i.i.i1239.i

if.else204.i.vdpu_read_mask.exit.i1247.i_crit_edge: ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1247.i

do.end.i.i.i1239.i:                               ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1238.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %321) #8
  br label %vdpu_read_mask.exit.i1247.i

vdpu_read_mask.exit.i1247.i:                      ; preds = %do.end.i.i.i1239.i, %if.else204.i.vdpu_read_mask.exit.i1247.i_crit_edge
  %and.i.i1244.i = and i32 %321, -16252929
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %323 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1245.i = and i32 %323, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1245.i)
  %tobool.not.i.i1246.i = icmp eq i32 %and.i3.i1245.i, 0
  br i1 %tobool.not.i.i1246.i, label %vdpu_read_mask.exit.i1247.i.hantro_reg_write.exit1252.i_crit_edge, label %do.end.i.i1250.i

vdpu_read_mask.exit.i1247.i.hantro_reg_write.exit1252.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1247.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1252.i

do.end.i.i1250.i:                                 ; preds = %vdpu_read_mask.exit.i1247.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1249.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %and.i.i1244.i) #8
  br label %hantro_reg_write.exit1252.i

hantro_reg_write.exit1252.i:                      ; preds = %do.end.i.i1250.i, %vdpu_read_mask.exit.i1247.i.hantro_reg_write.exit1252.i_crit_edge
  %324 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1244.i) #5
  %325 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1251.i = getelementptr i8, ptr %326, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1251.i, i32 %324) #5, !srcloc !45
  %327 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1254.i = getelementptr i8, ptr %328, i32 20
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1254.i) #5, !srcloc !43
  %330 = tail call i32 @llvm.bswap.i32(i32 %329) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %331 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1255.i = and i32 %331, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1255.i)
  %tobool.not.i.i.i1256.i = icmp eq i32 %and.i.i.i1255.i, 0
  br i1 %tobool.not.i.i.i1256.i, label %hantro_reg_write.exit1252.i.vdpu_read_mask.exit.i1267.i_crit_edge, label %do.end.i.i.i1259.i

hantro_reg_write.exit1252.i.vdpu_read_mask.exit.i1267.i_crit_edge: ; preds = %hantro_reg_write.exit1252.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1267.i

do.end.i.i.i1259.i:                               ; preds = %hantro_reg_write.exit1252.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1258.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %330) #8
  br label %vdpu_read_mask.exit.i1267.i

vdpu_read_mask.exit.i1267.i:                      ; preds = %do.end.i.i.i1259.i, %hantro_reg_write.exit1252.i.vdpu_read_mask.exit.i1267.i_crit_edge
  %and.i.i1264.i = and i32 %330, -507905
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %332 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1265.i = and i32 %332, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1265.i)
  %tobool.not.i.i1266.i = icmp eq i32 %and.i3.i1265.i, 0
  br i1 %tobool.not.i.i1266.i, label %vdpu_read_mask.exit.i1267.i.hantro_reg_write.exit1272.i_crit_edge, label %do.end.i.i1270.i

vdpu_read_mask.exit.i1267.i.hantro_reg_write.exit1272.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1267.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1272.i

do.end.i.i1270.i:                                 ; preds = %vdpu_read_mask.exit.i1267.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1269.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %and.i.i1264.i) #8
  br label %hantro_reg_write.exit1272.i

hantro_reg_write.exit1272.i:                      ; preds = %do.end.i.i1270.i, %vdpu_read_mask.exit.i1267.i.hantro_reg_write.exit1272.i_crit_edge
  %333 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1264.i) #5
  %334 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1271.i = getelementptr i8, ptr %335, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1271.i, i32 %333) #5, !srcloc !45
  br label %if.end213.i

if.end213.i:                                      ; preds = %hantro_reg_write.exit1272.i, %hantro_reg_write.exit1232.i
  %pps_beta_offset_div2.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 11
  %336 = ptrtoint ptr %pps_beta_offset_div2.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %pps_beta_offset_div2.i, align 1
  %338 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1274.i = getelementptr i8, ptr %339, i32 28
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1274.i) #5, !srcloc !43
  %341 = tail call i32 @llvm.bswap.i32(i32 %340) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %342 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1275.i = and i32 %342, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1275.i)
  %tobool.not.i.i.i1276.i = icmp eq i32 %and.i.i.i1275.i, 0
  br i1 %tobool.not.i.i.i1276.i, label %if.end213.i.vdpu_read_mask.exit.i1290.i_crit_edge, label %do.end.i.i.i1279.i

if.end213.i.vdpu_read_mask.exit.i1290.i_crit_edge: ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1290.i

do.end.i.i.i1279.i:                               ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1278.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %341) #8
  br label %vdpu_read_mask.exit.i1290.i

vdpu_read_mask.exit.i1290.i:                      ; preds = %do.end.i.i.i1279.i, %if.end213.i.vdpu_read_mask.exit.i1290.i_crit_edge
  %and.i.i1284.i = and i32 %341, -126977
  %343 = and i8 %337, 31
  %and2.i.i1285.i = zext i8 %343 to i32
  %shl4.i.i1286.i = shl nuw nsw i32 %and2.i.i1285.i, 12
  %or.i.i1287.i = or i32 %and.i.i1284.i, %shl4.i.i1286.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %344 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1288.i = and i32 %344, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1288.i)
  %tobool.not.i.i1289.i = icmp eq i32 %and.i3.i1288.i, 0
  br i1 %tobool.not.i.i1289.i, label %vdpu_read_mask.exit.i1290.i.hantro_reg_write.exit1295.i_crit_edge, label %do.end.i.i1293.i

vdpu_read_mask.exit.i1290.i.hantro_reg_write.exit1295.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1290.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1295.i

do.end.i.i1293.i:                                 ; preds = %vdpu_read_mask.exit.i1290.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1292.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1287.i) #8
  br label %hantro_reg_write.exit1295.i

hantro_reg_write.exit1295.i:                      ; preds = %do.end.i.i1293.i, %vdpu_read_mask.exit.i1290.i.hantro_reg_write.exit1295.i_crit_edge
  %345 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1287.i) #5
  %346 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1294.i = getelementptr i8, ptr %347, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1294.i, i32 %345) #5, !srcloc !45
  %pps_tc_offset_div2.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 12
  %348 = ptrtoint ptr %pps_tc_offset_div2.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %pps_tc_offset_div2.i, align 4
  %350 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1297.i = getelementptr i8, ptr %351, i32 28
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1297.i) #5, !srcloc !43
  %353 = tail call i32 @llvm.bswap.i32(i32 %352) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %354 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1298.i = and i32 %354, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1298.i)
  %tobool.not.i.i.i1299.i = icmp eq i32 %and.i.i.i1298.i, 0
  br i1 %tobool.not.i.i.i1299.i, label %hantro_reg_write.exit1295.i.vdpu_read_mask.exit.i1313.i_crit_edge, label %do.end.i.i.i1302.i

hantro_reg_write.exit1295.i.vdpu_read_mask.exit.i1313.i_crit_edge: ; preds = %hantro_reg_write.exit1295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1313.i

do.end.i.i.i1302.i:                               ; preds = %hantro_reg_write.exit1295.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1301.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %353) #8
  br label %vdpu_read_mask.exit.i1313.i

vdpu_read_mask.exit.i1313.i:                      ; preds = %do.end.i.i.i1302.i, %hantro_reg_write.exit1295.i.vdpu_read_mask.exit.i1313.i_crit_edge
  %and.i.i1307.i = and i32 %353, -3969
  %355 = and i8 %349, 31
  %and2.i.i1308.i = zext i8 %355 to i32
  %shl4.i.i1309.i = shl nuw nsw i32 %and2.i.i1308.i, 7
  %or.i.i1310.i = or i32 %and.i.i1307.i, %shl4.i.i1309.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %356 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1311.i = and i32 %356, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1311.i)
  %tobool.not.i.i1312.i = icmp eq i32 %and.i3.i1311.i, 0
  br i1 %tobool.not.i.i1312.i, label %vdpu_read_mask.exit.i1313.i.hantro_reg_write.exit1318.i_crit_edge, label %do.end.i.i1316.i

vdpu_read_mask.exit.i1313.i.hantro_reg_write.exit1318.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1313.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1318.i

do.end.i.i1316.i:                                 ; preds = %vdpu_read_mask.exit.i1313.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1315.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1310.i) #8
  br label %hantro_reg_write.exit1318.i

hantro_reg_write.exit1318.i:                      ; preds = %do.end.i.i1316.i, %vdpu_read_mask.exit.i1313.i.hantro_reg_write.exit1318.i_crit_edge
  %357 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1310.i) #5
  %358 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1317.i = getelementptr i8, ptr %359, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1317.i, i32 %357) #5, !srcloc !45
  %360 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %flags163.i, align 8
  %362 = trunc i64 %361 to i32
  %363 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1320.i = getelementptr i8, ptr %364, i32 28
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1320.i) #5, !srcloc !43
  %366 = tail call i32 @llvm.bswap.i32(i32 %365) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %367 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1321.i = and i32 %367, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1321.i)
  %tobool.not.i.i.i1322.i = icmp eq i32 %and.i.i.i1321.i, 0
  br i1 %tobool.not.i.i.i1322.i, label %hantro_reg_write.exit1318.i.vdpu_read_mask.exit.i1336.i_crit_edge, label %do.end.i.i.i1325.i

hantro_reg_write.exit1318.i.vdpu_read_mask.exit.i1336.i_crit_edge: ; preds = %hantro_reg_write.exit1318.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1336.i

do.end.i.i.i1325.i:                               ; preds = %hantro_reg_write.exit1318.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1324.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %366) #8
  br label %vdpu_read_mask.exit.i1336.i

vdpu_read_mask.exit.i1336.i:                      ; preds = %do.end.i.i.i1325.i, %hantro_reg_write.exit1318.i.vdpu_read_mask.exit.i1336.i_crit_edge
  %and.i.i1330.i = and i32 %366, -65
  %368 = lshr i32 %362, 12
  %shl4.i.i1332.i = and i32 %368, 64
  %or.i.i1333.i = or i32 %and.i.i1330.i, %shl4.i.i1332.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %369 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1334.i = and i32 %369, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1334.i)
  %tobool.not.i.i1335.i = icmp eq i32 %and.i3.i1334.i, 0
  br i1 %tobool.not.i.i1335.i, label %vdpu_read_mask.exit.i1336.i.hantro_reg_write.exit1341.i_crit_edge, label %do.end.i.i1339.i

vdpu_read_mask.exit.i1336.i.hantro_reg_write.exit1341.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1336.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1341.i

do.end.i.i1339.i:                                 ; preds = %vdpu_read_mask.exit.i1336.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1338.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1333.i) #8
  br label %hantro_reg_write.exit1341.i

hantro_reg_write.exit1341.i:                      ; preds = %do.end.i.i1339.i, %vdpu_read_mask.exit.i1336.i.hantro_reg_write.exit1341.i_crit_edge
  %370 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1333.i) #5
  %371 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1340.i = getelementptr i8, ptr %372, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1340.i, i32 %370) #5, !srcloc !45
  %373 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %5, align 8
  %375 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1343.i = getelementptr i8, ptr %376, i32 28
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1343.i) #5, !srcloc !43
  %378 = tail call i32 @llvm.bswap.i32(i32 %377) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %379 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1344.i = and i32 %379, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1344.i)
  %tobool.not.i.i.i1345.i = icmp eq i32 %and.i.i.i1344.i, 0
  br i1 %tobool.not.i.i.i1345.i, label %hantro_reg_write.exit1341.i.vdpu_read_mask.exit.i1359.i_crit_edge, label %do.end.i.i.i1348.i

hantro_reg_write.exit1341.i.vdpu_read_mask.exit.i1359.i_crit_edge: ; preds = %hantro_reg_write.exit1341.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1359.i

do.end.i.i.i1348.i:                               ; preds = %hantro_reg_write.exit1341.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1347.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %378) #8
  br label %vdpu_read_mask.exit.i1359.i

vdpu_read_mask.exit.i1359.i:                      ; preds = %do.end.i.i.i1348.i, %hantro_reg_write.exit1341.i.vdpu_read_mask.exit.i1359.i_crit_edge
  %and.i.i1353.i = and i32 %378, -57
  %380 = shl i8 %374, 3
  %381 = and i8 %380, 56
  %shl4.i.i1355.i = zext i8 %381 to i32
  %or.i.i1356.i = or i32 %and.i.i1353.i, %shl4.i.i1355.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %382 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1357.i = and i32 %382, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1357.i)
  %tobool.not.i.i1358.i = icmp eq i32 %and.i3.i1357.i, 0
  br i1 %tobool.not.i.i1358.i, label %vdpu_read_mask.exit.i1359.i.hantro_reg_write.exit1364.i_crit_edge, label %do.end.i.i1362.i

vdpu_read_mask.exit.i1359.i.hantro_reg_write.exit1364.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1359.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1364.i

do.end.i.i1362.i:                                 ; preds = %vdpu_read_mask.exit.i1359.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1361.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1356.i) #8
  br label %hantro_reg_write.exit1364.i

hantro_reg_write.exit1364.i:                      ; preds = %do.end.i.i1362.i, %vdpu_read_mask.exit.i1359.i.hantro_reg_write.exit1364.i_crit_edge
  %383 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1356.i) #5
  %384 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1363.i = getelementptr i8, ptr %385, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1363.i, i32 %383) #5, !srcloc !45
  %386 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %flags163.i, align 8
  %388 = trunc i64 %387 to i32
  %389 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1366.i = getelementptr i8, ptr %390, i32 28
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1366.i) #5, !srcloc !43
  %392 = tail call i32 @llvm.bswap.i32(i32 %391) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %393 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1367.i = and i32 %393, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1367.i)
  %tobool.not.i.i.i1368.i = icmp eq i32 %and.i.i.i1367.i, 0
  br i1 %tobool.not.i.i.i1368.i, label %hantro_reg_write.exit1364.i.vdpu_read_mask.exit.i1382.i_crit_edge, label %do.end.i.i.i1371.i

hantro_reg_write.exit1364.i.vdpu_read_mask.exit.i1382.i_crit_edge: ; preds = %hantro_reg_write.exit1364.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1382.i

do.end.i.i.i1371.i:                               ; preds = %hantro_reg_write.exit1364.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1370.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %392) #8
  br label %vdpu_read_mask.exit.i1382.i

vdpu_read_mask.exit.i1382.i:                      ; preds = %do.end.i.i.i1371.i, %hantro_reg_write.exit1364.i.vdpu_read_mask.exit.i1382.i_crit_edge
  %and.i.i1376.i = and i32 %392, -1048577
  %394 = shl i32 %388, 13
  %shl4.i.i1378.i = and i32 %394, 1048576
  %or.i.i1379.i = or i32 %and.i.i1376.i, %shl4.i.i1378.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %395 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1380.i = and i32 %395, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1380.i)
  %tobool.not.i.i1381.i = icmp eq i32 %and.i3.i1380.i, 0
  br i1 %tobool.not.i.i1381.i, label %vdpu_read_mask.exit.i1382.i.hantro_reg_write.exit1387.i_crit_edge, label %do.end.i.i1385.i

vdpu_read_mask.exit.i1382.i.hantro_reg_write.exit1387.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1382.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1387.i

do.end.i.i1385.i:                                 ; preds = %vdpu_read_mask.exit.i1382.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1384.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1379.i) #8
  br label %hantro_reg_write.exit1387.i

hantro_reg_write.exit1387.i:                      ; preds = %do.end.i.i1385.i, %vdpu_read_mask.exit.i1382.i.hantro_reg_write.exit1387.i_crit_edge
  %396 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1379.i) #5
  %397 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1386.i = getelementptr i8, ptr %398, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1386.i, i32 %396) #5, !srcloc !45
  %399 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %399)
  %400 = load i64, ptr %flags163.i, align 8
  %401 = trunc i64 %400 to i32
  %402 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1389.i = getelementptr i8, ptr %403, i32 28
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1389.i) #5, !srcloc !43
  %405 = tail call i32 @llvm.bswap.i32(i32 %404) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %406 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1390.i = and i32 %406, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1390.i)
  %tobool.not.i.i.i1391.i = icmp eq i32 %and.i.i.i1390.i, 0
  br i1 %tobool.not.i.i.i1391.i, label %hantro_reg_write.exit1387.i.vdpu_read_mask.exit.i1405.i_crit_edge, label %do.end.i.i.i1394.i

hantro_reg_write.exit1387.i.vdpu_read_mask.exit.i1405.i_crit_edge: ; preds = %hantro_reg_write.exit1387.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1405.i

do.end.i.i.i1394.i:                               ; preds = %hantro_reg_write.exit1387.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1393.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %405) #8
  br label %vdpu_read_mask.exit.i1405.i

vdpu_read_mask.exit.i1405.i:                      ; preds = %do.end.i.i.i1394.i, %hantro_reg_write.exit1387.i.vdpu_read_mask.exit.i1405.i_crit_edge
  %and.i.i1399.i = and i32 %405, -201326593
  %407 = shl i32 %401, 17
  %shl4.i.i1401.i = and i32 %407, 67108864
  %or.i.i1402.i = or i32 %and.i.i1399.i, %shl4.i.i1401.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %408 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1403.i = and i32 %408, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1403.i)
  %tobool.not.i.i1404.i = icmp eq i32 %and.i3.i1403.i, 0
  br i1 %tobool.not.i.i1404.i, label %vdpu_read_mask.exit.i1405.i.hantro_reg_write.exit1410.i_crit_edge, label %do.end.i.i1408.i

vdpu_read_mask.exit.i1405.i.hantro_reg_write.exit1410.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1405.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1410.i

do.end.i.i1408.i:                                 ; preds = %vdpu_read_mask.exit.i1405.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1407.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1402.i) #8
  br label %hantro_reg_write.exit1410.i

hantro_reg_write.exit1410.i:                      ; preds = %do.end.i.i1408.i, %vdpu_read_mask.exit.i1405.i.hantro_reg_write.exit1410.i_crit_edge
  %409 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1402.i) #5
  %410 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1409.i = getelementptr i8, ptr %411, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1409.i, i32 %409) #5, !srcloc !45
  %412 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %flags163.i, align 8
  %414 = trunc i64 %413 to i32
  %415 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1412.i = getelementptr i8, ptr %416, i32 48
  %417 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1412.i) #5, !srcloc !43
  %418 = tail call i32 @llvm.bswap.i32(i32 %417) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %419 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1413.i = and i32 %419, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1413.i)
  %tobool.not.i.i.i1414.i = icmp eq i32 %and.i.i.i1413.i, 0
  br i1 %tobool.not.i.i.i1414.i, label %hantro_reg_write.exit1410.i.vdpu_read_mask.exit.i1428.i_crit_edge, label %do.end.i.i.i1417.i

hantro_reg_write.exit1410.i.vdpu_read_mask.exit.i1428.i_crit_edge: ; preds = %hantro_reg_write.exit1410.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1428.i

do.end.i.i.i1417.i:                               ; preds = %hantro_reg_write.exit1410.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1416.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %418) #8
  br label %vdpu_read_mask.exit.i1428.i

vdpu_read_mask.exit.i1428.i:                      ; preds = %do.end.i.i.i1417.i, %hantro_reg_write.exit1410.i.vdpu_read_mask.exit.i1428.i_crit_edge
  %and.i.i1422.i = and i32 %418, -3
  %420 = lshr i32 %414, 9
  %shl4.i.i1424.i = and i32 %420, 2
  %or.i.i1425.i = or i32 %and.i.i1422.i, %shl4.i.i1424.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %421 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1426.i = and i32 %421, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1426.i)
  %tobool.not.i.i1427.i = icmp eq i32 %and.i3.i1426.i, 0
  br i1 %tobool.not.i.i1427.i, label %vdpu_read_mask.exit.i1428.i.hantro_reg_write.exit1433.i_crit_edge, label %do.end.i.i1431.i

vdpu_read_mask.exit.i1428.i.hantro_reg_write.exit1433.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1428.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1433.i

do.end.i.i1431.i:                                 ; preds = %vdpu_read_mask.exit.i1428.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1430.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i1425.i) #8
  br label %hantro_reg_write.exit1433.i

hantro_reg_write.exit1433.i:                      ; preds = %do.end.i.i1431.i, %vdpu_read_mask.exit.i1428.i.hantro_reg_write.exit1433.i_crit_edge
  %422 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1425.i) #5
  %423 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1432.i = getelementptr i8, ptr %424, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1432.i, i32 %422) #5, !srcloc !45
  %425 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %425)
  %426 = load i64, ptr %flags163.i, align 8
  %427 = trunc i64 %426 to i32
  %428 = lshr i32 %427, 17
  %429 = and i32 %428, 1
  %430 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1435.i = getelementptr i8, ptr %431, i32 48
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1435.i) #5, !srcloc !43
  %433 = tail call i32 @llvm.bswap.i32(i32 %432) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %434 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1436.i = and i32 %434, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1436.i)
  %tobool.not.i.i.i1437.i = icmp eq i32 %and.i.i.i1436.i, 0
  br i1 %tobool.not.i.i.i1437.i, label %hantro_reg_write.exit1433.i.vdpu_read_mask.exit.i1451.i_crit_edge, label %do.end.i.i.i1440.i

hantro_reg_write.exit1433.i.vdpu_read_mask.exit.i1451.i_crit_edge: ; preds = %hantro_reg_write.exit1433.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1451.i

do.end.i.i.i1440.i:                               ; preds = %hantro_reg_write.exit1433.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1439.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %433) #8
  br label %vdpu_read_mask.exit.i1451.i

vdpu_read_mask.exit.i1451.i:                      ; preds = %do.end.i.i.i1440.i, %hantro_reg_write.exit1433.i.vdpu_read_mask.exit.i1451.i_crit_edge
  %and.i.i1445.i = and i32 %433, -2
  %or.i.i1448.i = or i32 %and.i.i1445.i, %429
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %435 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1449.i = and i32 %435, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1449.i)
  %tobool.not.i.i1450.i = icmp eq i32 %and.i3.i1449.i, 0
  br i1 %tobool.not.i.i1450.i, label %vdpu_read_mask.exit.i1451.i.hantro_reg_write.exit1456.i_crit_edge, label %do.end.i.i1454.i

vdpu_read_mask.exit.i1451.i.hantro_reg_write.exit1456.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1451.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1456.i

do.end.i.i1454.i:                                 ; preds = %vdpu_read_mask.exit.i1451.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1453.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i1448.i) #8
  br label %hantro_reg_write.exit1456.i

hantro_reg_write.exit1456.i:                      ; preds = %do.end.i.i1454.i, %vdpu_read_mask.exit.i1451.i.hantro_reg_write.exit1456.i_crit_edge
  %436 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1448.i) #5
  %437 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1455.i = getelementptr i8, ptr %438, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1455.i, i32 %436) #5, !srcloc !45
  %439 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %439)
  %440 = load i64, ptr %flags163.i, align 8
  %441 = trunc i64 %440 to i32
  %442 = lshr i32 %441, 12
  %443 = and i32 %442, 1
  %444 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1458.i = getelementptr i8, ptr %445, i32 40
  %446 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1458.i) #5, !srcloc !43
  %447 = tail call i32 @llvm.bswap.i32(i32 %446) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %448 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1459.i = and i32 %448, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1459.i)
  %tobool.not.i.i.i1460.i = icmp eq i32 %and.i.i.i1459.i, 0
  br i1 %tobool.not.i.i.i1460.i, label %hantro_reg_write.exit1456.i.vdpu_read_mask.exit.i1474.i_crit_edge, label %do.end.i.i.i1463.i

hantro_reg_write.exit1456.i.vdpu_read_mask.exit.i1474.i_crit_edge: ; preds = %hantro_reg_write.exit1456.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1474.i

do.end.i.i.i1463.i:                               ; preds = %hantro_reg_write.exit1456.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1462.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %447) #8
  br label %vdpu_read_mask.exit.i1474.i

vdpu_read_mask.exit.i1474.i:                      ; preds = %do.end.i.i.i1463.i, %hantro_reg_write.exit1456.i.vdpu_read_mask.exit.i1474.i_crit_edge
  %and.i.i1468.i = and i32 %447, -2
  %or.i.i1471.i = or i32 %and.i.i1468.i, %443
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %449 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1472.i = and i32 %449, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1472.i)
  %tobool.not.i.i1473.i = icmp eq i32 %and.i3.i1472.i, 0
  br i1 %tobool.not.i.i1473.i, label %vdpu_read_mask.exit.i1474.i.hantro_reg_write.exit1479.i_crit_edge, label %do.end.i.i1477.i

vdpu_read_mask.exit.i1474.i.hantro_reg_write.exit1479.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1474.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1479.i

do.end.i.i1477.i:                                 ; preds = %vdpu_read_mask.exit.i1474.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1476.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i1471.i) #8
  br label %hantro_reg_write.exit1479.i

hantro_reg_write.exit1479.i:                      ; preds = %do.end.i.i1477.i, %vdpu_read_mask.exit.i1474.i.hantro_reg_write.exit1479.i_crit_edge
  %450 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1471.i) #5
  %451 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1478.i = getelementptr i8, ptr %452, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1478.i, i32 %450) #5, !srcloc !45
  %453 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %453)
  %454 = load i64, ptr %flags163.i, align 8
  %455 = trunc i64 %454 to i32
  %456 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1481.i = getelementptr i8, ptr %457, i32 28
  %458 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1481.i) #5, !srcloc !43
  %459 = tail call i32 @llvm.bswap.i32(i32 %458) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %460 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1482.i = and i32 %460, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1482.i)
  %tobool.not.i.i.i1483.i = icmp eq i32 %and.i.i.i1482.i, 0
  br i1 %tobool.not.i.i.i1483.i, label %hantro_reg_write.exit1479.i.vdpu_read_mask.exit.i1497.i_crit_edge, label %do.end.i.i.i1486.i

hantro_reg_write.exit1479.i.vdpu_read_mask.exit.i1497.i_crit_edge: ; preds = %hantro_reg_write.exit1479.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1497.i

do.end.i.i.i1486.i:                               ; preds = %hantro_reg_write.exit1479.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1485.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %459) #8
  br label %vdpu_read_mask.exit.i1497.i

vdpu_read_mask.exit.i1497.i:                      ; preds = %do.end.i.i.i1486.i, %hantro_reg_write.exit1479.i.vdpu_read_mask.exit.i1497.i_crit_edge
  %and.i.i1491.i = and i32 %459, 2147483647
  %461 = shl i32 %455, 28
  %462 = and i32 %461, -2147483648
  %or.i.i1494.i = or i32 %and.i.i1491.i, %462
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %463 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1495.i = and i32 %463, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1495.i)
  %tobool.not.i.i1496.i = icmp eq i32 %and.i3.i1495.i, 0
  br i1 %tobool.not.i.i1496.i, label %vdpu_read_mask.exit.i1497.i.hantro_reg_write.exit1502.i_crit_edge, label %do.end.i.i1500.i

vdpu_read_mask.exit.i1497.i.hantro_reg_write.exit1502.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1497.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1502.i

do.end.i.i1500.i:                                 ; preds = %vdpu_read_mask.exit.i1497.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1499.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1494.i) #8
  br label %hantro_reg_write.exit1502.i

hantro_reg_write.exit1502.i:                      ; preds = %do.end.i.i1500.i, %vdpu_read_mask.exit.i1497.i.hantro_reg_write.exit1502.i_crit_edge
  %464 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1494.i) #5
  %465 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1501.i = getelementptr i8, ptr %466, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1501.i, i32 %464) #5, !srcloc !45
  %flags310.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %7, i32 0, i32 9
  %467 = ptrtoint ptr %flags310.i to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %flags310.i, align 8
  %469 = trunc i64 %468 to i32
  %470 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1504.i = getelementptr i8, ptr %471, i32 32
  %472 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1504.i) #5, !srcloc !43
  %473 = tail call i32 @llvm.bswap.i32(i32 %472) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %474 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1505.i = and i32 %474, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1505.i)
  %tobool.not.i.i.i1506.i = icmp eq i32 %and.i.i.i1505.i, 0
  br i1 %tobool.not.i.i.i1506.i, label %hantro_reg_write.exit1502.i.vdpu_read_mask.exit.i1520.i_crit_edge, label %do.end.i.i.i1509.i

hantro_reg_write.exit1502.i.vdpu_read_mask.exit.i1520.i_crit_edge: ; preds = %hantro_reg_write.exit1502.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1520.i

do.end.i.i.i1509.i:                               ; preds = %hantro_reg_write.exit1502.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1508.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %473) #8
  br label %vdpu_read_mask.exit.i1520.i

vdpu_read_mask.exit.i1520.i:                      ; preds = %do.end.i.i.i1509.i, %hantro_reg_write.exit1502.i.vdpu_read_mask.exit.i1520.i_crit_edge
  %and.i.i1514.i = and i32 %473, -65537
  %475 = shl i32 %469, 16
  %shl4.i.i1516.i = and i32 %475, 65536
  %or.i.i1517.i = or i32 %and.i.i1514.i, %shl4.i.i1516.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %476 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1518.i = and i32 %476, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1518.i)
  %tobool.not.i.i1519.i = icmp eq i32 %and.i3.i1518.i, 0
  br i1 %tobool.not.i.i1519.i, label %vdpu_read_mask.exit.i1520.i.hantro_reg_write.exit1525.i_crit_edge, label %do.end.i.i1523.i

vdpu_read_mask.exit.i1520.i.hantro_reg_write.exit1525.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1520.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1525.i

do.end.i.i1523.i:                                 ; preds = %vdpu_read_mask.exit.i1520.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1522.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i1517.i) #8
  br label %hantro_reg_write.exit1525.i

hantro_reg_write.exit1525.i:                      ; preds = %do.end.i.i1523.i, %vdpu_read_mask.exit.i1520.i.hantro_reg_write.exit1525.i_crit_edge
  %477 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1517.i) #5
  %478 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1524.i = getelementptr i8, ptr %479, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1524.i, i32 %477) #5, !srcloc !45
  %log2_parallel_merge_level_minus2.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 13
  %480 = ptrtoint ptr %log2_parallel_merge_level_minus2.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %log2_parallel_merge_level_minus2.i, align 1
  %482 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1527.i = getelementptr i8, ptr %483, i32 52
  %484 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1527.i) #5, !srcloc !43
  %485 = tail call i32 @llvm.bswap.i32(i32 %484) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %486 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1528.i = and i32 %486, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1528.i)
  %tobool.not.i.i.i1529.i = icmp eq i32 %and.i.i.i1528.i, 0
  br i1 %tobool.not.i.i.i1529.i, label %hantro_reg_write.exit1525.i.vdpu_read_mask.exit.i1543.i_crit_edge, label %do.end.i.i.i1532.i

hantro_reg_write.exit1525.i.vdpu_read_mask.exit.i1543.i_crit_edge: ; preds = %hantro_reg_write.exit1525.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1543.i

do.end.i.i.i1532.i:                               ; preds = %hantro_reg_write.exit1525.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1531.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 13, i32 noundef %485) #8
  br label %vdpu_read_mask.exit.i1543.i

vdpu_read_mask.exit.i1543.i:                      ; preds = %do.end.i.i.i1532.i, %hantro_reg_write.exit1525.i.vdpu_read_mask.exit.i1543.i_crit_edge
  %and.i.i1537.i = and i32 %485, -16
  %487 = add i8 %481, 2
  %488 = and i8 %487, 15
  %and2.i.i1538.i = zext i8 %488 to i32
  %or.i.i1540.i = or i32 %and.i.i1537.i, %and2.i.i1538.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %489 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1541.i = and i32 %489, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1541.i)
  %tobool.not.i.i1542.i = icmp eq i32 %and.i3.i1541.i, 0
  br i1 %tobool.not.i.i1542.i, label %vdpu_read_mask.exit.i1543.i.hantro_reg_write.exit1548.i_crit_edge, label %do.end.i.i1546.i

vdpu_read_mask.exit.i1543.i.hantro_reg_write.exit1548.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1543.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1548.i

do.end.i.i1546.i:                                 ; preds = %vdpu_read_mask.exit.i1543.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1545.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i1540.i) #8
  br label %hantro_reg_write.exit1548.i

hantro_reg_write.exit1548.i:                      ; preds = %do.end.i.i1546.i, %vdpu_read_mask.exit.i1543.i.hantro_reg_write.exit1548.i_crit_edge
  %490 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1540.i) #5
  %491 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1547.i = getelementptr i8, ptr %492, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1547.i, i32 %490) #5, !srcloc !45
  %493 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %493)
  %494 = load i64, ptr %flags.i, align 8
  %495 = trunc i64 %494 to i32
  %496 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1550.i = getelementptr i8, ptr %497, i32 28
  %498 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1550.i) #5, !srcloc !43
  %499 = tail call i32 @llvm.bswap.i32(i32 %498) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %500 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1551.i = and i32 %500, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1551.i)
  %tobool.not.i.i.i1552.i = icmp eq i32 %and.i.i.i1551.i, 0
  br i1 %tobool.not.i.i.i1552.i, label %hantro_reg_write.exit1548.i.vdpu_read_mask.exit.i1566.i_crit_edge, label %do.end.i.i.i1555.i

hantro_reg_write.exit1548.i.vdpu_read_mask.exit.i1566.i_crit_edge: ; preds = %hantro_reg_write.exit1548.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1566.i

do.end.i.i.i1555.i:                               ; preds = %hantro_reg_write.exit1548.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1554.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %499) #8
  br label %vdpu_read_mask.exit.i1566.i

vdpu_read_mask.exit.i1566.i:                      ; preds = %do.end.i.i.i1555.i, %hantro_reg_write.exit1548.i.vdpu_read_mask.exit.i1566.i_crit_edge
  %and.i.i1560.i = and i32 %499, -2097153
  %501 = shl i32 %495, 16
  %shl4.i.i1562.i = and i32 %501, 2097152
  %or.i.i1563.i = or i32 %and.i.i1560.i, %shl4.i.i1562.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %502 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1564.i = and i32 %502, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1564.i)
  %tobool.not.i.i1565.i = icmp eq i32 %and.i3.i1564.i, 0
  br i1 %tobool.not.i.i1565.i, label %vdpu_read_mask.exit.i1566.i.hantro_reg_write.exit1571.i_crit_edge, label %do.end.i.i1569.i

vdpu_read_mask.exit.i1566.i.hantro_reg_write.exit1571.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1566.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1571.i

do.end.i.i1569.i:                                 ; preds = %vdpu_read_mask.exit.i1566.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1568.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1563.i) #8
  br label %hantro_reg_write.exit1571.i

hantro_reg_write.exit1571.i:                      ; preds = %do.end.i.i1569.i, %vdpu_read_mask.exit.i1566.i.hantro_reg_write.exit1571.i_crit_edge
  %503 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1563.i) #5
  %504 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1570.i = getelementptr i8, ptr %505, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1570.i, i32 %503) #5, !srcloc !45
  %506 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %506)
  %507 = load i64, ptr %flags.i, align 8
  %508 = trunc i64 %507 to i32
  %509 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1573.i = getelementptr i8, ptr %510, i32 48
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1573.i) #5, !srcloc !43
  %512 = tail call i32 @llvm.bswap.i32(i32 %511) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %513 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1574.i = and i32 %513, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1574.i)
  %tobool.not.i.i.i1575.i = icmp eq i32 %and.i.i.i1574.i, 0
  br i1 %tobool.not.i.i.i1575.i, label %hantro_reg_write.exit1571.i.vdpu_read_mask.exit.i1589.i_crit_edge, label %do.end.i.i.i1578.i

hantro_reg_write.exit1571.i.vdpu_read_mask.exit.i1589.i_crit_edge: ; preds = %hantro_reg_write.exit1571.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1589.i

do.end.i.i.i1578.i:                               ; preds = %hantro_reg_write.exit1571.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1577.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %512) #8
  br label %vdpu_read_mask.exit.i1589.i

vdpu_read_mask.exit.i1589.i:                      ; preds = %do.end.i.i.i1578.i, %hantro_reg_write.exit1571.i.vdpu_read_mask.exit.i1589.i_crit_edge
  %and.i.i1583.i = and i32 %512, -9
  %514 = lshr i32 %508, 1
  %shl4.i.i1585.i = and i32 %514, 8
  %or.i.i1586.i = or i32 %and.i.i1583.i, %shl4.i.i1585.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %515 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1587.i = and i32 %515, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1587.i)
  %tobool.not.i.i1588.i = icmp eq i32 %and.i3.i1587.i, 0
  br i1 %tobool.not.i.i1588.i, label %vdpu_read_mask.exit.i1589.i.hantro_reg_write.exit1594.i_crit_edge, label %do.end.i.i1592.i

vdpu_read_mask.exit.i1589.i.hantro_reg_write.exit1594.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1589.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1594.i

do.end.i.i1592.i:                                 ; preds = %vdpu_read_mask.exit.i1589.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1591.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i1586.i) #8
  br label %hantro_reg_write.exit1594.i

hantro_reg_write.exit1594.i:                      ; preds = %do.end.i.i1592.i, %vdpu_read_mask.exit.i1589.i.hantro_reg_write.exit1594.i_crit_edge
  %516 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1586.i) #5
  %517 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1593.i = getelementptr i8, ptr %518, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1593.i, i32 %516) #5, !srcloc !45
  %519 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %519)
  %520 = load i64, ptr %flags.i, align 8
  %and346.i = and i64 %520, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and346.i)
  %tobool347.not.i = icmp eq i64 %and346.i, 0
  br i1 %tobool347.not.i, label %if.else376.i, label %if.then348.i

if.then348.i:                                     ; preds = %hantro_reg_write.exit1594.i
  %log2_diff_max_min_pcm_luma_coding_block_size.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 17
  %521 = ptrtoint ptr %log2_diff_max_min_pcm_luma_coding_block_size.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %log2_diff_max_min_pcm_luma_coding_block_size.i, align 1
  %conv353.i = zext i8 %522 to i32
  %log2_min_pcm_luma_coding_block_size_minus3.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 16
  %523 = ptrtoint ptr %log2_min_pcm_luma_coding_block_size_minus3.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %log2_min_pcm_luma_coding_block_size_minus3.i, align 2
  %conv354.i = zext i8 %524 to i32
  %add355.i = add nuw nsw i32 %conv354.i, %conv353.i
  %525 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1596.i = getelementptr i8, ptr %526, i32 48
  %527 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1596.i) #5, !srcloc !43
  %528 = tail call i32 @llvm.bswap.i32(i32 %527) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %529 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1597.i = and i32 %529, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1597.i)
  %tobool.not.i.i.i1598.i = icmp eq i32 %and.i.i.i1597.i, 0
  br i1 %tobool.not.i.i.i1598.i, label %if.then348.i.vdpu_read_mask.exit.i1612.i_crit_edge, label %do.end.i.i.i1601.i

if.then348.i.vdpu_read_mask.exit.i1612.i_crit_edge: ; preds = %if.then348.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1612.i

do.end.i.i.i1601.i:                               ; preds = %if.then348.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1600.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %528) #8
  br label %vdpu_read_mask.exit.i1612.i

vdpu_read_mask.exit.i1612.i:                      ; preds = %do.end.i.i.i1601.i, %if.then348.i.vdpu_read_mask.exit.i1612.i_crit_edge
  %and.i.i1606.i = and i32 %528, -113
  %add356.i = shl nuw nsw i32 %add355.i, 4
  %and2.i.i1607.i = add nuw nsw i32 %add356.i, 48
  %shl4.i.i1608.i = and i32 %and2.i.i1607.i, 112
  %or.i.i1609.i = or i32 %shl4.i.i1608.i, %and.i.i1606.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %530 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1610.i = and i32 %530, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1610.i)
  %tobool.not.i.i1611.i = icmp eq i32 %and.i3.i1610.i, 0
  br i1 %tobool.not.i.i1611.i, label %vdpu_read_mask.exit.i1612.i.hantro_reg_write.exit1617.i_crit_edge, label %do.end.i.i1615.i

vdpu_read_mask.exit.i1612.i.hantro_reg_write.exit1617.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1612.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1617.i

do.end.i.i1615.i:                                 ; preds = %vdpu_read_mask.exit.i1612.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1614.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i1609.i) #8
  br label %hantro_reg_write.exit1617.i

hantro_reg_write.exit1617.i:                      ; preds = %do.end.i.i1615.i, %vdpu_read_mask.exit.i1612.i.hantro_reg_write.exit1617.i_crit_edge
  %531 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1609.i) #5
  %532 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1616.i = getelementptr i8, ptr %533, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1616.i, i32 %531) #5, !srcloc !45
  %534 = ptrtoint ptr %log2_min_pcm_luma_coding_block_size_minus3.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %log2_min_pcm_luma_coding_block_size_minus3.i, align 2
  %536 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1619.i = getelementptr i8, ptr %537, i32 48
  %538 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1619.i) #5, !srcloc !43
  %539 = tail call i32 @llvm.bswap.i32(i32 %538) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %540 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1620.i = and i32 %540, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1620.i)
  %tobool.not.i.i.i1621.i = icmp eq i32 %and.i.i.i1620.i, 0
  br i1 %tobool.not.i.i.i1621.i, label %hantro_reg_write.exit1617.i.vdpu_read_mask.exit.i1635.i_crit_edge, label %do.end.i.i.i1624.i

hantro_reg_write.exit1617.i.vdpu_read_mask.exit.i1635.i_crit_edge: ; preds = %hantro_reg_write.exit1617.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1635.i

do.end.i.i.i1624.i:                               ; preds = %hantro_reg_write.exit1617.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1623.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %539) #8
  br label %vdpu_read_mask.exit.i1635.i

vdpu_read_mask.exit.i1635.i:                      ; preds = %do.end.i.i.i1624.i, %hantro_reg_write.exit1617.i.vdpu_read_mask.exit.i1635.i_crit_edge
  %and.i.i1629.i = and i32 %539, -897
  %541 = add i8 %535, 3
  %542 = and i8 %541, 7
  %and2.i.i1630.i = zext i8 %542 to i32
  %shl4.i.i1631.i = shl nuw nsw i32 %and2.i.i1630.i, 7
  %or.i.i1632.i = or i32 %and.i.i1629.i, %shl4.i.i1631.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %543 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1633.i = and i32 %543, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1633.i)
  %tobool.not.i.i1634.i = icmp eq i32 %and.i3.i1633.i, 0
  br i1 %tobool.not.i.i1634.i, label %vdpu_read_mask.exit.i1635.i.hantro_reg_write.exit1640.i_crit_edge, label %do.end.i.i1638.i

vdpu_read_mask.exit.i1635.i.hantro_reg_write.exit1640.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1635.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1640.i

do.end.i.i1638.i:                                 ; preds = %vdpu_read_mask.exit.i1635.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1637.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i1632.i) #8
  br label %hantro_reg_write.exit1640.i

hantro_reg_write.exit1640.i:                      ; preds = %do.end.i.i1638.i, %vdpu_read_mask.exit.i1635.i.hantro_reg_write.exit1640.i_crit_edge
  %544 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1632.i) #5
  %545 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1639.i = getelementptr i8, ptr %546, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1639.i, i32 %544) #5, !srcloc !45
  %pcm_sample_bit_depth_luma_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 14
  %547 = ptrtoint ptr %pcm_sample_bit_depth_luma_minus1.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %pcm_sample_bit_depth_luma_minus1.i, align 8
  %549 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1642.i = getelementptr i8, ptr %550, i32 32
  %551 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1642.i) #5, !srcloc !43
  %552 = tail call i32 @llvm.bswap.i32(i32 %551) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %553 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1643.i = and i32 %553, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1643.i)
  %tobool.not.i.i.i1644.i = icmp eq i32 %and.i.i.i1643.i, 0
  br i1 %tobool.not.i.i.i1644.i, label %hantro_reg_write.exit1640.i.vdpu_read_mask.exit.i1658.i_crit_edge, label %do.end.i.i.i1647.i

hantro_reg_write.exit1640.i.vdpu_read_mask.exit.i1658.i_crit_edge: ; preds = %hantro_reg_write.exit1640.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1658.i

do.end.i.i.i1647.i:                               ; preds = %hantro_reg_write.exit1640.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1646.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %552) #8
  br label %vdpu_read_mask.exit.i1658.i

vdpu_read_mask.exit.i1658.i:                      ; preds = %do.end.i.i.i1647.i, %hantro_reg_write.exit1640.i.vdpu_read_mask.exit.i1658.i_crit_edge
  %and.i.i1652.i = and i32 %552, -61441
  %554 = add i8 %548, 1
  %555 = and i8 %554, 15
  %and2.i.i1653.i = zext i8 %555 to i32
  %shl4.i.i1654.i = shl nuw nsw i32 %and2.i.i1653.i, 12
  %or.i.i1655.i = or i32 %and.i.i1652.i, %shl4.i.i1654.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %556 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1656.i = and i32 %556, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1656.i)
  %tobool.not.i.i1657.i = icmp eq i32 %and.i3.i1656.i, 0
  br i1 %tobool.not.i.i1657.i, label %vdpu_read_mask.exit.i1658.i.hantro_reg_write.exit1663.i_crit_edge, label %do.end.i.i1661.i

vdpu_read_mask.exit.i1658.i.hantro_reg_write.exit1663.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1658.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1663.i

do.end.i.i1661.i:                                 ; preds = %vdpu_read_mask.exit.i1658.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1660.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i1655.i) #8
  br label %hantro_reg_write.exit1663.i

hantro_reg_write.exit1663.i:                      ; preds = %do.end.i.i1661.i, %vdpu_read_mask.exit.i1658.i.hantro_reg_write.exit1663.i_crit_edge
  %557 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1655.i) #5
  %558 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1662.i = getelementptr i8, ptr %559, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1662.i, i32 %557) #5, !srcloc !45
  %pcm_sample_bit_depth_chroma_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %3, i32 0, i32 15
  %560 = ptrtoint ptr %pcm_sample_bit_depth_chroma_minus1.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %pcm_sample_bit_depth_chroma_minus1.i, align 1
  %562 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1665.i = getelementptr i8, ptr %563, i32 32
  %564 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1665.i) #5, !srcloc !43
  %565 = tail call i32 @llvm.bswap.i32(i32 %564) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %566 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1666.i = and i32 %566, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1666.i)
  %tobool.not.i.i.i1667.i = icmp eq i32 %and.i.i.i1666.i, 0
  br i1 %tobool.not.i.i.i1667.i, label %hantro_reg_write.exit1663.i.vdpu_read_mask.exit.i1681.i_crit_edge, label %do.end.i.i.i1670.i

hantro_reg_write.exit1663.i.vdpu_read_mask.exit.i1681.i_crit_edge: ; preds = %hantro_reg_write.exit1663.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1681.i

do.end.i.i.i1670.i:                               ; preds = %hantro_reg_write.exit1663.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1669.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %565) #8
  br label %vdpu_read_mask.exit.i1681.i

vdpu_read_mask.exit.i1681.i:                      ; preds = %do.end.i.i.i1670.i, %hantro_reg_write.exit1663.i.vdpu_read_mask.exit.i1681.i_crit_edge
  %and.i.i1675.i = and i32 %565, -3841
  %567 = add i8 %561, 1
  %568 = and i8 %567, 15
  %and2.i.i1676.i = zext i8 %568 to i32
  %shl4.i.i1677.i = shl nuw nsw i32 %and2.i.i1676.i, 8
  %or.i.i1678.i = or i32 %and.i.i1675.i, %shl4.i.i1677.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %569 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1679.i = and i32 %569, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1679.i)
  %tobool.not.i.i1680.i = icmp eq i32 %and.i3.i1679.i, 0
  br i1 %tobool.not.i.i1680.i, label %vdpu_read_mask.exit.i1681.i.hantro_reg_write.exit1686.i_crit_edge, label %do.end.i.i1684.i

vdpu_read_mask.exit.i1681.i.hantro_reg_write.exit1686.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1681.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1686.i

do.end.i.i1684.i:                                 ; preds = %vdpu_read_mask.exit.i1681.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1683.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i1678.i) #8
  br label %hantro_reg_write.exit1686.i

hantro_reg_write.exit1686.i:                      ; preds = %do.end.i.i1684.i, %vdpu_read_mask.exit.i1681.i.hantro_reg_write.exit1686.i_crit_edge
  %570 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1678.i) #5
  %571 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1685.i = getelementptr i8, ptr %572, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1685.i, i32 %570) #5, !srcloc !45
  br label %if.end393.i

if.else376.i:                                     ; preds = %hantro_reg_write.exit1594.i
  %573 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1688.i = getelementptr i8, ptr %574, i32 48
  %575 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1688.i) #5, !srcloc !43
  %576 = tail call i32 @llvm.bswap.i32(i32 %575) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %577 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1689.i = and i32 %577, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1689.i)
  %tobool.not.i.i.i1690.i = icmp eq i32 %and.i.i.i1689.i, 0
  br i1 %tobool.not.i.i.i1690.i, label %if.else376.i.vdpu_read_mask.exit.i1701.i_crit_edge, label %do.end.i.i.i1693.i

if.else376.i.vdpu_read_mask.exit.i1701.i_crit_edge: ; preds = %if.else376.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1701.i

do.end.i.i.i1693.i:                               ; preds = %if.else376.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1692.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %576) #8
  br label %vdpu_read_mask.exit.i1701.i

vdpu_read_mask.exit.i1701.i:                      ; preds = %do.end.i.i.i1693.i, %if.else376.i.vdpu_read_mask.exit.i1701.i_crit_edge
  %and.i.i1698.i = and i32 %576, -113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %578 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1699.i = and i32 %578, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1699.i)
  %tobool.not.i.i1700.i = icmp eq i32 %and.i3.i1699.i, 0
  br i1 %tobool.not.i.i1700.i, label %vdpu_read_mask.exit.i1701.i.hantro_reg_write.exit1706.i_crit_edge, label %do.end.i.i1704.i

vdpu_read_mask.exit.i1701.i.hantro_reg_write.exit1706.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1701.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1706.i

do.end.i.i1704.i:                                 ; preds = %vdpu_read_mask.exit.i1701.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1703.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %and.i.i1698.i) #8
  br label %hantro_reg_write.exit1706.i

hantro_reg_write.exit1706.i:                      ; preds = %do.end.i.i1704.i, %vdpu_read_mask.exit.i1701.i.hantro_reg_write.exit1706.i_crit_edge
  %579 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1698.i) #5
  %580 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1705.i = getelementptr i8, ptr %581, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1705.i, i32 %579) #5, !srcloc !45
  %582 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1708.i = getelementptr i8, ptr %583, i32 48
  %584 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1708.i) #5, !srcloc !43
  %585 = tail call i32 @llvm.bswap.i32(i32 %584) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %586 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1709.i = and i32 %586, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1709.i)
  %tobool.not.i.i.i1710.i = icmp eq i32 %and.i.i.i1709.i, 0
  br i1 %tobool.not.i.i.i1710.i, label %hantro_reg_write.exit1706.i.vdpu_read_mask.exit.i1721.i_crit_edge, label %do.end.i.i.i1713.i

hantro_reg_write.exit1706.i.vdpu_read_mask.exit.i1721.i_crit_edge: ; preds = %hantro_reg_write.exit1706.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1721.i

do.end.i.i.i1713.i:                               ; preds = %hantro_reg_write.exit1706.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1712.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %585) #8
  br label %vdpu_read_mask.exit.i1721.i

vdpu_read_mask.exit.i1721.i:                      ; preds = %do.end.i.i.i1713.i, %hantro_reg_write.exit1706.i.vdpu_read_mask.exit.i1721.i_crit_edge
  %and.i.i1718.i = and i32 %585, -897
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %587 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1719.i = and i32 %587, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1719.i)
  %tobool.not.i.i1720.i = icmp eq i32 %and.i3.i1719.i, 0
  br i1 %tobool.not.i.i1720.i, label %vdpu_read_mask.exit.i1721.i.hantro_reg_write.exit1726.i_crit_edge, label %do.end.i.i1724.i

vdpu_read_mask.exit.i1721.i.hantro_reg_write.exit1726.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1721.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1726.i

do.end.i.i1724.i:                                 ; preds = %vdpu_read_mask.exit.i1721.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1723.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %and.i.i1718.i) #8
  br label %hantro_reg_write.exit1726.i

hantro_reg_write.exit1726.i:                      ; preds = %do.end.i.i1724.i, %vdpu_read_mask.exit.i1721.i.hantro_reg_write.exit1726.i_crit_edge
  %588 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1718.i) #5
  %589 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1725.i = getelementptr i8, ptr %590, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1725.i, i32 %588) #5, !srcloc !45
  %591 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1728.i = getelementptr i8, ptr %592, i32 32
  %593 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1728.i) #5, !srcloc !43
  %594 = tail call i32 @llvm.bswap.i32(i32 %593) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %595 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1729.i = and i32 %595, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1729.i)
  %tobool.not.i.i.i1730.i = icmp eq i32 %and.i.i.i1729.i, 0
  br i1 %tobool.not.i.i.i1730.i, label %hantro_reg_write.exit1726.i.vdpu_read_mask.exit.i1741.i_crit_edge, label %do.end.i.i.i1733.i

hantro_reg_write.exit1726.i.vdpu_read_mask.exit.i1741.i_crit_edge: ; preds = %hantro_reg_write.exit1726.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1741.i

do.end.i.i.i1733.i:                               ; preds = %hantro_reg_write.exit1726.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1732.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %594) #8
  br label %vdpu_read_mask.exit.i1741.i

vdpu_read_mask.exit.i1741.i:                      ; preds = %do.end.i.i.i1733.i, %hantro_reg_write.exit1726.i.vdpu_read_mask.exit.i1741.i_crit_edge
  %and.i.i1738.i = and i32 %594, -61441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %596 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1739.i = and i32 %596, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1739.i)
  %tobool.not.i.i1740.i = icmp eq i32 %and.i3.i1739.i, 0
  br i1 %tobool.not.i.i1740.i, label %vdpu_read_mask.exit.i1741.i.hantro_reg_write.exit1746.i_crit_edge, label %do.end.i.i1744.i

vdpu_read_mask.exit.i1741.i.hantro_reg_write.exit1746.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1741.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1746.i

do.end.i.i1744.i:                                 ; preds = %vdpu_read_mask.exit.i1741.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1743.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %and.i.i1738.i) #8
  br label %hantro_reg_write.exit1746.i

hantro_reg_write.exit1746.i:                      ; preds = %do.end.i.i1744.i, %vdpu_read_mask.exit.i1741.i.hantro_reg_write.exit1746.i_crit_edge
  %597 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1738.i) #5
  %598 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1745.i = getelementptr i8, ptr %599, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1745.i, i32 %597) #5, !srcloc !45
  %600 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1748.i = getelementptr i8, ptr %601, i32 32
  %602 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1748.i) #5, !srcloc !43
  %603 = tail call i32 @llvm.bswap.i32(i32 %602) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %604 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1749.i = and i32 %604, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1749.i)
  %tobool.not.i.i.i1750.i = icmp eq i32 %and.i.i.i1749.i, 0
  br i1 %tobool.not.i.i.i1750.i, label %hantro_reg_write.exit1746.i.vdpu_read_mask.exit.i1761.i_crit_edge, label %do.end.i.i.i1753.i

hantro_reg_write.exit1746.i.vdpu_read_mask.exit.i1761.i_crit_edge: ; preds = %hantro_reg_write.exit1746.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1761.i

do.end.i.i.i1753.i:                               ; preds = %hantro_reg_write.exit1746.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1752.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %603) #8
  br label %vdpu_read_mask.exit.i1761.i

vdpu_read_mask.exit.i1761.i:                      ; preds = %do.end.i.i.i1753.i, %hantro_reg_write.exit1746.i.vdpu_read_mask.exit.i1761.i_crit_edge
  %and.i.i1758.i = and i32 %603, -3841
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %605 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1759.i = and i32 %605, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1759.i)
  %tobool.not.i.i1760.i = icmp eq i32 %and.i3.i1759.i, 0
  br i1 %tobool.not.i.i1760.i, label %vdpu_read_mask.exit.i1761.i.hantro_reg_write.exit1766.i_crit_edge, label %do.end.i.i1764.i

vdpu_read_mask.exit.i1761.i.hantro_reg_write.exit1766.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1761.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1766.i

do.end.i.i1764.i:                                 ; preds = %vdpu_read_mask.exit.i1761.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1763.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %and.i.i1758.i) #8
  br label %hantro_reg_write.exit1766.i

hantro_reg_write.exit1766.i:                      ; preds = %do.end.i.i1764.i, %vdpu_read_mask.exit.i1761.i.hantro_reg_write.exit1766.i_crit_edge
  %606 = tail call i32 @llvm.bswap.i32(i32 %and.i.i1758.i) #5
  %607 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1765.i = getelementptr i8, ptr %608, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1765.i, i32 %606) #5, !srcloc !45
  br label %if.end393.i

if.end393.i:                                      ; preds = %hantro_reg_write.exit1766.i, %hantro_reg_write.exit1686.i
  %609 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1768.i = getelementptr i8, ptr %610, i32 40
  %611 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1768.i) #5, !srcloc !43
  %612 = tail call i32 @llvm.bswap.i32(i32 %611) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %613 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1769.i = and i32 %613, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1769.i)
  %tobool.not.i.i.i1770.i = icmp eq i32 %and.i.i.i1769.i, 0
  br i1 %tobool.not.i.i.i1770.i, label %if.end393.i.vdpu_read_mask.exit.i1784.i_crit_edge, label %do.end.i.i.i1773.i

if.end393.i.vdpu_read_mask.exit.i1784.i_crit_edge: ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1784.i

do.end.i.i.i1773.i:                               ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1772.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %612) #8
  br label %vdpu_read_mask.exit.i1784.i

vdpu_read_mask.exit.i1784.i:                      ; preds = %do.end.i.i.i1773.i, %if.end393.i.vdpu_read_mask.exit.i1784.i_crit_edge
  %or.i.i1781.i = or i32 %612, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %614 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1782.i = and i32 %614, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1782.i)
  %tobool.not.i.i1783.i = icmp eq i32 %and.i3.i1782.i, 0
  br i1 %tobool.not.i.i1783.i, label %vdpu_read_mask.exit.i1784.i.hantro_reg_write.exit1789.i_crit_edge, label %do.end.i.i1787.i

vdpu_read_mask.exit.i1784.i.hantro_reg_write.exit1789.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1784.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1789.i

do.end.i.i1787.i:                                 ; preds = %vdpu_read_mask.exit.i1784.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1786.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i1781.i) #8
  br label %hantro_reg_write.exit1789.i

hantro_reg_write.exit1789.i:                      ; preds = %do.end.i.i1787.i, %vdpu_read_mask.exit.i1784.i.hantro_reg_write.exit1789.i_crit_edge
  %615 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1781.i) #5
  %616 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1788.i = getelementptr i8, ptr %617, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1788.i, i32 %615) #5, !srcloc !45
  %init_qp_minus26.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 3
  %618 = ptrtoint ptr %init_qp_minus26.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %init_qp_minus26.i, align 1
  %620 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1791.i = getelementptr i8, ptr %621, i32 40
  %622 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1791.i) #5, !srcloc !43
  %623 = tail call i32 @llvm.bswap.i32(i32 %622) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %624 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1792.i = and i32 %624, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1792.i)
  %tobool.not.i.i.i1793.i = icmp eq i32 %and.i.i.i1792.i, 0
  br i1 %tobool.not.i.i.i1793.i, label %hantro_reg_write.exit1789.i.vdpu_read_mask.exit.i1807.i_crit_edge, label %do.end.i.i.i1796.i

hantro_reg_write.exit1789.i.vdpu_read_mask.exit.i1807.i_crit_edge: ; preds = %hantro_reg_write.exit1789.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1807.i

do.end.i.i.i1796.i:                               ; preds = %hantro_reg_write.exit1789.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1795.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %623) #8
  br label %vdpu_read_mask.exit.i1807.i

vdpu_read_mask.exit.i1807.i:                      ; preds = %do.end.i.i.i1796.i, %hantro_reg_write.exit1789.i.vdpu_read_mask.exit.i1807.i_crit_edge
  %and.i.i1801.i = and i32 %623, -1056964609
  %625 = add i8 %619, 26
  %626 = and i8 %625, 63
  %and2.i.i1802.i = zext i8 %626 to i32
  %shl4.i.i1803.i = shl nuw nsw i32 %and2.i.i1802.i, 24
  %or.i.i1804.i = or i32 %and.i.i1801.i, %shl4.i.i1803.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %627 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1805.i = and i32 %627, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1805.i)
  %tobool.not.i.i1806.i = icmp eq i32 %and.i3.i1805.i, 0
  br i1 %tobool.not.i.i1806.i, label %vdpu_read_mask.exit.i1807.i.hantro_reg_write.exit1812.i_crit_edge, label %do.end.i.i1810.i

vdpu_read_mask.exit.i1807.i.hantro_reg_write.exit1812.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1807.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1812.i

do.end.i.i1810.i:                                 ; preds = %vdpu_read_mask.exit.i1807.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1809.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i1804.i) #8
  br label %hantro_reg_write.exit1812.i

hantro_reg_write.exit1812.i:                      ; preds = %do.end.i.i1810.i, %vdpu_read_mask.exit.i1807.i.hantro_reg_write.exit1812.i_crit_edge
  %628 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1804.i) #5
  %629 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1811.i = getelementptr i8, ptr %630, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1811.i, i32 %628) #5, !srcloc !45
  %631 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %631)
  %632 = load i64, ptr %flags163.i, align 8
  %633 = trunc i64 %632 to i32
  %634 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1814.i = getelementptr i8, ptr %635, i32 28
  %636 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1814.i) #5, !srcloc !43
  %637 = tail call i32 @llvm.bswap.i32(i32 %636) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %638 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1815.i = and i32 %638, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1815.i)
  %tobool.not.i.i.i1816.i = icmp eq i32 %and.i.i.i1815.i, 0
  br i1 %tobool.not.i.i.i1816.i, label %hantro_reg_write.exit1812.i.vdpu_read_mask.exit.i1830.i_crit_edge, label %do.end.i.i.i1819.i

hantro_reg_write.exit1812.i.vdpu_read_mask.exit.i1830.i_crit_edge: ; preds = %hantro_reg_write.exit1812.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1830.i

do.end.i.i.i1819.i:                               ; preds = %hantro_reg_write.exit1812.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1818.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %637) #8
  br label %vdpu_read_mask.exit.i1830.i

vdpu_read_mask.exit.i1830.i:                      ; preds = %do.end.i.i.i1819.i, %hantro_reg_write.exit1812.i.vdpu_read_mask.exit.i1830.i_crit_edge
  %and.i.i1824.i = and i32 %637, -268435457
  %639 = shl i32 %633, 20
  %shl4.i.i1826.i = and i32 %639, 268435456
  %or.i.i1827.i = or i32 %and.i.i1824.i, %shl4.i.i1826.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %640 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1828.i = and i32 %640, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1828.i)
  %tobool.not.i.i1829.i = icmp eq i32 %and.i3.i1828.i, 0
  br i1 %tobool.not.i.i1829.i, label %vdpu_read_mask.exit.i1830.i.hantro_reg_write.exit1835.i_crit_edge, label %do.end.i.i1833.i

vdpu_read_mask.exit.i1830.i.hantro_reg_write.exit1835.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1830.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1835.i

do.end.i.i1833.i:                                 ; preds = %vdpu_read_mask.exit.i1830.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1832.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1827.i) #8
  br label %hantro_reg_write.exit1835.i

hantro_reg_write.exit1835.i:                      ; preds = %do.end.i.i1833.i, %vdpu_read_mask.exit.i1830.i.hantro_reg_write.exit1835.i_crit_edge
  %641 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1827.i) #5
  %642 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1834.i = getelementptr i8, ptr %643, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1834.i, i32 %641) #5, !srcloc !45
  %644 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %644)
  %645 = load i64, ptr %flags163.i, align 8
  %646 = trunc i64 %645 to i32
  %647 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1837.i = getelementptr i8, ptr %648, i32 28
  %649 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1837.i) #5, !srcloc !43
  %650 = tail call i32 @llvm.bswap.i32(i32 %649) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %651 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1838.i = and i32 %651, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1838.i)
  %tobool.not.i.i.i1839.i = icmp eq i32 %and.i.i.i1838.i, 0
  br i1 %tobool.not.i.i.i1839.i, label %hantro_reg_write.exit1835.i.vdpu_read_mask.exit.i1853.i_crit_edge, label %do.end.i.i.i1842.i

hantro_reg_write.exit1835.i.vdpu_read_mask.exit.i1853.i_crit_edge: ; preds = %hantro_reg_write.exit1835.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1853.i

do.end.i.i.i1842.i:                               ; preds = %hantro_reg_write.exit1835.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1841.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %650) #8
  br label %vdpu_read_mask.exit.i1853.i

vdpu_read_mask.exit.i1853.i:                      ; preds = %do.end.i.i.i1842.i, %hantro_reg_write.exit1835.i.vdpu_read_mask.exit.i1853.i_crit_edge
  %and.i.i1847.i = and i32 %650, 2147483647
  %652 = shl i32 %646, 28
  %653 = and i32 %652, -2147483648
  %or.i.i1850.i = or i32 %and.i.i1847.i, %653
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %654 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1851.i = and i32 %654, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1851.i)
  %tobool.not.i.i1852.i = icmp eq i32 %and.i3.i1851.i, 0
  br i1 %tobool.not.i.i1852.i, label %vdpu_read_mask.exit.i1853.i.hantro_reg_write.exit1858.i_crit_edge, label %do.end.i.i1856.i

vdpu_read_mask.exit.i1853.i.hantro_reg_write.exit1858.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1853.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1858.i

do.end.i.i1856.i:                                 ; preds = %vdpu_read_mask.exit.i1853.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1855.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1850.i) #8
  br label %hantro_reg_write.exit1858.i

hantro_reg_write.exit1858.i:                      ; preds = %do.end.i.i1856.i, %vdpu_read_mask.exit.i1853.i.hantro_reg_write.exit1858.i_crit_edge
  %655 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1850.i) #5
  %656 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1857.i = getelementptr i8, ptr %657, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1857.i, i32 %655) #5, !srcloc !45
  %658 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %658)
  %659 = load i64, ptr %flags163.i, align 8
  %660 = trunc i64 %659 to i32
  %661 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1860.i = getelementptr i8, ptr %662, i32 32
  %663 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1860.i) #5, !srcloc !43
  %664 = tail call i32 @llvm.bswap.i32(i32 %663) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %665 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1861.i = and i32 %665, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1861.i)
  %tobool.not.i.i.i1862.i = icmp eq i32 %and.i.i.i1861.i, 0
  br i1 %tobool.not.i.i.i1862.i, label %hantro_reg_write.exit1858.i.vdpu_read_mask.exit.i1876.i_crit_edge, label %do.end.i.i.i1865.i

hantro_reg_write.exit1858.i.vdpu_read_mask.exit.i1876.i_crit_edge: ; preds = %hantro_reg_write.exit1858.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1876.i

do.end.i.i.i1865.i:                               ; preds = %hantro_reg_write.exit1858.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1864.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %664) #8
  br label %vdpu_read_mask.exit.i1876.i

vdpu_read_mask.exit.i1876.i:                      ; preds = %do.end.i.i.i1865.i, %hantro_reg_write.exit1858.i.vdpu_read_mask.exit.i1876.i_crit_edge
  %and.i.i1870.i = and i32 %664, 2147483647
  %666 = shl i32 %660, 27
  %667 = and i32 %666, -2147483648
  %or.i.i1873.i = or i32 %and.i.i1870.i, %667
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %668 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1874.i = and i32 %668, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1874.i)
  %tobool.not.i.i1875.i = icmp eq i32 %and.i3.i1874.i, 0
  br i1 %tobool.not.i.i1875.i, label %vdpu_read_mask.exit.i1876.i.hantro_reg_write.exit1881.i_crit_edge, label %do.end.i.i1879.i

vdpu_read_mask.exit.i1876.i.hantro_reg_write.exit1881.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1876.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1881.i

do.end.i.i1879.i:                                 ; preds = %vdpu_read_mask.exit.i1876.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1878.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i1873.i) #8
  br label %hantro_reg_write.exit1881.i

hantro_reg_write.exit1881.i:                      ; preds = %do.end.i.i1879.i, %vdpu_read_mask.exit.i1876.i.hantro_reg_write.exit1881.i_crit_edge
  %669 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1873.i) #5
  %670 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1880.i = getelementptr i8, ptr %671, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1880.i, i32 %669) #5, !srcloc !45
  %672 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %672)
  %673 = load i64, ptr %flags163.i, align 8
  %674 = trunc i64 %673 to i32
  %675 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1883.i = getelementptr i8, ptr %676, i32 48
  %677 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1883.i) #5, !srcloc !43
  %678 = tail call i32 @llvm.bswap.i32(i32 %677) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %679 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1884.i = and i32 %679, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1884.i)
  %tobool.not.i.i.i1885.i = icmp eq i32 %and.i.i.i1884.i, 0
  br i1 %tobool.not.i.i.i1885.i, label %hantro_reg_write.exit1881.i.vdpu_read_mask.exit.i1899.i_crit_edge, label %do.end.i.i.i1888.i

hantro_reg_write.exit1881.i.vdpu_read_mask.exit.i1899.i_crit_edge: ; preds = %hantro_reg_write.exit1881.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1899.i

do.end.i.i.i1888.i:                               ; preds = %hantro_reg_write.exit1881.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1887.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %678) #8
  br label %vdpu_read_mask.exit.i1899.i

vdpu_read_mask.exit.i1899.i:                      ; preds = %do.end.i.i.i1888.i, %hantro_reg_write.exit1881.i.vdpu_read_mask.exit.i1899.i_crit_edge
  %and.i.i1893.i = and i32 %678, -5
  %680 = lshr i32 %674, 3
  %shl4.i.i1895.i = and i32 %680, 4
  %or.i.i1896.i = or i32 %and.i.i1893.i, %shl4.i.i1895.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %681 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1897.i = and i32 %681, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1897.i)
  %tobool.not.i.i1898.i = icmp eq i32 %and.i3.i1897.i, 0
  br i1 %tobool.not.i.i1898.i, label %vdpu_read_mask.exit.i1899.i.hantro_reg_write.exit1904.i_crit_edge, label %do.end.i.i1902.i

vdpu_read_mask.exit.i1899.i.hantro_reg_write.exit1904.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1899.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1904.i

do.end.i.i1902.i:                                 ; preds = %vdpu_read_mask.exit.i1899.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1901.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i1896.i) #8
  br label %hantro_reg_write.exit1904.i

hantro_reg_write.exit1904.i:                      ; preds = %do.end.i.i1902.i, %vdpu_read_mask.exit.i1899.i.hantro_reg_write.exit1904.i_crit_edge
  %682 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1896.i) #5
  %683 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1903.i = getelementptr i8, ptr %684, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1903.i, i32 %682) #5, !srcloc !45
  %685 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %685)
  %686 = load i64, ptr %flags163.i, align 8
  %687 = trunc i64 %686 to i32
  %688 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1906.i = getelementptr i8, ptr %689, i32 12
  %690 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1906.i) #5, !srcloc !43
  %691 = tail call i32 @llvm.bswap.i32(i32 %690) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %692 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1907.i = and i32 %692, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1907.i)
  %tobool.not.i.i.i1908.i = icmp eq i32 %and.i.i.i1907.i, 0
  br i1 %tobool.not.i.i.i1908.i, label %hantro_reg_write.exit1904.i.vdpu_read_mask.exit.i1922.i_crit_edge, label %do.end.i.i.i1911.i

hantro_reg_write.exit1904.i.vdpu_read_mask.exit.i1922.i_crit_edge: ; preds = %hantro_reg_write.exit1904.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1922.i

do.end.i.i.i1911.i:                               ; preds = %hantro_reg_write.exit1904.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1910.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 3, i32 noundef %691) #8
  br label %vdpu_read_mask.exit.i1922.i

vdpu_read_mask.exit.i1922.i:                      ; preds = %do.end.i.i.i1911.i, %hantro_reg_write.exit1904.i.vdpu_read_mask.exit.i1922.i_crit_edge
  %and.i.i1916.i = and i32 %691, -16385
  %693 = lshr i32 %687, 2
  %shl4.i.i1918.i = and i32 %693, 16384
  %or.i.i1919.i = or i32 %and.i.i1916.i, %shl4.i.i1918.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %694 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1920.i = and i32 %694, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1920.i)
  %tobool.not.i.i1921.i = icmp eq i32 %and.i3.i1920.i, 0
  br i1 %tobool.not.i.i1921.i, label %vdpu_read_mask.exit.i1922.i.hantro_reg_write.exit1927.i_crit_edge, label %do.end.i.i1925.i

vdpu_read_mask.exit.i1922.i.hantro_reg_write.exit1927.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1922.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1927.i

do.end.i.i1925.i:                                 ; preds = %vdpu_read_mask.exit.i1922.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1924.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i1919.i) #8
  br label %hantro_reg_write.exit1927.i

hantro_reg_write.exit1927.i:                      ; preds = %do.end.i.i1925.i, %vdpu_read_mask.exit.i1922.i.hantro_reg_write.exit1927.i_crit_edge
  %695 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1919.i) #5
  %696 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1926.i = getelementptr i8, ptr %697, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1926.i, i32 %695) #5, !srcloc !45
  %698 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %698)
  %699 = load i64, ptr %flags163.i, align 8
  %700 = trunc i64 %699 to i32
  %701 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1929.i = getelementptr i8, ptr %702, i32 32
  %703 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1929.i) #5, !srcloc !43
  %704 = tail call i32 @llvm.bswap.i32(i32 %703) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %705 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1930.i = and i32 %705, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1930.i)
  %tobool.not.i.i.i1931.i = icmp eq i32 %and.i.i.i1930.i, 0
  br i1 %tobool.not.i.i.i1931.i, label %hantro_reg_write.exit1927.i.vdpu_read_mask.exit.i1945.i_crit_edge, label %do.end.i.i.i1934.i

hantro_reg_write.exit1927.i.vdpu_read_mask.exit.i1945.i_crit_edge: ; preds = %hantro_reg_write.exit1927.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1945.i

do.end.i.i.i1934.i:                               ; preds = %hantro_reg_write.exit1927.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1933.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 8, i32 noundef %704) #8
  br label %vdpu_read_mask.exit.i1945.i

vdpu_read_mask.exit.i1945.i:                      ; preds = %do.end.i.i.i1934.i, %hantro_reg_write.exit1927.i.vdpu_read_mask.exit.i1945.i_crit_edge
  %and.i.i1939.i = and i32 %704, -1073741825
  %706 = shl i32 %700, 11
  %shl4.i.i1941.i = and i32 %706, 1073741824
  %or.i.i1942.i = or i32 %and.i.i1939.i, %shl4.i.i1941.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %707 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1943.i = and i32 %707, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1943.i)
  %tobool.not.i.i1944.i = icmp eq i32 %and.i3.i1943.i, 0
  br i1 %tobool.not.i.i1944.i, label %vdpu_read_mask.exit.i1945.i.hantro_reg_write.exit1950.i_crit_edge, label %do.end.i.i1948.i

vdpu_read_mask.exit.i1945.i.hantro_reg_write.exit1950.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1945.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1950.i

do.end.i.i1948.i:                                 ; preds = %vdpu_read_mask.exit.i1945.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1947.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i1942.i) #8
  br label %hantro_reg_write.exit1950.i

hantro_reg_write.exit1950.i:                      ; preds = %do.end.i.i1948.i, %vdpu_read_mask.exit.i1945.i.hantro_reg_write.exit1950.i_crit_edge
  %708 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1942.i) #5
  %709 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1949.i = getelementptr i8, ptr %710, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1949.i, i32 %708) #5, !srcloc !45
  %711 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %711)
  %712 = load i64, ptr %flags163.i, align 8
  %713 = trunc i64 %712 to i32
  %714 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1952.i = getelementptr i8, ptr %715, i32 28
  %716 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1952.i) #5, !srcloc !43
  %717 = tail call i32 @llvm.bswap.i32(i32 %716) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %718 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1953.i = and i32 %718, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1953.i)
  %tobool.not.i.i.i1954.i = icmp eq i32 %and.i.i.i1953.i, 0
  br i1 %tobool.not.i.i.i1954.i, label %hantro_reg_write.exit1950.i.vdpu_read_mask.exit.i1968.i_crit_edge, label %do.end.i.i.i1957.i

hantro_reg_write.exit1950.i.vdpu_read_mask.exit.i1968.i_crit_edge: ; preds = %hantro_reg_write.exit1950.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1968.i

do.end.i.i.i1957.i:                               ; preds = %hantro_reg_write.exit1950.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1956.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %717) #8
  br label %vdpu_read_mask.exit.i1968.i

vdpu_read_mask.exit.i1968.i:                      ; preds = %do.end.i.i.i1957.i, %hantro_reg_write.exit1950.i.vdpu_read_mask.exit.i1968.i_crit_edge
  %and.i.i1962.i = and i32 %717, -524289
  %719 = shl i32 %713, 19
  %shl4.i.i1964.i = and i32 %719, 524288
  %or.i.i1965.i = or i32 %and.i.i1962.i, %shl4.i.i1964.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %720 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1966.i = and i32 %720, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1966.i)
  %tobool.not.i.i1967.i = icmp eq i32 %and.i3.i1966.i, 0
  br i1 %tobool.not.i.i1967.i, label %vdpu_read_mask.exit.i1968.i.hantro_reg_write.exit1973.i_crit_edge, label %do.end.i.i1971.i

vdpu_read_mask.exit.i1968.i.hantro_reg_write.exit1973.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1968.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1973.i

do.end.i.i1971.i:                                 ; preds = %vdpu_read_mask.exit.i1968.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1970.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1965.i) #8
  br label %hantro_reg_write.exit1973.i

hantro_reg_write.exit1973.i:                      ; preds = %do.end.i.i1971.i, %vdpu_read_mask.exit.i1968.i.hantro_reg_write.exit1973.i_crit_edge
  %721 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1965.i) #5
  %722 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1972.i = getelementptr i8, ptr %723, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1972.i, i32 %721) #5, !srcloc !45
  %724 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load8_noabort(i32 %724)
  %725 = load i64, ptr %flags163.i, align 8
  %726 = trunc i64 %725 to i32
  %727 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1975.i = getelementptr i8, ptr %728, i32 28
  %729 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1975.i) #5, !srcloc !43
  %730 = tail call i32 @llvm.bswap.i32(i32 %729) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %731 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1976.i = and i32 %731, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1976.i)
  %tobool.not.i.i.i1977.i = icmp eq i32 %and.i.i.i1976.i, 0
  br i1 %tobool.not.i.i.i1977.i, label %hantro_reg_write.exit1973.i.vdpu_read_mask.exit.i1991.i_crit_edge, label %do.end.i.i.i1980.i

hantro_reg_write.exit1973.i.vdpu_read_mask.exit.i1991.i_crit_edge: ; preds = %hantro_reg_write.exit1973.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i1991.i

do.end.i.i.i1980.i:                               ; preds = %hantro_reg_write.exit1973.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i1979.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %730) #8
  br label %vdpu_read_mask.exit.i1991.i

vdpu_read_mask.exit.i1991.i:                      ; preds = %do.end.i.i.i1980.i, %hantro_reg_write.exit1973.i.vdpu_read_mask.exit.i1991.i_crit_edge
  %and.i.i1985.i = and i32 %730, -262145
  %732 = shl i32 %726, 3
  %shl4.i.i1987.i = and i32 %732, 262144
  %or.i.i1988.i = or i32 %and.i.i1985.i, %shl4.i.i1987.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %733 = load i32, ptr @hantro_debug, align 4
  %and.i3.i1989.i = and i32 %733, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i1989.i)
  %tobool.not.i.i1990.i = icmp eq i32 %and.i3.i1989.i, 0
  br i1 %tobool.not.i.i1990.i, label %vdpu_read_mask.exit.i1991.i.hantro_reg_write.exit1996.i_crit_edge, label %do.end.i.i1994.i

vdpu_read_mask.exit.i1991.i.hantro_reg_write.exit1996.i_crit_edge: ; preds = %vdpu_read_mask.exit.i1991.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit1996.i

do.end.i.i1994.i:                                 ; preds = %vdpu_read_mask.exit.i1991.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i1993.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i1988.i) #8
  br label %hantro_reg_write.exit1996.i

hantro_reg_write.exit1996.i:                      ; preds = %do.end.i.i1994.i, %vdpu_read_mask.exit.i1991.i.hantro_reg_write.exit1996.i_crit_edge
  %734 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1988.i) #5
  %735 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i1995.i = getelementptr i8, ptr %736, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1995.i, i32 %734) #5, !srcloc !45
  %num_ref_idx_l0_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 1
  %737 = ptrtoint ptr %num_ref_idx_l0_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %num_ref_idx_l0_default_active_minus1.i, align 1
  %739 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i1998.i = getelementptr i8, ptr %740, i32 36
  %741 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1998.i) #5, !srcloc !43
  %742 = tail call i32 @llvm.bswap.i32(i32 %741) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %743 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1999.i = and i32 %743, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1999.i)
  %tobool.not.i.i.i2000.i = icmp eq i32 %and.i.i.i1999.i, 0
  br i1 %tobool.not.i.i.i2000.i, label %hantro_reg_write.exit1996.i.vdpu_read_mask.exit.i2014.i_crit_edge, label %do.end.i.i.i2003.i

hantro_reg_write.exit1996.i.vdpu_read_mask.exit.i2014.i_crit_edge: ; preds = %hantro_reg_write.exit1996.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i2014.i

do.end.i.i.i2003.i:                               ; preds = %hantro_reg_write.exit1996.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i2002.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 9, i32 noundef %742) #8
  br label %vdpu_read_mask.exit.i2014.i

vdpu_read_mask.exit.i2014.i:                      ; preds = %do.end.i.i.i2003.i, %hantro_reg_write.exit1996.i.vdpu_read_mask.exit.i2014.i_crit_edge
  %and.i.i2008.i = and i32 %742, -507905
  %744 = add i8 %738, 1
  %745 = and i8 %744, 31
  %and2.i.i2009.i = zext i8 %745 to i32
  %shl4.i.i2010.i = shl nuw nsw i32 %and2.i.i2009.i, 14
  %or.i.i2011.i = or i32 %and.i.i2008.i, %shl4.i.i2010.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %746 = load i32, ptr @hantro_debug, align 4
  %and.i3.i2012.i = and i32 %746, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i2012.i)
  %tobool.not.i.i2013.i = icmp eq i32 %and.i3.i2012.i, 0
  br i1 %tobool.not.i.i2013.i, label %vdpu_read_mask.exit.i2014.i.hantro_reg_write.exit2019.i_crit_edge, label %do.end.i.i2017.i

vdpu_read_mask.exit.i2014.i.hantro_reg_write.exit2019.i_crit_edge: ; preds = %vdpu_read_mask.exit.i2014.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit2019.i

do.end.i.i2017.i:                                 ; preds = %vdpu_read_mask.exit.i2014.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i2016.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 9, i32 noundef %or.i.i2011.i) #8
  br label %hantro_reg_write.exit2019.i

hantro_reg_write.exit2019.i:                      ; preds = %do.end.i.i2017.i, %vdpu_read_mask.exit.i2014.i.hantro_reg_write.exit2019.i_crit_edge
  %747 = tail call i32 @llvm.bswap.i32(i32 %or.i.i2011.i) #5
  %748 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i2018.i = getelementptr i8, ptr %749, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2018.i, i32 %747) #5, !srcloc !45
  %num_ref_idx_l1_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %5, i32 0, i32 2
  %750 = ptrtoint ptr %num_ref_idx_l1_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %750)
  %751 = load i8, ptr %num_ref_idx_l1_default_active_minus1.i, align 2
  %752 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i2021.i = getelementptr i8, ptr %753, i32 36
  %754 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i2021.i) #5, !srcloc !43
  %755 = tail call i32 @llvm.bswap.i32(i32 %754) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %756 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i2022.i = and i32 %756, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i2022.i)
  %tobool.not.i.i.i2023.i = icmp eq i32 %and.i.i.i2022.i, 0
  br i1 %tobool.not.i.i.i2023.i, label %hantro_reg_write.exit2019.i.vdpu_read_mask.exit.i2037.i_crit_edge, label %do.end.i.i.i2026.i

hantro_reg_write.exit2019.i.vdpu_read_mask.exit.i2037.i_crit_edge: ; preds = %hantro_reg_write.exit2019.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i2037.i

do.end.i.i.i2026.i:                               ; preds = %hantro_reg_write.exit2019.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i2025.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 9, i32 noundef %755) #8
  br label %vdpu_read_mask.exit.i2037.i

vdpu_read_mask.exit.i2037.i:                      ; preds = %do.end.i.i.i2026.i, %hantro_reg_write.exit2019.i.vdpu_read_mask.exit.i2037.i_crit_edge
  %and.i.i2031.i = and i32 %755, -16252929
  %757 = add i8 %751, 1
  %758 = and i8 %757, 31
  %and2.i.i2032.i = zext i8 %758 to i32
  %shl4.i.i2033.i = shl nuw nsw i32 %and2.i.i2032.i, 19
  %or.i.i2034.i = or i32 %and.i.i2031.i, %shl4.i.i2033.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %759 = load i32, ptr @hantro_debug, align 4
  %and.i3.i2035.i = and i32 %759, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i2035.i)
  %tobool.not.i.i2036.i = icmp eq i32 %and.i3.i2035.i, 0
  br i1 %tobool.not.i.i2036.i, label %vdpu_read_mask.exit.i2037.i.hantro_reg_write.exit2042.i_crit_edge, label %do.end.i.i2040.i

vdpu_read_mask.exit.i2037.i.hantro_reg_write.exit2042.i_crit_edge: ; preds = %vdpu_read_mask.exit.i2037.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit2042.i

do.end.i.i2040.i:                                 ; preds = %vdpu_read_mask.exit.i2037.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i2039.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 9, i32 noundef %or.i.i2034.i) #8
  br label %hantro_reg_write.exit2042.i

hantro_reg_write.exit2042.i:                      ; preds = %do.end.i.i2040.i, %vdpu_read_mask.exit.i2037.i.hantro_reg_write.exit2042.i_crit_edge
  %760 = tail call i32 @llvm.bswap.i32(i32 %or.i.i2034.i) #5
  %761 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i2041.i = getelementptr i8, ptr %762, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2041.i, i32 %760) #5, !srcloc !45
  %763 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i2044.i = getelementptr i8, ptr %764, i32 220
  %765 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i2044.i) #5, !srcloc !43
  %766 = tail call i32 @llvm.bswap.i32(i32 %765) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %767 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i2045.i = and i32 %767, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i2045.i)
  %tobool.not.i.i.i2046.i = icmp eq i32 %and.i.i.i2045.i, 0
  br i1 %tobool.not.i.i.i2046.i, label %hantro_reg_write.exit2042.i.vdpu_read_mask.exit.i2060.i_crit_edge, label %do.end.i.i.i2049.i

hantro_reg_write.exit2042.i.vdpu_read_mask.exit.i2060.i_crit_edge: ; preds = %hantro_reg_write.exit2042.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i2060.i

do.end.i.i.i2049.i:                               ; preds = %hantro_reg_write.exit2042.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i2048.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 55, i32 noundef %766) #8
  br label %vdpu_read_mask.exit.i2060.i

vdpu_read_mask.exit.i2060.i:                      ; preds = %do.end.i.i.i2049.i, %hantro_reg_write.exit2042.i.vdpu_read_mask.exit.i2060.i_crit_edge
  %and.i.i2054.i = and i32 %766, -65536
  %or.i.i2057.i = or i32 %and.i.i2054.i, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %768 = load i32, ptr @hantro_debug, align 4
  %and.i3.i2058.i = and i32 %768, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i2058.i)
  %tobool.not.i.i2059.i = icmp eq i32 %and.i3.i2058.i, 0
  br i1 %tobool.not.i.i2059.i, label %vdpu_read_mask.exit.i2060.i.set_params.exit_crit_edge, label %do.end.i.i2063.i

vdpu_read_mask.exit.i2060.i.set_params.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i2060.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_params.exit

do.end.i.i2063.i:                                 ; preds = %vdpu_read_mask.exit.i2060.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i2062.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 55, i32 noundef %or.i.i2057.i) #8
  br label %set_params.exit

set_params.exit:                                  ; preds = %do.end.i.i2063.i, %vdpu_read_mask.exit.i2060.i.set_params.exit_crit_edge
  %769 = tail call i32 @llvm.bswap.i32(i32 %or.i.i2057.i) #5
  %770 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i2064.i = getelementptr i8, ptr %771, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2064.i, i32 %769) #5, !srcloc !45
  %772 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %sps2.i, align 4
  %774 = ptrtoint ptr %pps3.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %pps3.i, align 4
  %776 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %ctrls1.i, align 4
  %dpb5.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %777, i32 0, i32 2
  %778 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %ctx, align 8
  %call.i = tail call i32 @hantro_hevc_chroma_offset(ptr noundef %773) #5
  %call6.i = tail call i32 @hantro_hevc_motion_vectors_offset(ptr noundef %773) #5
  %num_poc_lt_curr.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %777, i32 0, i32 5
  %780 = ptrtoint ptr %num_poc_lt_curr.i to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %num_poc_lt_curr.i, align 2
  %conv.i = zext i8 %781 to i32
  %num_poc_st_curr_before.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %777, i32 0, i32 3
  %782 = ptrtoint ptr %num_poc_st_curr_before.i to i32
  call void @__asan_load1_noabort(i32 %782)
  %783 = load i8, ptr %num_poc_st_curr_before.i, align 8
  %conv7.i = zext i8 %783 to i32
  %add.i61 = add nuw nsw i32 %conv7.i, %conv.i
  %num_poc_st_curr_after.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %777, i32 0, i32 4
  %784 = ptrtoint ptr %num_poc_st_curr_after.i to i32
  call void @__asan_load1_noabort(i32 %784)
  %785 = load i8, ptr %num_poc_st_curr_after.i, align 1
  %conv8.i = zext i8 %785 to i32
  %add9.i = add nuw nsw i32 %add.i61, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i)
  %tobool.not.i62 = icmp eq i32 %add9.i, 0
  %dec_base.i.i.i.i63 = getelementptr inbounds %struct.hantro_dev, ptr %779, i32 0, i32 11
  %786 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i.i64 = getelementptr i8, ptr %787, i32 16
  %788 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i64) #5, !srcloc !43
  %789 = tail call i32 @llvm.bswap.i32(i32 %788) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %790 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i65 = and i32 %790, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i65)
  %tobool.not.i.i.i.i66 = icmp eq i32 %and.i.i.i.i65, 0
  br i1 %tobool.not.i.i.i.i66, label %set_params.exit.vdpu_read_mask.exit.i.i73_crit_edge, label %do.end.i.i.i.i68

set_params.exit.vdpu_read_mask.exit.i.i73_crit_edge: ; preds = %set_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i73

do.end.i.i.i.i68:                                 ; preds = %set_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 4, i32 noundef %789) #8
  br label %vdpu_read_mask.exit.i.i73

vdpu_read_mask.exit.i.i73:                        ; preds = %do.end.i.i.i.i68, %set_params.exit.vdpu_read_mask.exit.i.i73_crit_edge
  %and.i.i.i69 = and i32 %789, -32
  %add9.op.i = and i32 %add9.i, 31
  %and2.i.i.i = select i1 %tobool.not.i62, i32 1, i32 %add9.op.i
  %or.i.i.i70 = or i32 %and.i.i.i69, %and2.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %791 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i71 = and i32 %791, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i71)
  %tobool.not.i.i.i72 = icmp eq i32 %and.i3.i.i71, 0
  br i1 %tobool.not.i.i.i72, label %vdpu_read_mask.exit.i.i73.hantro_reg_write.exit.i78_crit_edge, label %do.end.i.i.i75

vdpu_read_mask.exit.i.i73.hantro_reg_write.exit.i78_crit_edge: ; preds = %vdpu_read_mask.exit.i.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i78

do.end.i.i.i75:                                   ; preds = %vdpu_read_mask.exit.i.i73
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 4, i32 noundef %or.i.i.i70) #8
  br label %hantro_reg_write.exit.i78

hantro_reg_write.exit.i78:                        ; preds = %do.end.i.i.i75, %vdpu_read_mask.exit.i.i73.hantro_reg_write.exit.i78_crit_edge
  %792 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i70) #5
  %793 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i76 = getelementptr i8, ptr %794, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i76, i32 %792) #5, !srcloc !45
  %flags.i77 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %775, i32 0, i32 15
  %795 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_load8_noabort(i32 %795)
  %796 = load i64, ptr %flags.i77, align 8
  %797 = trunc i64 %796 to i32
  %798 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i228.i = getelementptr i8, ptr %799, i32 28
  %800 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i228.i) #5, !srcloc !43
  %801 = tail call i32 @llvm.bswap.i32(i32 %800) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %802 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i229.i = and i32 %802, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i229.i)
  %tobool.not.i.i.i230.i = icmp eq i32 %and.i.i.i229.i, 0
  br i1 %tobool.not.i.i.i230.i, label %hantro_reg_write.exit.i78.vdpu_read_mask.exit.i244.i_crit_edge, label %do.end.i.i.i233.i

hantro_reg_write.exit.i78.vdpu_read_mask.exit.i244.i_crit_edge: ; preds = %hantro_reg_write.exit.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i244.i

do.end.i.i.i233.i:                                ; preds = %hantro_reg_write.exit.i78
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %801) #8
  br label %vdpu_read_mask.exit.i244.i

vdpu_read_mask.exit.i244.i:                       ; preds = %do.end.i.i.i233.i, %hantro_reg_write.exit.i78.vdpu_read_mask.exit.i244.i_crit_edge
  %and.i.i238.i = and i32 %801, -33554433
  %803 = shl i32 %797, 11
  %shl4.i.i240.i = and i32 %803, 33554432
  %or.i.i241.i = or i32 %and.i.i238.i, %shl4.i.i240.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %804 = load i32, ptr @hantro_debug, align 4
  %and.i3.i242.i = and i32 %804, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i242.i)
  %tobool.not.i.i243.i = icmp eq i32 %and.i3.i242.i, 0
  br i1 %tobool.not.i.i243.i, label %vdpu_read_mask.exit.i244.i.hantro_reg_write.exit249.i_crit_edge, label %do.end.i.i247.i

vdpu_read_mask.exit.i244.i.hantro_reg_write.exit249.i_crit_edge: ; preds = %vdpu_read_mask.exit.i244.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit249.i

do.end.i.i247.i:                                  ; preds = %vdpu_read_mask.exit.i244.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i246.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i241.i) #8
  br label %hantro_reg_write.exit249.i

hantro_reg_write.exit249.i:                       ; preds = %do.end.i.i247.i, %vdpu_read_mask.exit.i244.i.hantro_reg_write.exit249.i_crit_edge
  %805 = tail call i32 @llvm.bswap.i32(i32 %or.i.i241.i) #5
  %806 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i248.i = getelementptr i8, ptr %807, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248.i, i32 %805) #5, !srcloc !45
  %808 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_load8_noabort(i32 %808)
  %809 = load i64, ptr %flags.i77, align 8
  %810 = trunc i64 %809 to i32
  %811 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i251.i = getelementptr i8, ptr %812, i32 28
  %813 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i251.i) #5, !srcloc !43
  %814 = tail call i32 @llvm.bswap.i32(i32 %813) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %815 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i252.i = and i32 %815, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i252.i)
  %tobool.not.i.i.i253.i = icmp eq i32 %and.i.i.i252.i, 0
  br i1 %tobool.not.i.i.i253.i, label %hantro_reg_write.exit249.i.vdpu_read_mask.exit.i267.i_crit_edge, label %do.end.i.i.i256.i

hantro_reg_write.exit249.i.vdpu_read_mask.exit.i267.i_crit_edge: ; preds = %hantro_reg_write.exit249.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i267.i

do.end.i.i.i256.i:                                ; preds = %hantro_reg_write.exit249.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i255.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 7, i32 noundef %814) #8
  br label %vdpu_read_mask.exit.i267.i

vdpu_read_mask.exit.i267.i:                       ; preds = %do.end.i.i.i256.i, %hantro_reg_write.exit249.i.vdpu_read_mask.exit.i267.i_crit_edge
  %and.i.i261.i = and i32 %814, -16777217
  %816 = shl i32 %810, 11
  %shl4.i.i263.i = and i32 %816, 16777216
  %or.i.i264.i = or i32 %and.i.i261.i, %shl4.i.i263.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %817 = load i32, ptr @hantro_debug, align 4
  %and.i3.i265.i = and i32 %817, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i265.i)
  %tobool.not.i.i266.i = icmp eq i32 %and.i3.i265.i, 0
  br i1 %tobool.not.i.i266.i, label %vdpu_read_mask.exit.i267.i.hantro_reg_write.exit272.i_crit_edge, label %do.end.i.i270.i

vdpu_read_mask.exit.i267.i.hantro_reg_write.exit272.i_crit_edge: ; preds = %vdpu_read_mask.exit.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit272.i

do.end.i.i270.i:                                  ; preds = %vdpu_read_mask.exit.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i269.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 7, i32 noundef %or.i.i264.i) #8
  br label %hantro_reg_write.exit272.i

hantro_reg_write.exit272.i:                       ; preds = %do.end.i.i270.i, %vdpu_read_mask.exit.i267.i.hantro_reg_write.exit272.i_crit_edge
  %818 = tail call i32 @llvm.bswap.i32(i32 %or.i.i264.i) #5
  %819 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i271.i = getelementptr i8, ptr %820, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i271.i, i32 %818) #5, !srcloc !45
  %num_active_dpb_entries.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %777, i32 0, i32 1
  %821 = ptrtoint ptr %num_active_dpb_entries.i to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %num_active_dpb_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %822)
  %cmp465.not.i = icmp eq i8 %822, 0
  br i1 %cmp465.not.i, label %hantro_reg_write.exit272.i.if.then.i80_crit_edge, label %hantro_reg_write.exit272.i.for.body.i_crit_edge

hantro_reg_write.exit272.i.for.body.i_crit_edge:  ; preds = %hantro_reg_write.exit272.i
  br label %for.body.i

hantro_reg_write.exit272.i.if.then.i80_crit_edge: ; preds = %hantro_reg_write.exit272.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i80

for.body.i:                                       ; preds = %hantro_reg_write.exit295.i.for.body.i_crit_edge, %hantro_reg_write.exit272.i.for.body.i_crit_edge
  %i.0466.i = phi i32 [ %inc.i, %hantro_reg_write.exit295.i.for.body.i_crit_edge ], [ 0, %hantro_reg_write.exit272.i.for.body.i_crit_edge ]
  %823 = ptrtoint ptr %777 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %777, align 8
  %pic_order_cnt.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb5.i, i32 %i.0466.i, i32 3
  %825 = ptrtoint ptr %pic_order_cnt.i to i32
  call void @__asan_load2_noabort(i32 %825)
  %826 = load i16, ptr %pic_order_cnt.i, align 2
  %conv32.i = zext i16 %826 to i32
  %sub.i79 = sub i32 %824, %conv32.i
  %arrayidx34.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.0466.i
  %conv35.i = and i32 %sub.i79, 255
  %827 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %arrayidx34.i, align 4
  %829 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i274.i = getelementptr i8, ptr %830, i32 %828
  %831 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i274.i) #5, !srcloc !43
  %832 = tail call i32 @llvm.bswap.i32(i32 %831) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %833 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i275.i = and i32 %833, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i275.i)
  %tobool.not.i.i.i276.i = icmp eq i32 %and.i.i.i275.i, 0
  br i1 %tobool.not.i.i.i276.i, label %for.body.i.vdpu_read_mask.exit.i290.i_crit_edge, label %do.end.i.i.i279.i

for.body.i.vdpu_read_mask.exit.i290.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i290.i

do.end.i.i.i279.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i277.i = lshr i32 %828, 2
  %call4.i.i.i278.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef %div9.i.i.i277.i, i32 noundef %832) #8
  br label %vdpu_read_mask.exit.i290.i

vdpu_read_mask.exit.i290.i:                       ; preds = %do.end.i.i.i279.i, %for.body.i.vdpu_read_mask.exit.i290.i_crit_edge
  %mask.i.i280.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.0466.i, i32 2
  %834 = ptrtoint ptr %mask.i.i280.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %mask.i.i280.i, align 4
  %shift.i.i281.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.0466.i, i32 1
  %836 = ptrtoint ptr %shift.i.i281.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %shift.i.i281.i, align 4
  %shl.i.i282.i = shl i32 %835, %837
  %neg.i.i283.i = xor i32 %shl.i.i282.i, -1
  %and.i.i284.i = and i32 %832, %neg.i.i283.i
  %and2.i.i285.i = and i32 %conv35.i, %835
  %shl4.i.i286.i = shl i32 %and2.i.i285.i, %837
  %or.i.i287.i = or i32 %and.i.i284.i, %shl4.i.i286.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %838 = load i32, ptr @hantro_debug, align 4
  %and.i3.i288.i = and i32 %838, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i288.i)
  %tobool.not.i.i289.i = icmp eq i32 %and.i3.i288.i, 0
  br i1 %tobool.not.i.i289.i, label %vdpu_read_mask.exit.i290.i.hantro_reg_write.exit295.i_crit_edge, label %do.end.i.i293.i

vdpu_read_mask.exit.i290.i.hantro_reg_write.exit295.i_crit_edge: ; preds = %vdpu_read_mask.exit.i290.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit295.i

do.end.i.i293.i:                                  ; preds = %vdpu_read_mask.exit.i290.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i291.i = lshr i32 %828, 2
  %call.i.i292.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef %div5.i.i291.i, i32 noundef %or.i.i287.i) #8
  br label %hantro_reg_write.exit295.i

hantro_reg_write.exit295.i:                       ; preds = %do.end.i.i293.i, %vdpu_read_mask.exit.i290.i.hantro_reg_write.exit295.i_crit_edge
  %839 = tail call i32 @llvm.bswap.i32(i32 %or.i.i287.i) #5
  %840 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i294.i = getelementptr i8, ptr %841, i32 %828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i294.i, i32 %839) #5, !srcloc !45
  %inc.i = add nuw nsw i32 %i.0466.i, 1
  %842 = ptrtoint ptr %num_active_dpb_entries.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %num_active_dpb_entries.i, align 4
  %conv27.i = zext i8 %843 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv27.i)
  %cmp.i = icmp ult i32 %inc.i, %conv27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0466.i)
  %cmp29.i = icmp ult i32 %i.0466.i, 15
  %or.cond.i = and i1 %cmp29.i, %cmp.i
  br i1 %or.cond.i, label %hantro_reg_write.exit295.i.for.body.i_crit_edge, label %for.end.i

hantro_reg_write.exit295.i.for.body.i_crit_edge:  ; preds = %hantro_reg_write.exit295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %hantro_reg_write.exit295.i
  br i1 %cmp29.i, label %for.end.i.if.then.i80_crit_edge, label %for.end.i.for.end48.i_crit_edge

for.end.i.for.end48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48.i

for.end.i.if.then.i80_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i80

if.then.i80:                                      ; preds = %for.end.i.if.then.i80_crit_edge, %hantro_reg_write.exit272.i.if.then.i80_crit_edge
  %i.0.lcssa483.i = phi i32 [ %inc.i, %for.end.i.if.then.i80_crit_edge ], [ 0, %hantro_reg_write.exit272.i.if.then.i80_crit_edge ]
  %arrayidx38.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.0.lcssa483.i
  %844 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load i32, ptr %arrayidx38.i, align 4
  %846 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i297.i = getelementptr i8, ptr %847, i32 %845
  %848 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i297.i) #5, !srcloc !43
  %849 = tail call i32 @llvm.bswap.i32(i32 %848) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %850 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i298.i = and i32 %850, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i298.i)
  %tobool.not.i.i.i299.i = icmp eq i32 %and.i.i.i298.i, 0
  br i1 %tobool.not.i.i.i299.i, label %if.then.i80.vdpu_read_mask.exit.i310.i_crit_edge, label %do.end.i.i.i302.i

if.then.i80.vdpu_read_mask.exit.i310.i_crit_edge: ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i310.i

do.end.i.i.i302.i:                                ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i300.i = lshr i32 %845, 2
  %call4.i.i.i301.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef %div9.i.i.i300.i, i32 noundef %849) #8
  br label %vdpu_read_mask.exit.i310.i

vdpu_read_mask.exit.i310.i:                       ; preds = %do.end.i.i.i302.i, %if.then.i80.vdpu_read_mask.exit.i310.i_crit_edge
  %mask.i.i303.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.0.lcssa483.i, i32 2
  %851 = ptrtoint ptr %mask.i.i303.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %mask.i.i303.i, align 4
  %shift.i.i304.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.0.lcssa483.i, i32 1
  %853 = ptrtoint ptr %shift.i.i304.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load i32, ptr %shift.i.i304.i, align 4
  %shl.i.i305.i = shl i32 %852, %854
  %neg.i.i306.i = xor i32 %shl.i.i305.i, -1
  %and.i.i307.i = and i32 %849, %neg.i.i306.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %855 = load i32, ptr @hantro_debug, align 4
  %and.i3.i308.i = and i32 %855, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i308.i)
  %tobool.not.i.i309.i = icmp eq i32 %and.i3.i308.i, 0
  br i1 %tobool.not.i.i309.i, label %vdpu_read_mask.exit.i310.i.if.end.i81_crit_edge, label %do.end.i.i313.i

vdpu_read_mask.exit.i310.i.if.end.i81_crit_edge:  ; preds = %vdpu_read_mask.exit.i310.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i81

do.end.i.i313.i:                                  ; preds = %vdpu_read_mask.exit.i310.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i311.i = lshr i32 %845, 2
  %call.i.i312.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef %div5.i.i311.i, i32 noundef %and.i.i307.i) #8
  br label %if.end.i81

if.end.i81:                                       ; preds = %do.end.i.i313.i, %vdpu_read_mask.exit.i310.i.if.end.i81_crit_edge
  %856 = tail call i32 @llvm.bswap.i32(i32 %and.i.i307.i) #5
  %857 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i314.i = getelementptr i8, ptr %858, i32 %845
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i314.i, i32 %856) #5, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.lcssa483.i)
  %cmp41468.i = icmp ult i32 %i.0.lcssa483.i, 15
  br i1 %cmp41468.i, label %for.body43.i.preheader, label %if.end.i81.for.end48.i_crit_edge

if.end.i81.for.end48.i_crit_edge:                 ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48.i

for.body43.i.preheader:                           ; preds = %if.end.i81
  %inc39.i = add nuw nsw i32 %i.0.lcssa483.i, 1
  br label %for.body43.i

for.body43.i:                                     ; preds = %hantro_reg_write.exit338.i.for.body43.i_crit_edge, %for.body43.i.preheader
  %i.2469.i = phi i32 [ %inc47.i, %hantro_reg_write.exit338.i.for.body43.i_crit_edge ], [ %inc39.i, %for.body43.i.preheader ]
  %arrayidx44.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.2469.i
  %859 = ptrtoint ptr %777 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %777, align 8
  %861 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %arrayidx44.i, align 4
  %863 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i317.i = getelementptr i8, ptr %864, i32 %862
  %865 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i317.i) #5, !srcloc !43
  %866 = tail call i32 @llvm.bswap.i32(i32 %865) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %867 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i318.i = and i32 %867, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i318.i)
  %tobool.not.i.i.i319.i = icmp eq i32 %and.i.i.i318.i, 0
  br i1 %tobool.not.i.i.i319.i, label %for.body43.i.vdpu_read_mask.exit.i333.i_crit_edge, label %do.end.i.i.i322.i

for.body43.i.vdpu_read_mask.exit.i333.i_crit_edge: ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i333.i

do.end.i.i.i322.i:                                ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i320.i = lshr i32 %862, 2
  %call4.i.i.i321.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef %div9.i.i.i320.i, i32 noundef %866) #8
  br label %vdpu_read_mask.exit.i333.i

vdpu_read_mask.exit.i333.i:                       ; preds = %do.end.i.i.i322.i, %for.body43.i.vdpu_read_mask.exit.i333.i_crit_edge
  %mask.i.i323.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.2469.i, i32 2
  %868 = ptrtoint ptr %mask.i.i323.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %mask.i.i323.i, align 4
  %shift.i.i324.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref.cur_poc, i32 0, i32 %i.2469.i, i32 1
  %870 = ptrtoint ptr %shift.i.i324.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %shift.i.i324.i, align 4
  %shl.i.i325.i = shl i32 %869, %871
  %neg.i.i326.i = xor i32 %shl.i.i325.i, -1
  %and.i.i327.i = and i32 %866, %neg.i.i326.i
  %and2.i.i328.i = and i32 %869, %860
  %shl4.i.i329.i = shl i32 %and2.i.i328.i, %871
  %or.i.i330.i = or i32 %and.i.i327.i, %shl4.i.i329.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %872 = load i32, ptr @hantro_debug, align 4
  %and.i3.i331.i = and i32 %872, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i331.i)
  %tobool.not.i.i332.i = icmp eq i32 %and.i3.i331.i, 0
  br i1 %tobool.not.i.i332.i, label %vdpu_read_mask.exit.i333.i.hantro_reg_write.exit338.i_crit_edge, label %do.end.i.i336.i

vdpu_read_mask.exit.i333.i.hantro_reg_write.exit338.i_crit_edge: ; preds = %vdpu_read_mask.exit.i333.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit338.i

do.end.i.i336.i:                                  ; preds = %vdpu_read_mask.exit.i333.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i334.i = lshr i32 %862, 2
  %call.i.i335.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef %div5.i.i334.i, i32 noundef %or.i.i330.i) #8
  br label %hantro_reg_write.exit338.i

hantro_reg_write.exit338.i:                       ; preds = %do.end.i.i336.i, %vdpu_read_mask.exit.i333.i.hantro_reg_write.exit338.i_crit_edge
  %873 = tail call i32 @llvm.bswap.i32(i32 %or.i.i330.i) #5
  %874 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i337.i = getelementptr i8, ptr %875, i32 %862
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i337.i, i32 %873) #5, !srcloc !45
  %inc47.i = add nuw nsw i32 %i.2469.i, 1
  %exitcond.not.i = icmp eq i32 %inc47.i, 16
  br i1 %exitcond.not.i, label %hantro_reg_write.exit338.i.for.end48.i_crit_edge, label %hantro_reg_write.exit338.i.for.body43.i_crit_edge

hantro_reg_write.exit338.i.for.body43.i_crit_edge: ; preds = %hantro_reg_write.exit338.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body43.i

hantro_reg_write.exit338.i.for.end48.i_crit_edge: ; preds = %hantro_reg_write.exit338.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48.i

for.end48.i:                                      ; preds = %hantro_reg_write.exit338.i.for.end48.i_crit_edge, %if.end.i81.for.end48.i_crit_edge, %for.end.i.for.end48.i_crit_edge
  %876 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %ctx, align 8
  %878 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %ctrls1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %list0.i.i) #5
  %880 = call ptr @memset(ptr %list0.i.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %list1.i.i) #5
  %881 = call ptr @memset(ptr %list1.i.i, i32 0, i32 64)
  %num_poc_st_curr_before.i.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 3
  %882 = ptrtoint ptr %num_poc_st_curr_before.i.i to i32
  call void @__asan_load1_noabort(i32 %882)
  %883 = load i8, ptr %num_poc_st_curr_before.i.i, align 8
  %conv.i.i = zext i8 %883 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %883)
  %cmp544.not.i.i = icmp eq i8 %883, 0
  br i1 %cmp544.not.i.i, label %for.end48.i.for.cond10.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

for.end48.i.for.cond10.preheader.i.i_crit_edge:   ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %for.end48.i
  %pic_order_cnt1.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 0, i32 3
  %884 = ptrtoint ptr %pic_order_cnt1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %884)
  %885 = load i16, ptr %pic_order_cnt1.i.i.i, align 2
  %pic_order_cnt1.1.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 1, i32 3
  %pic_order_cnt1.2.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 2, i32 3
  %pic_order_cnt1.3.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 3, i32 3
  %pic_order_cnt1.4.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 4, i32 3
  %pic_order_cnt1.5.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 5, i32 3
  %pic_order_cnt1.6.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 6, i32 3
  %pic_order_cnt1.7.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 7, i32 3
  %pic_order_cnt1.8.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 8, i32 3
  %pic_order_cnt1.9.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 9, i32 3
  %pic_order_cnt1.10.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 10, i32 3
  %pic_order_cnt1.11.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 11, i32 3
  %pic_order_cnt1.12.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 12, i32 3
  %pic_order_cnt1.13.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 13, i32 3
  %pic_order_cnt1.14.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 14, i32 3
  %pic_order_cnt1.15.i.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 15, i32 3
  %886 = add nsw i32 %conv.i.i, -1
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %886, i32 15) #5
  br label %for.body.i.i

for.cond10.preheader.i.loopexit.i:                ; preds = %find_ref_pic_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %887 = add nuw nsw i32 %umin.i.i, 1
  br label %for.cond10.preheader.i.i

for.cond10.preheader.i.i:                         ; preds = %for.cond10.preheader.i.loopexit.i, %for.end48.i.for.cond10.preheader.i.i_crit_edge
  %j.0.lcssa.i.i = phi i32 [ 0, %for.end48.i.for.cond10.preheader.i.i_crit_edge ], [ %887, %for.cond10.preheader.i.loopexit.i ]
  %num_poc_st_curr_after.i.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 4
  %888 = ptrtoint ptr %num_poc_st_curr_after.i.i to i32
  call void @__asan_load1_noabort(i32 %888)
  %889 = load i8, ptr %num_poc_st_curr_after.i.i, align 1
  %conv11.i.i = zext i8 %889 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %889)
  %cmp12549.i.i = icmp ne i8 %889, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.0.lcssa.i.i)
  %cmp15550.i.i = icmp ult i32 %j.0.lcssa.i.i, 16
  %or.cond186551.i.i = select i1 %cmp12549.i.i, i1 %cmp15550.i.i, i1 false
  br i1 %or.cond186551.i.i, label %for.body18.lr.ph.i.i, label %for.cond10.preheader.i.i.for.cond27.preheader.i.i_crit_edge

for.cond10.preheader.i.i.for.cond27.preheader.i.i_crit_edge: ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27.preheader.i.i

for.body18.lr.ph.i.i:                             ; preds = %for.cond10.preheader.i.i
  %pic_order_cnt1.i191.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 0, i32 3
  %890 = ptrtoint ptr %pic_order_cnt1.i191.i.i to i32
  call void @__asan_load2_noabort(i32 %890)
  %891 = load i16, ptr %pic_order_cnt1.i191.i.i, align 2
  %pic_order_cnt1.1.i194.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 1, i32 3
  %pic_order_cnt1.2.i198.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 2, i32 3
  %pic_order_cnt1.3.i202.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 3, i32 3
  %pic_order_cnt1.4.i206.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 4, i32 3
  %pic_order_cnt1.5.i210.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 5, i32 3
  %pic_order_cnt1.6.i214.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 6, i32 3
  %pic_order_cnt1.7.i218.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 7, i32 3
  %pic_order_cnt1.8.i222.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 8, i32 3
  %pic_order_cnt1.9.i226.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 9, i32 3
  %pic_order_cnt1.10.i230.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 10, i32 3
  %pic_order_cnt1.11.i234.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 11, i32 3
  %pic_order_cnt1.12.i238.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 12, i32 3
  %pic_order_cnt1.13.i242.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 13, i32 3
  %pic_order_cnt1.14.i246.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 14, i32 3
  %pic_order_cnt1.15.i250.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 15, i32 3
  br label %for.body18.i.i

for.body.i.i:                                     ; preds = %find_ref_pic_index.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %j.0546.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %find_ref_pic_index.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 6, i32 %j.0546.i.i
  %892 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %892)
  %893 = load i8, ptr %arrayidx.i.i, align 1
  %894 = zext i8 %893 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %885, i16 %894)
  %cmp3.i.i.i = icmp eq i16 %885, %894
  br i1 %cmp3.i.i.i, label %for.body.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i
  %895 = ptrtoint ptr %pic_order_cnt1.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %895)
  %896 = load i16, ptr %pic_order_cnt1.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %896, i16 %894)
  %cmp3.1.i.i.i = icmp eq i16 %896, %894
  br i1 %cmp3.1.i.i.i, label %for.inc.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %897 = ptrtoint ptr %pic_order_cnt1.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %897)
  %898 = load i16, ptr %pic_order_cnt1.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %898, i16 %894)
  %cmp3.2.i.i.i = icmp eq i16 %898, %894
  br i1 %cmp3.2.i.i.i, label %for.inc.1.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %899 = ptrtoint ptr %pic_order_cnt1.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %899)
  %900 = load i16, ptr %pic_order_cnt1.3.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %900, i16 %894)
  %cmp3.3.i.i.i = icmp eq i16 %900, %894
  br i1 %cmp3.3.i.i.i, label %for.inc.2.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.3.i.i.i

for.inc.2.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %901 = ptrtoint ptr %pic_order_cnt1.4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %901)
  %902 = load i16, ptr %pic_order_cnt1.4.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %902, i16 %894)
  %cmp3.4.i.i.i = icmp eq i16 %902, %894
  br i1 %cmp3.4.i.i.i, label %for.inc.3.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.4.i.i.i

for.inc.3.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %903 = ptrtoint ptr %pic_order_cnt1.5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %903)
  %904 = load i16, ptr %pic_order_cnt1.5.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %904, i16 %894)
  %cmp3.5.i.i.i = icmp eq i16 %904, %894
  br i1 %cmp3.5.i.i.i, label %for.inc.4.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.5.i.i.i

for.inc.4.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %905 = ptrtoint ptr %pic_order_cnt1.6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %905)
  %906 = load i16, ptr %pic_order_cnt1.6.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %906, i16 %894)
  %cmp3.6.i.i.i = icmp eq i16 %906, %894
  br i1 %cmp3.6.i.i.i, label %for.inc.5.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.6.i.i.i

for.inc.5.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %907 = ptrtoint ptr %pic_order_cnt1.7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %907)
  %908 = load i16, ptr %pic_order_cnt1.7.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %908, i16 %894)
  %cmp3.7.i.i.i = icmp eq i16 %908, %894
  br i1 %cmp3.7.i.i.i, label %for.inc.6.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.7.i.i.i

for.inc.6.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  %909 = ptrtoint ptr %pic_order_cnt1.8.i.i.i to i32
  call void @__asan_load2_noabort(i32 %909)
  %910 = load i16, ptr %pic_order_cnt1.8.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %910, i16 %894)
  %cmp3.8.i.i.i = icmp eq i16 %910, %894
  br i1 %cmp3.8.i.i.i, label %for.inc.7.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.8.i.i.i

for.inc.7.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.8.i.i.i:                                  ; preds = %for.inc.7.i.i.i
  %911 = ptrtoint ptr %pic_order_cnt1.9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %911)
  %912 = load i16, ptr %pic_order_cnt1.9.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %912, i16 %894)
  %cmp3.9.i.i.i = icmp eq i16 %912, %894
  br i1 %cmp3.9.i.i.i, label %for.inc.8.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.9.i.i.i

for.inc.8.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.9.i.i.i:                                  ; preds = %for.inc.8.i.i.i
  %913 = ptrtoint ptr %pic_order_cnt1.10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %913)
  %914 = load i16, ptr %pic_order_cnt1.10.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %914, i16 %894)
  %cmp3.10.i.i.i = icmp eq i16 %914, %894
  br i1 %cmp3.10.i.i.i, label %for.inc.9.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.10.i.i.i

for.inc.9.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.10.i.i.i:                                 ; preds = %for.inc.9.i.i.i
  %915 = ptrtoint ptr %pic_order_cnt1.11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %915)
  %916 = load i16, ptr %pic_order_cnt1.11.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %916, i16 %894)
  %cmp3.11.i.i.i = icmp eq i16 %916, %894
  br i1 %cmp3.11.i.i.i, label %for.inc.10.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.11.i.i.i

for.inc.10.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.11.i.i.i:                                 ; preds = %for.inc.10.i.i.i
  %917 = ptrtoint ptr %pic_order_cnt1.12.i.i.i to i32
  call void @__asan_load2_noabort(i32 %917)
  %918 = load i16, ptr %pic_order_cnt1.12.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %918, i16 %894)
  %cmp3.12.i.i.i = icmp eq i16 %918, %894
  br i1 %cmp3.12.i.i.i, label %for.inc.11.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.12.i.i.i

for.inc.11.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.12.i.i.i:                                 ; preds = %for.inc.11.i.i.i
  %919 = ptrtoint ptr %pic_order_cnt1.13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %919)
  %920 = load i16, ptr %pic_order_cnt1.13.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %920, i16 %894)
  %cmp3.13.i.i.i = icmp eq i16 %920, %894
  br i1 %cmp3.13.i.i.i, label %for.inc.12.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.13.i.i.i

for.inc.12.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.12.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.13.i.i.i:                                 ; preds = %for.inc.12.i.i.i
  %921 = ptrtoint ptr %pic_order_cnt1.14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %921)
  %922 = load i16, ptr %pic_order_cnt1.14.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %922, i16 %894)
  %cmp3.14.i.i.i = icmp eq i16 %922, %894
  br i1 %cmp3.14.i.i.i, label %for.inc.13.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, label %for.inc.14.i.i.i

for.inc.13.i.i.i.find_ref_pic_index.exit.i.i_crit_edge: ; preds = %for.inc.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit.i.i

for.inc.14.i.i.i:                                 ; preds = %for.inc.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %923 = ptrtoint ptr %pic_order_cnt1.15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %923)
  %924 = load i16, ptr %pic_order_cnt1.15.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %924, i16 %894)
  %cmp3.15.i.i.i = icmp eq i16 %924, %894
  %spec.select.i.i.i = select i1 %cmp3.15.i.i.i, i32 15, i32 0
  br label %find_ref_pic_index.exit.i.i

find_ref_pic_index.exit.i.i:                      ; preds = %for.inc.14.i.i.i, %for.inc.13.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.12.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.11.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.10.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.9.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.8.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.7.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.6.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.5.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.4.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.3.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.2.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.1.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.inc.i.i.i.find_ref_pic_index.exit.i.i_crit_edge, %for.body.i.i.find_ref_pic_index.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.body.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 1, %for.inc.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 7, %for.inc.6.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 8, %for.inc.7.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 9, %for.inc.8.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 10, %for.inc.9.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 11, %for.inc.10.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 12, %for.inc.11.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 13, %for.inc.12.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ 14, %for.inc.13.i.i.i.find_ref_pic_index.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.14.i.i.i ]
  %inc.i.i = add nuw nsw i32 %j.0546.i.i, 1
  %arrayidx8.i.i = getelementptr [16 x i32], ptr %list0.i.i, i32 0, i32 %j.0546.i.i
  %925 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %925)
  store i32 %retval.0.i.i.i, ptr %arrayidx8.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %j.0546.i.i, %umin.i.i
  br i1 %exitcond.not.i.i, label %for.cond10.preheader.i.loopexit.i, label %find_ref_pic_index.exit.i.i.for.body.i.i_crit_edge

find_ref_pic_index.exit.i.i.for.body.i.i_crit_edge: ; preds = %find_ref_pic_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond27.preheader.i.i:                         ; preds = %find_ref_pic_index.exit256.i.i.for.cond27.preheader.i.i_crit_edge, %for.cond10.preheader.i.i.for.cond27.preheader.i.i_crit_edge
  %j.1.lcssa.i.i = phi i32 [ %j.0.lcssa.i.i, %for.cond10.preheader.i.i.for.cond27.preheader.i.i_crit_edge ], [ %inc22.i.i, %find_ref_pic_index.exit256.i.i.for.cond27.preheader.i.i_crit_edge ]
  %num_poc_lt_curr.i.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 5
  %926 = ptrtoint ptr %num_poc_lt_curr.i.i to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %num_poc_lt_curr.i.i, align 2
  %conv28.i.i = zext i8 %927 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %927)
  %cmp29557.i.i = icmp ne i8 %927, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.1.lcssa.i.i)
  %cmp32558.i.i = icmp ult i32 %j.1.lcssa.i.i, 16
  %or.cond187559.i.i = select i1 %cmp29557.i.i, i1 %cmp32558.i.i, i1 false
  br i1 %or.cond187559.i.i, label %for.body35.lr.ph.i.i, label %for.cond27.preheader.i.i.while.cond.preheader.i.i_crit_edge

for.cond27.preheader.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %for.cond27.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i.i

for.body35.lr.ph.i.i:                             ; preds = %for.cond27.preheader.i.i
  %pic_order_cnt1.i257.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 0, i32 3
  %928 = ptrtoint ptr %pic_order_cnt1.i257.i.i to i32
  call void @__asan_load2_noabort(i32 %928)
  %929 = load i16, ptr %pic_order_cnt1.i257.i.i, align 2
  %pic_order_cnt1.1.i260.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 1, i32 3
  %pic_order_cnt1.2.i264.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 2, i32 3
  %pic_order_cnt1.3.i268.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 3, i32 3
  %pic_order_cnt1.4.i272.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 4, i32 3
  %pic_order_cnt1.5.i276.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 5, i32 3
  %pic_order_cnt1.6.i280.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 6, i32 3
  %pic_order_cnt1.7.i284.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 7, i32 3
  %pic_order_cnt1.8.i288.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 8, i32 3
  %pic_order_cnt1.9.i292.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 9, i32 3
  %pic_order_cnt1.10.i296.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 10, i32 3
  %pic_order_cnt1.11.i300.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 11, i32 3
  %pic_order_cnt1.12.i304.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 12, i32 3
  %pic_order_cnt1.13.i308.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 13, i32 3
  %pic_order_cnt1.14.i312.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 14, i32 3
  %pic_order_cnt1.15.i316.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 15, i32 3
  br label %for.body35.i.i

for.body18.i.i:                                   ; preds = %find_ref_pic_index.exit256.i.i.for.body18.i.i_crit_edge, %for.body18.lr.ph.i.i
  %j.1553.i.i = phi i32 [ %j.0.lcssa.i.i, %for.body18.lr.ph.i.i ], [ %inc22.i.i, %find_ref_pic_index.exit256.i.i.for.body18.i.i_crit_edge ]
  %i.1552.i.i = phi i32 [ 0, %for.body18.lr.ph.i.i ], [ %inc25.i.i, %find_ref_pic_index.exit256.i.i.for.body18.i.i_crit_edge ]
  %arrayidx19.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 7, i32 %i.1552.i.i
  %930 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %arrayidx19.i.i, align 1
  %932 = zext i8 %931 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %891, i16 %932)
  %cmp3.i193.i.i = icmp eq i16 %891, %932
  br i1 %cmp3.i193.i.i, label %for.body18.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.i197.i.i

for.body18.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.i197.i.i:                                 ; preds = %for.body18.i.i
  %933 = ptrtoint ptr %pic_order_cnt1.1.i194.i.i to i32
  call void @__asan_load2_noabort(i32 %933)
  %934 = load i16, ptr %pic_order_cnt1.1.i194.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %934, i16 %932)
  %cmp3.1.i196.i.i = icmp eq i16 %934, %932
  br i1 %cmp3.1.i196.i.i, label %for.inc.i197.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.1.i201.i.i

for.inc.i197.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.i197.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.1.i201.i.i:                               ; preds = %for.inc.i197.i.i
  %935 = ptrtoint ptr %pic_order_cnt1.2.i198.i.i to i32
  call void @__asan_load2_noabort(i32 %935)
  %936 = load i16, ptr %pic_order_cnt1.2.i198.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %936, i16 %932)
  %cmp3.2.i200.i.i = icmp eq i16 %936, %932
  br i1 %cmp3.2.i200.i.i, label %for.inc.1.i201.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.2.i205.i.i

for.inc.1.i201.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.1.i201.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.2.i205.i.i:                               ; preds = %for.inc.1.i201.i.i
  %937 = ptrtoint ptr %pic_order_cnt1.3.i202.i.i to i32
  call void @__asan_load2_noabort(i32 %937)
  %938 = load i16, ptr %pic_order_cnt1.3.i202.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %938, i16 %932)
  %cmp3.3.i204.i.i = icmp eq i16 %938, %932
  br i1 %cmp3.3.i204.i.i, label %for.inc.2.i205.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.3.i209.i.i

for.inc.2.i205.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.2.i205.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.3.i209.i.i:                               ; preds = %for.inc.2.i205.i.i
  %939 = ptrtoint ptr %pic_order_cnt1.4.i206.i.i to i32
  call void @__asan_load2_noabort(i32 %939)
  %940 = load i16, ptr %pic_order_cnt1.4.i206.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %940, i16 %932)
  %cmp3.4.i208.i.i = icmp eq i16 %940, %932
  br i1 %cmp3.4.i208.i.i, label %for.inc.3.i209.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.4.i213.i.i

for.inc.3.i209.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.3.i209.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.4.i213.i.i:                               ; preds = %for.inc.3.i209.i.i
  %941 = ptrtoint ptr %pic_order_cnt1.5.i210.i.i to i32
  call void @__asan_load2_noabort(i32 %941)
  %942 = load i16, ptr %pic_order_cnt1.5.i210.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %942, i16 %932)
  %cmp3.5.i212.i.i = icmp eq i16 %942, %932
  br i1 %cmp3.5.i212.i.i, label %for.inc.4.i213.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.5.i217.i.i

for.inc.4.i213.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.4.i213.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.5.i217.i.i:                               ; preds = %for.inc.4.i213.i.i
  %943 = ptrtoint ptr %pic_order_cnt1.6.i214.i.i to i32
  call void @__asan_load2_noabort(i32 %943)
  %944 = load i16, ptr %pic_order_cnt1.6.i214.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %944, i16 %932)
  %cmp3.6.i216.i.i = icmp eq i16 %944, %932
  br i1 %cmp3.6.i216.i.i, label %for.inc.5.i217.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.6.i221.i.i

for.inc.5.i217.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.5.i217.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.6.i221.i.i:                               ; preds = %for.inc.5.i217.i.i
  %945 = ptrtoint ptr %pic_order_cnt1.7.i218.i.i to i32
  call void @__asan_load2_noabort(i32 %945)
  %946 = load i16, ptr %pic_order_cnt1.7.i218.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %946, i16 %932)
  %cmp3.7.i220.i.i = icmp eq i16 %946, %932
  br i1 %cmp3.7.i220.i.i, label %for.inc.6.i221.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.7.i225.i.i

for.inc.6.i221.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.6.i221.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.7.i225.i.i:                               ; preds = %for.inc.6.i221.i.i
  %947 = ptrtoint ptr %pic_order_cnt1.8.i222.i.i to i32
  call void @__asan_load2_noabort(i32 %947)
  %948 = load i16, ptr %pic_order_cnt1.8.i222.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %948, i16 %932)
  %cmp3.8.i224.i.i = icmp eq i16 %948, %932
  br i1 %cmp3.8.i224.i.i, label %for.inc.7.i225.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.8.i229.i.i

for.inc.7.i225.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.7.i225.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.8.i229.i.i:                               ; preds = %for.inc.7.i225.i.i
  %949 = ptrtoint ptr %pic_order_cnt1.9.i226.i.i to i32
  call void @__asan_load2_noabort(i32 %949)
  %950 = load i16, ptr %pic_order_cnt1.9.i226.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %950, i16 %932)
  %cmp3.9.i228.i.i = icmp eq i16 %950, %932
  br i1 %cmp3.9.i228.i.i, label %for.inc.8.i229.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.9.i233.i.i

for.inc.8.i229.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.8.i229.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.9.i233.i.i:                               ; preds = %for.inc.8.i229.i.i
  %951 = ptrtoint ptr %pic_order_cnt1.10.i230.i.i to i32
  call void @__asan_load2_noabort(i32 %951)
  %952 = load i16, ptr %pic_order_cnt1.10.i230.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %952, i16 %932)
  %cmp3.10.i232.i.i = icmp eq i16 %952, %932
  br i1 %cmp3.10.i232.i.i, label %for.inc.9.i233.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.10.i237.i.i

for.inc.9.i233.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.9.i233.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.10.i237.i.i:                              ; preds = %for.inc.9.i233.i.i
  %953 = ptrtoint ptr %pic_order_cnt1.11.i234.i.i to i32
  call void @__asan_load2_noabort(i32 %953)
  %954 = load i16, ptr %pic_order_cnt1.11.i234.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %954, i16 %932)
  %cmp3.11.i236.i.i = icmp eq i16 %954, %932
  br i1 %cmp3.11.i236.i.i, label %for.inc.10.i237.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.11.i241.i.i

for.inc.10.i237.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.10.i237.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.11.i241.i.i:                              ; preds = %for.inc.10.i237.i.i
  %955 = ptrtoint ptr %pic_order_cnt1.12.i238.i.i to i32
  call void @__asan_load2_noabort(i32 %955)
  %956 = load i16, ptr %pic_order_cnt1.12.i238.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %956, i16 %932)
  %cmp3.12.i240.i.i = icmp eq i16 %956, %932
  br i1 %cmp3.12.i240.i.i, label %for.inc.11.i241.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.12.i245.i.i

for.inc.11.i241.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.11.i241.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.12.i245.i.i:                              ; preds = %for.inc.11.i241.i.i
  %957 = ptrtoint ptr %pic_order_cnt1.13.i242.i.i to i32
  call void @__asan_load2_noabort(i32 %957)
  %958 = load i16, ptr %pic_order_cnt1.13.i242.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %958, i16 %932)
  %cmp3.13.i244.i.i = icmp eq i16 %958, %932
  br i1 %cmp3.13.i244.i.i, label %for.inc.12.i245.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.13.i249.i.i

for.inc.12.i245.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.12.i245.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.13.i249.i.i:                              ; preds = %for.inc.12.i245.i.i
  %959 = ptrtoint ptr %pic_order_cnt1.14.i246.i.i to i32
  call void @__asan_load2_noabort(i32 %959)
  %960 = load i16, ptr %pic_order_cnt1.14.i246.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %960, i16 %932)
  %cmp3.14.i248.i.i = icmp eq i16 %960, %932
  br i1 %cmp3.14.i248.i.i, label %for.inc.13.i249.i.i.find_ref_pic_index.exit256.i.i_crit_edge, label %for.inc.14.i254.i.i

for.inc.13.i249.i.i.find_ref_pic_index.exit256.i.i_crit_edge: ; preds = %for.inc.13.i249.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit256.i.i

for.inc.14.i254.i.i:                              ; preds = %for.inc.13.i249.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %961 = ptrtoint ptr %pic_order_cnt1.15.i250.i.i to i32
  call void @__asan_load2_noabort(i32 %961)
  %962 = load i16, ptr %pic_order_cnt1.15.i250.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %962, i16 %932)
  %cmp3.15.i252.i.i = icmp eq i16 %962, %932
  %spec.select.i253.i.i = select i1 %cmp3.15.i252.i.i, i32 15, i32 0
  br label %find_ref_pic_index.exit256.i.i

find_ref_pic_index.exit256.i.i:                   ; preds = %for.inc.14.i254.i.i, %for.inc.13.i249.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.12.i245.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.11.i241.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.10.i237.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.9.i233.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.8.i229.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.7.i225.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.6.i221.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.5.i217.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.4.i213.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.3.i209.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.2.i205.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.1.i201.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.inc.i197.i.i.find_ref_pic_index.exit256.i.i_crit_edge, %for.body18.i.i.find_ref_pic_index.exit256.i.i_crit_edge
  %retval.0.i255.i.i = phi i32 [ 0, %for.body18.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 1, %for.inc.i197.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 2, %for.inc.1.i201.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 3, %for.inc.2.i205.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 4, %for.inc.3.i209.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 5, %for.inc.4.i213.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 6, %for.inc.5.i217.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 7, %for.inc.6.i221.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 8, %for.inc.7.i225.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 9, %for.inc.8.i229.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 10, %for.inc.9.i233.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 11, %for.inc.10.i237.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 12, %for.inc.11.i241.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 13, %for.inc.12.i245.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ 14, %for.inc.13.i249.i.i.find_ref_pic_index.exit256.i.i_crit_edge ], [ %spec.select.i253.i.i, %for.inc.14.i254.i.i ]
  %inc22.i.i = add nuw nsw i32 %j.1553.i.i, 1
  %arrayidx23.i.i = getelementptr [16 x i32], ptr %list0.i.i, i32 0, i32 %j.1553.i.i
  %963 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %963)
  store i32 %retval.0.i255.i.i, ptr %arrayidx23.i.i, align 4
  %inc25.i.i = add nuw nsw i32 %i.1552.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc25.i.i, i32 %conv11.i.i)
  %cmp12.i.i = icmp ult i32 %inc25.i.i, %conv11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.1553.i.i)
  %cmp15.i.i = icmp ult i32 %j.1553.i.i, 15
  %or.cond186.i.i = select i1 %cmp12.i.i, i1 %cmp15.i.i, i1 false
  br i1 %or.cond186.i.i, label %find_ref_pic_index.exit256.i.i.for.body18.i.i_crit_edge, label %find_ref_pic_index.exit256.i.i.for.cond27.preheader.i.i_crit_edge

find_ref_pic_index.exit256.i.i.for.cond27.preheader.i.i_crit_edge: ; preds = %find_ref_pic_index.exit256.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27.preheader.i.i

find_ref_pic_index.exit256.i.i.for.body18.i.i_crit_edge: ; preds = %find_ref_pic_index.exit256.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18.i.i

while.cond.preheader.i.i:                         ; preds = %find_ref_pic_index.exit322.i.i.while.cond.preheader.i.i_crit_edge, %for.cond27.preheader.i.i.while.cond.preheader.i.i_crit_edge
  %j.2.lcssa.i.i = phi i32 [ %j.1.lcssa.i.i, %for.cond27.preheader.i.i.while.cond.preheader.i.i_crit_edge ], [ %inc39.i.i, %find_ref_pic_index.exit322.i.i.while.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.2.lcssa.i.i)
  %cmp44564.i.i = icmp ult i32 %j.2.lcssa.i.i, 16
  br i1 %cmp44564.i.i, label %while.body.preheader.i.i, label %while.cond.preheader.i.i.for.cond50.preheader.i.i_crit_edge

while.cond.preheader.i.i.for.cond50.preheader.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond50.preheader.i.i

while.body.preheader.i.i:                         ; preds = %while.cond.preheader.i.i
  %964 = sub nuw nsw i32 16, %j.2.lcssa.i.i
  br label %while.body.i.i

for.body35.i.i:                                   ; preds = %find_ref_pic_index.exit322.i.i.for.body35.i.i_crit_edge, %for.body35.lr.ph.i.i
  %j.2561.i.i = phi i32 [ %j.1.lcssa.i.i, %for.body35.lr.ph.i.i ], [ %inc39.i.i, %find_ref_pic_index.exit322.i.i.for.body35.i.i_crit_edge ]
  %i.2560.i.i = phi i32 [ 0, %for.body35.lr.ph.i.i ], [ %inc42.i.i, %find_ref_pic_index.exit322.i.i.for.body35.i.i_crit_edge ]
  %arrayidx36.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 8, i32 %i.2560.i.i
  %965 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %965)
  %966 = load i8, ptr %arrayidx36.i.i, align 1
  %967 = zext i8 %966 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %929, i16 %967)
  %cmp3.i259.i.i = icmp eq i16 %929, %967
  br i1 %cmp3.i259.i.i, label %for.body35.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.i263.i.i

for.body35.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.body35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.i263.i.i:                                 ; preds = %for.body35.i.i
  %968 = ptrtoint ptr %pic_order_cnt1.1.i260.i.i to i32
  call void @__asan_load2_noabort(i32 %968)
  %969 = load i16, ptr %pic_order_cnt1.1.i260.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %969, i16 %967)
  %cmp3.1.i262.i.i = icmp eq i16 %969, %967
  br i1 %cmp3.1.i262.i.i, label %for.inc.i263.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.1.i267.i.i

for.inc.i263.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.i263.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.1.i267.i.i:                               ; preds = %for.inc.i263.i.i
  %970 = ptrtoint ptr %pic_order_cnt1.2.i264.i.i to i32
  call void @__asan_load2_noabort(i32 %970)
  %971 = load i16, ptr %pic_order_cnt1.2.i264.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %971, i16 %967)
  %cmp3.2.i266.i.i = icmp eq i16 %971, %967
  br i1 %cmp3.2.i266.i.i, label %for.inc.1.i267.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.2.i271.i.i

for.inc.1.i267.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.1.i267.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.2.i271.i.i:                               ; preds = %for.inc.1.i267.i.i
  %972 = ptrtoint ptr %pic_order_cnt1.3.i268.i.i to i32
  call void @__asan_load2_noabort(i32 %972)
  %973 = load i16, ptr %pic_order_cnt1.3.i268.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %973, i16 %967)
  %cmp3.3.i270.i.i = icmp eq i16 %973, %967
  br i1 %cmp3.3.i270.i.i, label %for.inc.2.i271.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.3.i275.i.i

for.inc.2.i271.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.2.i271.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.3.i275.i.i:                               ; preds = %for.inc.2.i271.i.i
  %974 = ptrtoint ptr %pic_order_cnt1.4.i272.i.i to i32
  call void @__asan_load2_noabort(i32 %974)
  %975 = load i16, ptr %pic_order_cnt1.4.i272.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %975, i16 %967)
  %cmp3.4.i274.i.i = icmp eq i16 %975, %967
  br i1 %cmp3.4.i274.i.i, label %for.inc.3.i275.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.4.i279.i.i

for.inc.3.i275.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.3.i275.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.4.i279.i.i:                               ; preds = %for.inc.3.i275.i.i
  %976 = ptrtoint ptr %pic_order_cnt1.5.i276.i.i to i32
  call void @__asan_load2_noabort(i32 %976)
  %977 = load i16, ptr %pic_order_cnt1.5.i276.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %977, i16 %967)
  %cmp3.5.i278.i.i = icmp eq i16 %977, %967
  br i1 %cmp3.5.i278.i.i, label %for.inc.4.i279.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.5.i283.i.i

for.inc.4.i279.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.4.i279.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.5.i283.i.i:                               ; preds = %for.inc.4.i279.i.i
  %978 = ptrtoint ptr %pic_order_cnt1.6.i280.i.i to i32
  call void @__asan_load2_noabort(i32 %978)
  %979 = load i16, ptr %pic_order_cnt1.6.i280.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %979, i16 %967)
  %cmp3.6.i282.i.i = icmp eq i16 %979, %967
  br i1 %cmp3.6.i282.i.i, label %for.inc.5.i283.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.6.i287.i.i

for.inc.5.i283.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.5.i283.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.6.i287.i.i:                               ; preds = %for.inc.5.i283.i.i
  %980 = ptrtoint ptr %pic_order_cnt1.7.i284.i.i to i32
  call void @__asan_load2_noabort(i32 %980)
  %981 = load i16, ptr %pic_order_cnt1.7.i284.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %981, i16 %967)
  %cmp3.7.i286.i.i = icmp eq i16 %981, %967
  br i1 %cmp3.7.i286.i.i, label %for.inc.6.i287.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.7.i291.i.i

for.inc.6.i287.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.6.i287.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.7.i291.i.i:                               ; preds = %for.inc.6.i287.i.i
  %982 = ptrtoint ptr %pic_order_cnt1.8.i288.i.i to i32
  call void @__asan_load2_noabort(i32 %982)
  %983 = load i16, ptr %pic_order_cnt1.8.i288.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %983, i16 %967)
  %cmp3.8.i290.i.i = icmp eq i16 %983, %967
  br i1 %cmp3.8.i290.i.i, label %for.inc.7.i291.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.8.i295.i.i

for.inc.7.i291.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.7.i291.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.8.i295.i.i:                               ; preds = %for.inc.7.i291.i.i
  %984 = ptrtoint ptr %pic_order_cnt1.9.i292.i.i to i32
  call void @__asan_load2_noabort(i32 %984)
  %985 = load i16, ptr %pic_order_cnt1.9.i292.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %985, i16 %967)
  %cmp3.9.i294.i.i = icmp eq i16 %985, %967
  br i1 %cmp3.9.i294.i.i, label %for.inc.8.i295.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.9.i299.i.i

for.inc.8.i295.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.8.i295.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.9.i299.i.i:                               ; preds = %for.inc.8.i295.i.i
  %986 = ptrtoint ptr %pic_order_cnt1.10.i296.i.i to i32
  call void @__asan_load2_noabort(i32 %986)
  %987 = load i16, ptr %pic_order_cnt1.10.i296.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %987, i16 %967)
  %cmp3.10.i298.i.i = icmp eq i16 %987, %967
  br i1 %cmp3.10.i298.i.i, label %for.inc.9.i299.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.10.i303.i.i

for.inc.9.i299.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.9.i299.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.10.i303.i.i:                              ; preds = %for.inc.9.i299.i.i
  %988 = ptrtoint ptr %pic_order_cnt1.11.i300.i.i to i32
  call void @__asan_load2_noabort(i32 %988)
  %989 = load i16, ptr %pic_order_cnt1.11.i300.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %989, i16 %967)
  %cmp3.11.i302.i.i = icmp eq i16 %989, %967
  br i1 %cmp3.11.i302.i.i, label %for.inc.10.i303.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.11.i307.i.i

for.inc.10.i303.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.10.i303.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.11.i307.i.i:                              ; preds = %for.inc.10.i303.i.i
  %990 = ptrtoint ptr %pic_order_cnt1.12.i304.i.i to i32
  call void @__asan_load2_noabort(i32 %990)
  %991 = load i16, ptr %pic_order_cnt1.12.i304.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %991, i16 %967)
  %cmp3.12.i306.i.i = icmp eq i16 %991, %967
  br i1 %cmp3.12.i306.i.i, label %for.inc.11.i307.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.12.i311.i.i

for.inc.11.i307.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.11.i307.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.12.i311.i.i:                              ; preds = %for.inc.11.i307.i.i
  %992 = ptrtoint ptr %pic_order_cnt1.13.i308.i.i to i32
  call void @__asan_load2_noabort(i32 %992)
  %993 = load i16, ptr %pic_order_cnt1.13.i308.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %993, i16 %967)
  %cmp3.13.i310.i.i = icmp eq i16 %993, %967
  br i1 %cmp3.13.i310.i.i, label %for.inc.12.i311.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.13.i315.i.i

for.inc.12.i311.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.12.i311.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.13.i315.i.i:                              ; preds = %for.inc.12.i311.i.i
  %994 = ptrtoint ptr %pic_order_cnt1.14.i312.i.i to i32
  call void @__asan_load2_noabort(i32 %994)
  %995 = load i16, ptr %pic_order_cnt1.14.i312.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %995, i16 %967)
  %cmp3.14.i314.i.i = icmp eq i16 %995, %967
  br i1 %cmp3.14.i314.i.i, label %for.inc.13.i315.i.i.find_ref_pic_index.exit322.i.i_crit_edge, label %for.inc.14.i320.i.i

for.inc.13.i315.i.i.find_ref_pic_index.exit322.i.i_crit_edge: ; preds = %for.inc.13.i315.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit322.i.i

for.inc.14.i320.i.i:                              ; preds = %for.inc.13.i315.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %996 = ptrtoint ptr %pic_order_cnt1.15.i316.i.i to i32
  call void @__asan_load2_noabort(i32 %996)
  %997 = load i16, ptr %pic_order_cnt1.15.i316.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %997, i16 %967)
  %cmp3.15.i318.i.i = icmp eq i16 %997, %967
  %spec.select.i319.i.i = select i1 %cmp3.15.i318.i.i, i32 15, i32 0
  br label %find_ref_pic_index.exit322.i.i

find_ref_pic_index.exit322.i.i:                   ; preds = %for.inc.14.i320.i.i, %for.inc.13.i315.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.12.i311.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.11.i307.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.10.i303.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.9.i299.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.8.i295.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.7.i291.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.6.i287.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.5.i283.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.4.i279.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.3.i275.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.2.i271.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.1.i267.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.inc.i263.i.i.find_ref_pic_index.exit322.i.i_crit_edge, %for.body35.i.i.find_ref_pic_index.exit322.i.i_crit_edge
  %retval.0.i321.i.i = phi i32 [ 0, %for.body35.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 1, %for.inc.i263.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 2, %for.inc.1.i267.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 3, %for.inc.2.i271.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 4, %for.inc.3.i275.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 5, %for.inc.4.i279.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 6, %for.inc.5.i283.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 7, %for.inc.6.i287.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 8, %for.inc.7.i291.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 9, %for.inc.8.i295.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 10, %for.inc.9.i299.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 11, %for.inc.10.i303.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 12, %for.inc.11.i307.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 13, %for.inc.12.i311.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ 14, %for.inc.13.i315.i.i.find_ref_pic_index.exit322.i.i_crit_edge ], [ %spec.select.i319.i.i, %for.inc.14.i320.i.i ]
  %inc39.i.i = add nuw nsw i32 %j.2561.i.i, 1
  %arrayidx40.i.i = getelementptr [16 x i32], ptr %list0.i.i, i32 0, i32 %j.2561.i.i
  %998 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store4_noabort(i32 %998)
  store i32 %retval.0.i321.i.i, ptr %arrayidx40.i.i, align 4
  %inc42.i.i = add nuw nsw i32 %i.2560.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc42.i.i, i32 %conv28.i.i)
  %cmp29.i.i = icmp ult i32 %inc42.i.i, %conv28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.2561.i.i)
  %cmp32.i.i = icmp ult i32 %j.2561.i.i, 15
  %or.cond187.i.i = select i1 %cmp29.i.i, i1 %cmp32.i.i, i1 false
  br i1 %or.cond187.i.i, label %find_ref_pic_index.exit322.i.i.for.body35.i.i_crit_edge, label %find_ref_pic_index.exit322.i.i.while.cond.preheader.i.i_crit_edge

find_ref_pic_index.exit322.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %find_ref_pic_index.exit322.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i.i

find_ref_pic_index.exit322.i.i.for.body35.i.i_crit_edge: ; preds = %find_ref_pic_index.exit322.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.i.i

for.cond50.preheader.i.i:                         ; preds = %while.body.i.i.for.cond50.preheader.i.i_crit_edge, %while.cond.preheader.i.i.for.cond50.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %889)
  %cmp53567.not.i.i = icmp eq i8 %889, 0
  br i1 %cmp53567.not.i.i, label %for.cond50.preheader.i.i.for.cond69.preheader.i.i_crit_edge, label %for.body59.lr.ph.i.i

for.cond50.preheader.i.i.for.cond69.preheader.i.i_crit_edge: ; preds = %for.cond50.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond69.preheader.i.i

for.body59.lr.ph.i.i:                             ; preds = %for.cond50.preheader.i.i
  %pic_order_cnt1.i323.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 0, i32 3
  %999 = ptrtoint ptr %pic_order_cnt1.i323.i.i to i32
  call void @__asan_load2_noabort(i32 %999)
  %1000 = load i16, ptr %pic_order_cnt1.i323.i.i, align 2
  %pic_order_cnt1.1.i326.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 1, i32 3
  %pic_order_cnt1.2.i330.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 2, i32 3
  %pic_order_cnt1.3.i334.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 3, i32 3
  %pic_order_cnt1.4.i338.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 4, i32 3
  %pic_order_cnt1.5.i342.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 5, i32 3
  %pic_order_cnt1.6.i346.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 6, i32 3
  %pic_order_cnt1.7.i350.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 7, i32 3
  %pic_order_cnt1.8.i354.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 8, i32 3
  %pic_order_cnt1.9.i358.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 9, i32 3
  %pic_order_cnt1.10.i362.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 10, i32 3
  %pic_order_cnt1.11.i366.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 11, i32 3
  %pic_order_cnt1.12.i370.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 12, i32 3
  %pic_order_cnt1.13.i374.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 13, i32 3
  %pic_order_cnt1.14.i378.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 14, i32 3
  %pic_order_cnt1.15.i382.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 15, i32 3
  %1001 = add nsw i32 %conv11.i.i, -1
  %umin588.i.i = tail call i32 @llvm.umin.i32(i32 %1001, i32 15) #5
  br label %for.body59.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %j.3566.i.i = phi i32 [ %inc48.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %j.2.lcssa.i.i, %while.body.preheader.i.i ]
  %i.3565.i.i = phi i32 [ %inc46.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %inc46.i.i = add nuw nsw i32 %i.3565.i.i, 1
  %arrayidx47.i.i = getelementptr [16 x i32], ptr %list0.i.i, i32 0, i32 %i.3565.i.i
  %1002 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %arrayidx47.i.i, align 4
  %inc48.i.i = add nuw nsw i32 %j.3566.i.i, 1
  %arrayidx49.i.i = getelementptr [16 x i32], ptr %list0.i.i, i32 0, i32 %j.3566.i.i
  %1004 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %1004)
  store i32 %1003, ptr %arrayidx49.i.i, align 4
  %exitcond587.not.i.i = icmp eq i32 %inc46.i.i, %964
  br i1 %exitcond587.not.i.i, label %while.body.i.i.for.cond50.preheader.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i.for.cond50.preheader.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond50.preheader.i.i

for.cond69.preheader.i.loopexit.i:                ; preds = %find_ref_pic_index.exit388.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %1005 = add nuw nsw i32 %umin588.i.i, 1
  br label %for.cond69.preheader.i.i

for.cond69.preheader.i.i:                         ; preds = %for.cond69.preheader.i.loopexit.i, %for.cond50.preheader.i.i.for.cond69.preheader.i.i_crit_edge
  %j.4.lcssa.i.i = phi i32 [ 0, %for.cond50.preheader.i.i.for.cond69.preheader.i.i_crit_edge ], [ %1005, %for.cond69.preheader.i.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %883)
  %cmp72571.i.i = icmp ne i8 %883, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.4.lcssa.i.i)
  %cmp75572.i.i = icmp ult i32 %j.4.lcssa.i.i, 16
  %or.cond189573.i.i = select i1 %cmp72571.i.i, i1 %cmp75572.i.i, i1 false
  br i1 %or.cond189573.i.i, label %for.body78.lr.ph.i.i, label %for.cond69.preheader.i.i.for.cond88.preheader.i.i_crit_edge

for.cond69.preheader.i.i.for.cond88.preheader.i.i_crit_edge: ; preds = %for.cond69.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond88.preheader.i.i

for.body78.lr.ph.i.i:                             ; preds = %for.cond69.preheader.i.i
  %pic_order_cnt1.i389.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 0, i32 3
  %1006 = ptrtoint ptr %pic_order_cnt1.i389.i.i to i32
  call void @__asan_load2_noabort(i32 %1006)
  %1007 = load i16, ptr %pic_order_cnt1.i389.i.i, align 2
  %pic_order_cnt1.1.i392.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 1, i32 3
  %pic_order_cnt1.2.i396.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 2, i32 3
  %pic_order_cnt1.3.i400.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 3, i32 3
  %pic_order_cnt1.4.i404.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 4, i32 3
  %pic_order_cnt1.5.i408.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 5, i32 3
  %pic_order_cnt1.6.i412.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 6, i32 3
  %pic_order_cnt1.7.i416.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 7, i32 3
  %pic_order_cnt1.8.i420.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 8, i32 3
  %pic_order_cnt1.9.i424.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 9, i32 3
  %pic_order_cnt1.10.i428.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 10, i32 3
  %pic_order_cnt1.11.i432.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 11, i32 3
  %pic_order_cnt1.12.i436.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 12, i32 3
  %pic_order_cnt1.13.i440.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 13, i32 3
  %pic_order_cnt1.14.i444.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 14, i32 3
  %pic_order_cnt1.15.i448.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 15, i32 3
  br label %for.body78.i.i

for.body59.i.i:                                   ; preds = %find_ref_pic_index.exit388.i.i.for.body59.i.i_crit_edge, %for.body59.lr.ph.i.i
  %j.4569.i.i = phi i32 [ 0, %for.body59.lr.ph.i.i ], [ %inc64.i.i, %find_ref_pic_index.exit388.i.i.for.body59.i.i_crit_edge ]
  %arrayidx61.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 7, i32 %j.4569.i.i
  %1008 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %1008)
  %1009 = load i8, ptr %arrayidx61.i.i, align 1
  %1010 = zext i8 %1009 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1000, i16 %1010)
  %cmp3.i325.i.i = icmp eq i16 %1000, %1010
  br i1 %cmp3.i325.i.i, label %for.body59.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.i329.i.i

for.body59.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.body59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.i329.i.i:                                 ; preds = %for.body59.i.i
  %1011 = ptrtoint ptr %pic_order_cnt1.1.i326.i.i to i32
  call void @__asan_load2_noabort(i32 %1011)
  %1012 = load i16, ptr %pic_order_cnt1.1.i326.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1012, i16 %1010)
  %cmp3.1.i328.i.i = icmp eq i16 %1012, %1010
  br i1 %cmp3.1.i328.i.i, label %for.inc.i329.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.1.i333.i.i

for.inc.i329.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.i329.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.1.i333.i.i:                               ; preds = %for.inc.i329.i.i
  %1013 = ptrtoint ptr %pic_order_cnt1.2.i330.i.i to i32
  call void @__asan_load2_noabort(i32 %1013)
  %1014 = load i16, ptr %pic_order_cnt1.2.i330.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1014, i16 %1010)
  %cmp3.2.i332.i.i = icmp eq i16 %1014, %1010
  br i1 %cmp3.2.i332.i.i, label %for.inc.1.i333.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.2.i337.i.i

for.inc.1.i333.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.1.i333.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.2.i337.i.i:                               ; preds = %for.inc.1.i333.i.i
  %1015 = ptrtoint ptr %pic_order_cnt1.3.i334.i.i to i32
  call void @__asan_load2_noabort(i32 %1015)
  %1016 = load i16, ptr %pic_order_cnt1.3.i334.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1016, i16 %1010)
  %cmp3.3.i336.i.i = icmp eq i16 %1016, %1010
  br i1 %cmp3.3.i336.i.i, label %for.inc.2.i337.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.3.i341.i.i

for.inc.2.i337.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.2.i337.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.3.i341.i.i:                               ; preds = %for.inc.2.i337.i.i
  %1017 = ptrtoint ptr %pic_order_cnt1.4.i338.i.i to i32
  call void @__asan_load2_noabort(i32 %1017)
  %1018 = load i16, ptr %pic_order_cnt1.4.i338.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1018, i16 %1010)
  %cmp3.4.i340.i.i = icmp eq i16 %1018, %1010
  br i1 %cmp3.4.i340.i.i, label %for.inc.3.i341.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.4.i345.i.i

for.inc.3.i341.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.3.i341.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.4.i345.i.i:                               ; preds = %for.inc.3.i341.i.i
  %1019 = ptrtoint ptr %pic_order_cnt1.5.i342.i.i to i32
  call void @__asan_load2_noabort(i32 %1019)
  %1020 = load i16, ptr %pic_order_cnt1.5.i342.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1020, i16 %1010)
  %cmp3.5.i344.i.i = icmp eq i16 %1020, %1010
  br i1 %cmp3.5.i344.i.i, label %for.inc.4.i345.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.5.i349.i.i

for.inc.4.i345.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.4.i345.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.5.i349.i.i:                               ; preds = %for.inc.4.i345.i.i
  %1021 = ptrtoint ptr %pic_order_cnt1.6.i346.i.i to i32
  call void @__asan_load2_noabort(i32 %1021)
  %1022 = load i16, ptr %pic_order_cnt1.6.i346.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1022, i16 %1010)
  %cmp3.6.i348.i.i = icmp eq i16 %1022, %1010
  br i1 %cmp3.6.i348.i.i, label %for.inc.5.i349.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.6.i353.i.i

for.inc.5.i349.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.5.i349.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.6.i353.i.i:                               ; preds = %for.inc.5.i349.i.i
  %1023 = ptrtoint ptr %pic_order_cnt1.7.i350.i.i to i32
  call void @__asan_load2_noabort(i32 %1023)
  %1024 = load i16, ptr %pic_order_cnt1.7.i350.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1024, i16 %1010)
  %cmp3.7.i352.i.i = icmp eq i16 %1024, %1010
  br i1 %cmp3.7.i352.i.i, label %for.inc.6.i353.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.7.i357.i.i

for.inc.6.i353.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.6.i353.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.7.i357.i.i:                               ; preds = %for.inc.6.i353.i.i
  %1025 = ptrtoint ptr %pic_order_cnt1.8.i354.i.i to i32
  call void @__asan_load2_noabort(i32 %1025)
  %1026 = load i16, ptr %pic_order_cnt1.8.i354.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1026, i16 %1010)
  %cmp3.8.i356.i.i = icmp eq i16 %1026, %1010
  br i1 %cmp3.8.i356.i.i, label %for.inc.7.i357.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.8.i361.i.i

for.inc.7.i357.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.7.i357.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.8.i361.i.i:                               ; preds = %for.inc.7.i357.i.i
  %1027 = ptrtoint ptr %pic_order_cnt1.9.i358.i.i to i32
  call void @__asan_load2_noabort(i32 %1027)
  %1028 = load i16, ptr %pic_order_cnt1.9.i358.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1028, i16 %1010)
  %cmp3.9.i360.i.i = icmp eq i16 %1028, %1010
  br i1 %cmp3.9.i360.i.i, label %for.inc.8.i361.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.9.i365.i.i

for.inc.8.i361.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.8.i361.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.9.i365.i.i:                               ; preds = %for.inc.8.i361.i.i
  %1029 = ptrtoint ptr %pic_order_cnt1.10.i362.i.i to i32
  call void @__asan_load2_noabort(i32 %1029)
  %1030 = load i16, ptr %pic_order_cnt1.10.i362.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1030, i16 %1010)
  %cmp3.10.i364.i.i = icmp eq i16 %1030, %1010
  br i1 %cmp3.10.i364.i.i, label %for.inc.9.i365.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.10.i369.i.i

for.inc.9.i365.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.9.i365.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.10.i369.i.i:                              ; preds = %for.inc.9.i365.i.i
  %1031 = ptrtoint ptr %pic_order_cnt1.11.i366.i.i to i32
  call void @__asan_load2_noabort(i32 %1031)
  %1032 = load i16, ptr %pic_order_cnt1.11.i366.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1032, i16 %1010)
  %cmp3.11.i368.i.i = icmp eq i16 %1032, %1010
  br i1 %cmp3.11.i368.i.i, label %for.inc.10.i369.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.11.i373.i.i

for.inc.10.i369.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.10.i369.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.11.i373.i.i:                              ; preds = %for.inc.10.i369.i.i
  %1033 = ptrtoint ptr %pic_order_cnt1.12.i370.i.i to i32
  call void @__asan_load2_noabort(i32 %1033)
  %1034 = load i16, ptr %pic_order_cnt1.12.i370.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1034, i16 %1010)
  %cmp3.12.i372.i.i = icmp eq i16 %1034, %1010
  br i1 %cmp3.12.i372.i.i, label %for.inc.11.i373.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.12.i377.i.i

for.inc.11.i373.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.11.i373.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.12.i377.i.i:                              ; preds = %for.inc.11.i373.i.i
  %1035 = ptrtoint ptr %pic_order_cnt1.13.i374.i.i to i32
  call void @__asan_load2_noabort(i32 %1035)
  %1036 = load i16, ptr %pic_order_cnt1.13.i374.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1036, i16 %1010)
  %cmp3.13.i376.i.i = icmp eq i16 %1036, %1010
  br i1 %cmp3.13.i376.i.i, label %for.inc.12.i377.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.13.i381.i.i

for.inc.12.i377.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.12.i377.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.13.i381.i.i:                              ; preds = %for.inc.12.i377.i.i
  %1037 = ptrtoint ptr %pic_order_cnt1.14.i378.i.i to i32
  call void @__asan_load2_noabort(i32 %1037)
  %1038 = load i16, ptr %pic_order_cnt1.14.i378.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1038, i16 %1010)
  %cmp3.14.i380.i.i = icmp eq i16 %1038, %1010
  br i1 %cmp3.14.i380.i.i, label %for.inc.13.i381.i.i.find_ref_pic_index.exit388.i.i_crit_edge, label %for.inc.14.i386.i.i

for.inc.13.i381.i.i.find_ref_pic_index.exit388.i.i_crit_edge: ; preds = %for.inc.13.i381.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit388.i.i

for.inc.14.i386.i.i:                              ; preds = %for.inc.13.i381.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %1039 = ptrtoint ptr %pic_order_cnt1.15.i382.i.i to i32
  call void @__asan_load2_noabort(i32 %1039)
  %1040 = load i16, ptr %pic_order_cnt1.15.i382.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1040, i16 %1010)
  %cmp3.15.i384.i.i = icmp eq i16 %1040, %1010
  %spec.select.i385.i.i = select i1 %cmp3.15.i384.i.i, i32 15, i32 0
  br label %find_ref_pic_index.exit388.i.i

find_ref_pic_index.exit388.i.i:                   ; preds = %for.inc.14.i386.i.i, %for.inc.13.i381.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.12.i377.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.11.i373.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.10.i369.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.9.i365.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.8.i361.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.7.i357.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.6.i353.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.5.i349.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.4.i345.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.3.i341.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.2.i337.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.1.i333.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.inc.i329.i.i.find_ref_pic_index.exit388.i.i_crit_edge, %for.body59.i.i.find_ref_pic_index.exit388.i.i_crit_edge
  %retval.0.i387.i.i = phi i32 [ 0, %for.body59.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 1, %for.inc.i329.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 2, %for.inc.1.i333.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 3, %for.inc.2.i337.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 4, %for.inc.3.i341.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 5, %for.inc.4.i345.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 6, %for.inc.5.i349.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 7, %for.inc.6.i353.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 8, %for.inc.7.i357.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 9, %for.inc.8.i361.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 10, %for.inc.9.i365.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 11, %for.inc.10.i369.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 12, %for.inc.11.i373.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 13, %for.inc.12.i377.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ 14, %for.inc.13.i381.i.i.find_ref_pic_index.exit388.i.i_crit_edge ], [ %spec.select.i385.i.i, %for.inc.14.i386.i.i ]
  %inc64.i.i = add nuw nsw i32 %j.4569.i.i, 1
  %arrayidx65.i.i = getelementptr [16 x i32], ptr %list1.i.i, i32 0, i32 %j.4569.i.i
  %1041 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_store4_noabort(i32 %1041)
  store i32 %retval.0.i387.i.i, ptr %arrayidx65.i.i, align 4
  %exitcond589.not.i.i = icmp eq i32 %j.4569.i.i, %umin588.i.i
  br i1 %exitcond589.not.i.i, label %for.cond69.preheader.i.loopexit.i, label %find_ref_pic_index.exit388.i.i.for.body59.i.i_crit_edge

find_ref_pic_index.exit388.i.i.for.body59.i.i_crit_edge: ; preds = %find_ref_pic_index.exit388.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body59.i.i

for.cond88.preheader.i.i:                         ; preds = %find_ref_pic_index.exit454.i.i.for.cond88.preheader.i.i_crit_edge, %for.cond69.preheader.i.i.for.cond88.preheader.i.i_crit_edge
  %j.5.lcssa.i.i = phi i32 [ %j.4.lcssa.i.i, %for.cond69.preheader.i.i.for.cond88.preheader.i.i_crit_edge ], [ %inc83.i.i, %find_ref_pic_index.exit454.i.i.for.cond88.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.5.lcssa.i.i)
  %cmp94578.i.i = icmp ult i32 %j.5.lcssa.i.i, 16
  %or.cond190579.i.i = select i1 %cmp29557.i.i, i1 %cmp94578.i.i, i1 false
  br i1 %or.cond190579.i.i, label %for.body97.lr.ph.i.i, label %for.cond88.preheader.i.i.while.cond107.preheader.i.i_crit_edge

for.cond88.preheader.i.i.while.cond107.preheader.i.i_crit_edge: ; preds = %for.cond88.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond107.preheader.i.i

for.body97.lr.ph.i.i:                             ; preds = %for.cond88.preheader.i.i
  %pic_order_cnt1.i455.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 0, i32 3
  %1042 = ptrtoint ptr %pic_order_cnt1.i455.i.i to i32
  call void @__asan_load2_noabort(i32 %1042)
  %1043 = load i16, ptr %pic_order_cnt1.i455.i.i, align 2
  %pic_order_cnt1.1.i458.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 1, i32 3
  %pic_order_cnt1.2.i462.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 2, i32 3
  %pic_order_cnt1.3.i466.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 3, i32 3
  %pic_order_cnt1.4.i470.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 4, i32 3
  %pic_order_cnt1.5.i474.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 5, i32 3
  %pic_order_cnt1.6.i478.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 6, i32 3
  %pic_order_cnt1.7.i482.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 7, i32 3
  %pic_order_cnt1.8.i486.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 8, i32 3
  %pic_order_cnt1.9.i490.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 9, i32 3
  %pic_order_cnt1.10.i494.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 10, i32 3
  %pic_order_cnt1.11.i498.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 11, i32 3
  %pic_order_cnt1.12.i502.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 12, i32 3
  %pic_order_cnt1.13.i506.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 13, i32 3
  %pic_order_cnt1.14.i510.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 14, i32 3
  %pic_order_cnt1.15.i514.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 2, i32 15, i32 3
  br label %for.body97.i.i

for.body78.i.i:                                   ; preds = %find_ref_pic_index.exit454.i.i.for.body78.i.i_crit_edge, %for.body78.lr.ph.i.i
  %j.5575.i.i = phi i32 [ %j.4.lcssa.i.i, %for.body78.lr.ph.i.i ], [ %inc83.i.i, %find_ref_pic_index.exit454.i.i.for.body78.i.i_crit_edge ]
  %i.5574.i.i = phi i32 [ 0, %for.body78.lr.ph.i.i ], [ %inc86.i.i, %find_ref_pic_index.exit454.i.i.for.body78.i.i_crit_edge ]
  %arrayidx80.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 6, i32 %i.5574.i.i
  %1044 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load1_noabort(i32 %1044)
  %1045 = load i8, ptr %arrayidx80.i.i, align 1
  %1046 = zext i8 %1045 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1007, i16 %1046)
  %cmp3.i391.i.i = icmp eq i16 %1007, %1046
  br i1 %cmp3.i391.i.i, label %for.body78.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.i395.i.i

for.body78.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.body78.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.i395.i.i:                                 ; preds = %for.body78.i.i
  %1047 = ptrtoint ptr %pic_order_cnt1.1.i392.i.i to i32
  call void @__asan_load2_noabort(i32 %1047)
  %1048 = load i16, ptr %pic_order_cnt1.1.i392.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1048, i16 %1046)
  %cmp3.1.i394.i.i = icmp eq i16 %1048, %1046
  br i1 %cmp3.1.i394.i.i, label %for.inc.i395.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.1.i399.i.i

for.inc.i395.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.i395.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.1.i399.i.i:                               ; preds = %for.inc.i395.i.i
  %1049 = ptrtoint ptr %pic_order_cnt1.2.i396.i.i to i32
  call void @__asan_load2_noabort(i32 %1049)
  %1050 = load i16, ptr %pic_order_cnt1.2.i396.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1050, i16 %1046)
  %cmp3.2.i398.i.i = icmp eq i16 %1050, %1046
  br i1 %cmp3.2.i398.i.i, label %for.inc.1.i399.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.2.i403.i.i

for.inc.1.i399.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.1.i399.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.2.i403.i.i:                               ; preds = %for.inc.1.i399.i.i
  %1051 = ptrtoint ptr %pic_order_cnt1.3.i400.i.i to i32
  call void @__asan_load2_noabort(i32 %1051)
  %1052 = load i16, ptr %pic_order_cnt1.3.i400.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1052, i16 %1046)
  %cmp3.3.i402.i.i = icmp eq i16 %1052, %1046
  br i1 %cmp3.3.i402.i.i, label %for.inc.2.i403.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.3.i407.i.i

for.inc.2.i403.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.2.i403.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.3.i407.i.i:                               ; preds = %for.inc.2.i403.i.i
  %1053 = ptrtoint ptr %pic_order_cnt1.4.i404.i.i to i32
  call void @__asan_load2_noabort(i32 %1053)
  %1054 = load i16, ptr %pic_order_cnt1.4.i404.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1054, i16 %1046)
  %cmp3.4.i406.i.i = icmp eq i16 %1054, %1046
  br i1 %cmp3.4.i406.i.i, label %for.inc.3.i407.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.4.i411.i.i

for.inc.3.i407.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.3.i407.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.4.i411.i.i:                               ; preds = %for.inc.3.i407.i.i
  %1055 = ptrtoint ptr %pic_order_cnt1.5.i408.i.i to i32
  call void @__asan_load2_noabort(i32 %1055)
  %1056 = load i16, ptr %pic_order_cnt1.5.i408.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1056, i16 %1046)
  %cmp3.5.i410.i.i = icmp eq i16 %1056, %1046
  br i1 %cmp3.5.i410.i.i, label %for.inc.4.i411.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.5.i415.i.i

for.inc.4.i411.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.4.i411.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.5.i415.i.i:                               ; preds = %for.inc.4.i411.i.i
  %1057 = ptrtoint ptr %pic_order_cnt1.6.i412.i.i to i32
  call void @__asan_load2_noabort(i32 %1057)
  %1058 = load i16, ptr %pic_order_cnt1.6.i412.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1058, i16 %1046)
  %cmp3.6.i414.i.i = icmp eq i16 %1058, %1046
  br i1 %cmp3.6.i414.i.i, label %for.inc.5.i415.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.6.i419.i.i

for.inc.5.i415.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.5.i415.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.6.i419.i.i:                               ; preds = %for.inc.5.i415.i.i
  %1059 = ptrtoint ptr %pic_order_cnt1.7.i416.i.i to i32
  call void @__asan_load2_noabort(i32 %1059)
  %1060 = load i16, ptr %pic_order_cnt1.7.i416.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1060, i16 %1046)
  %cmp3.7.i418.i.i = icmp eq i16 %1060, %1046
  br i1 %cmp3.7.i418.i.i, label %for.inc.6.i419.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.7.i423.i.i

for.inc.6.i419.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.6.i419.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.7.i423.i.i:                               ; preds = %for.inc.6.i419.i.i
  %1061 = ptrtoint ptr %pic_order_cnt1.8.i420.i.i to i32
  call void @__asan_load2_noabort(i32 %1061)
  %1062 = load i16, ptr %pic_order_cnt1.8.i420.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1062, i16 %1046)
  %cmp3.8.i422.i.i = icmp eq i16 %1062, %1046
  br i1 %cmp3.8.i422.i.i, label %for.inc.7.i423.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.8.i427.i.i

for.inc.7.i423.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.7.i423.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.8.i427.i.i:                               ; preds = %for.inc.7.i423.i.i
  %1063 = ptrtoint ptr %pic_order_cnt1.9.i424.i.i to i32
  call void @__asan_load2_noabort(i32 %1063)
  %1064 = load i16, ptr %pic_order_cnt1.9.i424.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1064, i16 %1046)
  %cmp3.9.i426.i.i = icmp eq i16 %1064, %1046
  br i1 %cmp3.9.i426.i.i, label %for.inc.8.i427.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.9.i431.i.i

for.inc.8.i427.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.8.i427.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.9.i431.i.i:                               ; preds = %for.inc.8.i427.i.i
  %1065 = ptrtoint ptr %pic_order_cnt1.10.i428.i.i to i32
  call void @__asan_load2_noabort(i32 %1065)
  %1066 = load i16, ptr %pic_order_cnt1.10.i428.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1066, i16 %1046)
  %cmp3.10.i430.i.i = icmp eq i16 %1066, %1046
  br i1 %cmp3.10.i430.i.i, label %for.inc.9.i431.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.10.i435.i.i

for.inc.9.i431.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.9.i431.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.10.i435.i.i:                              ; preds = %for.inc.9.i431.i.i
  %1067 = ptrtoint ptr %pic_order_cnt1.11.i432.i.i to i32
  call void @__asan_load2_noabort(i32 %1067)
  %1068 = load i16, ptr %pic_order_cnt1.11.i432.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1068, i16 %1046)
  %cmp3.11.i434.i.i = icmp eq i16 %1068, %1046
  br i1 %cmp3.11.i434.i.i, label %for.inc.10.i435.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.11.i439.i.i

for.inc.10.i435.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.10.i435.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.11.i439.i.i:                              ; preds = %for.inc.10.i435.i.i
  %1069 = ptrtoint ptr %pic_order_cnt1.12.i436.i.i to i32
  call void @__asan_load2_noabort(i32 %1069)
  %1070 = load i16, ptr %pic_order_cnt1.12.i436.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1070, i16 %1046)
  %cmp3.12.i438.i.i = icmp eq i16 %1070, %1046
  br i1 %cmp3.12.i438.i.i, label %for.inc.11.i439.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.12.i443.i.i

for.inc.11.i439.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.11.i439.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.12.i443.i.i:                              ; preds = %for.inc.11.i439.i.i
  %1071 = ptrtoint ptr %pic_order_cnt1.13.i440.i.i to i32
  call void @__asan_load2_noabort(i32 %1071)
  %1072 = load i16, ptr %pic_order_cnt1.13.i440.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1072, i16 %1046)
  %cmp3.13.i442.i.i = icmp eq i16 %1072, %1046
  br i1 %cmp3.13.i442.i.i, label %for.inc.12.i443.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.13.i447.i.i

for.inc.12.i443.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.12.i443.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.13.i447.i.i:                              ; preds = %for.inc.12.i443.i.i
  %1073 = ptrtoint ptr %pic_order_cnt1.14.i444.i.i to i32
  call void @__asan_load2_noabort(i32 %1073)
  %1074 = load i16, ptr %pic_order_cnt1.14.i444.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1074, i16 %1046)
  %cmp3.14.i446.i.i = icmp eq i16 %1074, %1046
  br i1 %cmp3.14.i446.i.i, label %for.inc.13.i447.i.i.find_ref_pic_index.exit454.i.i_crit_edge, label %for.inc.14.i452.i.i

for.inc.13.i447.i.i.find_ref_pic_index.exit454.i.i_crit_edge: ; preds = %for.inc.13.i447.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit454.i.i

for.inc.14.i452.i.i:                              ; preds = %for.inc.13.i447.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %1075 = ptrtoint ptr %pic_order_cnt1.15.i448.i.i to i32
  call void @__asan_load2_noabort(i32 %1075)
  %1076 = load i16, ptr %pic_order_cnt1.15.i448.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1076, i16 %1046)
  %cmp3.15.i450.i.i = icmp eq i16 %1076, %1046
  %spec.select.i451.i.i = select i1 %cmp3.15.i450.i.i, i32 15, i32 0
  br label %find_ref_pic_index.exit454.i.i

find_ref_pic_index.exit454.i.i:                   ; preds = %for.inc.14.i452.i.i, %for.inc.13.i447.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.12.i443.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.11.i439.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.10.i435.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.9.i431.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.8.i427.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.7.i423.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.6.i419.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.5.i415.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.4.i411.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.3.i407.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.2.i403.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.1.i399.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.inc.i395.i.i.find_ref_pic_index.exit454.i.i_crit_edge, %for.body78.i.i.find_ref_pic_index.exit454.i.i_crit_edge
  %retval.0.i453.i.i = phi i32 [ 0, %for.body78.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 1, %for.inc.i395.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 2, %for.inc.1.i399.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 3, %for.inc.2.i403.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 4, %for.inc.3.i407.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 5, %for.inc.4.i411.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 6, %for.inc.5.i415.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 7, %for.inc.6.i419.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 8, %for.inc.7.i423.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 9, %for.inc.8.i427.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 10, %for.inc.9.i431.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 11, %for.inc.10.i435.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 12, %for.inc.11.i439.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 13, %for.inc.12.i443.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ 14, %for.inc.13.i447.i.i.find_ref_pic_index.exit454.i.i_crit_edge ], [ %spec.select.i451.i.i, %for.inc.14.i452.i.i ]
  %inc83.i.i = add nuw nsw i32 %j.5575.i.i, 1
  %arrayidx84.i.i = getelementptr [16 x i32], ptr %list1.i.i, i32 0, i32 %j.5575.i.i
  %1077 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store4_noabort(i32 %1077)
  store i32 %retval.0.i453.i.i, ptr %arrayidx84.i.i, align 4
  %inc86.i.i = add nuw nsw i32 %i.5574.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc86.i.i, i32 %conv.i.i)
  %cmp72.i.i = icmp ult i32 %inc86.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.5575.i.i)
  %cmp75.i.i = icmp ult i32 %j.5575.i.i, 15
  %or.cond189.i.i = select i1 %cmp72.i.i, i1 %cmp75.i.i, i1 false
  br i1 %or.cond189.i.i, label %find_ref_pic_index.exit454.i.i.for.body78.i.i_crit_edge, label %find_ref_pic_index.exit454.i.i.for.cond88.preheader.i.i_crit_edge

find_ref_pic_index.exit454.i.i.for.cond88.preheader.i.i_crit_edge: ; preds = %find_ref_pic_index.exit454.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond88.preheader.i.i

find_ref_pic_index.exit454.i.i.for.body78.i.i_crit_edge: ; preds = %find_ref_pic_index.exit454.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body78.i.i

while.cond107.preheader.i.i:                      ; preds = %find_ref_pic_index.exit520.i.i.while.cond107.preheader.i.i_crit_edge, %for.cond88.preheader.i.i.while.cond107.preheader.i.i_crit_edge
  %j.6.lcssa.i.i = phi i32 [ %j.5.lcssa.i.i, %for.cond88.preheader.i.i.while.cond107.preheader.i.i_crit_edge ], [ %inc102.i.i, %find_ref_pic_index.exit520.i.i.while.cond107.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.6.lcssa.i.i)
  %cmp108583.i.i = icmp ult i32 %j.6.lcssa.i.i, 16
  br i1 %cmp108583.i.i, label %while.body110.preheader.i.i, label %while.cond107.preheader.i.i.for.cond116.preheader.i.i_crit_edge

while.cond107.preheader.i.i.for.cond116.preheader.i.i_crit_edge: ; preds = %while.cond107.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond116.preheader.i.i

while.body110.preheader.i.i:                      ; preds = %while.cond107.preheader.i.i
  %1078 = sub nuw nsw i32 16, %j.6.lcssa.i.i
  br label %while.body110.i.i

for.body97.i.i:                                   ; preds = %find_ref_pic_index.exit520.i.i.for.body97.i.i_crit_edge, %for.body97.lr.ph.i.i
  %j.6581.i.i = phi i32 [ %j.5.lcssa.i.i, %for.body97.lr.ph.i.i ], [ %inc102.i.i, %find_ref_pic_index.exit520.i.i.for.body97.i.i_crit_edge ]
  %i.6580.i.i = phi i32 [ 0, %for.body97.lr.ph.i.i ], [ %inc105.i.i, %find_ref_pic_index.exit520.i.i.for.body97.i.i_crit_edge ]
  %arrayidx99.i.i = getelementptr %struct.v4l2_ctrl_hevc_decode_params, ptr %879, i32 0, i32 8, i32 %i.6580.i.i
  %1079 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_load1_noabort(i32 %1079)
  %1080 = load i8, ptr %arrayidx99.i.i, align 1
  %1081 = zext i8 %1080 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1043, i16 %1081)
  %cmp3.i457.i.i = icmp eq i16 %1043, %1081
  br i1 %cmp3.i457.i.i, label %for.body97.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.i461.i.i

for.body97.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.body97.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.i461.i.i:                                 ; preds = %for.body97.i.i
  %1082 = ptrtoint ptr %pic_order_cnt1.1.i458.i.i to i32
  call void @__asan_load2_noabort(i32 %1082)
  %1083 = load i16, ptr %pic_order_cnt1.1.i458.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1083, i16 %1081)
  %cmp3.1.i460.i.i = icmp eq i16 %1083, %1081
  br i1 %cmp3.1.i460.i.i, label %for.inc.i461.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.1.i465.i.i

for.inc.i461.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.i461.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.1.i465.i.i:                               ; preds = %for.inc.i461.i.i
  %1084 = ptrtoint ptr %pic_order_cnt1.2.i462.i.i to i32
  call void @__asan_load2_noabort(i32 %1084)
  %1085 = load i16, ptr %pic_order_cnt1.2.i462.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1085, i16 %1081)
  %cmp3.2.i464.i.i = icmp eq i16 %1085, %1081
  br i1 %cmp3.2.i464.i.i, label %for.inc.1.i465.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.2.i469.i.i

for.inc.1.i465.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.1.i465.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.2.i469.i.i:                               ; preds = %for.inc.1.i465.i.i
  %1086 = ptrtoint ptr %pic_order_cnt1.3.i466.i.i to i32
  call void @__asan_load2_noabort(i32 %1086)
  %1087 = load i16, ptr %pic_order_cnt1.3.i466.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1087, i16 %1081)
  %cmp3.3.i468.i.i = icmp eq i16 %1087, %1081
  br i1 %cmp3.3.i468.i.i, label %for.inc.2.i469.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.3.i473.i.i

for.inc.2.i469.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.2.i469.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.3.i473.i.i:                               ; preds = %for.inc.2.i469.i.i
  %1088 = ptrtoint ptr %pic_order_cnt1.4.i470.i.i to i32
  call void @__asan_load2_noabort(i32 %1088)
  %1089 = load i16, ptr %pic_order_cnt1.4.i470.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1089, i16 %1081)
  %cmp3.4.i472.i.i = icmp eq i16 %1089, %1081
  br i1 %cmp3.4.i472.i.i, label %for.inc.3.i473.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.4.i477.i.i

for.inc.3.i473.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.3.i473.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.4.i477.i.i:                               ; preds = %for.inc.3.i473.i.i
  %1090 = ptrtoint ptr %pic_order_cnt1.5.i474.i.i to i32
  call void @__asan_load2_noabort(i32 %1090)
  %1091 = load i16, ptr %pic_order_cnt1.5.i474.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1091, i16 %1081)
  %cmp3.5.i476.i.i = icmp eq i16 %1091, %1081
  br i1 %cmp3.5.i476.i.i, label %for.inc.4.i477.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.5.i481.i.i

for.inc.4.i477.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.4.i477.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.5.i481.i.i:                               ; preds = %for.inc.4.i477.i.i
  %1092 = ptrtoint ptr %pic_order_cnt1.6.i478.i.i to i32
  call void @__asan_load2_noabort(i32 %1092)
  %1093 = load i16, ptr %pic_order_cnt1.6.i478.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1093, i16 %1081)
  %cmp3.6.i480.i.i = icmp eq i16 %1093, %1081
  br i1 %cmp3.6.i480.i.i, label %for.inc.5.i481.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.6.i485.i.i

for.inc.5.i481.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.5.i481.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.6.i485.i.i:                               ; preds = %for.inc.5.i481.i.i
  %1094 = ptrtoint ptr %pic_order_cnt1.7.i482.i.i to i32
  call void @__asan_load2_noabort(i32 %1094)
  %1095 = load i16, ptr %pic_order_cnt1.7.i482.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1095, i16 %1081)
  %cmp3.7.i484.i.i = icmp eq i16 %1095, %1081
  br i1 %cmp3.7.i484.i.i, label %for.inc.6.i485.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.7.i489.i.i

for.inc.6.i485.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.6.i485.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.7.i489.i.i:                               ; preds = %for.inc.6.i485.i.i
  %1096 = ptrtoint ptr %pic_order_cnt1.8.i486.i.i to i32
  call void @__asan_load2_noabort(i32 %1096)
  %1097 = load i16, ptr %pic_order_cnt1.8.i486.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1097, i16 %1081)
  %cmp3.8.i488.i.i = icmp eq i16 %1097, %1081
  br i1 %cmp3.8.i488.i.i, label %for.inc.7.i489.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.8.i493.i.i

for.inc.7.i489.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.7.i489.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.8.i493.i.i:                               ; preds = %for.inc.7.i489.i.i
  %1098 = ptrtoint ptr %pic_order_cnt1.9.i490.i.i to i32
  call void @__asan_load2_noabort(i32 %1098)
  %1099 = load i16, ptr %pic_order_cnt1.9.i490.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1099, i16 %1081)
  %cmp3.9.i492.i.i = icmp eq i16 %1099, %1081
  br i1 %cmp3.9.i492.i.i, label %for.inc.8.i493.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.9.i497.i.i

for.inc.8.i493.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.8.i493.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.9.i497.i.i:                               ; preds = %for.inc.8.i493.i.i
  %1100 = ptrtoint ptr %pic_order_cnt1.10.i494.i.i to i32
  call void @__asan_load2_noabort(i32 %1100)
  %1101 = load i16, ptr %pic_order_cnt1.10.i494.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1101, i16 %1081)
  %cmp3.10.i496.i.i = icmp eq i16 %1101, %1081
  br i1 %cmp3.10.i496.i.i, label %for.inc.9.i497.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.10.i501.i.i

for.inc.9.i497.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.9.i497.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.10.i501.i.i:                              ; preds = %for.inc.9.i497.i.i
  %1102 = ptrtoint ptr %pic_order_cnt1.11.i498.i.i to i32
  call void @__asan_load2_noabort(i32 %1102)
  %1103 = load i16, ptr %pic_order_cnt1.11.i498.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1103, i16 %1081)
  %cmp3.11.i500.i.i = icmp eq i16 %1103, %1081
  br i1 %cmp3.11.i500.i.i, label %for.inc.10.i501.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.11.i505.i.i

for.inc.10.i501.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.10.i501.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.11.i505.i.i:                              ; preds = %for.inc.10.i501.i.i
  %1104 = ptrtoint ptr %pic_order_cnt1.12.i502.i.i to i32
  call void @__asan_load2_noabort(i32 %1104)
  %1105 = load i16, ptr %pic_order_cnt1.12.i502.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1105, i16 %1081)
  %cmp3.12.i504.i.i = icmp eq i16 %1105, %1081
  br i1 %cmp3.12.i504.i.i, label %for.inc.11.i505.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.12.i509.i.i

for.inc.11.i505.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.11.i505.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.12.i509.i.i:                              ; preds = %for.inc.11.i505.i.i
  %1106 = ptrtoint ptr %pic_order_cnt1.13.i506.i.i to i32
  call void @__asan_load2_noabort(i32 %1106)
  %1107 = load i16, ptr %pic_order_cnt1.13.i506.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1107, i16 %1081)
  %cmp3.13.i508.i.i = icmp eq i16 %1107, %1081
  br i1 %cmp3.13.i508.i.i, label %for.inc.12.i509.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.13.i513.i.i

for.inc.12.i509.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.12.i509.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.13.i513.i.i:                              ; preds = %for.inc.12.i509.i.i
  %1108 = ptrtoint ptr %pic_order_cnt1.14.i510.i.i to i32
  call void @__asan_load2_noabort(i32 %1108)
  %1109 = load i16, ptr %pic_order_cnt1.14.i510.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1109, i16 %1081)
  %cmp3.14.i512.i.i = icmp eq i16 %1109, %1081
  br i1 %cmp3.14.i512.i.i, label %for.inc.13.i513.i.i.find_ref_pic_index.exit520.i.i_crit_edge, label %for.inc.14.i518.i.i

for.inc.13.i513.i.i.find_ref_pic_index.exit520.i.i_crit_edge: ; preds = %for.inc.13.i513.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_ref_pic_index.exit520.i.i

for.inc.14.i518.i.i:                              ; preds = %for.inc.13.i513.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %1110 = ptrtoint ptr %pic_order_cnt1.15.i514.i.i to i32
  call void @__asan_load2_noabort(i32 %1110)
  %1111 = load i16, ptr %pic_order_cnt1.15.i514.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1111, i16 %1081)
  %cmp3.15.i516.i.i = icmp eq i16 %1111, %1081
  %spec.select.i517.i.i = select i1 %cmp3.15.i516.i.i, i32 15, i32 0
  br label %find_ref_pic_index.exit520.i.i

find_ref_pic_index.exit520.i.i:                   ; preds = %for.inc.14.i518.i.i, %for.inc.13.i513.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.12.i509.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.11.i505.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.10.i501.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.9.i497.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.8.i493.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.7.i489.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.6.i485.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.5.i481.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.4.i477.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.3.i473.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.2.i469.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.1.i465.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.inc.i461.i.i.find_ref_pic_index.exit520.i.i_crit_edge, %for.body97.i.i.find_ref_pic_index.exit520.i.i_crit_edge
  %retval.0.i519.i.i = phi i32 [ 0, %for.body97.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 1, %for.inc.i461.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 2, %for.inc.1.i465.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 3, %for.inc.2.i469.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 4, %for.inc.3.i473.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 5, %for.inc.4.i477.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 6, %for.inc.5.i481.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 7, %for.inc.6.i485.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 8, %for.inc.7.i489.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 9, %for.inc.8.i493.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 10, %for.inc.9.i497.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 11, %for.inc.10.i501.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 12, %for.inc.11.i505.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 13, %for.inc.12.i509.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ 14, %for.inc.13.i513.i.i.find_ref_pic_index.exit520.i.i_crit_edge ], [ %spec.select.i517.i.i, %for.inc.14.i518.i.i ]
  %inc102.i.i = add nuw nsw i32 %j.6581.i.i, 1
  %arrayidx103.i.i = getelementptr [16 x i32], ptr %list1.i.i, i32 0, i32 %j.6581.i.i
  %1112 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store4_noabort(i32 %1112)
  store i32 %retval.0.i519.i.i, ptr %arrayidx103.i.i, align 4
  %inc105.i.i = add nuw nsw i32 %i.6580.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc105.i.i, i32 %conv28.i.i)
  %cmp91.i.i = icmp ult i32 %inc105.i.i, %conv28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.6581.i.i)
  %cmp94.i.i = icmp ult i32 %j.6581.i.i, 15
  %or.cond190.i.i = select i1 %cmp91.i.i, i1 %cmp94.i.i, i1 false
  br i1 %or.cond190.i.i, label %find_ref_pic_index.exit520.i.i.for.body97.i.i_crit_edge, label %find_ref_pic_index.exit520.i.i.while.cond107.preheader.i.i_crit_edge

find_ref_pic_index.exit520.i.i.while.cond107.preheader.i.i_crit_edge: ; preds = %find_ref_pic_index.exit520.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond107.preheader.i.i

find_ref_pic_index.exit520.i.i.for.body97.i.i_crit_edge: ; preds = %find_ref_pic_index.exit520.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body97.i.i

for.cond116.preheader.i.i:                        ; preds = %while.body110.i.i.for.cond116.preheader.i.i_crit_edge, %while.cond107.preheader.i.i.for.cond116.preheader.i.i_crit_edge
  %dec_base.i.i.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %877, i32 0, i32 11
  br label %for.body119.i.i

while.body110.i.i:                                ; preds = %while.body110.i.i.while.body110.i.i_crit_edge, %while.body110.preheader.i.i
  %j.7585.i.i = phi i32 [ %inc113.i.i, %while.body110.i.i.while.body110.i.i_crit_edge ], [ %j.6.lcssa.i.i, %while.body110.preheader.i.i ]
  %i.7584.i.i = phi i32 [ %inc111.i.i, %while.body110.i.i.while.body110.i.i_crit_edge ], [ 0, %while.body110.preheader.i.i ]
  %inc111.i.i = add nuw nsw i32 %i.7584.i.i, 1
  %arrayidx112.i.i = getelementptr [16 x i32], ptr %list1.i.i, i32 0, i32 %i.7584.i.i
  %1113 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load i32, ptr %arrayidx112.i.i, align 4
  %inc113.i.i = add nuw nsw i32 %j.7585.i.i, 1
  %arrayidx114.i.i = getelementptr [16 x i32], ptr %list1.i.i, i32 0, i32 %j.7585.i.i
  %1115 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_store4_noabort(i32 %1115)
  store i32 %1114, ptr %arrayidx114.i.i, align 4
  %exitcond590.not.i.i = icmp eq i32 %inc111.i.i, %1078
  br i1 %exitcond590.not.i.i, label %while.body110.i.i.for.cond116.preheader.i.i_crit_edge, label %while.body110.i.i.while.body110.i.i_crit_edge

while.body110.i.i.while.body110.i.i_crit_edge:    ; preds = %while.body110.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body110.i.i

while.body110.i.i.for.cond116.preheader.i.i_crit_edge: ; preds = %while.body110.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond116.preheader.i.i

for.body119.i.i:                                  ; preds = %hantro_reg_write.exit543.i.i.for.body119.i.i_crit_edge, %for.cond116.preheader.i.i
  %i.8586.i.i = phi i32 [ 0, %for.cond116.preheader.i.i ], [ %inc125.i.i, %hantro_reg_write.exit543.i.i.for.body119.i.i_crit_edge ]
  %arrayidx120.i.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref_pic_list.ref_pic_regs0, i32 0, i32 %i.8586.i.i
  %arrayidx121.i.i = getelementptr [16 x i32], ptr %list0.i.i, i32 0, i32 %i.8586.i.i
  %1116 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load i32, ptr %arrayidx121.i.i, align 4
  %1118 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load i32, ptr %arrayidx120.i.i, align 4
  %1120 = ptrtoint ptr %dec_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %dec_base.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %1121, i32 %1119
  %1122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !43
  %1123 = tail call i32 @llvm.bswap.i32(i32 %1122) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1124 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i.i = and i32 %1124, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.body119.i.i.vdpu_read_mask.exit.i.i.i_crit_edge, label %do.end.i.i.i.i.i

for.body119.i.i.vdpu_read_mask.exit.i.i.i_crit_edge: ; preds = %for.body119.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %for.body119.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i.i.i = lshr i32 %1119, 2
  %call4.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef %div9.i.i.i.i.i, i32 noundef %1123) #8
  br label %vdpu_read_mask.exit.i.i.i

vdpu_read_mask.exit.i.i.i:                        ; preds = %do.end.i.i.i.i.i, %for.body119.i.i.vdpu_read_mask.exit.i.i.i_crit_edge
  %mask.i.i.i.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref_pic_list.ref_pic_regs0, i32 0, i32 %i.8586.i.i, i32 2
  %1125 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load i32, ptr %mask.i.i.i.i, align 4
  %shift.i.i.i.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref_pic_list.ref_pic_regs0, i32 0, i32 %i.8586.i.i, i32 1
  %1127 = ptrtoint ptr %shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load i32, ptr %shift.i.i.i.i, align 4
  %shl.i.i.i.i = shl i32 %1126, %1128
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %and.i.i.i339.i = and i32 %1123, %neg.i.i.i.i
  %and2.i.i.i.i = and i32 %1126, %1117
  %shl4.i.i.i.i = shl i32 %and2.i.i.i.i, %1128
  %or.i.i.i.i = or i32 %and.i.i.i339.i, %shl4.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1129 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i.i = and i32 %1129, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i.i)
  %tobool.not.i.i.i340.i = icmp eq i32 %and.i3.i.i.i, 0
  br i1 %tobool.not.i.i.i340.i, label %vdpu_read_mask.exit.i.i.i.hantro_reg_write.exit.i.i_crit_edge, label %do.end.i.i.i341.i

vdpu_read_mask.exit.i.i.i.hantro_reg_write.exit.i.i_crit_edge: ; preds = %vdpu_read_mask.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i.i

do.end.i.i.i341.i:                                ; preds = %vdpu_read_mask.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i.i.i = lshr i32 %1119, 2
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef %div5.i.i.i.i, i32 noundef %or.i.i.i.i) #8
  br label %hantro_reg_write.exit.i.i

hantro_reg_write.exit.i.i:                        ; preds = %do.end.i.i.i341.i, %vdpu_read_mask.exit.i.i.i.hantro_reg_write.exit.i.i_crit_edge
  %1130 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #5
  %1131 = ptrtoint ptr %dec_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load ptr, ptr %dec_base.i.i.i.i.i, align 8
  %add.ptr.i.i.i342.i = getelementptr i8, ptr %1132, i32 %1119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i342.i, i32 %1130) #5, !srcloc !45
  %arrayidx122.i.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref_pic_list.ref_pic_regs1, i32 0, i32 %i.8586.i.i
  %arrayidx123.i.i = getelementptr [16 x i32], ptr %list1.i.i, i32 0, i32 %i.8586.i.i
  %1133 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_load4_noabort(i32 %1133)
  %1134 = load i32, ptr %arrayidx123.i.i, align 4
  %1135 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load i32, ptr %arrayidx122.i.i, align 4
  %1137 = ptrtoint ptr %dec_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load ptr, ptr %dec_base.i.i.i.i.i, align 8
  %add.ptr.i.i.i522.i.i = getelementptr i8, ptr %1138, i32 %1136
  %1139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i522.i.i) #5, !srcloc !43
  %1140 = tail call i32 @llvm.bswap.i32(i32 %1139) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1141 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i523.i.i = and i32 %1141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i523.i.i)
  %tobool.not.i.i.i524.i.i = icmp eq i32 %and.i.i.i523.i.i, 0
  br i1 %tobool.not.i.i.i524.i.i, label %hantro_reg_write.exit.i.i.vdpu_read_mask.exit.i538.i.i_crit_edge, label %do.end.i.i.i527.i.i

hantro_reg_write.exit.i.i.vdpu_read_mask.exit.i538.i.i_crit_edge: ; preds = %hantro_reg_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i538.i.i

do.end.i.i.i527.i.i:                              ; preds = %hantro_reg_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i525.i.i = lshr i32 %1136, 2
  %call4.i.i.i526.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef %div9.i.i.i525.i.i, i32 noundef %1140) #8
  br label %vdpu_read_mask.exit.i538.i.i

vdpu_read_mask.exit.i538.i.i:                     ; preds = %do.end.i.i.i527.i.i, %hantro_reg_write.exit.i.i.vdpu_read_mask.exit.i538.i.i_crit_edge
  %mask.i.i528.i.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref_pic_list.ref_pic_regs1, i32 0, i32 %i.8586.i.i, i32 2
  %1142 = ptrtoint ptr %mask.i.i528.i.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %mask.i.i528.i.i, align 4
  %shift.i.i529.i.i = getelementptr [16 x %struct.hantro_reg], ptr @set_ref_pic_list.ref_pic_regs1, i32 0, i32 %i.8586.i.i, i32 1
  %1144 = ptrtoint ptr %shift.i.i529.i.i to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load i32, ptr %shift.i.i529.i.i, align 4
  %shl.i.i530.i.i = shl i32 %1143, %1145
  %neg.i.i531.i.i = xor i32 %shl.i.i530.i.i, -1
  %and.i.i532.i.i = and i32 %1140, %neg.i.i531.i.i
  %and2.i.i533.i.i = and i32 %1143, %1134
  %shl4.i.i534.i.i = shl i32 %and2.i.i533.i.i, %1145
  %or.i.i535.i.i = or i32 %and.i.i532.i.i, %shl4.i.i534.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1146 = load i32, ptr @hantro_debug, align 4
  %and.i3.i536.i.i = and i32 %1146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i536.i.i)
  %tobool.not.i.i537.i.i = icmp eq i32 %and.i3.i536.i.i, 0
  br i1 %tobool.not.i.i537.i.i, label %vdpu_read_mask.exit.i538.i.i.hantro_reg_write.exit543.i.i_crit_edge, label %do.end.i.i541.i.i

vdpu_read_mask.exit.i538.i.i.hantro_reg_write.exit543.i.i_crit_edge: ; preds = %vdpu_read_mask.exit.i538.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit543.i.i

do.end.i.i541.i.i:                                ; preds = %vdpu_read_mask.exit.i538.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i539.i.i = lshr i32 %1136, 2
  %call.i.i540.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef %div5.i.i539.i.i, i32 noundef %or.i.i535.i.i) #8
  br label %hantro_reg_write.exit543.i.i

hantro_reg_write.exit543.i.i:                     ; preds = %do.end.i.i541.i.i, %vdpu_read_mask.exit.i538.i.i.hantro_reg_write.exit543.i.i_crit_edge
  %1147 = tail call i32 @llvm.bswap.i32(i32 %or.i.i535.i.i) #5
  %1148 = ptrtoint ptr %dec_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %dec_base.i.i.i.i.i, align 8
  %add.ptr.i.i542.i.i = getelementptr i8, ptr %1149, i32 %1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i542.i.i, i32 %1147) #5, !srcloc !45
  %inc125.i.i = add nuw nsw i32 %i.8586.i.i, 1
  %exitcond591.not.i.i = icmp eq i32 %inc125.i.i, 16
  br i1 %exitcond591.not.i.i, label %set_ref_pic_list.exit.i, label %hantro_reg_write.exit543.i.i.for.body119.i.i_crit_edge

hantro_reg_write.exit543.i.i.for.body119.i.i_crit_edge: ; preds = %hantro_reg_write.exit543.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body119.i.i

set_ref_pic_list.exit.i:                          ; preds = %hantro_reg_write.exit543.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %list1.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %list0.i.i) #5
  %ref_bufs_used.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 5
  %1150 = ptrtoint ptr %ref_bufs_used.i to i32
  call void @__asan_store4_noabort(i32 %1150)
  store i32 0, ptr %ref_bufs_used.i, align 4
  %1151 = ptrtoint ptr %num_active_dpb_entries.i to i32
  call void @__asan_load1_noabort(i32 %1151)
  %1152 = load i8, ptr %num_active_dpb_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1152)
  %cmp52471.not.i = icmp eq i8 %1152, 0
  br i1 %cmp52471.not.i, label %set_ref_pic_list.exit.i.for.end85.i_crit_edge, label %set_ref_pic_list.exit.i.for.body58.i_crit_edge

set_ref_pic_list.exit.i.for.body58.i_crit_edge:   ; preds = %set_ref_pic_list.exit.i
  br label %for.body58.i

set_ref_pic_list.exit.i.for.end85.i_crit_edge:    ; preds = %set_ref_pic_list.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85.i

for.body58.i:                                     ; preds = %hantro_write_addr.exit363.i.for.body58.i_crit_edge, %set_ref_pic_list.exit.i.for.body58.i_crit_edge
  %i.3473.i = phi i32 [ %inc84.i, %hantro_write_addr.exit363.i.for.body58.i_crit_edge ], [ 0, %set_ref_pic_list.exit.i.for.body58.i_crit_edge ]
  %dpb_longterm_e.0472.i = phi i16 [ %dpb_longterm_e.1.i, %hantro_write_addr.exit363.i.for.body58.i_crit_edge ], [ 0, %set_ref_pic_list.exit.i.for.body58.i_crit_edge ]
  %pic_order_cnt60.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb5.i, i32 %i.3473.i, i32 3
  %1153 = ptrtoint ptr %pic_order_cnt60.i to i32
  call void @__asan_load2_noabort(i32 %1153)
  %1154 = load i16, ptr %pic_order_cnt60.i, align 2
  %conv62.i = zext i16 %1154 to i32
  %call63.i = tail call i32 @hantro_hevc_get_ref_buf(ptr noundef %ctx, i32 noundef %conv62.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %for.body58.i.cleanup_crit_edge, label %if.end66.i

for.body58.i.cleanup_crit_edge:                   ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end66.i:                                       ; preds = %for.body58.i
  %add67.i = add i32 %call63.i, %call.i
  %add68.i = add i32 %call63.i, %call6.i
  %rps.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb5.i, i32 %i.3473.i, i32 1
  %1155 = ptrtoint ptr %rps.i to i32
  call void @__asan_load1_noabort(i32 %1155)
  %1156 = load i8, ptr %rps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1156)
  %cmp71.i = icmp eq i8 %1156, 3
  %sub74.i = sub nuw nsw i32 15, %i.3473.i
  %shl.i82 = shl nuw nsw i32 1, %sub74.i
  %1157 = trunc i32 %shl.i82 to i16
  %conv76.i = select i1 %cmp71.i, i16 %1157, i16 0
  %dpb_longterm_e.1.i = or i16 %conv76.i, %dpb_longterm_e.0472.i
  %mul.i83 = shl nuw nsw i32 %i.3473.i, 3
  %add78.i = add nuw nsw i32 %mul.i83, 268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1158 = load i32, ptr @hantro_debug, align 4
  %and.i.i343.i = and i32 %1158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i343.i)
  %tobool.not.i.i344.i = icmp eq i32 %and.i.i343.i, 0
  br i1 %tobool.not.i.i344.i, label %if.end66.i.hantro_write_addr.exit.i_crit_edge, label %do.end.i.i346.i

if.end66.i.hantro_write_addr.exit.i_crit_edge:    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i

do.end.i.i346.i:                                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i.i = lshr exact i32 %add78.i, 2
  %call.i.i345.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i.i, i32 noundef %call63.i) #8
  br label %hantro_write_addr.exit.i

hantro_write_addr.exit.i:                         ; preds = %do.end.i.i346.i, %if.end66.i.hantro_write_addr.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1159 = tail call i32 @llvm.bswap.i32(i32 %call63.i) #5
  %1160 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i347.i = getelementptr i8, ptr %1161, i32 %add78.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i347.i, i32 %1159) #5, !srcloc !45
  %add80.i = add nuw nsw i32 %mul.i83, 404
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1162 = load i32, ptr @hantro_debug, align 4
  %and.i.i348.i = and i32 %1162, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i348.i)
  %tobool.not.i.i349.i = icmp eq i32 %and.i.i348.i, 0
  br i1 %tobool.not.i.i349.i, label %hantro_write_addr.exit.i.hantro_write_addr.exit355.i_crit_edge, label %do.end.i.i352.i

hantro_write_addr.exit.i.hantro_write_addr.exit355.i_crit_edge: ; preds = %hantro_write_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit355.i

do.end.i.i352.i:                                  ; preds = %hantro_write_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i350.i = lshr exact i32 %add80.i, 2
  %call.i.i351.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i350.i, i32 noundef %add67.i) #8
  br label %hantro_write_addr.exit355.i

hantro_write_addr.exit355.i:                      ; preds = %do.end.i.i352.i, %hantro_write_addr.exit.i.hantro_write_addr.exit355.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1163 = tail call i32 @llvm.bswap.i32(i32 %add67.i) #5
  %1164 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i354.i = getelementptr i8, ptr %1165, i32 %add80.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i354.i, i32 %1163) #5, !srcloc !45
  %add82.i = add nuw nsw i32 %mul.i83, 540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1166 = load i32, ptr @hantro_debug, align 4
  %and.i.i356.i = and i32 %1166, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i356.i)
  %tobool.not.i.i357.i = icmp eq i32 %and.i.i356.i, 0
  br i1 %tobool.not.i.i357.i, label %hantro_write_addr.exit355.i.hantro_write_addr.exit363.i_crit_edge, label %do.end.i.i360.i

hantro_write_addr.exit355.i.hantro_write_addr.exit363.i_crit_edge: ; preds = %hantro_write_addr.exit355.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit363.i

do.end.i.i360.i:                                  ; preds = %hantro_write_addr.exit355.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i358.i = lshr exact i32 %add82.i, 2
  %call.i.i359.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i358.i, i32 noundef %add68.i) #8
  br label %hantro_write_addr.exit363.i

hantro_write_addr.exit363.i:                      ; preds = %do.end.i.i360.i, %hantro_write_addr.exit355.i.hantro_write_addr.exit363.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1167 = tail call i32 @llvm.bswap.i32(i32 %add68.i) #5
  %1168 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i362.i = getelementptr i8, ptr %1169, i32 %add82.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i362.i, i32 %1167) #5, !srcloc !45
  %inc84.i = add nuw nsw i32 %i.3473.i, 1
  %1170 = ptrtoint ptr %num_active_dpb_entries.i to i32
  call void @__asan_load1_noabort(i32 %1170)
  %1171 = load i8, ptr %num_active_dpb_entries.i, align 4
  %conv51.i = zext i8 %1171 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc84.i, i32 %conv51.i)
  %cmp52.i = icmp ult i32 %inc84.i, %conv51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.3473.i)
  %cmp55.i = icmp ult i32 %i.3473.i, 14
  %or.cond226.i = and i1 %cmp55.i, %cmp52.i
  br i1 %or.cond226.i, label %hantro_write_addr.exit363.i.for.body58.i_crit_edge, label %for.end85.loopexit.i

hantro_write_addr.exit363.i.for.body58.i_crit_edge: ; preds = %hantro_write_addr.exit363.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body58.i

for.end85.loopexit.i:                             ; preds = %hantro_write_addr.exit363.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast.i = zext i16 %dpb_longterm_e.1.i to i32
  %phi.bo.i = shl nuw i32 %phi.cast.i, 16
  br label %for.end85.i

for.end85.i:                                      ; preds = %for.end85.loopexit.i, %set_ref_pic_list.exit.i.for.end85.i_crit_edge
  %dpb_longterm_e.0.lcssa.i = phi i32 [ 0, %set_ref_pic_list.exit.i.for.end85.i_crit_edge ], [ %phi.bo.i, %for.end85.loopexit.i ]
  %i.3.lcssa.i = phi i32 [ 0, %set_ref_pic_list.exit.i.for.end85.i_crit_edge ], [ %inc84.i, %for.end85.loopexit.i ]
  %m2m_ctx.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %1172 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %m2m_ctx.i.i, align 4
  %cap_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1173, i32 0, i32 7
  %call.i.i364.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i.i) #5
  %vpu_dst_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %1174 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %1175) #5
  br i1 %call.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %postproc.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i364.i, i32 0, i32 1
  %1176 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load i32, ptr %index.i.i, align 4
  %dma.i.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i, i32 0, i32 %1177, i32 1
  br label %hantro_get_dec_buf_addr.exit.i

if.end.i.i:                                       ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i365.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i364.i, i32 noundef 0) #5
  br label %hantro_get_dec_buf_addr.exit.i

hantro_get_dec_buf_addr.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %dma.i.i, %if.then.i.i ], [ %call.i.i365.i, %if.end.i.i ]
  %1178 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1178)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool91.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool91.not.i, label %hantro_get_dec_buf_addr.exit.i.cleanup_crit_edge, label %if.end93.i

hantro_get_dec_buf_addr.exit.i.cleanup_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end93.i:                                       ; preds = %hantro_get_dec_buf_addr.exit.i
  %1179 = ptrtoint ptr %777 to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load i32, ptr %777, align 8
  %call95.i = tail call i32 @hantro_hevc_add_ref_buf(ptr noundef %ctx, i32 noundef %1180, i32 noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end98.i, label %if.end93.i.cleanup_crit_edge

if.end93.i.cleanup_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end98.i:                                       ; preds = %if.end93.i
  %add99.i = add i32 %retval.0.i.i, %call.i
  %add100.i = add i32 %retval.0.i.i, %call6.i
  %mul101.i = shl i32 %i.3.lcssa.i, 3
  %add102.i = add i32 %mul101.i, 268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1181 = load i32, ptr @hantro_debug, align 4
  %and.i.i366.i = and i32 %1181, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i366.i)
  %tobool.not.i.i367.i = icmp eq i32 %and.i.i366.i, 0
  br i1 %tobool.not.i.i367.i, label %if.end98.i.hantro_write_addr.exit373.i_crit_edge, label %do.end.i.i370.i

if.end98.i.hantro_write_addr.exit373.i_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit373.i

do.end.i.i370.i:                                  ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i368.i = lshr exact i32 %add102.i, 2
  %call.i.i369.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i368.i, i32 noundef %retval.0.i.i) #8
  br label %hantro_write_addr.exit373.i

hantro_write_addr.exit373.i:                      ; preds = %do.end.i.i370.i, %if.end98.i.hantro_write_addr.exit373.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1182 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #5
  %1183 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1183)
  %1184 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i372.i = getelementptr i8, ptr %1184, i32 %add102.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i372.i, i32 %1182) #5, !srcloc !45
  %add104.i = add i32 %mul101.i, 404
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1185 = load i32, ptr @hantro_debug, align 4
  %and.i.i374.i = and i32 %1185, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i374.i)
  %tobool.not.i.i375.i = icmp eq i32 %and.i.i374.i, 0
  br i1 %tobool.not.i.i375.i, label %hantro_write_addr.exit373.i.hantro_write_addr.exit381.i_crit_edge, label %do.end.i.i378.i

hantro_write_addr.exit373.i.hantro_write_addr.exit381.i_crit_edge: ; preds = %hantro_write_addr.exit373.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit381.i

do.end.i.i378.i:                                  ; preds = %hantro_write_addr.exit373.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i376.i = lshr exact i32 %add104.i, 2
  %call.i.i377.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i376.i, i32 noundef %add99.i) #8
  br label %hantro_write_addr.exit381.i

hantro_write_addr.exit381.i:                      ; preds = %do.end.i.i378.i, %hantro_write_addr.exit373.i.hantro_write_addr.exit381.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1186 = tail call i32 @llvm.bswap.i32(i32 %add99.i) #5
  %1187 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1187)
  %1188 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i380.i = getelementptr i8, ptr %1188, i32 %add104.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i380.i, i32 %1186) #5, !srcloc !45
  %add107.i = add i32 %mul101.i, 540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1189 = load i32, ptr @hantro_debug, align 4
  %and.i.i382.i = and i32 %1189, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i382.i)
  %tobool.not.i.i383.i = icmp eq i32 %and.i.i382.i, 0
  br i1 %tobool.not.i.i383.i, label %hantro_write_addr.exit381.i.hantro_write_addr.exit389.i_crit_edge, label %do.end.i.i386.i

hantro_write_addr.exit381.i.hantro_write_addr.exit389.i_crit_edge: ; preds = %hantro_write_addr.exit381.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit389.i

do.end.i.i386.i:                                  ; preds = %hantro_write_addr.exit381.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i384.i = lshr exact i32 %add107.i, 2
  %call.i.i385.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i384.i, i32 noundef %add100.i) #8
  br label %hantro_write_addr.exit389.i

hantro_write_addr.exit389.i:                      ; preds = %do.end.i.i386.i, %hantro_write_addr.exit381.i.hantro_write_addr.exit389.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1190 = tail call i32 @llvm.bswap.i32(i32 %add100.i) #5
  %1191 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i388.i = getelementptr i8, ptr %1192, i32 %add107.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i388.i, i32 %1190) #5, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1193 = load i32, ptr @hantro_debug, align 4
  %and.i.i390.i = and i32 %1193, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i390.i)
  %tobool.not.i.i391.i = icmp eq i32 %and.i.i390.i, 0
  br i1 %tobool.not.i.i391.i, label %hantro_write_addr.exit389.i.hantro_write_addr.exit396.i_crit_edge, label %do.end.i.i393.i

hantro_write_addr.exit389.i.hantro_write_addr.exit396.i_crit_edge: ; preds = %hantro_write_addr.exit389.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit396.i

do.end.i.i393.i:                                  ; preds = %hantro_write_addr.exit389.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i392.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 65, i32 noundef %retval.0.i.i) #8
  br label %hantro_write_addr.exit396.i

hantro_write_addr.exit396.i:                      ; preds = %do.end.i.i393.i, %hantro_write_addr.exit389.i.hantro_write_addr.exit396.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1194 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i395.i = getelementptr i8, ptr %1195, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i395.i, i32 %1182) #5, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1196 = load i32, ptr @hantro_debug, align 4
  %and.i.i397.i = and i32 %1196, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i397.i)
  %tobool.not.i.i398.i = icmp eq i32 %and.i.i397.i, 0
  br i1 %tobool.not.i.i398.i, label %hantro_write_addr.exit396.i.hantro_write_addr.exit403.i_crit_edge, label %do.end.i.i400.i

hantro_write_addr.exit396.i.hantro_write_addr.exit403.i_crit_edge: ; preds = %hantro_write_addr.exit396.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit403.i

do.end.i.i400.i:                                  ; preds = %hantro_write_addr.exit396.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i399.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 99, i32 noundef %add99.i) #8
  br label %hantro_write_addr.exit403.i

hantro_write_addr.exit403.i:                      ; preds = %do.end.i.i400.i, %hantro_write_addr.exit396.i.hantro_write_addr.exit403.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1197 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i402.i = getelementptr i8, ptr %1198, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i402.i, i32 %1186) #5, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1199 = load i32, ptr @hantro_debug, align 4
  %and.i.i404.i = and i32 %1199, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i404.i)
  %tobool.not.i.i405.i = icmp eq i32 %and.i.i404.i, 0
  br i1 %tobool.not.i.i405.i, label %hantro_write_addr.exit403.i.hantro_write_addr.exit410.i_crit_edge, label %do.end.i.i407.i

hantro_write_addr.exit403.i.hantro_write_addr.exit410.i_crit_edge: ; preds = %hantro_write_addr.exit403.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit410.i

do.end.i.i407.i:                                  ; preds = %hantro_write_addr.exit403.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i406.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 133, i32 noundef %add100.i) #8
  br label %hantro_write_addr.exit410.i

hantro_write_addr.exit410.i:                      ; preds = %do.end.i.i407.i, %hantro_write_addr.exit403.i.hantro_write_addr.exit410.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1200 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i409.i = getelementptr i8, ptr %1201, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i409.i, i32 %1190) #5, !srcloc !45
  tail call void @hantro_hevc_ref_remove_unused(ptr noundef %ctx) #5
  %i.4476.i = add i32 %i.3.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.4476.i)
  %cmp109477.i = icmp ult i32 %i.4476.i, 16
  br i1 %cmp109477.i, label %hantro_write_addr.exit410.i.for.body111.i_crit_edge, label %hantro_write_addr.exit410.i.for.end120.i_crit_edge

hantro_write_addr.exit410.i.for.end120.i_crit_edge: ; preds = %hantro_write_addr.exit410.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end120.i

hantro_write_addr.exit410.i.for.body111.i_crit_edge: ; preds = %hantro_write_addr.exit410.i
  br label %for.body111.i

for.body111.i:                                    ; preds = %hantro_write_addr.exit434.i.for.body111.i_crit_edge, %hantro_write_addr.exit410.i.for.body111.i_crit_edge
  %i.4478.i = phi i32 [ %i.4.i, %hantro_write_addr.exit434.i.for.body111.i_crit_edge ], [ %i.4476.i, %hantro_write_addr.exit410.i.for.body111.i_crit_edge ]
  %mul112.i = shl nuw nsw i32 %i.4478.i, 3
  %add113.i84 = add nuw nsw i32 %mul112.i, 268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1202 = load i32, ptr @hantro_debug, align 4
  %and.i.i411.i = and i32 %1202, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i411.i)
  %tobool.not.i.i412.i = icmp eq i32 %and.i.i411.i, 0
  br i1 %tobool.not.i.i412.i, label %for.body111.i.hantro_write_addr.exit418.i_crit_edge, label %do.end.i.i415.i

for.body111.i.hantro_write_addr.exit418.i_crit_edge: ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit418.i

do.end.i.i415.i:                                  ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i413.i = lshr exact i32 %add113.i84, 2
  %call.i.i414.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i413.i, i32 noundef 0) #8
  br label %hantro_write_addr.exit418.i

hantro_write_addr.exit418.i:                      ; preds = %do.end.i.i415.i, %for.body111.i.hantro_write_addr.exit418.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1203 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i417.i = getelementptr i8, ptr %1204, i32 %add113.i84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i417.i, i32 0) #5, !srcloc !45
  %add115.i85 = add nuw nsw i32 %mul112.i, 404
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1205 = load i32, ptr @hantro_debug, align 4
  %and.i.i419.i = and i32 %1205, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i419.i)
  %tobool.not.i.i420.i = icmp eq i32 %and.i.i419.i, 0
  br i1 %tobool.not.i.i420.i, label %hantro_write_addr.exit418.i.hantro_write_addr.exit426.i_crit_edge, label %do.end.i.i423.i

hantro_write_addr.exit418.i.hantro_write_addr.exit426.i_crit_edge: ; preds = %hantro_write_addr.exit418.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit426.i

do.end.i.i423.i:                                  ; preds = %hantro_write_addr.exit418.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i421.i = lshr exact i32 %add115.i85, 2
  %call.i.i422.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i421.i, i32 noundef 0) #8
  br label %hantro_write_addr.exit426.i

hantro_write_addr.exit426.i:                      ; preds = %do.end.i.i423.i, %hantro_write_addr.exit418.i.hantro_write_addr.exit426.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1206 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i425.i = getelementptr i8, ptr %1207, i32 %add115.i85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i425.i, i32 0) #5, !srcloc !45
  %add117.i = add nuw nsw i32 %mul112.i, 540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1208 = load i32, ptr @hantro_debug, align 4
  %and.i.i427.i = and i32 %1208, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i427.i)
  %tobool.not.i.i428.i = icmp eq i32 %and.i.i427.i, 0
  br i1 %tobool.not.i.i428.i, label %hantro_write_addr.exit426.i.hantro_write_addr.exit434.i_crit_edge, label %do.end.i.i431.i

hantro_write_addr.exit426.i.hantro_write_addr.exit434.i_crit_edge: ; preds = %hantro_write_addr.exit426.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit434.i

do.end.i.i431.i:                                  ; preds = %hantro_write_addr.exit426.i
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i429.i = lshr exact i32 %add117.i, 2
  %call.i.i430.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef %div7.i.i429.i, i32 noundef 0) #8
  br label %hantro_write_addr.exit434.i

hantro_write_addr.exit434.i:                      ; preds = %do.end.i.i431.i, %hantro_write_addr.exit426.i.hantro_write_addr.exit434.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1209 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1209)
  %1210 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i433.i = getelementptr i8, ptr %1210, i32 %add117.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i433.i, i32 0) #5, !srcloc !45
  %i.4.i = add nuw nsw i32 %i.4478.i, 1
  %exitcond480.not.i = icmp eq i32 %i.4.i, 16
  br i1 %exitcond480.not.i, label %hantro_write_addr.exit434.i.for.end120.i_crit_edge, label %hantro_write_addr.exit434.i.for.body111.i_crit_edge

hantro_write_addr.exit434.i.for.body111.i_crit_edge: ; preds = %hantro_write_addr.exit434.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i

hantro_write_addr.exit434.i.for.end120.i_crit_edge: ; preds = %hantro_write_addr.exit434.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end120.i

for.end120.i:                                     ; preds = %hantro_write_addr.exit434.i.for.end120.i_crit_edge, %hantro_write_addr.exit410.i.for.end120.i_crit_edge
  %1211 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1211)
  %1212 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i.i436.i = getelementptr i8, ptr %1212, i32 48
  %1213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i436.i) #5, !srcloc !43
  %1214 = tail call i32 @llvm.bswap.i32(i32 %1213) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1215 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i437.i = and i32 %1215, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i437.i)
  %tobool.not.i.i.i438.i = icmp eq i32 %and.i.i.i437.i, 0
  br i1 %tobool.not.i.i.i438.i, label %for.end120.i.vdpu_read_mask.exit.i452.i_crit_edge, label %do.end.i.i.i441.i

for.end120.i.vdpu_read_mask.exit.i452.i_crit_edge: ; preds = %for.end120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i452.i

do.end.i.i.i441.i:                                ; preds = %for.end120.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i440.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 12, i32 noundef %1214) #8
  br label %vdpu_read_mask.exit.i452.i

vdpu_read_mask.exit.i452.i:                       ; preds = %do.end.i.i.i441.i, %for.end120.i.vdpu_read_mask.exit.i452.i_crit_edge
  %and.i.i446.i = and i32 %1214, 65535
  %or.i.i449.i = or i32 %and.i.i446.i, %dpb_longterm_e.0.lcssa.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1216 = load i32, ptr @hantro_debug, align 4
  %and.i3.i450.i = and i32 %1216, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i450.i)
  %tobool.not.i.i451.i = icmp eq i32 %and.i3.i450.i, 0
  br i1 %tobool.not.i.i451.i, label %vdpu_read_mask.exit.i452.i.if.end4_crit_edge, label %do.end.i.i455.i

vdpu_read_mask.exit.i452.i.if.end4_crit_edge:     ; preds = %vdpu_read_mask.exit.i452.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

do.end.i.i455.i:                                  ; preds = %vdpu_read_mask.exit.i452.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i454.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i449.i) #8
  br label %if.end4

if.end4:                                          ; preds = %do.end.i.i455.i, %vdpu_read_mask.exit.i452.i.if.end4_crit_edge
  %1217 = tail call i32 @llvm.bswap.i32(i32 %or.i.i449.i) #5
  %1218 = ptrtoint ptr %dec_base.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %dec_base.i.i.i.i63, align 8
  %add.ptr.i.i456.i = getelementptr i8, ptr %1219, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i456.i, i32 %1217) #5, !srcloc !45
  %1220 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %ctx, align 8
  %1222 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %m2m_ctx.i.i, align 4
  %out_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1223, i32 0, i32 8
  %call.i.i.i87 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i.i) #5
  %call.i.i88 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i.i87, i32 noundef 0) #5
  %1224 = ptrtoint ptr %call.i.i88 to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load i32, ptr %call.i.i88, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i.i87, i32 0, i32 4
  %1226 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1227)
  %cmp.not.i.i = icmp eq i32 %1227, 0
  br i1 %cmp.not.i.i, label %if.end4.vb2_plane_size.exit.i_crit_edge, label %if.then.i38.i

if.end4.vb2_plane_size.exit.i_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit.i

if.then.i38.i:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i.i87, i32 0, i32 10, i32 0, i32 3
  %1228 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load i32, ptr %bytesused.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i.i87, i32 0, i32 10, i32 0, i32 4
  %1230 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i38.i, %if.end4.vb2_plane_size.exit.i_crit_edge
  %retval.0.i145.i = phi i32 [ %1229, %if.then.i38.i ], [ 0, %if.end4.vb2_plane_size.exit.i_crit_edge ]
  %retval.0.i39.i = phi i32 [ %1231, %if.then.i38.i ], [ 0, %if.end4.vb2_plane_size.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1232 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i89 = and i32 %1232, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89)
  %tobool.not.i.i.i90 = icmp eq i32 %and.i.i.i89, 0
  br i1 %tobool.not.i.i.i90, label %vb2_plane_size.exit.i.hantro_write_addr.exit.i96_crit_edge, label %do.end.i.i.i91

vb2_plane_size.exit.i.hantro_write_addr.exit.i96_crit_edge: ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i96

do.end.i.i.i91:                                   ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 169, i32 noundef %1225) #8
  br label %hantro_write_addr.exit.i96

hantro_write_addr.exit.i96:                       ; preds = %do.end.i.i.i91, %vb2_plane_size.exit.i.hantro_write_addr.exit.i96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1233 = tail call i32 @llvm.bswap.i32(i32 %1225) #5
  %dec_base.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %1221, i32 0, i32 11
  %1234 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i92 = getelementptr i8, ptr %1235, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i92, i32 %1233) #5, !srcloc !45
  %1236 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i.i93 = getelementptr i8, ptr %1237, i32 24
  %1238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i93) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1239 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i94 = and i32 %1239, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i94)
  %tobool.not.i.i.i.i95 = icmp eq i32 %and.i.i.i.i94, 0
  br i1 %tobool.not.i.i.i.i95, label %hantro_write_addr.exit.i96.vdpu_read_mask.exit.i.i100_crit_edge, label %do.end.i.i.i.i98

hantro_write_addr.exit.i96.vdpu_read_mask.exit.i.i100_crit_edge: ; preds = %hantro_write_addr.exit.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i100

do.end.i.i.i.i98:                                 ; preds = %hantro_write_addr.exit.i96
  call void @__sanitizer_cov_trace_pc() #7
  %1240 = tail call i32 @llvm.bswap.i32(i32 %1238) #5
  %call4.i.i.i.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 6, i32 noundef %1240) #8
  br label %vdpu_read_mask.exit.i.i100

vdpu_read_mask.exit.i.i100:                       ; preds = %do.end.i.i.i.i98, %hantro_write_addr.exit.i96.vdpu_read_mask.exit.i.i100_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1241 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i99 = and i32 %1241, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i99)
  %tobool.not.i.i42.i = icmp eq i32 %and.i3.i.i99, 0
  br i1 %tobool.not.i.i42.i, label %vdpu_read_mask.exit.i.i100.hantro_reg_write.exit.i101_crit_edge, label %do.end.i.i44.i

vdpu_read_mask.exit.i.i100.hantro_reg_write.exit.i101_crit_edge: ; preds = %vdpu_read_mask.exit.i.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i101

do.end.i.i44.i:                                   ; preds = %vdpu_read_mask.exit.i.i100
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 6, i32 noundef %retval.0.i145.i) #8
  br label %hantro_reg_write.exit.i101

hantro_reg_write.exit.i101:                       ; preds = %do.end.i.i44.i, %vdpu_read_mask.exit.i.i100.hantro_reg_write.exit.i101_crit_edge
  %1242 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i145.i) #5
  %1243 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i45.i = getelementptr i8, ptr %1244, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45.i, i32 %1242) #5, !srcloc !45
  %1245 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i47.i = getelementptr i8, ptr %1246, i32 1032
  %1247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i47.i) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1248 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i48.i = and i32 %1248, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i48.i)
  %tobool.not.i.i.i49.i = icmp eq i32 %and.i.i.i48.i, 0
  br i1 %tobool.not.i.i.i49.i, label %hantro_reg_write.exit.i101.vdpu_read_mask.exit.i63.i_crit_edge, label %do.end.i.i.i52.i

hantro_reg_write.exit.i101.vdpu_read_mask.exit.i63.i_crit_edge: ; preds = %hantro_reg_write.exit.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i63.i

do.end.i.i.i52.i:                                 ; preds = %hantro_reg_write.exit.i101
  call void @__sanitizer_cov_trace_pc() #7
  %1249 = tail call i32 @llvm.bswap.i32(i32 %1247) #5
  %call4.i.i.i51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 258, i32 noundef %1249) #8
  br label %vdpu_read_mask.exit.i63.i

vdpu_read_mask.exit.i63.i:                        ; preds = %do.end.i.i.i52.i, %hantro_reg_write.exit.i101.vdpu_read_mask.exit.i63.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1250 = load i32, ptr @hantro_debug, align 4
  %and.i3.i61.i = and i32 %1250, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i61.i)
  %tobool.not.i.i62.i = icmp eq i32 %and.i3.i61.i, 0
  br i1 %tobool.not.i.i62.i, label %vdpu_read_mask.exit.i63.i.hantro_reg_write.exit68.i_crit_edge, label %do.end.i.i66.i

vdpu_read_mask.exit.i63.i.hantro_reg_write.exit68.i_crit_edge: ; preds = %vdpu_read_mask.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit68.i

do.end.i.i66.i:                                   ; preds = %vdpu_read_mask.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 258, i32 noundef %retval.0.i39.i) #8
  br label %hantro_reg_write.exit68.i

hantro_reg_write.exit68.i:                        ; preds = %do.end.i.i66.i, %vdpu_read_mask.exit.i63.i.hantro_reg_write.exit68.i_crit_edge
  %1251 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i39.i) #5
  %1252 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i67.i = getelementptr i8, ptr %1253, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67.i, i32 %1251) #5, !srcloc !45
  %1254 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1254)
  %1255 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i70.i = getelementptr i8, ptr %1255, i32 1036
  %1256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i70.i) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1257 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i71.i = and i32 %1257, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i71.i)
  %tobool.not.i.i.i72.i = icmp eq i32 %and.i.i.i71.i, 0
  br i1 %tobool.not.i.i.i72.i, label %hantro_reg_write.exit68.i.vdpu_read_mask.exit.i83.i_crit_edge, label %do.end.i.i.i75.i

hantro_reg_write.exit68.i.vdpu_read_mask.exit.i83.i_crit_edge: ; preds = %hantro_reg_write.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i83.i

do.end.i.i.i75.i:                                 ; preds = %hantro_reg_write.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  %1258 = tail call i32 @llvm.bswap.i32(i32 %1256) #5
  %call4.i.i.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 259, i32 noundef %1258) #8
  br label %vdpu_read_mask.exit.i83.i

vdpu_read_mask.exit.i83.i:                        ; preds = %do.end.i.i.i75.i, %hantro_reg_write.exit68.i.vdpu_read_mask.exit.i83.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1259 = load i32, ptr @hantro_debug, align 4
  %and.i3.i81.i = and i32 %1259, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i81.i)
  %tobool.not.i.i82.i = icmp eq i32 %and.i3.i81.i, 0
  br i1 %tobool.not.i.i82.i, label %vdpu_read_mask.exit.i83.i.hantro_reg_write.exit88.i_crit_edge, label %do.end.i.i86.i

vdpu_read_mask.exit.i83.i.hantro_reg_write.exit88.i_crit_edge: ; preds = %vdpu_read_mask.exit.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit88.i

do.end.i.i86.i:                                   ; preds = %vdpu_read_mask.exit.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 259, i32 noundef 0) #8
  br label %hantro_reg_write.exit88.i

hantro_reg_write.exit88.i:                        ; preds = %do.end.i.i86.i, %vdpu_read_mask.exit.i83.i.hantro_reg_write.exit88.i_crit_edge
  %1260 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i87.i = getelementptr i8, ptr %1261, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87.i, i32 0) #5, !srcloc !45
  %1262 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i90.i = getelementptr i8, ptr %1263, i32 12
  %1264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i90.i) #5, !srcloc !43
  %1265 = tail call i32 @llvm.bswap.i32(i32 %1264) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1266 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i91.i = and i32 %1266, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i91.i)
  %tobool.not.i.i.i92.i = icmp eq i32 %and.i.i.i91.i, 0
  br i1 %tobool.not.i.i.i92.i, label %hantro_reg_write.exit88.i.vdpu_read_mask.exit.i106.i_crit_edge, label %do.end.i.i.i95.i

hantro_reg_write.exit88.i.vdpu_read_mask.exit.i106.i_crit_edge: ; preds = %hantro_reg_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i106.i

do.end.i.i.i95.i:                                 ; preds = %hantro_reg_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 3, i32 noundef %1265) #8
  br label %vdpu_read_mask.exit.i106.i

vdpu_read_mask.exit.i106.i:                       ; preds = %do.end.i.i.i95.i, %hantro_reg_write.exit88.i.vdpu_read_mask.exit.i106.i_crit_edge
  %or.i.i103.i = or i32 %1265, 4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1267 = load i32, ptr @hantro_debug, align 4
  %and.i3.i104.i = and i32 %1267, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i104.i)
  %tobool.not.i.i105.i = icmp eq i32 %and.i3.i104.i, 0
  br i1 %tobool.not.i.i105.i, label %vdpu_read_mask.exit.i106.i.hantro_reg_write.exit111.i_crit_edge, label %do.end.i.i109.i

vdpu_read_mask.exit.i106.i.hantro_reg_write.exit111.i_crit_edge: ; preds = %vdpu_read_mask.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit111.i

do.end.i.i109.i:                                  ; preds = %vdpu_read_mask.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i103.i) #8
  br label %hantro_reg_write.exit111.i

hantro_reg_write.exit111.i:                       ; preds = %do.end.i.i109.i, %vdpu_read_mask.exit.i106.i.hantro_reg_write.exit111.i_crit_edge
  %1268 = tail call i32 @llvm.bswap.i32(i32 %or.i.i103.i) #5
  %1269 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1269)
  %1270 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i110.i = getelementptr i8, ptr %1270, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i110.i, i32 %1268) #5, !srcloc !45
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %1271 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1273 = load i32, ptr @hantro_debug, align 4
  %and.i.i112.i = and i32 %1273, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112.i)
  %tobool.not.i.i113.i = icmp eq i32 %and.i.i112.i, 0
  br i1 %tobool.not.i.i113.i, label %hantro_reg_write.exit111.i.hantro_write_addr.exit118.i_crit_edge, label %do.end.i.i115.i

hantro_reg_write.exit111.i.hantro_write_addr.exit118.i_crit_edge: ; preds = %hantro_reg_write.exit111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit118.i

do.end.i.i115.i:                                  ; preds = %hantro_reg_write.exit111.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 167, i32 noundef %1272) #8
  br label %hantro_write_addr.exit118.i

hantro_write_addr.exit118.i:                      ; preds = %do.end.i.i115.i, %hantro_reg_write.exit111.i.hantro_write_addr.exit118.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1274 = tail call i32 @llvm.bswap.i32(i32 %1272) #5
  %1275 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1275)
  %1276 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i117.i = getelementptr i8, ptr %1276, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117.i, i32 %1274) #5, !srcloc !45
  %dma18.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %1277 = ptrtoint ptr %dma18.i to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load i32, ptr %dma18.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1279 = load i32, ptr @hantro_debug, align 4
  %and.i.i119.i = and i32 %1279, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119.i)
  %tobool.not.i.i120.i = icmp eq i32 %and.i.i119.i, 0
  br i1 %tobool.not.i.i120.i, label %hantro_write_addr.exit118.i.hantro_write_addr.exit125.i_crit_edge, label %do.end.i.i122.i

hantro_write_addr.exit118.i.hantro_write_addr.exit125.i_crit_edge: ; preds = %hantro_write_addr.exit118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit125.i

do.end.i.i122.i:                                  ; preds = %hantro_write_addr.exit118.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i121.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 179, i32 noundef %1278) #8
  br label %hantro_write_addr.exit125.i

hantro_write_addr.exit125.i:                      ; preds = %do.end.i.i122.i, %hantro_write_addr.exit118.i.hantro_write_addr.exit125.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1280 = tail call i32 @llvm.bswap.i32(i32 %1278) #5
  %1281 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i124.i = getelementptr i8, ptr %1282, i32 716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124.i, i32 %1280) #5, !srcloc !45
  %dma19.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %1283 = ptrtoint ptr %dma19.i to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load i32, ptr %dma19.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1285 = load i32, ptr @hantro_debug, align 4
  %and.i.i126.i = and i32 %1285, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i126.i)
  %tobool.not.i.i127.i = icmp eq i32 %and.i.i126.i, 0
  br i1 %tobool.not.i.i127.i, label %hantro_write_addr.exit125.i.hantro_write_addr.exit132.i_crit_edge, label %do.end.i.i129.i

hantro_write_addr.exit125.i.hantro_write_addr.exit132.i_crit_edge: ; preds = %hantro_write_addr.exit125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit132.i

do.end.i.i129.i:                                  ; preds = %hantro_write_addr.exit125.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i128.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 181, i32 noundef %1284) #8
  br label %hantro_write_addr.exit132.i

hantro_write_addr.exit132.i:                      ; preds = %do.end.i.i129.i, %hantro_write_addr.exit125.i.hantro_write_addr.exit132.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1286 = tail call i32 @llvm.bswap.i32(i32 %1284) #5
  %1287 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i131.i = getelementptr i8, ptr %1288, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131.i, i32 %1286) #5, !srcloc !45
  %dma20.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 1
  %1289 = ptrtoint ptr %dma20.i to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load i32, ptr %dma20.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1291 = load i32, ptr @hantro_debug, align 4
  %and.i.i133.i = and i32 %1291, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133.i)
  %tobool.not.i.i134.i = icmp eq i32 %and.i.i133.i, 0
  br i1 %tobool.not.i.i134.i, label %hantro_write_addr.exit132.i.set_buffers.exit_crit_edge, label %do.end.i.i136.i

hantro_write_addr.exit132.i.set_buffers.exit_crit_edge: ; preds = %hantro_write_addr.exit132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_buffers.exit

do.end.i.i136.i:                                  ; preds = %hantro_write_addr.exit132.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 183, i32 noundef %1290) #8
  br label %set_buffers.exit

set_buffers.exit:                                 ; preds = %do.end.i.i136.i, %hantro_write_addr.exit132.i.set_buffers.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %1292 = tail call i32 @llvm.bswap.i32(i32 %1290) #5
  %1293 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1293)
  %1294 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i138.i = getelementptr i8, ptr %1294, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i, i32 %1292) #5, !srcloc !45
  %1295 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load ptr, ptr %ctx, align 8
  %1297 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %1298 = ptrtoint ptr %pps3.i to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load ptr, ptr %pps3.i, align 4
  %1300 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load ptr, ptr %sps2.i, align 4
  %1302 = ptrtoint ptr %1297 to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load ptr, ptr %1297, align 8
  %num_tile_rows_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 8
  %1304 = ptrtoint ptr %num_tile_rows_minus1.i to i32
  call void @__asan_load1_noabort(i32 %1304)
  %1305 = load i8, ptr %num_tile_rows_minus1.i, align 8
  %conv.i102 = zext i8 %1305 to i32
  %add.i103 = add nuw nsw i32 %conv.i102, 1
  %num_tile_columns_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 7
  %1306 = ptrtoint ptr %num_tile_columns_minus1.i to i32
  call void @__asan_load1_noabort(i32 %1306)
  %1307 = load i8, ptr %num_tile_columns_minus1.i, align 1
  %conv4.i = zext i8 %1307 to i32
  %add5.i = add nuw nsw i32 %conv4.i, 1
  %flags.i104 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 15
  %1308 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load8_noabort(i32 %1308)
  %1309 = load i64, ptr %flags.i104, align 8
  %and.i105 = and i64 %1309, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i105)
  %tobool.not.i106 = icmp eq i64 %and.i105, 0
  %and8.i = and i64 %1309, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  %1310 = trunc i64 %and.i105 to i32
  %1311 = lshr exact i32 %1310, 10
  %dec_base.i.i.i.i107 = getelementptr inbounds %struct.hantro_dev, ptr %1296, i32 0, i32 11
  %1312 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i.i.i108 = getelementptr i8, ptr %1313, i32 40
  %1314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i108) #5, !srcloc !43
  %1315 = tail call i32 @llvm.bswap.i32(i32 %1314) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1316 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i109 = and i32 %1316, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i109)
  %tobool.not.i.i.i.i110 = icmp eq i32 %and.i.i.i.i109, 0
  br i1 %tobool.not.i.i.i.i110, label %set_buffers.exit.vdpu_read_mask.exit.i.i117_crit_edge, label %do.end.i.i.i.i112

set_buffers.exit.vdpu_read_mask.exit.i.i117_crit_edge: ; preds = %set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i117

do.end.i.i.i.i112:                                ; preds = %set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %1315) #8
  br label %vdpu_read_mask.exit.i.i117

vdpu_read_mask.exit.i.i117:                       ; preds = %do.end.i.i.i.i112, %set_buffers.exit.vdpu_read_mask.exit.i.i117_crit_edge
  %and.i.i.i113 = and i32 %1315, -3
  %or.i.i.i114 = or i32 %and.i.i.i113, %1311
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1317 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i115 = and i32 %1317, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i115)
  %tobool.not.i.i.i116 = icmp eq i32 %and.i3.i.i115, 0
  br i1 %tobool.not.i.i.i116, label %vdpu_read_mask.exit.i.i117.hantro_reg_write.exit.i128_crit_edge, label %do.end.i.i.i119

vdpu_read_mask.exit.i.i117.hantro_reg_write.exit.i128_crit_edge: ; preds = %vdpu_read_mask.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i128

do.end.i.i.i119:                                  ; preds = %vdpu_read_mask.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i.i114) #8
  br label %hantro_reg_write.exit.i128

hantro_reg_write.exit.i128:                       ; preds = %do.end.i.i.i119, %vdpu_read_mask.exit.i.i117.hantro_reg_write.exit.i128_crit_edge
  %1318 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i114) #5
  %1319 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i.i120 = getelementptr i8, ptr %1320, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i120, i32 %1318) #5, !srcloc !45
  %log2_min_luma_coding_block_size_minus3.i121 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %1301, i32 0, i32 8
  %1321 = ptrtoint ptr %log2_min_luma_coding_block_size_minus3.i121 to i32
  call void @__asan_load1_noabort(i32 %1321)
  %1322 = load i8, ptr %log2_min_luma_coding_block_size_minus3.i121, align 2
  %conv15.i = zext i8 %1322 to i32
  %add16.i = add nuw nsw i32 %conv15.i, 3
  %log2_diff_max_min_luma_coding_block_size.i122 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %1301, i32 0, i32 9
  %1323 = ptrtoint ptr %log2_diff_max_min_luma_coding_block_size.i122 to i32
  call void @__asan_load1_noabort(i32 %1323)
  %1324 = load i8, ptr %log2_diff_max_min_luma_coding_block_size.i122, align 1
  %conv17.i = zext i8 %1324 to i32
  %add18.i = add nuw nsw i32 %add16.i, %conv17.i
  %1325 = ptrtoint ptr %1301 to i32
  call void @__asan_load2_noabort(i32 %1325)
  %1326 = load i16, ptr %1301, align 8
  %conv19.i123 = zext i16 %1326 to i32
  %shl.i124 = shl nuw i32 1, %add18.i
  %add20.i125 = add i32 %shl.i124, -1
  %sub.i126 = add i32 %add20.i125, %conv19.i123
  %shr.i = ashr i32 %sub.i126, %add18.i
  %pic_height_in_luma_samples.i127 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %1301, i32 0, i32 1
  %1327 = ptrtoint ptr %pic_height_in_luma_samples.i127 to i32
  call void @__asan_load2_noabort(i32 %1327)
  %1328 = load i16, ptr %pic_height_in_luma_samples.i127, align 2
  %conv21.i = zext i16 %1328 to i32
  %sub24.i = add i32 %add20.i125, %conv21.i
  %shr25.i = ashr i32 %sub24.i, %add18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1329 = load i32, ptr @hantro_debug, align 4
  %and27.i = and i32 %1329, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %hantro_reg_write.exit.i128.do.end31.i_crit_edge, label %do.end.i

hantro_reg_write.exit.i128.do.end31.i_crit_edge:  ; preds = %hantro_reg_write.exit.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31.i

do.end.i:                                         ; preds = %hantro_reg_write.exit.i128
  call void @__sanitizer_cov_trace_pc() #7
  %call.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef %shr.i, i32 noundef %shr25.i, i32 noundef %shl.i124) #8
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end.i, %hantro_reg_write.exit.i128.do.end31.i_crit_edge
  br i1 %tobool.not.i106, label %if.else159.i, label %if.then33.i

if.then33.i:                                      ; preds = %do.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1330 = load i32, ptr @hantro_debug, align 4
  %and35.i = and i32 %1330, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then33.i.do.end45.i_crit_edge, label %do.end40.i

if.then33.i.do.end45.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45.i

do.end40.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef %add5.i, i32 noundef %add.i103) #8
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end40.i, %if.then33.i.do.end45.i_crit_edge
  %1331 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1331)
  %1332 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i.i270.i = getelementptr i8, ptr %1332, i32 40
  %1333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i270.i) #5, !srcloc !43
  %1334 = tail call i32 @llvm.bswap.i32(i32 %1333) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1335 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i271.i = and i32 %1335, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i271.i)
  %tobool.not.i.i.i272.i = icmp eq i32 %and.i.i.i271.i, 0
  br i1 %tobool.not.i.i.i272.i, label %do.end45.i.vdpu_read_mask.exit.i286.i_crit_edge, label %do.end.i.i.i275.i

do.end45.i.vdpu_read_mask.exit.i286.i_crit_edge:  ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i286.i

do.end.i.i.i275.i:                                ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i274.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %1334) #8
  br label %vdpu_read_mask.exit.i286.i

vdpu_read_mask.exit.i286.i:                       ; preds = %do.end.i.i.i275.i, %do.end45.i.vdpu_read_mask.exit.i286.i_crit_edge
  %and.i.i280.i = and i32 %1334, -507905
  %and2.i.i281.i = shl nuw nsw i32 %add.i103, 14
  %shl4.i.i282.i = and i32 %and2.i.i281.i, 507904
  %or.i.i283.i = or i32 %and.i.i280.i, %shl4.i.i282.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1336 = load i32, ptr @hantro_debug, align 4
  %and.i3.i284.i = and i32 %1336, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i284.i)
  %tobool.not.i.i285.i = icmp eq i32 %and.i3.i284.i, 0
  br i1 %tobool.not.i.i285.i, label %vdpu_read_mask.exit.i286.i.hantro_reg_write.exit291.i_crit_edge, label %do.end.i.i289.i

vdpu_read_mask.exit.i286.i.hantro_reg_write.exit291.i_crit_edge: ; preds = %vdpu_read_mask.exit.i286.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit291.i

do.end.i.i289.i:                                  ; preds = %vdpu_read_mask.exit.i286.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i288.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i283.i) #8
  br label %hantro_reg_write.exit291.i

hantro_reg_write.exit291.i:                       ; preds = %do.end.i.i289.i, %vdpu_read_mask.exit.i286.i.hantro_reg_write.exit291.i_crit_edge
  %1337 = tail call i32 @llvm.bswap.i32(i32 %or.i.i283.i) #5
  %1338 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1338)
  %1339 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i290.i = getelementptr i8, ptr %1339, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i290.i, i32 %1337) #5, !srcloc !45
  %1340 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1340)
  %1341 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i.i293.i = getelementptr i8, ptr %1341, i32 40
  %1342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i293.i) #5, !srcloc !43
  %1343 = tail call i32 @llvm.bswap.i32(i32 %1342) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1344 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i294.i = and i32 %1344, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i294.i)
  %tobool.not.i.i.i295.i = icmp eq i32 %and.i.i.i294.i, 0
  br i1 %tobool.not.i.i.i295.i, label %hantro_reg_write.exit291.i.vdpu_read_mask.exit.i309.i_crit_edge, label %do.end.i.i.i298.i

hantro_reg_write.exit291.i.vdpu_read_mask.exit.i309.i_crit_edge: ; preds = %hantro_reg_write.exit291.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i309.i

do.end.i.i.i298.i:                                ; preds = %hantro_reg_write.exit291.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i297.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %1343) #8
  br label %vdpu_read_mask.exit.i309.i

vdpu_read_mask.exit.i309.i:                       ; preds = %do.end.i.i.i298.i, %hantro_reg_write.exit291.i.vdpu_read_mask.exit.i309.i_crit_edge
  %and.i.i303.i = and i32 %1343, -16252929
  %and2.i.i304.i = shl nuw nsw i32 %add5.i, 19
  %shl4.i.i305.i = and i32 %and2.i.i304.i, 16252928
  %or.i.i306.i = or i32 %and.i.i303.i, %shl4.i.i305.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1345 = load i32, ptr @hantro_debug, align 4
  %and.i3.i307.i = and i32 %1345, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i307.i)
  %tobool.not.i.i308.i = icmp eq i32 %and.i3.i307.i, 0
  br i1 %tobool.not.i.i308.i, label %vdpu_read_mask.exit.i309.i.hantro_reg_write.exit314.i_crit_edge, label %do.end.i.i312.i

vdpu_read_mask.exit.i309.i.hantro_reg_write.exit314.i_crit_edge: ; preds = %vdpu_read_mask.exit.i309.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit314.i

do.end.i.i312.i:                                  ; preds = %vdpu_read_mask.exit.i309.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i311.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i306.i) #8
  br label %hantro_reg_write.exit314.i

hantro_reg_write.exit314.i:                       ; preds = %do.end.i.i312.i, %vdpu_read_mask.exit.i309.i.hantro_reg_write.exit314.i_crit_edge
  %1346 = tail call i32 @llvm.bswap.i32(i32 %or.i.i306.i) #5
  %1347 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i313.i = getelementptr i8, ptr %1348, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i313.i, i32 %1346) #5, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add18.i)
  %cmp71.i130 = icmp eq i32 %add18.i, 4
  br i1 %tobool9.not.i, label %for.cond.preheader.i, label %for.cond110.preheader.i

for.cond110.preheader.i:                          ; preds = %hantro_reg_write.exit314.i
  %column_width_minus1141.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 9
  %div132.peel.i = udiv i32 %shr.i, %add5.i
  %conv134.peel.i = trunc i32 %div132.peel.i to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1307)
  %exitcond.peel.i = icmp eq i8 %1307, 0
  br label %if.end151.peel.i

for.cond.preheader.i:                             ; preds = %hantro_reg_write.exit314.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1307)
  %cmp77377.not.i = icmp eq i8 %1307, 0
  br label %for.body.i131

for.body.i131:                                    ; preds = %for.end.i136.for.body.i131_crit_edge, %for.cond.preheader.i
  %tmp_h.0388.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add65.i, %for.end.i136.for.body.i131_crit_edge ]
  %i.0386.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc106.i, %for.end.i136.for.body.i131_crit_edge ]
  %p.0385.i = phi ptr [ %1303, %for.cond.preheader.i ], [ %incdec.ptr104.i, %for.end.i136.for.body.i131_crit_edge ]
  %no_chroma.0384.i = phi i32 [ 0, %for.cond.preheader.i ], [ %no_chroma.2.lcssa.i, %for.end.i136.for.body.i131_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0386.i, i32 %conv.i102)
  %cmp58.i = icmp eq i32 %i.0386.i, %conv.i102
  br i1 %cmp58.i, label %if.then60.i, label %if.else.i133

if.then60.i:                                      ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #7
  %sub61.i = sub i32 %shr25.i, %tmp_h.0388.i
  br label %if.end64.i

if.else.i133:                                     ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 10, i32 %i.0386.i
  %1349 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1349)
  %1350 = load i8, ptr %arrayidx.i, align 1
  %conv62.i132 = zext i8 %1350 to i32
  %add63.i = add nuw nsw i32 %conv62.i132, 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else.i133, %if.then60.i
  %h.0.i = phi i32 [ %sub61.i, %if.then60.i ], [ %add63.i, %if.else.i133 ]
  %add65.i = add i32 %h.0.i, %tmp_h.0388.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0386.i)
  %cmp66.i = icmp eq i32 %i.0386.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %h.0.i)
  %cmp68.i = icmp eq i32 %h.0.i, 1
  %or.cond.i134 = select i1 %cmp66.i, i1 %cmp68.i, i1 false
  %or.cond263.i = select i1 %or.cond.i134, i1 %cmp71.i130, i1 false
  %no_chroma.1.i = select i1 %or.cond263.i, i32 1, i32 %no_chroma.0384.i
  %.pre.i = trunc i32 %h.0.i to i16
  br i1 %cmp77377.not.i, label %if.end64.i.for.end.i136_crit_edge, label %if.end64.i.for.body79.i_crit_edge

if.end64.i.for.body79.i_crit_edge:                ; preds = %if.end64.i
  br label %for.body79.i

if.end64.i.for.end.i136_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i136

for.body79.i:                                     ; preds = %for.body79.i.for.body79.i_crit_edge, %if.end64.i.for.body79.i_crit_edge
  %tmp_w.0381.i = phi i32 [ %add83.i, %for.body79.i.for.body79.i_crit_edge ], [ 0, %if.end64.i.for.body79.i_crit_edge ]
  %j.0380.i = phi i32 [ %add85.i, %for.body79.i.for.body79.i_crit_edge ], [ 0, %if.end64.i.for.body79.i_crit_edge ]
  %p.1379.i = phi ptr [ %incdec.ptr89.i, %for.body79.i.for.body79.i_crit_edge ], [ %p.0385.i, %if.end64.i.for.body79.i_crit_edge ]
  %no_chroma.2378.i = phi i32 [ %no_chroma.3.i, %for.body79.i.for.body79.i_crit_edge ], [ %no_chroma.1.i, %if.end64.i.for.body79.i_crit_edge ]
  %arrayidx80.i = getelementptr %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 9, i32 %j.0380.i
  %1351 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %1351)
  %1352 = load i8, ptr %arrayidx80.i, align 1
  %conv81.i = zext i8 %1352 to i32
  %add82.i135 = add i32 %tmp_w.0381.i, 1
  %add83.i = add i32 %add82.i135, %conv81.i
  %add85.i = add nuw nsw i32 %j.0380.i, 1
  %arrayidx86.i = getelementptr %struct.v4l2_ctrl_hevc_pps, ptr %1299, i32 0, i32 9, i32 %add85.i
  %1353 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %1353)
  %1354 = load i8, ptr %arrayidx86.i, align 1
  %conv87.i = zext i8 %1354 to i16
  %incdec.ptr.i = getelementptr i16, ptr %p.1379.i, i32 1
  %1355 = ptrtoint ptr %p.1379.i to i32
  call void @__asan_store2_noabort(i32 %1355)
  store i16 %conv87.i, ptr %p.1379.i, align 2
  %incdec.ptr89.i = getelementptr i16, ptr %p.1379.i, i32 2
  %1356 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %1356)
  store i16 %.pre.i, ptr %incdec.ptr.i, align 2
  %no_chroma.3.i = select i1 %or.cond263.i, i32 1, i32 %no_chroma.2378.i
  %exitcond392.not.i = icmp eq i32 %add85.i, %conv4.i
  br i1 %exitcond392.not.i, label %for.body79.i.for.end.i136_crit_edge, label %for.body79.i.for.body79.i_crit_edge

for.body79.i.for.body79.i_crit_edge:              ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body79.i

for.body79.i.for.end.i136_crit_edge:              ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i136

for.end.i136:                                     ; preds = %for.body79.i.for.end.i136_crit_edge, %if.end64.i.for.end.i136_crit_edge
  %no_chroma.2.lcssa.i = phi i32 [ %no_chroma.1.i, %if.end64.i.for.end.i136_crit_edge ], [ %no_chroma.3.i, %for.body79.i.for.end.i136_crit_edge ]
  %p.1.lcssa.i = phi ptr [ %p.0385.i, %if.end64.i.for.end.i136_crit_edge ], [ %incdec.ptr89.i, %for.body79.i.for.end.i136_crit_edge ]
  %tmp_w.0.lcssa.i = phi i32 [ 0, %if.end64.i.for.end.i136_crit_edge ], [ %add83.i, %for.body79.i.for.end.i136_crit_edge ]
  %sub100.i = sub i32 %shr.i, %tmp_w.0.lcssa.i
  %conv101.i = trunc i32 %sub100.i to i16
  %incdec.ptr102.i = getelementptr i16, ptr %p.1.lcssa.i, i32 1
  %1357 = ptrtoint ptr %p.1.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %1357)
  store i16 %conv101.i, ptr %p.1.lcssa.i, align 2
  %incdec.ptr104.i = getelementptr i16, ptr %p.1.lcssa.i, i32 2
  %1358 = ptrtoint ptr %incdec.ptr102.i to i32
  call void @__asan_store2_noabort(i32 %1358)
  store i16 %.pre.i, ptr %incdec.ptr102.i, align 2
  %inc106.i = add nuw nsw i32 %i.0386.i, 1
  br i1 %cmp58.i, label %for.end.i136.if.end172.i_crit_edge, label %for.end.i136.for.body.i131_crit_edge

for.end.i136.for.body.i131_crit_edge:             ; preds = %for.end.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i131

for.end.i136.if.end172.i_crit_edge:               ; preds = %for.end.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end172.i

for.cond110.loopexit.i:                           ; preds = %if.end151.i.for.cond110.loopexit.i_crit_edge, %if.end151.peel.i.for.cond110.loopexit.i_crit_edge
  %incdec.ptr137.lcssa.i = phi ptr [ %incdec.ptr137.peel.i, %if.end151.peel.i.for.cond110.loopexit.i_crit_edge ], [ %incdec.ptr137.i, %if.end151.i.for.cond110.loopexit.i_crit_edge ]
  %exitcond391.i = icmp eq i32 %i.1375.i, %conv.i102
  br i1 %exitcond391.i, label %for.cond110.loopexit.i.if.end172.i_crit_edge, label %for.cond110.loopexit.i.if.end151.peel.i_crit_edge

for.cond110.loopexit.i.if.end151.peel.i_crit_edge: ; preds = %for.cond110.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151.peel.i

for.cond110.loopexit.i.if.end172.i_crit_edge:     ; preds = %for.cond110.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end172.i

if.end151.peel.i:                                 ; preds = %for.cond110.loopexit.i.if.end151.peel.i_crit_edge, %for.cond110.preheader.i
  %prev_h.0376.i = phi i32 [ 0, %for.cond110.preheader.i ], [ %div.i, %for.cond110.loopexit.i.if.end151.peel.i_crit_edge ]
  %i.1375.i = phi i32 [ 0, %for.cond110.preheader.i ], [ %add114.i, %for.cond110.loopexit.i.if.end151.peel.i_crit_edge ]
  %p.2374.i = phi ptr [ %1303, %for.cond110.preheader.i ], [ %incdec.ptr137.lcssa.i, %for.cond110.loopexit.i.if.end151.peel.i_crit_edge ]
  %no_chroma.4373.i = phi i32 [ 0, %for.cond110.preheader.i ], [ %spec.select.peel.i, %for.cond110.loopexit.i.if.end151.peel.i_crit_edge ]
  %add114.i = add nuw nsw i32 %i.1375.i, 1
  %mul.i137 = mul i32 %add114.i, %shr25.i
  %div.i = udiv i32 %mul.i137, %add.i103
  %sub115.i = sub i32 %div.i, %prev_h.0376.i
  %conv136.i = trunc i32 %sub115.i to i16
  %incdec.ptr135.peel.i = getelementptr i16, ptr %p.2374.i, i32 1
  %1359 = ptrtoint ptr %p.2374.i to i32
  call void @__asan_store2_noabort(i32 %1359)
  store i16 %conv134.peel.i, ptr %p.2374.i, align 2
  %incdec.ptr137.peel.i = getelementptr i16, ptr %p.2374.i, i32 2
  %1360 = ptrtoint ptr %incdec.ptr135.peel.i to i32
  call void @__asan_store2_noabort(i32 %1360)
  store i16 %conv136.i, ptr %incdec.ptr135.peel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1375.i)
  %cmp116.i = icmp eq i32 %i.1375.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub115.i)
  %cmp119.i = icmp eq i32 %sub115.i, 1
  %or.cond266.i = select i1 %cmp116.i, i1 %cmp119.i, i1 false
  %or.cond267.i = select i1 %or.cond266.i, i1 %cmp71.i130, i1 false
  %1361 = ptrtoint ptr %column_width_minus1141.i to i32
  call void @__asan_load1_noabort(i32 %1361)
  %1362 = load i8, ptr %column_width_minus1141.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1362)
  %cmp145.peel.i = icmp eq i8 %1362, 0
  %or.cond268.peel.i = select i1 %cmp145.peel.i, i1 %cmp71.i130, i1 false
  %1363 = select i1 %or.cond268.peel.i, i1 true, i1 %or.cond267.i
  %spec.select.peel.i = select i1 %1363, i32 1, i32 %no_chroma.4373.i
  br i1 %exitcond.peel.i, label %if.end151.peel.i.for.cond110.loopexit.i_crit_edge, label %if.end151.peel.i.if.end151.i_crit_edge

if.end151.peel.i.if.end151.i_crit_edge:           ; preds = %if.end151.peel.i
  br label %if.end151.i

if.end151.peel.i.for.cond110.loopexit.i_crit_edge: ; preds = %if.end151.peel.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond110.loopexit.i

if.end151.i:                                      ; preds = %if.end151.i.if.end151.i_crit_edge, %if.end151.peel.i.if.end151.i_crit_edge
  %prev_w.0372.i = phi i32 [ %div132.i, %if.end151.i.if.end151.i_crit_edge ], [ %div132.peel.i, %if.end151.peel.i.if.end151.i_crit_edge ]
  %j.1371.i = phi i32 [ %add130.i, %if.end151.i.if.end151.i_crit_edge ], [ 1, %if.end151.peel.i.if.end151.i_crit_edge ]
  %p.3370.i = phi ptr [ %incdec.ptr137.i, %if.end151.i.if.end151.i_crit_edge ], [ %incdec.ptr137.peel.i, %if.end151.peel.i.if.end151.i_crit_edge ]
  %add130.i = add nuw nsw i32 %j.1371.i, 1
  %mul131.i = mul i32 %add130.i, %shr.i
  %div132.i = udiv i32 %mul131.i, %add5.i
  %sub133.i = sub i32 %div132.i, %prev_w.0372.i
  %conv134.i = trunc i32 %sub133.i to i16
  %incdec.ptr135.i = getelementptr i16, ptr %p.3370.i, i32 1
  %1364 = ptrtoint ptr %p.3370.i to i32
  call void @__asan_store2_noabort(i32 %1364)
  store i16 %conv134.i, ptr %p.3370.i, align 2
  %incdec.ptr137.i = getelementptr i16, ptr %p.3370.i, i32 2
  %1365 = ptrtoint ptr %incdec.ptr135.i to i32
  call void @__asan_store2_noabort(i32 %1365)
  store i16 %conv136.i, ptr %incdec.ptr135.i, align 2
  %exitcond.i = icmp eq i32 %j.1371.i, %conv4.i
  br i1 %exitcond.i, label %if.end151.i.for.cond110.loopexit.i_crit_edge, label %if.end151.i.if.end151.i_crit_edge, !llvm.loop !47

if.end151.i.if.end151.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151.i

if.end151.i.for.cond110.loopexit.i_crit_edge:     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond110.loopexit.i

if.else159.i:                                     ; preds = %do.end31.i
  %1366 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i.i316.i = getelementptr i8, ptr %1367, i32 40
  %1368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i316.i) #5, !srcloc !43
  %1369 = tail call i32 @llvm.bswap.i32(i32 %1368) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1370 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i317.i = and i32 %1370, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i317.i)
  %tobool.not.i.i.i318.i = icmp eq i32 %and.i.i.i317.i, 0
  br i1 %tobool.not.i.i.i318.i, label %if.else159.i.vdpu_read_mask.exit.i332.i_crit_edge, label %do.end.i.i.i321.i

if.else159.i.vdpu_read_mask.exit.i332.i_crit_edge: ; preds = %if.else159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i332.i

do.end.i.i.i321.i:                                ; preds = %if.else159.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i320.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %1369) #8
  br label %vdpu_read_mask.exit.i332.i

vdpu_read_mask.exit.i332.i:                       ; preds = %do.end.i.i.i321.i, %if.else159.i.vdpu_read_mask.exit.i332.i_crit_edge
  %and.i.i326.i = and i32 %1369, -507905
  %or.i.i329.i = or i32 %and.i.i326.i, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1371 = load i32, ptr @hantro_debug, align 4
  %and.i3.i330.i = and i32 %1371, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i330.i)
  %tobool.not.i.i331.i = icmp eq i32 %and.i3.i330.i, 0
  br i1 %tobool.not.i.i331.i, label %vdpu_read_mask.exit.i332.i.hantro_reg_write.exit337.i_crit_edge, label %do.end.i.i335.i

vdpu_read_mask.exit.i332.i.hantro_reg_write.exit337.i_crit_edge: ; preds = %vdpu_read_mask.exit.i332.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit337.i

do.end.i.i335.i:                                  ; preds = %vdpu_read_mask.exit.i332.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i334.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i329.i) #8
  br label %hantro_reg_write.exit337.i

hantro_reg_write.exit337.i:                       ; preds = %do.end.i.i335.i, %vdpu_read_mask.exit.i332.i.hantro_reg_write.exit337.i_crit_edge
  %1372 = tail call i32 @llvm.bswap.i32(i32 %or.i.i329.i) #5
  %1373 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1373)
  %1374 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i336.i = getelementptr i8, ptr %1374, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i336.i, i32 %1372) #5, !srcloc !45
  %1375 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1375)
  %1376 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i.i339.i = getelementptr i8, ptr %1376, i32 40
  %1377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i339.i) #5, !srcloc !43
  %1378 = tail call i32 @llvm.bswap.i32(i32 %1377) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1379 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i340.i = and i32 %1379, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i340.i)
  %tobool.not.i.i.i341.i = icmp eq i32 %and.i.i.i340.i, 0
  br i1 %tobool.not.i.i.i341.i, label %hantro_reg_write.exit337.i.vdpu_read_mask.exit.i355.i_crit_edge, label %do.end.i.i.i344.i

hantro_reg_write.exit337.i.vdpu_read_mask.exit.i355.i_crit_edge: ; preds = %hantro_reg_write.exit337.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i355.i

do.end.i.i.i344.i:                                ; preds = %hantro_reg_write.exit337.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i343.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 10, i32 noundef %1378) #8
  br label %vdpu_read_mask.exit.i355.i

vdpu_read_mask.exit.i355.i:                       ; preds = %do.end.i.i.i344.i, %hantro_reg_write.exit337.i.vdpu_read_mask.exit.i355.i_crit_edge
  %and.i.i349.i = and i32 %1378, -16252929
  %or.i.i352.i = or i32 %and.i.i349.i, 524288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1380 = load i32, ptr @hantro_debug, align 4
  %and.i3.i353.i = and i32 %1380, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i353.i)
  %tobool.not.i.i354.i = icmp eq i32 %and.i3.i353.i, 0
  br i1 %tobool.not.i.i354.i, label %vdpu_read_mask.exit.i355.i.if.end172.thread.i_crit_edge, label %do.end.i.i358.i

vdpu_read_mask.exit.i355.i.if.end172.thread.i_crit_edge: ; preds = %vdpu_read_mask.exit.i355.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end172.thread.i

do.end.i.i358.i:                                  ; preds = %vdpu_read_mask.exit.i355.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i357.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i352.i) #8
  br label %if.end172.thread.i

if.end172.thread.i:                               ; preds = %do.end.i.i358.i, %vdpu_read_mask.exit.i355.i.if.end172.thread.i_crit_edge
  %1381 = tail call i32 @llvm.bswap.i32(i32 %or.i.i352.i) #5
  %1382 = ptrtoint ptr %dec_base.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %dec_base.i.i.i.i107, align 8
  %add.ptr.i.i359.i = getelementptr i8, ptr %1383, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i359.i, i32 %1381) #5, !srcloc !45
  %conv168.i = trunc i32 %shr.i to i16
  %1384 = ptrtoint ptr %1303 to i32
  call void @__asan_store2_noabort(i32 %1384)
  store i16 %conv168.i, ptr %1303, align 2
  %conv170.i = trunc i32 %shr25.i to i16
  %arrayidx171.i = getelementptr i16, ptr %1303, i32 1
  %1385 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store2_noabort(i32 %1385)
  store i16 %conv170.i, ptr %arrayidx171.i, align 2
  br label %prepare_tile_info_buffer.exit

if.end172.i:                                      ; preds = %for.cond110.loopexit.i.if.end172.i_crit_edge, %for.end.i136.if.end172.i_crit_edge
  %no_chroma.9.i = phi i32 [ %no_chroma.2.lcssa.i, %for.end.i136.if.end172.i_crit_edge ], [ %spec.select.peel.i, %for.cond110.loopexit.i.if.end172.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_chroma.9.i)
  %tobool173.not.i = icmp eq i32 %no_chroma.9.i, 0
  br i1 %tobool173.not.i, label %if.end172.i.prepare_tile_info_buffer.exit_crit_edge, label %do.body175.i

if.end172.i.prepare_tile_info_buffer.exit_crit_edge: ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prepare_tile_info_buffer.exit

do.body175.i:                                     ; preds = %if.end172.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1386 = load i32, ptr @hantro_debug, align 4
  %and176.i = and i32 %1386, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %do.body175.i.prepare_tile_info_buffer.exit_crit_edge, label %do.end181.i

do.body175.i.prepare_tile_info_buffer.exit_crit_edge: ; preds = %do.body175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prepare_tile_info_buffer.exit

do.end181.i:                                      ; preds = %do.body175.i
  call void @__sanitizer_cov_trace_pc() #7
  %call183.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef nonnull @.str.1) #8
  br label %prepare_tile_info_buffer.exit

prepare_tile_info_buffer.exit:                    ; preds = %do.end181.i, %do.body175.i.prepare_tile_info_buffer.exit_crit_edge, %if.end172.i.prepare_tile_info_buffer.exit_crit_edge, %if.end172.thread.i
  %1387 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1387)
  %1388 = load ptr, ptr %ctx, align 8
  %scaling.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 1
  %1389 = ptrtoint ptr %scaling.i to i32
  call void @__asan_load4_noabort(i32 %1389)
  %1390 = load ptr, ptr %scaling.i, align 4
  %1391 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load ptr, ptr %sps2.i, align 4
  %scaling_lists.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 2
  %1393 = ptrtoint ptr %scaling_lists.i to i32
  call void @__asan_load4_noabort(i32 %1393)
  %1394 = load ptr, ptr %scaling_lists.i, align 8
  %flags.i139 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %1392, i32 0, i32 22
  %1395 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_load8_noabort(i32 %1395)
  %1396 = load i64, ptr %flags.i139, align 8
  %and.i140 = and i64 %1396, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i140)
  %tobool.not.i141 = icmp eq i64 %and.i140, 0
  %1397 = trunc i64 %and.i140 to i32
  %dec_base.i.i.i.i142 = getelementptr inbounds %struct.hantro_dev, ptr %1388, i32 0, i32 11
  %1398 = ptrtoint ptr %dec_base.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %1398)
  %1399 = load ptr, ptr %dec_base.i.i.i.i142, align 8
  %add.ptr.i.i.i.i143 = getelementptr i8, ptr %1399, i32 20
  %1400 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i143) #5, !srcloc !43
  %1401 = tail call i32 @llvm.bswap.i32(i32 %1400) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1402 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i144 = and i32 %1402, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i144)
  %tobool.not.i.i.i.i145 = icmp eq i32 %and.i.i.i.i144, 0
  br i1 %tobool.not.i.i.i.i145, label %prepare_tile_info_buffer.exit.vdpu_read_mask.exit.i.i153_crit_edge, label %do.end.i.i.i.i147

prepare_tile_info_buffer.exit.vdpu_read_mask.exit.i.i153_crit_edge: ; preds = %prepare_tile_info_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i153

do.end.i.i.i.i147:                                ; preds = %prepare_tile_info_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 5, i32 noundef %1401) #8
  br label %vdpu_read_mask.exit.i.i153

vdpu_read_mask.exit.i.i153:                       ; preds = %do.end.i.i.i.i147, %prepare_tile_info_buffer.exit.vdpu_read_mask.exit.i.i153_crit_edge
  %and.i.i.i148 = and i32 %1401, -16777217
  %shl4.i.i.i149 = shl nuw nsw i32 %1397, 23
  %or.i.i.i150 = or i32 %and.i.i.i148, %shl4.i.i.i149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1403 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i151 = and i32 %1403, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i151)
  %tobool.not.i.i.i152 = icmp eq i32 %and.i3.i.i151, 0
  br i1 %tobool.not.i.i.i152, label %vdpu_read_mask.exit.i.i153.hantro_reg_write.exit.i157_crit_edge, label %do.end.i.i.i155

vdpu_read_mask.exit.i.i153.hantro_reg_write.exit.i157_crit_edge: ; preds = %vdpu_read_mask.exit.i.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i157

do.end.i.i.i155:                                  ; preds = %vdpu_read_mask.exit.i.i153
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i.i150) #8
  br label %hantro_reg_write.exit.i157

hantro_reg_write.exit.i157:                       ; preds = %do.end.i.i.i155, %vdpu_read_mask.exit.i.i153.hantro_reg_write.exit.i157_crit_edge
  %1404 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i150) #5
  %1405 = ptrtoint ptr %dec_base.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %1405)
  %1406 = load ptr, ptr %dec_base.i.i.i.i142, align 8
  %add.ptr.i.i.i156 = getelementptr i8, ptr %1406, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i156, i32 %1404) #5, !srcloc !45
  br i1 %tobool.not.i141, label %hantro_reg_write.exit.i157.prepare_scaling_list_buffer.exit_crit_edge, label %for.body.preheader.i

hantro_reg_write.exit.i157.prepare_scaling_list_buffer.exit_crit_edge: ; preds = %hantro_reg_write.exit.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %prepare_scaling_list_buffer.exit

for.body.preheader.i:                             ; preds = %hantro_reg_write.exit.i157
  %arrayidx.i158 = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 4, i32 0
  %1407 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load1_noabort(i32 %1407)
  %1408 = load i8, ptr %arrayidx.i158, align 1
  %incdec.ptr.i159 = getelementptr i8, ptr %1394, i32 1
  %1409 = ptrtoint ptr %1394 to i32
  call void @__asan_store1_noabort(i32 %1409)
  store i8 %1408, ptr %1394, align 1
  %arrayidx.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 4, i32 1
  %1410 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %1410)
  %1411 = load i8, ptr %arrayidx.1.i, align 1
  %incdec.ptr.1.i = getelementptr i8, ptr %1394, i32 2
  %1412 = ptrtoint ptr %incdec.ptr.i159 to i32
  call void @__asan_store1_noabort(i32 %1412)
  store i8 %1411, ptr %incdec.ptr.i159, align 1
  %arrayidx.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 4, i32 2
  %1413 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %1413)
  %1414 = load i8, ptr %arrayidx.2.i, align 1
  %incdec.ptr.2.i = getelementptr i8, ptr %1394, i32 3
  %1415 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %1415)
  store i8 %1414, ptr %incdec.ptr.1.i, align 1
  %arrayidx.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 4, i32 3
  %1416 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %1416)
  %1417 = load i8, ptr %arrayidx.3.i, align 1
  %incdec.ptr.3.i = getelementptr i8, ptr %1394, i32 4
  %1418 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %1418)
  store i8 %1417, ptr %incdec.ptr.2.i, align 1
  %arrayidx.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 4, i32 4
  %1419 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %1419)
  %1420 = load i8, ptr %arrayidx.4.i, align 1
  %incdec.ptr.4.i = getelementptr i8, ptr %1394, i32 5
  %1421 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store1_noabort(i32 %1421)
  store i8 %1420, ptr %incdec.ptr.3.i, align 1
  %arrayidx.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 4, i32 5
  %1422 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %1422)
  %1423 = load i8, ptr %arrayidx.5.i, align 1
  %incdec.ptr.5.i = getelementptr i8, ptr %1394, i32 6
  %1424 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store1_noabort(i32 %1424)
  store i8 %1423, ptr %incdec.ptr.4.i, align 1
  %arrayidx8.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 5, i32 0
  %1425 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %1425)
  %1426 = load i8, ptr %arrayidx8.i, align 1
  %incdec.ptr9.i = getelementptr i8, ptr %1394, i32 7
  %1427 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store1_noabort(i32 %1427)
  store i8 %1426, ptr %incdec.ptr.5.i, align 1
  %arrayidx8.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 5, i32 1
  %1428 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load1_noabort(i32 %1428)
  %1429 = load i8, ptr %arrayidx8.1.i, align 1
  %1430 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %1430)
  store i8 %1429, ptr %incdec.ptr9.i, align 1
  %add.ptr.i = getelementptr i8, ptr %1394, i32 16
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.cond16.preheader.i.for.cond16.preheader.i_crit_edge, %for.body.preheader.i
  %i.2183.i = phi i32 [ 0, %for.body.preheader.i ], [ %inc32.i, %for.cond16.preheader.i.for.cond16.preheader.i_crit_edge ]
  %p.2182.i = phi ptr [ %add.ptr.i, %for.body.preheader.i ], [ %incdec.ptr24.3.3.i, %for.cond16.preheader.i.for.cond16.preheader.i_crit_edge ]
  %arrayidx23.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 0
  %1431 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %1431)
  %1432 = load i8, ptr %arrayidx23.i, align 1
  %incdec.ptr24.i = getelementptr i8, ptr %p.2182.i, i32 1
  %1433 = ptrtoint ptr %p.2182.i to i32
  call void @__asan_store1_noabort(i32 %1433)
  store i8 %1432, ptr %p.2182.i, align 1
  %arrayidx23.1.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 4
  %1434 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load1_noabort(i32 %1434)
  %1435 = load i8, ptr %arrayidx23.1.i, align 1
  %incdec.ptr24.1.i = getelementptr i8, ptr %p.2182.i, i32 2
  %1436 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store1_noabort(i32 %1436)
  store i8 %1435, ptr %incdec.ptr24.i, align 1
  %arrayidx23.2.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 8
  %1437 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load1_noabort(i32 %1437)
  %1438 = load i8, ptr %arrayidx23.2.i, align 1
  %incdec.ptr24.2.i = getelementptr i8, ptr %p.2182.i, i32 3
  %1439 = ptrtoint ptr %incdec.ptr24.1.i to i32
  call void @__asan_store1_noabort(i32 %1439)
  store i8 %1438, ptr %incdec.ptr24.1.i, align 1
  %arrayidx23.3.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 12
  %1440 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_load1_noabort(i32 %1440)
  %1441 = load i8, ptr %arrayidx23.3.i, align 1
  %incdec.ptr24.3.i = getelementptr i8, ptr %p.2182.i, i32 4
  %1442 = ptrtoint ptr %incdec.ptr24.2.i to i32
  call void @__asan_store1_noabort(i32 %1442)
  store i8 %1441, ptr %incdec.ptr24.2.i, align 1
  %arrayidx23.1202.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 1
  %1443 = ptrtoint ptr %arrayidx23.1202.i to i32
  call void @__asan_load1_noabort(i32 %1443)
  %1444 = load i8, ptr %arrayidx23.1202.i, align 1
  %incdec.ptr24.1203.i = getelementptr i8, ptr %p.2182.i, i32 5
  %1445 = ptrtoint ptr %incdec.ptr24.3.i to i32
  call void @__asan_store1_noabort(i32 %1445)
  store i8 %1444, ptr %incdec.ptr24.3.i, align 1
  %arrayidx23.1.1.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 5
  %1446 = ptrtoint ptr %arrayidx23.1.1.i to i32
  call void @__asan_load1_noabort(i32 %1446)
  %1447 = load i8, ptr %arrayidx23.1.1.i, align 1
  %incdec.ptr24.1.1.i = getelementptr i8, ptr %p.2182.i, i32 6
  %1448 = ptrtoint ptr %incdec.ptr24.1203.i to i32
  call void @__asan_store1_noabort(i32 %1448)
  store i8 %1447, ptr %incdec.ptr24.1203.i, align 1
  %arrayidx23.2.1.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 9
  %1449 = ptrtoint ptr %arrayidx23.2.1.i to i32
  call void @__asan_load1_noabort(i32 %1449)
  %1450 = load i8, ptr %arrayidx23.2.1.i, align 1
  %incdec.ptr24.2.1.i = getelementptr i8, ptr %p.2182.i, i32 7
  %1451 = ptrtoint ptr %incdec.ptr24.1.1.i to i32
  call void @__asan_store1_noabort(i32 %1451)
  store i8 %1450, ptr %incdec.ptr24.1.1.i, align 1
  %arrayidx23.3.1.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 13
  %1452 = ptrtoint ptr %arrayidx23.3.1.i to i32
  call void @__asan_load1_noabort(i32 %1452)
  %1453 = load i8, ptr %arrayidx23.3.1.i, align 1
  %incdec.ptr24.3.1.i = getelementptr i8, ptr %p.2182.i, i32 8
  %1454 = ptrtoint ptr %incdec.ptr24.2.1.i to i32
  call void @__asan_store1_noabort(i32 %1454)
  store i8 %1453, ptr %incdec.ptr24.2.1.i, align 1
  %arrayidx23.2204.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 2
  %1455 = ptrtoint ptr %arrayidx23.2204.i to i32
  call void @__asan_load1_noabort(i32 %1455)
  %1456 = load i8, ptr %arrayidx23.2204.i, align 1
  %incdec.ptr24.2205.i = getelementptr i8, ptr %p.2182.i, i32 9
  %1457 = ptrtoint ptr %incdec.ptr24.3.1.i to i32
  call void @__asan_store1_noabort(i32 %1457)
  store i8 %1456, ptr %incdec.ptr24.3.1.i, align 1
  %arrayidx23.1.2.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 6
  %1458 = ptrtoint ptr %arrayidx23.1.2.i to i32
  call void @__asan_load1_noabort(i32 %1458)
  %1459 = load i8, ptr %arrayidx23.1.2.i, align 1
  %incdec.ptr24.1.2.i = getelementptr i8, ptr %p.2182.i, i32 10
  %1460 = ptrtoint ptr %incdec.ptr24.2205.i to i32
  call void @__asan_store1_noabort(i32 %1460)
  store i8 %1459, ptr %incdec.ptr24.2205.i, align 1
  %arrayidx23.2.2.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 10
  %1461 = ptrtoint ptr %arrayidx23.2.2.i to i32
  call void @__asan_load1_noabort(i32 %1461)
  %1462 = load i8, ptr %arrayidx23.2.2.i, align 1
  %incdec.ptr24.2.2.i = getelementptr i8, ptr %p.2182.i, i32 11
  %1463 = ptrtoint ptr %incdec.ptr24.1.2.i to i32
  call void @__asan_store1_noabort(i32 %1463)
  store i8 %1462, ptr %incdec.ptr24.1.2.i, align 1
  %arrayidx23.3.2.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 14
  %1464 = ptrtoint ptr %arrayidx23.3.2.i to i32
  call void @__asan_load1_noabort(i32 %1464)
  %1465 = load i8, ptr %arrayidx23.3.2.i, align 1
  %incdec.ptr24.3.2.i = getelementptr i8, ptr %p.2182.i, i32 12
  %1466 = ptrtoint ptr %incdec.ptr24.2.2.i to i32
  call void @__asan_store1_noabort(i32 %1466)
  store i8 %1465, ptr %incdec.ptr24.2.2.i, align 1
  %arrayidx23.3206.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 3
  %1467 = ptrtoint ptr %arrayidx23.3206.i to i32
  call void @__asan_load1_noabort(i32 %1467)
  %1468 = load i8, ptr %arrayidx23.3206.i, align 1
  %incdec.ptr24.3207.i = getelementptr i8, ptr %p.2182.i, i32 13
  %1469 = ptrtoint ptr %incdec.ptr24.3.2.i to i32
  call void @__asan_store1_noabort(i32 %1469)
  store i8 %1468, ptr %incdec.ptr24.3.2.i, align 1
  %arrayidx23.1.3.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 7
  %1470 = ptrtoint ptr %arrayidx23.1.3.i to i32
  call void @__asan_load1_noabort(i32 %1470)
  %1471 = load i8, ptr %arrayidx23.1.3.i, align 1
  %incdec.ptr24.1.3.i = getelementptr i8, ptr %p.2182.i, i32 14
  %1472 = ptrtoint ptr %incdec.ptr24.3207.i to i32
  call void @__asan_store1_noabort(i32 %1472)
  store i8 %1471, ptr %incdec.ptr24.3207.i, align 1
  %arrayidx23.2.3.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 11
  %1473 = ptrtoint ptr %arrayidx23.2.3.i to i32
  call void @__asan_load1_noabort(i32 %1473)
  %1474 = load i8, ptr %arrayidx23.2.3.i, align 1
  %incdec.ptr24.2.3.i = getelementptr i8, ptr %p.2182.i, i32 15
  %1475 = ptrtoint ptr %incdec.ptr24.1.3.i to i32
  call void @__asan_store1_noabort(i32 %1475)
  store i8 %1474, ptr %incdec.ptr24.1.3.i, align 1
  %arrayidx23.3.3.i = getelementptr [6 x [16 x i8]], ptr %1390, i32 0, i32 %i.2183.i, i32 15
  %1476 = ptrtoint ptr %arrayidx23.3.3.i to i32
  call void @__asan_load1_noabort(i32 %1476)
  %1477 = load i8, ptr %arrayidx23.3.3.i, align 1
  %incdec.ptr24.3.3.i = getelementptr i8, ptr %p.2182.i, i32 16
  %1478 = ptrtoint ptr %incdec.ptr24.2.3.i to i32
  call void @__asan_store1_noabort(i32 %1478)
  store i8 %1477, ptr %incdec.ptr24.2.3.i, align 1
  %inc32.i = add nuw nsw i32 %i.2183.i, 1
  %exitcond.not.i160 = icmp eq i32 %inc32.i, 6
  br i1 %exitcond.not.i160, label %for.cond16.preheader.i.for.cond37.preheader.i_crit_edge, label %for.cond16.preheader.i.for.cond16.preheader.i_crit_edge

for.cond16.preheader.i.for.cond16.preheader.i_crit_edge: ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond16.preheader.i

for.cond16.preheader.i.for.cond37.preheader.i_crit_edge: ; preds = %for.cond16.preheader.i
  br label %for.cond37.preheader.i

for.cond37.preheader.i:                           ; preds = %for.cond37.preheader.i.for.cond37.preheader.i_crit_edge, %for.cond16.preheader.i.for.cond37.preheader.i_crit_edge
  %i.3189.i = phi i32 [ %inc55.i, %for.cond37.preheader.i.for.cond37.preheader.i_crit_edge ], [ 0, %for.cond16.preheader.i.for.cond37.preheader.i_crit_edge ]
  %p.5188.i = phi ptr [ %incdec.ptr47.7.7.i, %for.cond37.preheader.i.for.cond37.preheader.i_crit_edge ], [ %incdec.ptr24.3.3.i, %for.cond16.preheader.i.for.cond37.preheader.i_crit_edge ]
  %arrayidx46.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 0
  %1479 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %1479)
  %1480 = load i8, ptr %arrayidx46.i, align 1
  %incdec.ptr47.i = getelementptr i8, ptr %p.5188.i, i32 1
  %1481 = ptrtoint ptr %p.5188.i to i32
  call void @__asan_store1_noabort(i32 %1481)
  store i8 %1480, ptr %p.5188.i, align 1
  %arrayidx46.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 8
  %1482 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_load1_noabort(i32 %1482)
  %1483 = load i8, ptr %arrayidx46.1.i, align 1
  %incdec.ptr47.1.i = getelementptr i8, ptr %p.5188.i, i32 2
  %1484 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_store1_noabort(i32 %1484)
  store i8 %1483, ptr %incdec.ptr47.i, align 1
  %arrayidx46.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 16
  %1485 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_load1_noabort(i32 %1485)
  %1486 = load i8, ptr %arrayidx46.2.i, align 1
  %incdec.ptr47.2.i = getelementptr i8, ptr %p.5188.i, i32 3
  %1487 = ptrtoint ptr %incdec.ptr47.1.i to i32
  call void @__asan_store1_noabort(i32 %1487)
  store i8 %1486, ptr %incdec.ptr47.1.i, align 1
  %arrayidx46.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 24
  %1488 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_load1_noabort(i32 %1488)
  %1489 = load i8, ptr %arrayidx46.3.i, align 1
  %incdec.ptr47.3.i = getelementptr i8, ptr %p.5188.i, i32 4
  %1490 = ptrtoint ptr %incdec.ptr47.2.i to i32
  call void @__asan_store1_noabort(i32 %1490)
  store i8 %1489, ptr %incdec.ptr47.2.i, align 1
  %arrayidx46.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 32
  %1491 = ptrtoint ptr %arrayidx46.4.i to i32
  call void @__asan_load1_noabort(i32 %1491)
  %1492 = load i8, ptr %arrayidx46.4.i, align 1
  %incdec.ptr47.4.i = getelementptr i8, ptr %p.5188.i, i32 5
  %1493 = ptrtoint ptr %incdec.ptr47.3.i to i32
  call void @__asan_store1_noabort(i32 %1493)
  store i8 %1492, ptr %incdec.ptr47.3.i, align 1
  %arrayidx46.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 40
  %1494 = ptrtoint ptr %arrayidx46.5.i to i32
  call void @__asan_load1_noabort(i32 %1494)
  %1495 = load i8, ptr %arrayidx46.5.i, align 1
  %incdec.ptr47.5.i = getelementptr i8, ptr %p.5188.i, i32 6
  %1496 = ptrtoint ptr %incdec.ptr47.4.i to i32
  call void @__asan_store1_noabort(i32 %1496)
  store i8 %1495, ptr %incdec.ptr47.4.i, align 1
  %arrayidx46.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 48
  %1497 = ptrtoint ptr %arrayidx46.6.i to i32
  call void @__asan_load1_noabort(i32 %1497)
  %1498 = load i8, ptr %arrayidx46.6.i, align 1
  %incdec.ptr47.6.i = getelementptr i8, ptr %p.5188.i, i32 7
  %1499 = ptrtoint ptr %incdec.ptr47.5.i to i32
  call void @__asan_store1_noabort(i32 %1499)
  store i8 %1498, ptr %incdec.ptr47.5.i, align 1
  %arrayidx46.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 56
  %1500 = ptrtoint ptr %arrayidx46.7.i to i32
  call void @__asan_load1_noabort(i32 %1500)
  %1501 = load i8, ptr %arrayidx46.7.i, align 1
  %incdec.ptr47.7.i = getelementptr i8, ptr %p.5188.i, i32 8
  %1502 = ptrtoint ptr %incdec.ptr47.6.i to i32
  call void @__asan_store1_noabort(i32 %1502)
  store i8 %1501, ptr %incdec.ptr47.6.i, align 1
  %arrayidx46.1210.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 1
  %1503 = ptrtoint ptr %arrayidx46.1210.i to i32
  call void @__asan_load1_noabort(i32 %1503)
  %1504 = load i8, ptr %arrayidx46.1210.i, align 1
  %incdec.ptr47.1211.i = getelementptr i8, ptr %p.5188.i, i32 9
  %1505 = ptrtoint ptr %incdec.ptr47.7.i to i32
  call void @__asan_store1_noabort(i32 %1505)
  store i8 %1504, ptr %incdec.ptr47.7.i, align 1
  %arrayidx46.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 9
  %1506 = ptrtoint ptr %arrayidx46.1.1.i to i32
  call void @__asan_load1_noabort(i32 %1506)
  %1507 = load i8, ptr %arrayidx46.1.1.i, align 1
  %incdec.ptr47.1.1.i = getelementptr i8, ptr %p.5188.i, i32 10
  %1508 = ptrtoint ptr %incdec.ptr47.1211.i to i32
  call void @__asan_store1_noabort(i32 %1508)
  store i8 %1507, ptr %incdec.ptr47.1211.i, align 1
  %arrayidx46.2.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 17
  %1509 = ptrtoint ptr %arrayidx46.2.1.i to i32
  call void @__asan_load1_noabort(i32 %1509)
  %1510 = load i8, ptr %arrayidx46.2.1.i, align 1
  %incdec.ptr47.2.1.i = getelementptr i8, ptr %p.5188.i, i32 11
  %1511 = ptrtoint ptr %incdec.ptr47.1.1.i to i32
  call void @__asan_store1_noabort(i32 %1511)
  store i8 %1510, ptr %incdec.ptr47.1.1.i, align 1
  %arrayidx46.3.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 25
  %1512 = ptrtoint ptr %arrayidx46.3.1.i to i32
  call void @__asan_load1_noabort(i32 %1512)
  %1513 = load i8, ptr %arrayidx46.3.1.i, align 1
  %incdec.ptr47.3.1.i = getelementptr i8, ptr %p.5188.i, i32 12
  %1514 = ptrtoint ptr %incdec.ptr47.2.1.i to i32
  call void @__asan_store1_noabort(i32 %1514)
  store i8 %1513, ptr %incdec.ptr47.2.1.i, align 1
  %arrayidx46.4.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 33
  %1515 = ptrtoint ptr %arrayidx46.4.1.i to i32
  call void @__asan_load1_noabort(i32 %1515)
  %1516 = load i8, ptr %arrayidx46.4.1.i, align 1
  %incdec.ptr47.4.1.i = getelementptr i8, ptr %p.5188.i, i32 13
  %1517 = ptrtoint ptr %incdec.ptr47.3.1.i to i32
  call void @__asan_store1_noabort(i32 %1517)
  store i8 %1516, ptr %incdec.ptr47.3.1.i, align 1
  %arrayidx46.5.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 41
  %1518 = ptrtoint ptr %arrayidx46.5.1.i to i32
  call void @__asan_load1_noabort(i32 %1518)
  %1519 = load i8, ptr %arrayidx46.5.1.i, align 1
  %incdec.ptr47.5.1.i = getelementptr i8, ptr %p.5188.i, i32 14
  %1520 = ptrtoint ptr %incdec.ptr47.4.1.i to i32
  call void @__asan_store1_noabort(i32 %1520)
  store i8 %1519, ptr %incdec.ptr47.4.1.i, align 1
  %arrayidx46.6.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 49
  %1521 = ptrtoint ptr %arrayidx46.6.1.i to i32
  call void @__asan_load1_noabort(i32 %1521)
  %1522 = load i8, ptr %arrayidx46.6.1.i, align 1
  %incdec.ptr47.6.1.i = getelementptr i8, ptr %p.5188.i, i32 15
  %1523 = ptrtoint ptr %incdec.ptr47.5.1.i to i32
  call void @__asan_store1_noabort(i32 %1523)
  store i8 %1522, ptr %incdec.ptr47.5.1.i, align 1
  %arrayidx46.7.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 57
  %1524 = ptrtoint ptr %arrayidx46.7.1.i to i32
  call void @__asan_load1_noabort(i32 %1524)
  %1525 = load i8, ptr %arrayidx46.7.1.i, align 1
  %incdec.ptr47.7.1.i = getelementptr i8, ptr %p.5188.i, i32 16
  %1526 = ptrtoint ptr %incdec.ptr47.6.1.i to i32
  call void @__asan_store1_noabort(i32 %1526)
  store i8 %1525, ptr %incdec.ptr47.6.1.i, align 1
  %arrayidx46.2212.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 2
  %1527 = ptrtoint ptr %arrayidx46.2212.i to i32
  call void @__asan_load1_noabort(i32 %1527)
  %1528 = load i8, ptr %arrayidx46.2212.i, align 1
  %incdec.ptr47.2213.i = getelementptr i8, ptr %p.5188.i, i32 17
  %1529 = ptrtoint ptr %incdec.ptr47.7.1.i to i32
  call void @__asan_store1_noabort(i32 %1529)
  store i8 %1528, ptr %incdec.ptr47.7.1.i, align 1
  %arrayidx46.1.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 10
  %1530 = ptrtoint ptr %arrayidx46.1.2.i to i32
  call void @__asan_load1_noabort(i32 %1530)
  %1531 = load i8, ptr %arrayidx46.1.2.i, align 1
  %incdec.ptr47.1.2.i = getelementptr i8, ptr %p.5188.i, i32 18
  %1532 = ptrtoint ptr %incdec.ptr47.2213.i to i32
  call void @__asan_store1_noabort(i32 %1532)
  store i8 %1531, ptr %incdec.ptr47.2213.i, align 1
  %arrayidx46.2.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 18
  %1533 = ptrtoint ptr %arrayidx46.2.2.i to i32
  call void @__asan_load1_noabort(i32 %1533)
  %1534 = load i8, ptr %arrayidx46.2.2.i, align 1
  %incdec.ptr47.2.2.i = getelementptr i8, ptr %p.5188.i, i32 19
  %1535 = ptrtoint ptr %incdec.ptr47.1.2.i to i32
  call void @__asan_store1_noabort(i32 %1535)
  store i8 %1534, ptr %incdec.ptr47.1.2.i, align 1
  %arrayidx46.3.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 26
  %1536 = ptrtoint ptr %arrayidx46.3.2.i to i32
  call void @__asan_load1_noabort(i32 %1536)
  %1537 = load i8, ptr %arrayidx46.3.2.i, align 1
  %incdec.ptr47.3.2.i = getelementptr i8, ptr %p.5188.i, i32 20
  %1538 = ptrtoint ptr %incdec.ptr47.2.2.i to i32
  call void @__asan_store1_noabort(i32 %1538)
  store i8 %1537, ptr %incdec.ptr47.2.2.i, align 1
  %arrayidx46.4.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 34
  %1539 = ptrtoint ptr %arrayidx46.4.2.i to i32
  call void @__asan_load1_noabort(i32 %1539)
  %1540 = load i8, ptr %arrayidx46.4.2.i, align 1
  %incdec.ptr47.4.2.i = getelementptr i8, ptr %p.5188.i, i32 21
  %1541 = ptrtoint ptr %incdec.ptr47.3.2.i to i32
  call void @__asan_store1_noabort(i32 %1541)
  store i8 %1540, ptr %incdec.ptr47.3.2.i, align 1
  %arrayidx46.5.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 42
  %1542 = ptrtoint ptr %arrayidx46.5.2.i to i32
  call void @__asan_load1_noabort(i32 %1542)
  %1543 = load i8, ptr %arrayidx46.5.2.i, align 1
  %incdec.ptr47.5.2.i = getelementptr i8, ptr %p.5188.i, i32 22
  %1544 = ptrtoint ptr %incdec.ptr47.4.2.i to i32
  call void @__asan_store1_noabort(i32 %1544)
  store i8 %1543, ptr %incdec.ptr47.4.2.i, align 1
  %arrayidx46.6.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 50
  %1545 = ptrtoint ptr %arrayidx46.6.2.i to i32
  call void @__asan_load1_noabort(i32 %1545)
  %1546 = load i8, ptr %arrayidx46.6.2.i, align 1
  %incdec.ptr47.6.2.i = getelementptr i8, ptr %p.5188.i, i32 23
  %1547 = ptrtoint ptr %incdec.ptr47.5.2.i to i32
  call void @__asan_store1_noabort(i32 %1547)
  store i8 %1546, ptr %incdec.ptr47.5.2.i, align 1
  %arrayidx46.7.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 58
  %1548 = ptrtoint ptr %arrayidx46.7.2.i to i32
  call void @__asan_load1_noabort(i32 %1548)
  %1549 = load i8, ptr %arrayidx46.7.2.i, align 1
  %incdec.ptr47.7.2.i = getelementptr i8, ptr %p.5188.i, i32 24
  %1550 = ptrtoint ptr %incdec.ptr47.6.2.i to i32
  call void @__asan_store1_noabort(i32 %1550)
  store i8 %1549, ptr %incdec.ptr47.6.2.i, align 1
  %arrayidx46.3214.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 3
  %1551 = ptrtoint ptr %arrayidx46.3214.i to i32
  call void @__asan_load1_noabort(i32 %1551)
  %1552 = load i8, ptr %arrayidx46.3214.i, align 1
  %incdec.ptr47.3215.i = getelementptr i8, ptr %p.5188.i, i32 25
  %1553 = ptrtoint ptr %incdec.ptr47.7.2.i to i32
  call void @__asan_store1_noabort(i32 %1553)
  store i8 %1552, ptr %incdec.ptr47.7.2.i, align 1
  %arrayidx46.1.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 11
  %1554 = ptrtoint ptr %arrayidx46.1.3.i to i32
  call void @__asan_load1_noabort(i32 %1554)
  %1555 = load i8, ptr %arrayidx46.1.3.i, align 1
  %incdec.ptr47.1.3.i = getelementptr i8, ptr %p.5188.i, i32 26
  %1556 = ptrtoint ptr %incdec.ptr47.3215.i to i32
  call void @__asan_store1_noabort(i32 %1556)
  store i8 %1555, ptr %incdec.ptr47.3215.i, align 1
  %arrayidx46.2.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 19
  %1557 = ptrtoint ptr %arrayidx46.2.3.i to i32
  call void @__asan_load1_noabort(i32 %1557)
  %1558 = load i8, ptr %arrayidx46.2.3.i, align 1
  %incdec.ptr47.2.3.i = getelementptr i8, ptr %p.5188.i, i32 27
  %1559 = ptrtoint ptr %incdec.ptr47.1.3.i to i32
  call void @__asan_store1_noabort(i32 %1559)
  store i8 %1558, ptr %incdec.ptr47.1.3.i, align 1
  %arrayidx46.3.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 27
  %1560 = ptrtoint ptr %arrayidx46.3.3.i to i32
  call void @__asan_load1_noabort(i32 %1560)
  %1561 = load i8, ptr %arrayidx46.3.3.i, align 1
  %incdec.ptr47.3.3.i = getelementptr i8, ptr %p.5188.i, i32 28
  %1562 = ptrtoint ptr %incdec.ptr47.2.3.i to i32
  call void @__asan_store1_noabort(i32 %1562)
  store i8 %1561, ptr %incdec.ptr47.2.3.i, align 1
  %arrayidx46.4.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 35
  %1563 = ptrtoint ptr %arrayidx46.4.3.i to i32
  call void @__asan_load1_noabort(i32 %1563)
  %1564 = load i8, ptr %arrayidx46.4.3.i, align 1
  %incdec.ptr47.4.3.i = getelementptr i8, ptr %p.5188.i, i32 29
  %1565 = ptrtoint ptr %incdec.ptr47.3.3.i to i32
  call void @__asan_store1_noabort(i32 %1565)
  store i8 %1564, ptr %incdec.ptr47.3.3.i, align 1
  %arrayidx46.5.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 43
  %1566 = ptrtoint ptr %arrayidx46.5.3.i to i32
  call void @__asan_load1_noabort(i32 %1566)
  %1567 = load i8, ptr %arrayidx46.5.3.i, align 1
  %incdec.ptr47.5.3.i = getelementptr i8, ptr %p.5188.i, i32 30
  %1568 = ptrtoint ptr %incdec.ptr47.4.3.i to i32
  call void @__asan_store1_noabort(i32 %1568)
  store i8 %1567, ptr %incdec.ptr47.4.3.i, align 1
  %arrayidx46.6.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 51
  %1569 = ptrtoint ptr %arrayidx46.6.3.i to i32
  call void @__asan_load1_noabort(i32 %1569)
  %1570 = load i8, ptr %arrayidx46.6.3.i, align 1
  %incdec.ptr47.6.3.i = getelementptr i8, ptr %p.5188.i, i32 31
  %1571 = ptrtoint ptr %incdec.ptr47.5.3.i to i32
  call void @__asan_store1_noabort(i32 %1571)
  store i8 %1570, ptr %incdec.ptr47.5.3.i, align 1
  %arrayidx46.7.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 59
  %1572 = ptrtoint ptr %arrayidx46.7.3.i to i32
  call void @__asan_load1_noabort(i32 %1572)
  %1573 = load i8, ptr %arrayidx46.7.3.i, align 1
  %incdec.ptr47.7.3.i = getelementptr i8, ptr %p.5188.i, i32 32
  %1574 = ptrtoint ptr %incdec.ptr47.6.3.i to i32
  call void @__asan_store1_noabort(i32 %1574)
  store i8 %1573, ptr %incdec.ptr47.6.3.i, align 1
  %arrayidx46.4216.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 4
  %1575 = ptrtoint ptr %arrayidx46.4216.i to i32
  call void @__asan_load1_noabort(i32 %1575)
  %1576 = load i8, ptr %arrayidx46.4216.i, align 1
  %incdec.ptr47.4217.i = getelementptr i8, ptr %p.5188.i, i32 33
  %1577 = ptrtoint ptr %incdec.ptr47.7.3.i to i32
  call void @__asan_store1_noabort(i32 %1577)
  store i8 %1576, ptr %incdec.ptr47.7.3.i, align 1
  %arrayidx46.1.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 12
  %1578 = ptrtoint ptr %arrayidx46.1.4.i to i32
  call void @__asan_load1_noabort(i32 %1578)
  %1579 = load i8, ptr %arrayidx46.1.4.i, align 1
  %incdec.ptr47.1.4.i = getelementptr i8, ptr %p.5188.i, i32 34
  %1580 = ptrtoint ptr %incdec.ptr47.4217.i to i32
  call void @__asan_store1_noabort(i32 %1580)
  store i8 %1579, ptr %incdec.ptr47.4217.i, align 1
  %arrayidx46.2.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 20
  %1581 = ptrtoint ptr %arrayidx46.2.4.i to i32
  call void @__asan_load1_noabort(i32 %1581)
  %1582 = load i8, ptr %arrayidx46.2.4.i, align 1
  %incdec.ptr47.2.4.i = getelementptr i8, ptr %p.5188.i, i32 35
  %1583 = ptrtoint ptr %incdec.ptr47.1.4.i to i32
  call void @__asan_store1_noabort(i32 %1583)
  store i8 %1582, ptr %incdec.ptr47.1.4.i, align 1
  %arrayidx46.3.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 28
  %1584 = ptrtoint ptr %arrayidx46.3.4.i to i32
  call void @__asan_load1_noabort(i32 %1584)
  %1585 = load i8, ptr %arrayidx46.3.4.i, align 1
  %incdec.ptr47.3.4.i = getelementptr i8, ptr %p.5188.i, i32 36
  %1586 = ptrtoint ptr %incdec.ptr47.2.4.i to i32
  call void @__asan_store1_noabort(i32 %1586)
  store i8 %1585, ptr %incdec.ptr47.2.4.i, align 1
  %arrayidx46.4.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 36
  %1587 = ptrtoint ptr %arrayidx46.4.4.i to i32
  call void @__asan_load1_noabort(i32 %1587)
  %1588 = load i8, ptr %arrayidx46.4.4.i, align 1
  %incdec.ptr47.4.4.i = getelementptr i8, ptr %p.5188.i, i32 37
  %1589 = ptrtoint ptr %incdec.ptr47.3.4.i to i32
  call void @__asan_store1_noabort(i32 %1589)
  store i8 %1588, ptr %incdec.ptr47.3.4.i, align 1
  %arrayidx46.5.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 44
  %1590 = ptrtoint ptr %arrayidx46.5.4.i to i32
  call void @__asan_load1_noabort(i32 %1590)
  %1591 = load i8, ptr %arrayidx46.5.4.i, align 1
  %incdec.ptr47.5.4.i = getelementptr i8, ptr %p.5188.i, i32 38
  %1592 = ptrtoint ptr %incdec.ptr47.4.4.i to i32
  call void @__asan_store1_noabort(i32 %1592)
  store i8 %1591, ptr %incdec.ptr47.4.4.i, align 1
  %arrayidx46.6.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 52
  %1593 = ptrtoint ptr %arrayidx46.6.4.i to i32
  call void @__asan_load1_noabort(i32 %1593)
  %1594 = load i8, ptr %arrayidx46.6.4.i, align 1
  %incdec.ptr47.6.4.i = getelementptr i8, ptr %p.5188.i, i32 39
  %1595 = ptrtoint ptr %incdec.ptr47.5.4.i to i32
  call void @__asan_store1_noabort(i32 %1595)
  store i8 %1594, ptr %incdec.ptr47.5.4.i, align 1
  %arrayidx46.7.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 60
  %1596 = ptrtoint ptr %arrayidx46.7.4.i to i32
  call void @__asan_load1_noabort(i32 %1596)
  %1597 = load i8, ptr %arrayidx46.7.4.i, align 1
  %incdec.ptr47.7.4.i = getelementptr i8, ptr %p.5188.i, i32 40
  %1598 = ptrtoint ptr %incdec.ptr47.6.4.i to i32
  call void @__asan_store1_noabort(i32 %1598)
  store i8 %1597, ptr %incdec.ptr47.6.4.i, align 1
  %arrayidx46.5218.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 5
  %1599 = ptrtoint ptr %arrayidx46.5218.i to i32
  call void @__asan_load1_noabort(i32 %1599)
  %1600 = load i8, ptr %arrayidx46.5218.i, align 1
  %incdec.ptr47.5219.i = getelementptr i8, ptr %p.5188.i, i32 41
  %1601 = ptrtoint ptr %incdec.ptr47.7.4.i to i32
  call void @__asan_store1_noabort(i32 %1601)
  store i8 %1600, ptr %incdec.ptr47.7.4.i, align 1
  %arrayidx46.1.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 13
  %1602 = ptrtoint ptr %arrayidx46.1.5.i to i32
  call void @__asan_load1_noabort(i32 %1602)
  %1603 = load i8, ptr %arrayidx46.1.5.i, align 1
  %incdec.ptr47.1.5.i = getelementptr i8, ptr %p.5188.i, i32 42
  %1604 = ptrtoint ptr %incdec.ptr47.5219.i to i32
  call void @__asan_store1_noabort(i32 %1604)
  store i8 %1603, ptr %incdec.ptr47.5219.i, align 1
  %arrayidx46.2.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 21
  %1605 = ptrtoint ptr %arrayidx46.2.5.i to i32
  call void @__asan_load1_noabort(i32 %1605)
  %1606 = load i8, ptr %arrayidx46.2.5.i, align 1
  %incdec.ptr47.2.5.i = getelementptr i8, ptr %p.5188.i, i32 43
  %1607 = ptrtoint ptr %incdec.ptr47.1.5.i to i32
  call void @__asan_store1_noabort(i32 %1607)
  store i8 %1606, ptr %incdec.ptr47.1.5.i, align 1
  %arrayidx46.3.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 29
  %1608 = ptrtoint ptr %arrayidx46.3.5.i to i32
  call void @__asan_load1_noabort(i32 %1608)
  %1609 = load i8, ptr %arrayidx46.3.5.i, align 1
  %incdec.ptr47.3.5.i = getelementptr i8, ptr %p.5188.i, i32 44
  %1610 = ptrtoint ptr %incdec.ptr47.2.5.i to i32
  call void @__asan_store1_noabort(i32 %1610)
  store i8 %1609, ptr %incdec.ptr47.2.5.i, align 1
  %arrayidx46.4.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 37
  %1611 = ptrtoint ptr %arrayidx46.4.5.i to i32
  call void @__asan_load1_noabort(i32 %1611)
  %1612 = load i8, ptr %arrayidx46.4.5.i, align 1
  %incdec.ptr47.4.5.i = getelementptr i8, ptr %p.5188.i, i32 45
  %1613 = ptrtoint ptr %incdec.ptr47.3.5.i to i32
  call void @__asan_store1_noabort(i32 %1613)
  store i8 %1612, ptr %incdec.ptr47.3.5.i, align 1
  %arrayidx46.5.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 45
  %1614 = ptrtoint ptr %arrayidx46.5.5.i to i32
  call void @__asan_load1_noabort(i32 %1614)
  %1615 = load i8, ptr %arrayidx46.5.5.i, align 1
  %incdec.ptr47.5.5.i = getelementptr i8, ptr %p.5188.i, i32 46
  %1616 = ptrtoint ptr %incdec.ptr47.4.5.i to i32
  call void @__asan_store1_noabort(i32 %1616)
  store i8 %1615, ptr %incdec.ptr47.4.5.i, align 1
  %arrayidx46.6.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 53
  %1617 = ptrtoint ptr %arrayidx46.6.5.i to i32
  call void @__asan_load1_noabort(i32 %1617)
  %1618 = load i8, ptr %arrayidx46.6.5.i, align 1
  %incdec.ptr47.6.5.i = getelementptr i8, ptr %p.5188.i, i32 47
  %1619 = ptrtoint ptr %incdec.ptr47.5.5.i to i32
  call void @__asan_store1_noabort(i32 %1619)
  store i8 %1618, ptr %incdec.ptr47.5.5.i, align 1
  %arrayidx46.7.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 61
  %1620 = ptrtoint ptr %arrayidx46.7.5.i to i32
  call void @__asan_load1_noabort(i32 %1620)
  %1621 = load i8, ptr %arrayidx46.7.5.i, align 1
  %incdec.ptr47.7.5.i = getelementptr i8, ptr %p.5188.i, i32 48
  %1622 = ptrtoint ptr %incdec.ptr47.6.5.i to i32
  call void @__asan_store1_noabort(i32 %1622)
  store i8 %1621, ptr %incdec.ptr47.6.5.i, align 1
  %arrayidx46.6220.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 6
  %1623 = ptrtoint ptr %arrayidx46.6220.i to i32
  call void @__asan_load1_noabort(i32 %1623)
  %1624 = load i8, ptr %arrayidx46.6220.i, align 1
  %incdec.ptr47.6221.i = getelementptr i8, ptr %p.5188.i, i32 49
  %1625 = ptrtoint ptr %incdec.ptr47.7.5.i to i32
  call void @__asan_store1_noabort(i32 %1625)
  store i8 %1624, ptr %incdec.ptr47.7.5.i, align 1
  %arrayidx46.1.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 14
  %1626 = ptrtoint ptr %arrayidx46.1.6.i to i32
  call void @__asan_load1_noabort(i32 %1626)
  %1627 = load i8, ptr %arrayidx46.1.6.i, align 1
  %incdec.ptr47.1.6.i = getelementptr i8, ptr %p.5188.i, i32 50
  %1628 = ptrtoint ptr %incdec.ptr47.6221.i to i32
  call void @__asan_store1_noabort(i32 %1628)
  store i8 %1627, ptr %incdec.ptr47.6221.i, align 1
  %arrayidx46.2.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 22
  %1629 = ptrtoint ptr %arrayidx46.2.6.i to i32
  call void @__asan_load1_noabort(i32 %1629)
  %1630 = load i8, ptr %arrayidx46.2.6.i, align 1
  %incdec.ptr47.2.6.i = getelementptr i8, ptr %p.5188.i, i32 51
  %1631 = ptrtoint ptr %incdec.ptr47.1.6.i to i32
  call void @__asan_store1_noabort(i32 %1631)
  store i8 %1630, ptr %incdec.ptr47.1.6.i, align 1
  %arrayidx46.3.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 30
  %1632 = ptrtoint ptr %arrayidx46.3.6.i to i32
  call void @__asan_load1_noabort(i32 %1632)
  %1633 = load i8, ptr %arrayidx46.3.6.i, align 1
  %incdec.ptr47.3.6.i = getelementptr i8, ptr %p.5188.i, i32 52
  %1634 = ptrtoint ptr %incdec.ptr47.2.6.i to i32
  call void @__asan_store1_noabort(i32 %1634)
  store i8 %1633, ptr %incdec.ptr47.2.6.i, align 1
  %arrayidx46.4.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 38
  %1635 = ptrtoint ptr %arrayidx46.4.6.i to i32
  call void @__asan_load1_noabort(i32 %1635)
  %1636 = load i8, ptr %arrayidx46.4.6.i, align 1
  %incdec.ptr47.4.6.i = getelementptr i8, ptr %p.5188.i, i32 53
  %1637 = ptrtoint ptr %incdec.ptr47.3.6.i to i32
  call void @__asan_store1_noabort(i32 %1637)
  store i8 %1636, ptr %incdec.ptr47.3.6.i, align 1
  %arrayidx46.5.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 46
  %1638 = ptrtoint ptr %arrayidx46.5.6.i to i32
  call void @__asan_load1_noabort(i32 %1638)
  %1639 = load i8, ptr %arrayidx46.5.6.i, align 1
  %incdec.ptr47.5.6.i = getelementptr i8, ptr %p.5188.i, i32 54
  %1640 = ptrtoint ptr %incdec.ptr47.4.6.i to i32
  call void @__asan_store1_noabort(i32 %1640)
  store i8 %1639, ptr %incdec.ptr47.4.6.i, align 1
  %arrayidx46.6.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 54
  %1641 = ptrtoint ptr %arrayidx46.6.6.i to i32
  call void @__asan_load1_noabort(i32 %1641)
  %1642 = load i8, ptr %arrayidx46.6.6.i, align 1
  %incdec.ptr47.6.6.i = getelementptr i8, ptr %p.5188.i, i32 55
  %1643 = ptrtoint ptr %incdec.ptr47.5.6.i to i32
  call void @__asan_store1_noabort(i32 %1643)
  store i8 %1642, ptr %incdec.ptr47.5.6.i, align 1
  %arrayidx46.7.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 62
  %1644 = ptrtoint ptr %arrayidx46.7.6.i to i32
  call void @__asan_load1_noabort(i32 %1644)
  %1645 = load i8, ptr %arrayidx46.7.6.i, align 1
  %incdec.ptr47.7.6.i = getelementptr i8, ptr %p.5188.i, i32 56
  %1646 = ptrtoint ptr %incdec.ptr47.6.6.i to i32
  call void @__asan_store1_noabort(i32 %1646)
  store i8 %1645, ptr %incdec.ptr47.6.6.i, align 1
  %arrayidx46.7222.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 7
  %1647 = ptrtoint ptr %arrayidx46.7222.i to i32
  call void @__asan_load1_noabort(i32 %1647)
  %1648 = load i8, ptr %arrayidx46.7222.i, align 1
  %incdec.ptr47.7223.i = getelementptr i8, ptr %p.5188.i, i32 57
  %1649 = ptrtoint ptr %incdec.ptr47.7.6.i to i32
  call void @__asan_store1_noabort(i32 %1649)
  store i8 %1648, ptr %incdec.ptr47.7.6.i, align 1
  %arrayidx46.1.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 15
  %1650 = ptrtoint ptr %arrayidx46.1.7.i to i32
  call void @__asan_load1_noabort(i32 %1650)
  %1651 = load i8, ptr %arrayidx46.1.7.i, align 1
  %incdec.ptr47.1.7.i = getelementptr i8, ptr %p.5188.i, i32 58
  %1652 = ptrtoint ptr %incdec.ptr47.7223.i to i32
  call void @__asan_store1_noabort(i32 %1652)
  store i8 %1651, ptr %incdec.ptr47.7223.i, align 1
  %arrayidx46.2.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 23
  %1653 = ptrtoint ptr %arrayidx46.2.7.i to i32
  call void @__asan_load1_noabort(i32 %1653)
  %1654 = load i8, ptr %arrayidx46.2.7.i, align 1
  %incdec.ptr47.2.7.i = getelementptr i8, ptr %p.5188.i, i32 59
  %1655 = ptrtoint ptr %incdec.ptr47.1.7.i to i32
  call void @__asan_store1_noabort(i32 %1655)
  store i8 %1654, ptr %incdec.ptr47.1.7.i, align 1
  %arrayidx46.3.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 31
  %1656 = ptrtoint ptr %arrayidx46.3.7.i to i32
  call void @__asan_load1_noabort(i32 %1656)
  %1657 = load i8, ptr %arrayidx46.3.7.i, align 1
  %incdec.ptr47.3.7.i = getelementptr i8, ptr %p.5188.i, i32 60
  %1658 = ptrtoint ptr %incdec.ptr47.2.7.i to i32
  call void @__asan_store1_noabort(i32 %1658)
  store i8 %1657, ptr %incdec.ptr47.2.7.i, align 1
  %arrayidx46.4.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 39
  %1659 = ptrtoint ptr %arrayidx46.4.7.i to i32
  call void @__asan_load1_noabort(i32 %1659)
  %1660 = load i8, ptr %arrayidx46.4.7.i, align 1
  %incdec.ptr47.4.7.i = getelementptr i8, ptr %p.5188.i, i32 61
  %1661 = ptrtoint ptr %incdec.ptr47.3.7.i to i32
  call void @__asan_store1_noabort(i32 %1661)
  store i8 %1660, ptr %incdec.ptr47.3.7.i, align 1
  %arrayidx46.5.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 47
  %1662 = ptrtoint ptr %arrayidx46.5.7.i to i32
  call void @__asan_load1_noabort(i32 %1662)
  %1663 = load i8, ptr %arrayidx46.5.7.i, align 1
  %incdec.ptr47.5.7.i = getelementptr i8, ptr %p.5188.i, i32 62
  %1664 = ptrtoint ptr %incdec.ptr47.4.7.i to i32
  call void @__asan_store1_noabort(i32 %1664)
  store i8 %1663, ptr %incdec.ptr47.4.7.i, align 1
  %arrayidx46.6.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 55
  %1665 = ptrtoint ptr %arrayidx46.6.7.i to i32
  call void @__asan_load1_noabort(i32 %1665)
  %1666 = load i8, ptr %arrayidx46.6.7.i, align 1
  %incdec.ptr47.6.7.i = getelementptr i8, ptr %p.5188.i, i32 63
  %1667 = ptrtoint ptr %incdec.ptr47.5.7.i to i32
  call void @__asan_store1_noabort(i32 %1667)
  store i8 %1666, ptr %incdec.ptr47.5.7.i, align 1
  %arrayidx46.7.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 1, i32 %i.3189.i, i32 63
  %1668 = ptrtoint ptr %arrayidx46.7.7.i to i32
  call void @__asan_load1_noabort(i32 %1668)
  %1669 = load i8, ptr %arrayidx46.7.7.i, align 1
  %incdec.ptr47.7.7.i = getelementptr i8, ptr %p.5188.i, i32 64
  %1670 = ptrtoint ptr %incdec.ptr47.6.7.i to i32
  call void @__asan_store1_noabort(i32 %1670)
  store i8 %1669, ptr %incdec.ptr47.6.7.i, align 1
  %inc55.i = add nuw nsw i32 %i.3189.i, 1
  %exitcond224.not.i = icmp eq i32 %inc55.i, 6
  br i1 %exitcond224.not.i, label %for.cond37.preheader.i.for.cond60.preheader.i_crit_edge, label %for.cond37.preheader.i.for.cond37.preheader.i_crit_edge

for.cond37.preheader.i.for.cond37.preheader.i_crit_edge: ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond37.preheader.i

for.cond37.preheader.i.for.cond60.preheader.i_crit_edge: ; preds = %for.cond37.preheader.i
  br label %for.cond60.preheader.i

for.cond60.preheader.i:                           ; preds = %for.cond60.preheader.i.for.cond60.preheader.i_crit_edge, %for.cond37.preheader.i.for.cond60.preheader.i_crit_edge
  %i.4195.i = phi i32 [ %inc78.i, %for.cond60.preheader.i.for.cond60.preheader.i_crit_edge ], [ 0, %for.cond37.preheader.i.for.cond60.preheader.i_crit_edge ]
  %p.8194.i = phi ptr [ %incdec.ptr70.7.7.i, %for.cond60.preheader.i.for.cond60.preheader.i_crit_edge ], [ %incdec.ptr47.7.7.i, %for.cond37.preheader.i.for.cond60.preheader.i_crit_edge ]
  %arrayidx69.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 0
  %1671 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %1671)
  %1672 = load i8, ptr %arrayidx69.i, align 1
  %incdec.ptr70.i = getelementptr i8, ptr %p.8194.i, i32 1
  %1673 = ptrtoint ptr %p.8194.i to i32
  call void @__asan_store1_noabort(i32 %1673)
  store i8 %1672, ptr %p.8194.i, align 1
  %arrayidx69.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 8
  %1674 = ptrtoint ptr %arrayidx69.1.i to i32
  call void @__asan_load1_noabort(i32 %1674)
  %1675 = load i8, ptr %arrayidx69.1.i, align 1
  %incdec.ptr70.1.i = getelementptr i8, ptr %p.8194.i, i32 2
  %1676 = ptrtoint ptr %incdec.ptr70.i to i32
  call void @__asan_store1_noabort(i32 %1676)
  store i8 %1675, ptr %incdec.ptr70.i, align 1
  %arrayidx69.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 16
  %1677 = ptrtoint ptr %arrayidx69.2.i to i32
  call void @__asan_load1_noabort(i32 %1677)
  %1678 = load i8, ptr %arrayidx69.2.i, align 1
  %incdec.ptr70.2.i = getelementptr i8, ptr %p.8194.i, i32 3
  %1679 = ptrtoint ptr %incdec.ptr70.1.i to i32
  call void @__asan_store1_noabort(i32 %1679)
  store i8 %1678, ptr %incdec.ptr70.1.i, align 1
  %arrayidx69.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 24
  %1680 = ptrtoint ptr %arrayidx69.3.i to i32
  call void @__asan_load1_noabort(i32 %1680)
  %1681 = load i8, ptr %arrayidx69.3.i, align 1
  %incdec.ptr70.3.i = getelementptr i8, ptr %p.8194.i, i32 4
  %1682 = ptrtoint ptr %incdec.ptr70.2.i to i32
  call void @__asan_store1_noabort(i32 %1682)
  store i8 %1681, ptr %incdec.ptr70.2.i, align 1
  %arrayidx69.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 32
  %1683 = ptrtoint ptr %arrayidx69.4.i to i32
  call void @__asan_load1_noabort(i32 %1683)
  %1684 = load i8, ptr %arrayidx69.4.i, align 1
  %incdec.ptr70.4.i = getelementptr i8, ptr %p.8194.i, i32 5
  %1685 = ptrtoint ptr %incdec.ptr70.3.i to i32
  call void @__asan_store1_noabort(i32 %1685)
  store i8 %1684, ptr %incdec.ptr70.3.i, align 1
  %arrayidx69.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 40
  %1686 = ptrtoint ptr %arrayidx69.5.i to i32
  call void @__asan_load1_noabort(i32 %1686)
  %1687 = load i8, ptr %arrayidx69.5.i, align 1
  %incdec.ptr70.5.i = getelementptr i8, ptr %p.8194.i, i32 6
  %1688 = ptrtoint ptr %incdec.ptr70.4.i to i32
  call void @__asan_store1_noabort(i32 %1688)
  store i8 %1687, ptr %incdec.ptr70.4.i, align 1
  %arrayidx69.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 48
  %1689 = ptrtoint ptr %arrayidx69.6.i to i32
  call void @__asan_load1_noabort(i32 %1689)
  %1690 = load i8, ptr %arrayidx69.6.i, align 1
  %incdec.ptr70.6.i = getelementptr i8, ptr %p.8194.i, i32 7
  %1691 = ptrtoint ptr %incdec.ptr70.5.i to i32
  call void @__asan_store1_noabort(i32 %1691)
  store i8 %1690, ptr %incdec.ptr70.5.i, align 1
  %arrayidx69.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 56
  %1692 = ptrtoint ptr %arrayidx69.7.i to i32
  call void @__asan_load1_noabort(i32 %1692)
  %1693 = load i8, ptr %arrayidx69.7.i, align 1
  %incdec.ptr70.7.i = getelementptr i8, ptr %p.8194.i, i32 8
  %1694 = ptrtoint ptr %incdec.ptr70.6.i to i32
  call void @__asan_store1_noabort(i32 %1694)
  store i8 %1693, ptr %incdec.ptr70.6.i, align 1
  %arrayidx69.1227.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 1
  %1695 = ptrtoint ptr %arrayidx69.1227.i to i32
  call void @__asan_load1_noabort(i32 %1695)
  %1696 = load i8, ptr %arrayidx69.1227.i, align 1
  %incdec.ptr70.1228.i = getelementptr i8, ptr %p.8194.i, i32 9
  %1697 = ptrtoint ptr %incdec.ptr70.7.i to i32
  call void @__asan_store1_noabort(i32 %1697)
  store i8 %1696, ptr %incdec.ptr70.7.i, align 1
  %arrayidx69.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 9
  %1698 = ptrtoint ptr %arrayidx69.1.1.i to i32
  call void @__asan_load1_noabort(i32 %1698)
  %1699 = load i8, ptr %arrayidx69.1.1.i, align 1
  %incdec.ptr70.1.1.i = getelementptr i8, ptr %p.8194.i, i32 10
  %1700 = ptrtoint ptr %incdec.ptr70.1228.i to i32
  call void @__asan_store1_noabort(i32 %1700)
  store i8 %1699, ptr %incdec.ptr70.1228.i, align 1
  %arrayidx69.2.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 17
  %1701 = ptrtoint ptr %arrayidx69.2.1.i to i32
  call void @__asan_load1_noabort(i32 %1701)
  %1702 = load i8, ptr %arrayidx69.2.1.i, align 1
  %incdec.ptr70.2.1.i = getelementptr i8, ptr %p.8194.i, i32 11
  %1703 = ptrtoint ptr %incdec.ptr70.1.1.i to i32
  call void @__asan_store1_noabort(i32 %1703)
  store i8 %1702, ptr %incdec.ptr70.1.1.i, align 1
  %arrayidx69.3.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 25
  %1704 = ptrtoint ptr %arrayidx69.3.1.i to i32
  call void @__asan_load1_noabort(i32 %1704)
  %1705 = load i8, ptr %arrayidx69.3.1.i, align 1
  %incdec.ptr70.3.1.i = getelementptr i8, ptr %p.8194.i, i32 12
  %1706 = ptrtoint ptr %incdec.ptr70.2.1.i to i32
  call void @__asan_store1_noabort(i32 %1706)
  store i8 %1705, ptr %incdec.ptr70.2.1.i, align 1
  %arrayidx69.4.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 33
  %1707 = ptrtoint ptr %arrayidx69.4.1.i to i32
  call void @__asan_load1_noabort(i32 %1707)
  %1708 = load i8, ptr %arrayidx69.4.1.i, align 1
  %incdec.ptr70.4.1.i = getelementptr i8, ptr %p.8194.i, i32 13
  %1709 = ptrtoint ptr %incdec.ptr70.3.1.i to i32
  call void @__asan_store1_noabort(i32 %1709)
  store i8 %1708, ptr %incdec.ptr70.3.1.i, align 1
  %arrayidx69.5.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 41
  %1710 = ptrtoint ptr %arrayidx69.5.1.i to i32
  call void @__asan_load1_noabort(i32 %1710)
  %1711 = load i8, ptr %arrayidx69.5.1.i, align 1
  %incdec.ptr70.5.1.i = getelementptr i8, ptr %p.8194.i, i32 14
  %1712 = ptrtoint ptr %incdec.ptr70.4.1.i to i32
  call void @__asan_store1_noabort(i32 %1712)
  store i8 %1711, ptr %incdec.ptr70.4.1.i, align 1
  %arrayidx69.6.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 49
  %1713 = ptrtoint ptr %arrayidx69.6.1.i to i32
  call void @__asan_load1_noabort(i32 %1713)
  %1714 = load i8, ptr %arrayidx69.6.1.i, align 1
  %incdec.ptr70.6.1.i = getelementptr i8, ptr %p.8194.i, i32 15
  %1715 = ptrtoint ptr %incdec.ptr70.5.1.i to i32
  call void @__asan_store1_noabort(i32 %1715)
  store i8 %1714, ptr %incdec.ptr70.5.1.i, align 1
  %arrayidx69.7.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 57
  %1716 = ptrtoint ptr %arrayidx69.7.1.i to i32
  call void @__asan_load1_noabort(i32 %1716)
  %1717 = load i8, ptr %arrayidx69.7.1.i, align 1
  %incdec.ptr70.7.1.i = getelementptr i8, ptr %p.8194.i, i32 16
  %1718 = ptrtoint ptr %incdec.ptr70.6.1.i to i32
  call void @__asan_store1_noabort(i32 %1718)
  store i8 %1717, ptr %incdec.ptr70.6.1.i, align 1
  %arrayidx69.2229.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 2
  %1719 = ptrtoint ptr %arrayidx69.2229.i to i32
  call void @__asan_load1_noabort(i32 %1719)
  %1720 = load i8, ptr %arrayidx69.2229.i, align 1
  %incdec.ptr70.2230.i = getelementptr i8, ptr %p.8194.i, i32 17
  %1721 = ptrtoint ptr %incdec.ptr70.7.1.i to i32
  call void @__asan_store1_noabort(i32 %1721)
  store i8 %1720, ptr %incdec.ptr70.7.1.i, align 1
  %arrayidx69.1.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 10
  %1722 = ptrtoint ptr %arrayidx69.1.2.i to i32
  call void @__asan_load1_noabort(i32 %1722)
  %1723 = load i8, ptr %arrayidx69.1.2.i, align 1
  %incdec.ptr70.1.2.i = getelementptr i8, ptr %p.8194.i, i32 18
  %1724 = ptrtoint ptr %incdec.ptr70.2230.i to i32
  call void @__asan_store1_noabort(i32 %1724)
  store i8 %1723, ptr %incdec.ptr70.2230.i, align 1
  %arrayidx69.2.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 18
  %1725 = ptrtoint ptr %arrayidx69.2.2.i to i32
  call void @__asan_load1_noabort(i32 %1725)
  %1726 = load i8, ptr %arrayidx69.2.2.i, align 1
  %incdec.ptr70.2.2.i = getelementptr i8, ptr %p.8194.i, i32 19
  %1727 = ptrtoint ptr %incdec.ptr70.1.2.i to i32
  call void @__asan_store1_noabort(i32 %1727)
  store i8 %1726, ptr %incdec.ptr70.1.2.i, align 1
  %arrayidx69.3.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 26
  %1728 = ptrtoint ptr %arrayidx69.3.2.i to i32
  call void @__asan_load1_noabort(i32 %1728)
  %1729 = load i8, ptr %arrayidx69.3.2.i, align 1
  %incdec.ptr70.3.2.i = getelementptr i8, ptr %p.8194.i, i32 20
  %1730 = ptrtoint ptr %incdec.ptr70.2.2.i to i32
  call void @__asan_store1_noabort(i32 %1730)
  store i8 %1729, ptr %incdec.ptr70.2.2.i, align 1
  %arrayidx69.4.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 34
  %1731 = ptrtoint ptr %arrayidx69.4.2.i to i32
  call void @__asan_load1_noabort(i32 %1731)
  %1732 = load i8, ptr %arrayidx69.4.2.i, align 1
  %incdec.ptr70.4.2.i = getelementptr i8, ptr %p.8194.i, i32 21
  %1733 = ptrtoint ptr %incdec.ptr70.3.2.i to i32
  call void @__asan_store1_noabort(i32 %1733)
  store i8 %1732, ptr %incdec.ptr70.3.2.i, align 1
  %arrayidx69.5.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 42
  %1734 = ptrtoint ptr %arrayidx69.5.2.i to i32
  call void @__asan_load1_noabort(i32 %1734)
  %1735 = load i8, ptr %arrayidx69.5.2.i, align 1
  %incdec.ptr70.5.2.i = getelementptr i8, ptr %p.8194.i, i32 22
  %1736 = ptrtoint ptr %incdec.ptr70.4.2.i to i32
  call void @__asan_store1_noabort(i32 %1736)
  store i8 %1735, ptr %incdec.ptr70.4.2.i, align 1
  %arrayidx69.6.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 50
  %1737 = ptrtoint ptr %arrayidx69.6.2.i to i32
  call void @__asan_load1_noabort(i32 %1737)
  %1738 = load i8, ptr %arrayidx69.6.2.i, align 1
  %incdec.ptr70.6.2.i = getelementptr i8, ptr %p.8194.i, i32 23
  %1739 = ptrtoint ptr %incdec.ptr70.5.2.i to i32
  call void @__asan_store1_noabort(i32 %1739)
  store i8 %1738, ptr %incdec.ptr70.5.2.i, align 1
  %arrayidx69.7.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 58
  %1740 = ptrtoint ptr %arrayidx69.7.2.i to i32
  call void @__asan_load1_noabort(i32 %1740)
  %1741 = load i8, ptr %arrayidx69.7.2.i, align 1
  %incdec.ptr70.7.2.i = getelementptr i8, ptr %p.8194.i, i32 24
  %1742 = ptrtoint ptr %incdec.ptr70.6.2.i to i32
  call void @__asan_store1_noabort(i32 %1742)
  store i8 %1741, ptr %incdec.ptr70.6.2.i, align 1
  %arrayidx69.3231.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 3
  %1743 = ptrtoint ptr %arrayidx69.3231.i to i32
  call void @__asan_load1_noabort(i32 %1743)
  %1744 = load i8, ptr %arrayidx69.3231.i, align 1
  %incdec.ptr70.3232.i = getelementptr i8, ptr %p.8194.i, i32 25
  %1745 = ptrtoint ptr %incdec.ptr70.7.2.i to i32
  call void @__asan_store1_noabort(i32 %1745)
  store i8 %1744, ptr %incdec.ptr70.7.2.i, align 1
  %arrayidx69.1.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 11
  %1746 = ptrtoint ptr %arrayidx69.1.3.i to i32
  call void @__asan_load1_noabort(i32 %1746)
  %1747 = load i8, ptr %arrayidx69.1.3.i, align 1
  %incdec.ptr70.1.3.i = getelementptr i8, ptr %p.8194.i, i32 26
  %1748 = ptrtoint ptr %incdec.ptr70.3232.i to i32
  call void @__asan_store1_noabort(i32 %1748)
  store i8 %1747, ptr %incdec.ptr70.3232.i, align 1
  %arrayidx69.2.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 19
  %1749 = ptrtoint ptr %arrayidx69.2.3.i to i32
  call void @__asan_load1_noabort(i32 %1749)
  %1750 = load i8, ptr %arrayidx69.2.3.i, align 1
  %incdec.ptr70.2.3.i = getelementptr i8, ptr %p.8194.i, i32 27
  %1751 = ptrtoint ptr %incdec.ptr70.1.3.i to i32
  call void @__asan_store1_noabort(i32 %1751)
  store i8 %1750, ptr %incdec.ptr70.1.3.i, align 1
  %arrayidx69.3.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 27
  %1752 = ptrtoint ptr %arrayidx69.3.3.i to i32
  call void @__asan_load1_noabort(i32 %1752)
  %1753 = load i8, ptr %arrayidx69.3.3.i, align 1
  %incdec.ptr70.3.3.i = getelementptr i8, ptr %p.8194.i, i32 28
  %1754 = ptrtoint ptr %incdec.ptr70.2.3.i to i32
  call void @__asan_store1_noabort(i32 %1754)
  store i8 %1753, ptr %incdec.ptr70.2.3.i, align 1
  %arrayidx69.4.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 35
  %1755 = ptrtoint ptr %arrayidx69.4.3.i to i32
  call void @__asan_load1_noabort(i32 %1755)
  %1756 = load i8, ptr %arrayidx69.4.3.i, align 1
  %incdec.ptr70.4.3.i = getelementptr i8, ptr %p.8194.i, i32 29
  %1757 = ptrtoint ptr %incdec.ptr70.3.3.i to i32
  call void @__asan_store1_noabort(i32 %1757)
  store i8 %1756, ptr %incdec.ptr70.3.3.i, align 1
  %arrayidx69.5.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 43
  %1758 = ptrtoint ptr %arrayidx69.5.3.i to i32
  call void @__asan_load1_noabort(i32 %1758)
  %1759 = load i8, ptr %arrayidx69.5.3.i, align 1
  %incdec.ptr70.5.3.i = getelementptr i8, ptr %p.8194.i, i32 30
  %1760 = ptrtoint ptr %incdec.ptr70.4.3.i to i32
  call void @__asan_store1_noabort(i32 %1760)
  store i8 %1759, ptr %incdec.ptr70.4.3.i, align 1
  %arrayidx69.6.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 51
  %1761 = ptrtoint ptr %arrayidx69.6.3.i to i32
  call void @__asan_load1_noabort(i32 %1761)
  %1762 = load i8, ptr %arrayidx69.6.3.i, align 1
  %incdec.ptr70.6.3.i = getelementptr i8, ptr %p.8194.i, i32 31
  %1763 = ptrtoint ptr %incdec.ptr70.5.3.i to i32
  call void @__asan_store1_noabort(i32 %1763)
  store i8 %1762, ptr %incdec.ptr70.5.3.i, align 1
  %arrayidx69.7.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 59
  %1764 = ptrtoint ptr %arrayidx69.7.3.i to i32
  call void @__asan_load1_noabort(i32 %1764)
  %1765 = load i8, ptr %arrayidx69.7.3.i, align 1
  %incdec.ptr70.7.3.i = getelementptr i8, ptr %p.8194.i, i32 32
  %1766 = ptrtoint ptr %incdec.ptr70.6.3.i to i32
  call void @__asan_store1_noabort(i32 %1766)
  store i8 %1765, ptr %incdec.ptr70.6.3.i, align 1
  %arrayidx69.4233.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 4
  %1767 = ptrtoint ptr %arrayidx69.4233.i to i32
  call void @__asan_load1_noabort(i32 %1767)
  %1768 = load i8, ptr %arrayidx69.4233.i, align 1
  %incdec.ptr70.4234.i = getelementptr i8, ptr %p.8194.i, i32 33
  %1769 = ptrtoint ptr %incdec.ptr70.7.3.i to i32
  call void @__asan_store1_noabort(i32 %1769)
  store i8 %1768, ptr %incdec.ptr70.7.3.i, align 1
  %arrayidx69.1.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 12
  %1770 = ptrtoint ptr %arrayidx69.1.4.i to i32
  call void @__asan_load1_noabort(i32 %1770)
  %1771 = load i8, ptr %arrayidx69.1.4.i, align 1
  %incdec.ptr70.1.4.i = getelementptr i8, ptr %p.8194.i, i32 34
  %1772 = ptrtoint ptr %incdec.ptr70.4234.i to i32
  call void @__asan_store1_noabort(i32 %1772)
  store i8 %1771, ptr %incdec.ptr70.4234.i, align 1
  %arrayidx69.2.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 20
  %1773 = ptrtoint ptr %arrayidx69.2.4.i to i32
  call void @__asan_load1_noabort(i32 %1773)
  %1774 = load i8, ptr %arrayidx69.2.4.i, align 1
  %incdec.ptr70.2.4.i = getelementptr i8, ptr %p.8194.i, i32 35
  %1775 = ptrtoint ptr %incdec.ptr70.1.4.i to i32
  call void @__asan_store1_noabort(i32 %1775)
  store i8 %1774, ptr %incdec.ptr70.1.4.i, align 1
  %arrayidx69.3.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 28
  %1776 = ptrtoint ptr %arrayidx69.3.4.i to i32
  call void @__asan_load1_noabort(i32 %1776)
  %1777 = load i8, ptr %arrayidx69.3.4.i, align 1
  %incdec.ptr70.3.4.i = getelementptr i8, ptr %p.8194.i, i32 36
  %1778 = ptrtoint ptr %incdec.ptr70.2.4.i to i32
  call void @__asan_store1_noabort(i32 %1778)
  store i8 %1777, ptr %incdec.ptr70.2.4.i, align 1
  %arrayidx69.4.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 36
  %1779 = ptrtoint ptr %arrayidx69.4.4.i to i32
  call void @__asan_load1_noabort(i32 %1779)
  %1780 = load i8, ptr %arrayidx69.4.4.i, align 1
  %incdec.ptr70.4.4.i = getelementptr i8, ptr %p.8194.i, i32 37
  %1781 = ptrtoint ptr %incdec.ptr70.3.4.i to i32
  call void @__asan_store1_noabort(i32 %1781)
  store i8 %1780, ptr %incdec.ptr70.3.4.i, align 1
  %arrayidx69.5.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 44
  %1782 = ptrtoint ptr %arrayidx69.5.4.i to i32
  call void @__asan_load1_noabort(i32 %1782)
  %1783 = load i8, ptr %arrayidx69.5.4.i, align 1
  %incdec.ptr70.5.4.i = getelementptr i8, ptr %p.8194.i, i32 38
  %1784 = ptrtoint ptr %incdec.ptr70.4.4.i to i32
  call void @__asan_store1_noabort(i32 %1784)
  store i8 %1783, ptr %incdec.ptr70.4.4.i, align 1
  %arrayidx69.6.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 52
  %1785 = ptrtoint ptr %arrayidx69.6.4.i to i32
  call void @__asan_load1_noabort(i32 %1785)
  %1786 = load i8, ptr %arrayidx69.6.4.i, align 1
  %incdec.ptr70.6.4.i = getelementptr i8, ptr %p.8194.i, i32 39
  %1787 = ptrtoint ptr %incdec.ptr70.5.4.i to i32
  call void @__asan_store1_noabort(i32 %1787)
  store i8 %1786, ptr %incdec.ptr70.5.4.i, align 1
  %arrayidx69.7.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 60
  %1788 = ptrtoint ptr %arrayidx69.7.4.i to i32
  call void @__asan_load1_noabort(i32 %1788)
  %1789 = load i8, ptr %arrayidx69.7.4.i, align 1
  %incdec.ptr70.7.4.i = getelementptr i8, ptr %p.8194.i, i32 40
  %1790 = ptrtoint ptr %incdec.ptr70.6.4.i to i32
  call void @__asan_store1_noabort(i32 %1790)
  store i8 %1789, ptr %incdec.ptr70.6.4.i, align 1
  %arrayidx69.5235.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 5
  %1791 = ptrtoint ptr %arrayidx69.5235.i to i32
  call void @__asan_load1_noabort(i32 %1791)
  %1792 = load i8, ptr %arrayidx69.5235.i, align 1
  %incdec.ptr70.5236.i = getelementptr i8, ptr %p.8194.i, i32 41
  %1793 = ptrtoint ptr %incdec.ptr70.7.4.i to i32
  call void @__asan_store1_noabort(i32 %1793)
  store i8 %1792, ptr %incdec.ptr70.7.4.i, align 1
  %arrayidx69.1.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 13
  %1794 = ptrtoint ptr %arrayidx69.1.5.i to i32
  call void @__asan_load1_noabort(i32 %1794)
  %1795 = load i8, ptr %arrayidx69.1.5.i, align 1
  %incdec.ptr70.1.5.i = getelementptr i8, ptr %p.8194.i, i32 42
  %1796 = ptrtoint ptr %incdec.ptr70.5236.i to i32
  call void @__asan_store1_noabort(i32 %1796)
  store i8 %1795, ptr %incdec.ptr70.5236.i, align 1
  %arrayidx69.2.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 21
  %1797 = ptrtoint ptr %arrayidx69.2.5.i to i32
  call void @__asan_load1_noabort(i32 %1797)
  %1798 = load i8, ptr %arrayidx69.2.5.i, align 1
  %incdec.ptr70.2.5.i = getelementptr i8, ptr %p.8194.i, i32 43
  %1799 = ptrtoint ptr %incdec.ptr70.1.5.i to i32
  call void @__asan_store1_noabort(i32 %1799)
  store i8 %1798, ptr %incdec.ptr70.1.5.i, align 1
  %arrayidx69.3.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 29
  %1800 = ptrtoint ptr %arrayidx69.3.5.i to i32
  call void @__asan_load1_noabort(i32 %1800)
  %1801 = load i8, ptr %arrayidx69.3.5.i, align 1
  %incdec.ptr70.3.5.i = getelementptr i8, ptr %p.8194.i, i32 44
  %1802 = ptrtoint ptr %incdec.ptr70.2.5.i to i32
  call void @__asan_store1_noabort(i32 %1802)
  store i8 %1801, ptr %incdec.ptr70.2.5.i, align 1
  %arrayidx69.4.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 37
  %1803 = ptrtoint ptr %arrayidx69.4.5.i to i32
  call void @__asan_load1_noabort(i32 %1803)
  %1804 = load i8, ptr %arrayidx69.4.5.i, align 1
  %incdec.ptr70.4.5.i = getelementptr i8, ptr %p.8194.i, i32 45
  %1805 = ptrtoint ptr %incdec.ptr70.3.5.i to i32
  call void @__asan_store1_noabort(i32 %1805)
  store i8 %1804, ptr %incdec.ptr70.3.5.i, align 1
  %arrayidx69.5.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 45
  %1806 = ptrtoint ptr %arrayidx69.5.5.i to i32
  call void @__asan_load1_noabort(i32 %1806)
  %1807 = load i8, ptr %arrayidx69.5.5.i, align 1
  %incdec.ptr70.5.5.i = getelementptr i8, ptr %p.8194.i, i32 46
  %1808 = ptrtoint ptr %incdec.ptr70.4.5.i to i32
  call void @__asan_store1_noabort(i32 %1808)
  store i8 %1807, ptr %incdec.ptr70.4.5.i, align 1
  %arrayidx69.6.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 53
  %1809 = ptrtoint ptr %arrayidx69.6.5.i to i32
  call void @__asan_load1_noabort(i32 %1809)
  %1810 = load i8, ptr %arrayidx69.6.5.i, align 1
  %incdec.ptr70.6.5.i = getelementptr i8, ptr %p.8194.i, i32 47
  %1811 = ptrtoint ptr %incdec.ptr70.5.5.i to i32
  call void @__asan_store1_noabort(i32 %1811)
  store i8 %1810, ptr %incdec.ptr70.5.5.i, align 1
  %arrayidx69.7.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 61
  %1812 = ptrtoint ptr %arrayidx69.7.5.i to i32
  call void @__asan_load1_noabort(i32 %1812)
  %1813 = load i8, ptr %arrayidx69.7.5.i, align 1
  %incdec.ptr70.7.5.i = getelementptr i8, ptr %p.8194.i, i32 48
  %1814 = ptrtoint ptr %incdec.ptr70.6.5.i to i32
  call void @__asan_store1_noabort(i32 %1814)
  store i8 %1813, ptr %incdec.ptr70.6.5.i, align 1
  %arrayidx69.6237.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 6
  %1815 = ptrtoint ptr %arrayidx69.6237.i to i32
  call void @__asan_load1_noabort(i32 %1815)
  %1816 = load i8, ptr %arrayidx69.6237.i, align 1
  %incdec.ptr70.6238.i = getelementptr i8, ptr %p.8194.i, i32 49
  %1817 = ptrtoint ptr %incdec.ptr70.7.5.i to i32
  call void @__asan_store1_noabort(i32 %1817)
  store i8 %1816, ptr %incdec.ptr70.7.5.i, align 1
  %arrayidx69.1.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 14
  %1818 = ptrtoint ptr %arrayidx69.1.6.i to i32
  call void @__asan_load1_noabort(i32 %1818)
  %1819 = load i8, ptr %arrayidx69.1.6.i, align 1
  %incdec.ptr70.1.6.i = getelementptr i8, ptr %p.8194.i, i32 50
  %1820 = ptrtoint ptr %incdec.ptr70.6238.i to i32
  call void @__asan_store1_noabort(i32 %1820)
  store i8 %1819, ptr %incdec.ptr70.6238.i, align 1
  %arrayidx69.2.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 22
  %1821 = ptrtoint ptr %arrayidx69.2.6.i to i32
  call void @__asan_load1_noabort(i32 %1821)
  %1822 = load i8, ptr %arrayidx69.2.6.i, align 1
  %incdec.ptr70.2.6.i = getelementptr i8, ptr %p.8194.i, i32 51
  %1823 = ptrtoint ptr %incdec.ptr70.1.6.i to i32
  call void @__asan_store1_noabort(i32 %1823)
  store i8 %1822, ptr %incdec.ptr70.1.6.i, align 1
  %arrayidx69.3.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 30
  %1824 = ptrtoint ptr %arrayidx69.3.6.i to i32
  call void @__asan_load1_noabort(i32 %1824)
  %1825 = load i8, ptr %arrayidx69.3.6.i, align 1
  %incdec.ptr70.3.6.i = getelementptr i8, ptr %p.8194.i, i32 52
  %1826 = ptrtoint ptr %incdec.ptr70.2.6.i to i32
  call void @__asan_store1_noabort(i32 %1826)
  store i8 %1825, ptr %incdec.ptr70.2.6.i, align 1
  %arrayidx69.4.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 38
  %1827 = ptrtoint ptr %arrayidx69.4.6.i to i32
  call void @__asan_load1_noabort(i32 %1827)
  %1828 = load i8, ptr %arrayidx69.4.6.i, align 1
  %incdec.ptr70.4.6.i = getelementptr i8, ptr %p.8194.i, i32 53
  %1829 = ptrtoint ptr %incdec.ptr70.3.6.i to i32
  call void @__asan_store1_noabort(i32 %1829)
  store i8 %1828, ptr %incdec.ptr70.3.6.i, align 1
  %arrayidx69.5.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 46
  %1830 = ptrtoint ptr %arrayidx69.5.6.i to i32
  call void @__asan_load1_noabort(i32 %1830)
  %1831 = load i8, ptr %arrayidx69.5.6.i, align 1
  %incdec.ptr70.5.6.i = getelementptr i8, ptr %p.8194.i, i32 54
  %1832 = ptrtoint ptr %incdec.ptr70.4.6.i to i32
  call void @__asan_store1_noabort(i32 %1832)
  store i8 %1831, ptr %incdec.ptr70.4.6.i, align 1
  %arrayidx69.6.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 54
  %1833 = ptrtoint ptr %arrayidx69.6.6.i to i32
  call void @__asan_load1_noabort(i32 %1833)
  %1834 = load i8, ptr %arrayidx69.6.6.i, align 1
  %incdec.ptr70.6.6.i = getelementptr i8, ptr %p.8194.i, i32 55
  %1835 = ptrtoint ptr %incdec.ptr70.5.6.i to i32
  call void @__asan_store1_noabort(i32 %1835)
  store i8 %1834, ptr %incdec.ptr70.5.6.i, align 1
  %arrayidx69.7.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 62
  %1836 = ptrtoint ptr %arrayidx69.7.6.i to i32
  call void @__asan_load1_noabort(i32 %1836)
  %1837 = load i8, ptr %arrayidx69.7.6.i, align 1
  %incdec.ptr70.7.6.i = getelementptr i8, ptr %p.8194.i, i32 56
  %1838 = ptrtoint ptr %incdec.ptr70.6.6.i to i32
  call void @__asan_store1_noabort(i32 %1838)
  store i8 %1837, ptr %incdec.ptr70.6.6.i, align 1
  %arrayidx69.7239.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 7
  %1839 = ptrtoint ptr %arrayidx69.7239.i to i32
  call void @__asan_load1_noabort(i32 %1839)
  %1840 = load i8, ptr %arrayidx69.7239.i, align 1
  %incdec.ptr70.7240.i = getelementptr i8, ptr %p.8194.i, i32 57
  %1841 = ptrtoint ptr %incdec.ptr70.7.6.i to i32
  call void @__asan_store1_noabort(i32 %1841)
  store i8 %1840, ptr %incdec.ptr70.7.6.i, align 1
  %arrayidx69.1.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 15
  %1842 = ptrtoint ptr %arrayidx69.1.7.i to i32
  call void @__asan_load1_noabort(i32 %1842)
  %1843 = load i8, ptr %arrayidx69.1.7.i, align 1
  %incdec.ptr70.1.7.i = getelementptr i8, ptr %p.8194.i, i32 58
  %1844 = ptrtoint ptr %incdec.ptr70.7240.i to i32
  call void @__asan_store1_noabort(i32 %1844)
  store i8 %1843, ptr %incdec.ptr70.7240.i, align 1
  %arrayidx69.2.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 23
  %1845 = ptrtoint ptr %arrayidx69.2.7.i to i32
  call void @__asan_load1_noabort(i32 %1845)
  %1846 = load i8, ptr %arrayidx69.2.7.i, align 1
  %incdec.ptr70.2.7.i = getelementptr i8, ptr %p.8194.i, i32 59
  %1847 = ptrtoint ptr %incdec.ptr70.1.7.i to i32
  call void @__asan_store1_noabort(i32 %1847)
  store i8 %1846, ptr %incdec.ptr70.1.7.i, align 1
  %arrayidx69.3.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 31
  %1848 = ptrtoint ptr %arrayidx69.3.7.i to i32
  call void @__asan_load1_noabort(i32 %1848)
  %1849 = load i8, ptr %arrayidx69.3.7.i, align 1
  %incdec.ptr70.3.7.i = getelementptr i8, ptr %p.8194.i, i32 60
  %1850 = ptrtoint ptr %incdec.ptr70.2.7.i to i32
  call void @__asan_store1_noabort(i32 %1850)
  store i8 %1849, ptr %incdec.ptr70.2.7.i, align 1
  %arrayidx69.4.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 39
  %1851 = ptrtoint ptr %arrayidx69.4.7.i to i32
  call void @__asan_load1_noabort(i32 %1851)
  %1852 = load i8, ptr %arrayidx69.4.7.i, align 1
  %incdec.ptr70.4.7.i = getelementptr i8, ptr %p.8194.i, i32 61
  %1853 = ptrtoint ptr %incdec.ptr70.3.7.i to i32
  call void @__asan_store1_noabort(i32 %1853)
  store i8 %1852, ptr %incdec.ptr70.3.7.i, align 1
  %arrayidx69.5.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 47
  %1854 = ptrtoint ptr %arrayidx69.5.7.i to i32
  call void @__asan_load1_noabort(i32 %1854)
  %1855 = load i8, ptr %arrayidx69.5.7.i, align 1
  %incdec.ptr70.5.7.i = getelementptr i8, ptr %p.8194.i, i32 62
  %1856 = ptrtoint ptr %incdec.ptr70.4.7.i to i32
  call void @__asan_store1_noabort(i32 %1856)
  store i8 %1855, ptr %incdec.ptr70.4.7.i, align 1
  %arrayidx69.6.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 55
  %1857 = ptrtoint ptr %arrayidx69.6.7.i to i32
  call void @__asan_load1_noabort(i32 %1857)
  %1858 = load i8, ptr %arrayidx69.6.7.i, align 1
  %incdec.ptr70.6.7.i = getelementptr i8, ptr %p.8194.i, i32 63
  %1859 = ptrtoint ptr %incdec.ptr70.5.7.i to i32
  call void @__asan_store1_noabort(i32 %1859)
  store i8 %1858, ptr %incdec.ptr70.5.7.i, align 1
  %arrayidx69.7.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 2, i32 %i.4195.i, i32 63
  %1860 = ptrtoint ptr %arrayidx69.7.7.i to i32
  call void @__asan_load1_noabort(i32 %1860)
  %1861 = load i8, ptr %arrayidx69.7.7.i, align 1
  %incdec.ptr70.7.7.i = getelementptr i8, ptr %p.8194.i, i32 64
  %1862 = ptrtoint ptr %incdec.ptr70.6.7.i to i32
  call void @__asan_store1_noabort(i32 %1862)
  store i8 %1861, ptr %incdec.ptr70.6.7.i, align 1
  %inc78.i = add nuw nsw i32 %i.4195.i, 1
  %exitcond241.not.i = icmp eq i32 %inc78.i, 6
  br i1 %exitcond241.not.i, label %for.cond60.preheader.i.for.cond83.preheader.i_crit_edge, label %for.cond60.preheader.i.for.cond60.preheader.i_crit_edge

for.cond60.preheader.i.for.cond60.preheader.i_crit_edge: ; preds = %for.cond60.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond60.preheader.i

for.cond60.preheader.i.for.cond83.preheader.i_crit_edge: ; preds = %for.cond60.preheader.i
  br label %for.cond83.preheader.i

for.cond83.preheader.i:                           ; preds = %for.cond83.preheader.i.for.cond83.preheader.i_crit_edge, %for.cond60.preheader.i.for.cond83.preheader.i_crit_edge
  %i.5201.i = phi i32 [ %inc101.i, %for.cond83.preheader.i.for.cond83.preheader.i_crit_edge ], [ 0, %for.cond60.preheader.i.for.cond83.preheader.i_crit_edge ]
  %p.11200.i = phi ptr [ %incdec.ptr93.7.7.i, %for.cond83.preheader.i.for.cond83.preheader.i_crit_edge ], [ %incdec.ptr70.7.7.i, %for.cond60.preheader.i.for.cond83.preheader.i_crit_edge ]
  %arrayidx92.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 0
  %1863 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %1863)
  %1864 = load i8, ptr %arrayidx92.i, align 1
  %incdec.ptr93.i = getelementptr i8, ptr %p.11200.i, i32 1
  %1865 = ptrtoint ptr %p.11200.i to i32
  call void @__asan_store1_noabort(i32 %1865)
  store i8 %1864, ptr %p.11200.i, align 1
  %arrayidx92.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 8
  %1866 = ptrtoint ptr %arrayidx92.1.i to i32
  call void @__asan_load1_noabort(i32 %1866)
  %1867 = load i8, ptr %arrayidx92.1.i, align 1
  %incdec.ptr93.1.i = getelementptr i8, ptr %p.11200.i, i32 2
  %1868 = ptrtoint ptr %incdec.ptr93.i to i32
  call void @__asan_store1_noabort(i32 %1868)
  store i8 %1867, ptr %incdec.ptr93.i, align 1
  %arrayidx92.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 16
  %1869 = ptrtoint ptr %arrayidx92.2.i to i32
  call void @__asan_load1_noabort(i32 %1869)
  %1870 = load i8, ptr %arrayidx92.2.i, align 1
  %incdec.ptr93.2.i = getelementptr i8, ptr %p.11200.i, i32 3
  %1871 = ptrtoint ptr %incdec.ptr93.1.i to i32
  call void @__asan_store1_noabort(i32 %1871)
  store i8 %1870, ptr %incdec.ptr93.1.i, align 1
  %arrayidx92.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 24
  %1872 = ptrtoint ptr %arrayidx92.3.i to i32
  call void @__asan_load1_noabort(i32 %1872)
  %1873 = load i8, ptr %arrayidx92.3.i, align 1
  %incdec.ptr93.3.i = getelementptr i8, ptr %p.11200.i, i32 4
  %1874 = ptrtoint ptr %incdec.ptr93.2.i to i32
  call void @__asan_store1_noabort(i32 %1874)
  store i8 %1873, ptr %incdec.ptr93.2.i, align 1
  %arrayidx92.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 32
  %1875 = ptrtoint ptr %arrayidx92.4.i to i32
  call void @__asan_load1_noabort(i32 %1875)
  %1876 = load i8, ptr %arrayidx92.4.i, align 1
  %incdec.ptr93.4.i = getelementptr i8, ptr %p.11200.i, i32 5
  %1877 = ptrtoint ptr %incdec.ptr93.3.i to i32
  call void @__asan_store1_noabort(i32 %1877)
  store i8 %1876, ptr %incdec.ptr93.3.i, align 1
  %arrayidx92.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 40
  %1878 = ptrtoint ptr %arrayidx92.5.i to i32
  call void @__asan_load1_noabort(i32 %1878)
  %1879 = load i8, ptr %arrayidx92.5.i, align 1
  %incdec.ptr93.5.i = getelementptr i8, ptr %p.11200.i, i32 6
  %1880 = ptrtoint ptr %incdec.ptr93.4.i to i32
  call void @__asan_store1_noabort(i32 %1880)
  store i8 %1879, ptr %incdec.ptr93.4.i, align 1
  %arrayidx92.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 48
  %1881 = ptrtoint ptr %arrayidx92.6.i to i32
  call void @__asan_load1_noabort(i32 %1881)
  %1882 = load i8, ptr %arrayidx92.6.i, align 1
  %incdec.ptr93.6.i = getelementptr i8, ptr %p.11200.i, i32 7
  %1883 = ptrtoint ptr %incdec.ptr93.5.i to i32
  call void @__asan_store1_noabort(i32 %1883)
  store i8 %1882, ptr %incdec.ptr93.5.i, align 1
  %arrayidx92.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 56
  %1884 = ptrtoint ptr %arrayidx92.7.i to i32
  call void @__asan_load1_noabort(i32 %1884)
  %1885 = load i8, ptr %arrayidx92.7.i, align 1
  %incdec.ptr93.7.i = getelementptr i8, ptr %p.11200.i, i32 8
  %1886 = ptrtoint ptr %incdec.ptr93.6.i to i32
  call void @__asan_store1_noabort(i32 %1886)
  store i8 %1885, ptr %incdec.ptr93.6.i, align 1
  %arrayidx92.1244.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 1
  %1887 = ptrtoint ptr %arrayidx92.1244.i to i32
  call void @__asan_load1_noabort(i32 %1887)
  %1888 = load i8, ptr %arrayidx92.1244.i, align 1
  %incdec.ptr93.1245.i = getelementptr i8, ptr %p.11200.i, i32 9
  %1889 = ptrtoint ptr %incdec.ptr93.7.i to i32
  call void @__asan_store1_noabort(i32 %1889)
  store i8 %1888, ptr %incdec.ptr93.7.i, align 1
  %arrayidx92.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 9
  %1890 = ptrtoint ptr %arrayidx92.1.1.i to i32
  call void @__asan_load1_noabort(i32 %1890)
  %1891 = load i8, ptr %arrayidx92.1.1.i, align 1
  %incdec.ptr93.1.1.i = getelementptr i8, ptr %p.11200.i, i32 10
  %1892 = ptrtoint ptr %incdec.ptr93.1245.i to i32
  call void @__asan_store1_noabort(i32 %1892)
  store i8 %1891, ptr %incdec.ptr93.1245.i, align 1
  %arrayidx92.2.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 17
  %1893 = ptrtoint ptr %arrayidx92.2.1.i to i32
  call void @__asan_load1_noabort(i32 %1893)
  %1894 = load i8, ptr %arrayidx92.2.1.i, align 1
  %incdec.ptr93.2.1.i = getelementptr i8, ptr %p.11200.i, i32 11
  %1895 = ptrtoint ptr %incdec.ptr93.1.1.i to i32
  call void @__asan_store1_noabort(i32 %1895)
  store i8 %1894, ptr %incdec.ptr93.1.1.i, align 1
  %arrayidx92.3.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 25
  %1896 = ptrtoint ptr %arrayidx92.3.1.i to i32
  call void @__asan_load1_noabort(i32 %1896)
  %1897 = load i8, ptr %arrayidx92.3.1.i, align 1
  %incdec.ptr93.3.1.i = getelementptr i8, ptr %p.11200.i, i32 12
  %1898 = ptrtoint ptr %incdec.ptr93.2.1.i to i32
  call void @__asan_store1_noabort(i32 %1898)
  store i8 %1897, ptr %incdec.ptr93.2.1.i, align 1
  %arrayidx92.4.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 33
  %1899 = ptrtoint ptr %arrayidx92.4.1.i to i32
  call void @__asan_load1_noabort(i32 %1899)
  %1900 = load i8, ptr %arrayidx92.4.1.i, align 1
  %incdec.ptr93.4.1.i = getelementptr i8, ptr %p.11200.i, i32 13
  %1901 = ptrtoint ptr %incdec.ptr93.3.1.i to i32
  call void @__asan_store1_noabort(i32 %1901)
  store i8 %1900, ptr %incdec.ptr93.3.1.i, align 1
  %arrayidx92.5.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 41
  %1902 = ptrtoint ptr %arrayidx92.5.1.i to i32
  call void @__asan_load1_noabort(i32 %1902)
  %1903 = load i8, ptr %arrayidx92.5.1.i, align 1
  %incdec.ptr93.5.1.i = getelementptr i8, ptr %p.11200.i, i32 14
  %1904 = ptrtoint ptr %incdec.ptr93.4.1.i to i32
  call void @__asan_store1_noabort(i32 %1904)
  store i8 %1903, ptr %incdec.ptr93.4.1.i, align 1
  %arrayidx92.6.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 49
  %1905 = ptrtoint ptr %arrayidx92.6.1.i to i32
  call void @__asan_load1_noabort(i32 %1905)
  %1906 = load i8, ptr %arrayidx92.6.1.i, align 1
  %incdec.ptr93.6.1.i = getelementptr i8, ptr %p.11200.i, i32 15
  %1907 = ptrtoint ptr %incdec.ptr93.5.1.i to i32
  call void @__asan_store1_noabort(i32 %1907)
  store i8 %1906, ptr %incdec.ptr93.5.1.i, align 1
  %arrayidx92.7.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 57
  %1908 = ptrtoint ptr %arrayidx92.7.1.i to i32
  call void @__asan_load1_noabort(i32 %1908)
  %1909 = load i8, ptr %arrayidx92.7.1.i, align 1
  %incdec.ptr93.7.1.i = getelementptr i8, ptr %p.11200.i, i32 16
  %1910 = ptrtoint ptr %incdec.ptr93.6.1.i to i32
  call void @__asan_store1_noabort(i32 %1910)
  store i8 %1909, ptr %incdec.ptr93.6.1.i, align 1
  %arrayidx92.2246.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 2
  %1911 = ptrtoint ptr %arrayidx92.2246.i to i32
  call void @__asan_load1_noabort(i32 %1911)
  %1912 = load i8, ptr %arrayidx92.2246.i, align 1
  %incdec.ptr93.2247.i = getelementptr i8, ptr %p.11200.i, i32 17
  %1913 = ptrtoint ptr %incdec.ptr93.7.1.i to i32
  call void @__asan_store1_noabort(i32 %1913)
  store i8 %1912, ptr %incdec.ptr93.7.1.i, align 1
  %arrayidx92.1.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 10
  %1914 = ptrtoint ptr %arrayidx92.1.2.i to i32
  call void @__asan_load1_noabort(i32 %1914)
  %1915 = load i8, ptr %arrayidx92.1.2.i, align 1
  %incdec.ptr93.1.2.i = getelementptr i8, ptr %p.11200.i, i32 18
  %1916 = ptrtoint ptr %incdec.ptr93.2247.i to i32
  call void @__asan_store1_noabort(i32 %1916)
  store i8 %1915, ptr %incdec.ptr93.2247.i, align 1
  %arrayidx92.2.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 18
  %1917 = ptrtoint ptr %arrayidx92.2.2.i to i32
  call void @__asan_load1_noabort(i32 %1917)
  %1918 = load i8, ptr %arrayidx92.2.2.i, align 1
  %incdec.ptr93.2.2.i = getelementptr i8, ptr %p.11200.i, i32 19
  %1919 = ptrtoint ptr %incdec.ptr93.1.2.i to i32
  call void @__asan_store1_noabort(i32 %1919)
  store i8 %1918, ptr %incdec.ptr93.1.2.i, align 1
  %arrayidx92.3.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 26
  %1920 = ptrtoint ptr %arrayidx92.3.2.i to i32
  call void @__asan_load1_noabort(i32 %1920)
  %1921 = load i8, ptr %arrayidx92.3.2.i, align 1
  %incdec.ptr93.3.2.i = getelementptr i8, ptr %p.11200.i, i32 20
  %1922 = ptrtoint ptr %incdec.ptr93.2.2.i to i32
  call void @__asan_store1_noabort(i32 %1922)
  store i8 %1921, ptr %incdec.ptr93.2.2.i, align 1
  %arrayidx92.4.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 34
  %1923 = ptrtoint ptr %arrayidx92.4.2.i to i32
  call void @__asan_load1_noabort(i32 %1923)
  %1924 = load i8, ptr %arrayidx92.4.2.i, align 1
  %incdec.ptr93.4.2.i = getelementptr i8, ptr %p.11200.i, i32 21
  %1925 = ptrtoint ptr %incdec.ptr93.3.2.i to i32
  call void @__asan_store1_noabort(i32 %1925)
  store i8 %1924, ptr %incdec.ptr93.3.2.i, align 1
  %arrayidx92.5.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 42
  %1926 = ptrtoint ptr %arrayidx92.5.2.i to i32
  call void @__asan_load1_noabort(i32 %1926)
  %1927 = load i8, ptr %arrayidx92.5.2.i, align 1
  %incdec.ptr93.5.2.i = getelementptr i8, ptr %p.11200.i, i32 22
  %1928 = ptrtoint ptr %incdec.ptr93.4.2.i to i32
  call void @__asan_store1_noabort(i32 %1928)
  store i8 %1927, ptr %incdec.ptr93.4.2.i, align 1
  %arrayidx92.6.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 50
  %1929 = ptrtoint ptr %arrayidx92.6.2.i to i32
  call void @__asan_load1_noabort(i32 %1929)
  %1930 = load i8, ptr %arrayidx92.6.2.i, align 1
  %incdec.ptr93.6.2.i = getelementptr i8, ptr %p.11200.i, i32 23
  %1931 = ptrtoint ptr %incdec.ptr93.5.2.i to i32
  call void @__asan_store1_noabort(i32 %1931)
  store i8 %1930, ptr %incdec.ptr93.5.2.i, align 1
  %arrayidx92.7.2.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 58
  %1932 = ptrtoint ptr %arrayidx92.7.2.i to i32
  call void @__asan_load1_noabort(i32 %1932)
  %1933 = load i8, ptr %arrayidx92.7.2.i, align 1
  %incdec.ptr93.7.2.i = getelementptr i8, ptr %p.11200.i, i32 24
  %1934 = ptrtoint ptr %incdec.ptr93.6.2.i to i32
  call void @__asan_store1_noabort(i32 %1934)
  store i8 %1933, ptr %incdec.ptr93.6.2.i, align 1
  %arrayidx92.3248.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 3
  %1935 = ptrtoint ptr %arrayidx92.3248.i to i32
  call void @__asan_load1_noabort(i32 %1935)
  %1936 = load i8, ptr %arrayidx92.3248.i, align 1
  %incdec.ptr93.3249.i = getelementptr i8, ptr %p.11200.i, i32 25
  %1937 = ptrtoint ptr %incdec.ptr93.7.2.i to i32
  call void @__asan_store1_noabort(i32 %1937)
  store i8 %1936, ptr %incdec.ptr93.7.2.i, align 1
  %arrayidx92.1.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 11
  %1938 = ptrtoint ptr %arrayidx92.1.3.i to i32
  call void @__asan_load1_noabort(i32 %1938)
  %1939 = load i8, ptr %arrayidx92.1.3.i, align 1
  %incdec.ptr93.1.3.i = getelementptr i8, ptr %p.11200.i, i32 26
  %1940 = ptrtoint ptr %incdec.ptr93.3249.i to i32
  call void @__asan_store1_noabort(i32 %1940)
  store i8 %1939, ptr %incdec.ptr93.3249.i, align 1
  %arrayidx92.2.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 19
  %1941 = ptrtoint ptr %arrayidx92.2.3.i to i32
  call void @__asan_load1_noabort(i32 %1941)
  %1942 = load i8, ptr %arrayidx92.2.3.i, align 1
  %incdec.ptr93.2.3.i = getelementptr i8, ptr %p.11200.i, i32 27
  %1943 = ptrtoint ptr %incdec.ptr93.1.3.i to i32
  call void @__asan_store1_noabort(i32 %1943)
  store i8 %1942, ptr %incdec.ptr93.1.3.i, align 1
  %arrayidx92.3.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 27
  %1944 = ptrtoint ptr %arrayidx92.3.3.i to i32
  call void @__asan_load1_noabort(i32 %1944)
  %1945 = load i8, ptr %arrayidx92.3.3.i, align 1
  %incdec.ptr93.3.3.i = getelementptr i8, ptr %p.11200.i, i32 28
  %1946 = ptrtoint ptr %incdec.ptr93.2.3.i to i32
  call void @__asan_store1_noabort(i32 %1946)
  store i8 %1945, ptr %incdec.ptr93.2.3.i, align 1
  %arrayidx92.4.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 35
  %1947 = ptrtoint ptr %arrayidx92.4.3.i to i32
  call void @__asan_load1_noabort(i32 %1947)
  %1948 = load i8, ptr %arrayidx92.4.3.i, align 1
  %incdec.ptr93.4.3.i = getelementptr i8, ptr %p.11200.i, i32 29
  %1949 = ptrtoint ptr %incdec.ptr93.3.3.i to i32
  call void @__asan_store1_noabort(i32 %1949)
  store i8 %1948, ptr %incdec.ptr93.3.3.i, align 1
  %arrayidx92.5.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 43
  %1950 = ptrtoint ptr %arrayidx92.5.3.i to i32
  call void @__asan_load1_noabort(i32 %1950)
  %1951 = load i8, ptr %arrayidx92.5.3.i, align 1
  %incdec.ptr93.5.3.i = getelementptr i8, ptr %p.11200.i, i32 30
  %1952 = ptrtoint ptr %incdec.ptr93.4.3.i to i32
  call void @__asan_store1_noabort(i32 %1952)
  store i8 %1951, ptr %incdec.ptr93.4.3.i, align 1
  %arrayidx92.6.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 51
  %1953 = ptrtoint ptr %arrayidx92.6.3.i to i32
  call void @__asan_load1_noabort(i32 %1953)
  %1954 = load i8, ptr %arrayidx92.6.3.i, align 1
  %incdec.ptr93.6.3.i = getelementptr i8, ptr %p.11200.i, i32 31
  %1955 = ptrtoint ptr %incdec.ptr93.5.3.i to i32
  call void @__asan_store1_noabort(i32 %1955)
  store i8 %1954, ptr %incdec.ptr93.5.3.i, align 1
  %arrayidx92.7.3.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 59
  %1956 = ptrtoint ptr %arrayidx92.7.3.i to i32
  call void @__asan_load1_noabort(i32 %1956)
  %1957 = load i8, ptr %arrayidx92.7.3.i, align 1
  %incdec.ptr93.7.3.i = getelementptr i8, ptr %p.11200.i, i32 32
  %1958 = ptrtoint ptr %incdec.ptr93.6.3.i to i32
  call void @__asan_store1_noabort(i32 %1958)
  store i8 %1957, ptr %incdec.ptr93.6.3.i, align 1
  %arrayidx92.4250.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 4
  %1959 = ptrtoint ptr %arrayidx92.4250.i to i32
  call void @__asan_load1_noabort(i32 %1959)
  %1960 = load i8, ptr %arrayidx92.4250.i, align 1
  %incdec.ptr93.4251.i = getelementptr i8, ptr %p.11200.i, i32 33
  %1961 = ptrtoint ptr %incdec.ptr93.7.3.i to i32
  call void @__asan_store1_noabort(i32 %1961)
  store i8 %1960, ptr %incdec.ptr93.7.3.i, align 1
  %arrayidx92.1.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 12
  %1962 = ptrtoint ptr %arrayidx92.1.4.i to i32
  call void @__asan_load1_noabort(i32 %1962)
  %1963 = load i8, ptr %arrayidx92.1.4.i, align 1
  %incdec.ptr93.1.4.i = getelementptr i8, ptr %p.11200.i, i32 34
  %1964 = ptrtoint ptr %incdec.ptr93.4251.i to i32
  call void @__asan_store1_noabort(i32 %1964)
  store i8 %1963, ptr %incdec.ptr93.4251.i, align 1
  %arrayidx92.2.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 20
  %1965 = ptrtoint ptr %arrayidx92.2.4.i to i32
  call void @__asan_load1_noabort(i32 %1965)
  %1966 = load i8, ptr %arrayidx92.2.4.i, align 1
  %incdec.ptr93.2.4.i = getelementptr i8, ptr %p.11200.i, i32 35
  %1967 = ptrtoint ptr %incdec.ptr93.1.4.i to i32
  call void @__asan_store1_noabort(i32 %1967)
  store i8 %1966, ptr %incdec.ptr93.1.4.i, align 1
  %arrayidx92.3.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 28
  %1968 = ptrtoint ptr %arrayidx92.3.4.i to i32
  call void @__asan_load1_noabort(i32 %1968)
  %1969 = load i8, ptr %arrayidx92.3.4.i, align 1
  %incdec.ptr93.3.4.i = getelementptr i8, ptr %p.11200.i, i32 36
  %1970 = ptrtoint ptr %incdec.ptr93.2.4.i to i32
  call void @__asan_store1_noabort(i32 %1970)
  store i8 %1969, ptr %incdec.ptr93.2.4.i, align 1
  %arrayidx92.4.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 36
  %1971 = ptrtoint ptr %arrayidx92.4.4.i to i32
  call void @__asan_load1_noabort(i32 %1971)
  %1972 = load i8, ptr %arrayidx92.4.4.i, align 1
  %incdec.ptr93.4.4.i = getelementptr i8, ptr %p.11200.i, i32 37
  %1973 = ptrtoint ptr %incdec.ptr93.3.4.i to i32
  call void @__asan_store1_noabort(i32 %1973)
  store i8 %1972, ptr %incdec.ptr93.3.4.i, align 1
  %arrayidx92.5.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 44
  %1974 = ptrtoint ptr %arrayidx92.5.4.i to i32
  call void @__asan_load1_noabort(i32 %1974)
  %1975 = load i8, ptr %arrayidx92.5.4.i, align 1
  %incdec.ptr93.5.4.i = getelementptr i8, ptr %p.11200.i, i32 38
  %1976 = ptrtoint ptr %incdec.ptr93.4.4.i to i32
  call void @__asan_store1_noabort(i32 %1976)
  store i8 %1975, ptr %incdec.ptr93.4.4.i, align 1
  %arrayidx92.6.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 52
  %1977 = ptrtoint ptr %arrayidx92.6.4.i to i32
  call void @__asan_load1_noabort(i32 %1977)
  %1978 = load i8, ptr %arrayidx92.6.4.i, align 1
  %incdec.ptr93.6.4.i = getelementptr i8, ptr %p.11200.i, i32 39
  %1979 = ptrtoint ptr %incdec.ptr93.5.4.i to i32
  call void @__asan_store1_noabort(i32 %1979)
  store i8 %1978, ptr %incdec.ptr93.5.4.i, align 1
  %arrayidx92.7.4.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 60
  %1980 = ptrtoint ptr %arrayidx92.7.4.i to i32
  call void @__asan_load1_noabort(i32 %1980)
  %1981 = load i8, ptr %arrayidx92.7.4.i, align 1
  %incdec.ptr93.7.4.i = getelementptr i8, ptr %p.11200.i, i32 40
  %1982 = ptrtoint ptr %incdec.ptr93.6.4.i to i32
  call void @__asan_store1_noabort(i32 %1982)
  store i8 %1981, ptr %incdec.ptr93.6.4.i, align 1
  %arrayidx92.5252.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 5
  %1983 = ptrtoint ptr %arrayidx92.5252.i to i32
  call void @__asan_load1_noabort(i32 %1983)
  %1984 = load i8, ptr %arrayidx92.5252.i, align 1
  %incdec.ptr93.5253.i = getelementptr i8, ptr %p.11200.i, i32 41
  %1985 = ptrtoint ptr %incdec.ptr93.7.4.i to i32
  call void @__asan_store1_noabort(i32 %1985)
  store i8 %1984, ptr %incdec.ptr93.7.4.i, align 1
  %arrayidx92.1.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 13
  %1986 = ptrtoint ptr %arrayidx92.1.5.i to i32
  call void @__asan_load1_noabort(i32 %1986)
  %1987 = load i8, ptr %arrayidx92.1.5.i, align 1
  %incdec.ptr93.1.5.i = getelementptr i8, ptr %p.11200.i, i32 42
  %1988 = ptrtoint ptr %incdec.ptr93.5253.i to i32
  call void @__asan_store1_noabort(i32 %1988)
  store i8 %1987, ptr %incdec.ptr93.5253.i, align 1
  %arrayidx92.2.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 21
  %1989 = ptrtoint ptr %arrayidx92.2.5.i to i32
  call void @__asan_load1_noabort(i32 %1989)
  %1990 = load i8, ptr %arrayidx92.2.5.i, align 1
  %incdec.ptr93.2.5.i = getelementptr i8, ptr %p.11200.i, i32 43
  %1991 = ptrtoint ptr %incdec.ptr93.1.5.i to i32
  call void @__asan_store1_noabort(i32 %1991)
  store i8 %1990, ptr %incdec.ptr93.1.5.i, align 1
  %arrayidx92.3.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 29
  %1992 = ptrtoint ptr %arrayidx92.3.5.i to i32
  call void @__asan_load1_noabort(i32 %1992)
  %1993 = load i8, ptr %arrayidx92.3.5.i, align 1
  %incdec.ptr93.3.5.i = getelementptr i8, ptr %p.11200.i, i32 44
  %1994 = ptrtoint ptr %incdec.ptr93.2.5.i to i32
  call void @__asan_store1_noabort(i32 %1994)
  store i8 %1993, ptr %incdec.ptr93.2.5.i, align 1
  %arrayidx92.4.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 37
  %1995 = ptrtoint ptr %arrayidx92.4.5.i to i32
  call void @__asan_load1_noabort(i32 %1995)
  %1996 = load i8, ptr %arrayidx92.4.5.i, align 1
  %incdec.ptr93.4.5.i = getelementptr i8, ptr %p.11200.i, i32 45
  %1997 = ptrtoint ptr %incdec.ptr93.3.5.i to i32
  call void @__asan_store1_noabort(i32 %1997)
  store i8 %1996, ptr %incdec.ptr93.3.5.i, align 1
  %arrayidx92.5.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 45
  %1998 = ptrtoint ptr %arrayidx92.5.5.i to i32
  call void @__asan_load1_noabort(i32 %1998)
  %1999 = load i8, ptr %arrayidx92.5.5.i, align 1
  %incdec.ptr93.5.5.i = getelementptr i8, ptr %p.11200.i, i32 46
  %2000 = ptrtoint ptr %incdec.ptr93.4.5.i to i32
  call void @__asan_store1_noabort(i32 %2000)
  store i8 %1999, ptr %incdec.ptr93.4.5.i, align 1
  %arrayidx92.6.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 53
  %2001 = ptrtoint ptr %arrayidx92.6.5.i to i32
  call void @__asan_load1_noabort(i32 %2001)
  %2002 = load i8, ptr %arrayidx92.6.5.i, align 1
  %incdec.ptr93.6.5.i = getelementptr i8, ptr %p.11200.i, i32 47
  %2003 = ptrtoint ptr %incdec.ptr93.5.5.i to i32
  call void @__asan_store1_noabort(i32 %2003)
  store i8 %2002, ptr %incdec.ptr93.5.5.i, align 1
  %arrayidx92.7.5.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 61
  %2004 = ptrtoint ptr %arrayidx92.7.5.i to i32
  call void @__asan_load1_noabort(i32 %2004)
  %2005 = load i8, ptr %arrayidx92.7.5.i, align 1
  %incdec.ptr93.7.5.i = getelementptr i8, ptr %p.11200.i, i32 48
  %2006 = ptrtoint ptr %incdec.ptr93.6.5.i to i32
  call void @__asan_store1_noabort(i32 %2006)
  store i8 %2005, ptr %incdec.ptr93.6.5.i, align 1
  %arrayidx92.6254.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 6
  %2007 = ptrtoint ptr %arrayidx92.6254.i to i32
  call void @__asan_load1_noabort(i32 %2007)
  %2008 = load i8, ptr %arrayidx92.6254.i, align 1
  %incdec.ptr93.6255.i = getelementptr i8, ptr %p.11200.i, i32 49
  %2009 = ptrtoint ptr %incdec.ptr93.7.5.i to i32
  call void @__asan_store1_noabort(i32 %2009)
  store i8 %2008, ptr %incdec.ptr93.7.5.i, align 1
  %arrayidx92.1.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 14
  %2010 = ptrtoint ptr %arrayidx92.1.6.i to i32
  call void @__asan_load1_noabort(i32 %2010)
  %2011 = load i8, ptr %arrayidx92.1.6.i, align 1
  %incdec.ptr93.1.6.i = getelementptr i8, ptr %p.11200.i, i32 50
  %2012 = ptrtoint ptr %incdec.ptr93.6255.i to i32
  call void @__asan_store1_noabort(i32 %2012)
  store i8 %2011, ptr %incdec.ptr93.6255.i, align 1
  %arrayidx92.2.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 22
  %2013 = ptrtoint ptr %arrayidx92.2.6.i to i32
  call void @__asan_load1_noabort(i32 %2013)
  %2014 = load i8, ptr %arrayidx92.2.6.i, align 1
  %incdec.ptr93.2.6.i = getelementptr i8, ptr %p.11200.i, i32 51
  %2015 = ptrtoint ptr %incdec.ptr93.1.6.i to i32
  call void @__asan_store1_noabort(i32 %2015)
  store i8 %2014, ptr %incdec.ptr93.1.6.i, align 1
  %arrayidx92.3.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 30
  %2016 = ptrtoint ptr %arrayidx92.3.6.i to i32
  call void @__asan_load1_noabort(i32 %2016)
  %2017 = load i8, ptr %arrayidx92.3.6.i, align 1
  %incdec.ptr93.3.6.i = getelementptr i8, ptr %p.11200.i, i32 52
  %2018 = ptrtoint ptr %incdec.ptr93.2.6.i to i32
  call void @__asan_store1_noabort(i32 %2018)
  store i8 %2017, ptr %incdec.ptr93.2.6.i, align 1
  %arrayidx92.4.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 38
  %2019 = ptrtoint ptr %arrayidx92.4.6.i to i32
  call void @__asan_load1_noabort(i32 %2019)
  %2020 = load i8, ptr %arrayidx92.4.6.i, align 1
  %incdec.ptr93.4.6.i = getelementptr i8, ptr %p.11200.i, i32 53
  %2021 = ptrtoint ptr %incdec.ptr93.3.6.i to i32
  call void @__asan_store1_noabort(i32 %2021)
  store i8 %2020, ptr %incdec.ptr93.3.6.i, align 1
  %arrayidx92.5.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 46
  %2022 = ptrtoint ptr %arrayidx92.5.6.i to i32
  call void @__asan_load1_noabort(i32 %2022)
  %2023 = load i8, ptr %arrayidx92.5.6.i, align 1
  %incdec.ptr93.5.6.i = getelementptr i8, ptr %p.11200.i, i32 54
  %2024 = ptrtoint ptr %incdec.ptr93.4.6.i to i32
  call void @__asan_store1_noabort(i32 %2024)
  store i8 %2023, ptr %incdec.ptr93.4.6.i, align 1
  %arrayidx92.6.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 54
  %2025 = ptrtoint ptr %arrayidx92.6.6.i to i32
  call void @__asan_load1_noabort(i32 %2025)
  %2026 = load i8, ptr %arrayidx92.6.6.i, align 1
  %incdec.ptr93.6.6.i = getelementptr i8, ptr %p.11200.i, i32 55
  %2027 = ptrtoint ptr %incdec.ptr93.5.6.i to i32
  call void @__asan_store1_noabort(i32 %2027)
  store i8 %2026, ptr %incdec.ptr93.5.6.i, align 1
  %arrayidx92.7.6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 62
  %2028 = ptrtoint ptr %arrayidx92.7.6.i to i32
  call void @__asan_load1_noabort(i32 %2028)
  %2029 = load i8, ptr %arrayidx92.7.6.i, align 1
  %incdec.ptr93.7.6.i = getelementptr i8, ptr %p.11200.i, i32 56
  %2030 = ptrtoint ptr %incdec.ptr93.6.6.i to i32
  call void @__asan_store1_noabort(i32 %2030)
  store i8 %2029, ptr %incdec.ptr93.6.6.i, align 1
  %arrayidx92.7256.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 7
  %2031 = ptrtoint ptr %arrayidx92.7256.i to i32
  call void @__asan_load1_noabort(i32 %2031)
  %2032 = load i8, ptr %arrayidx92.7256.i, align 1
  %incdec.ptr93.7257.i = getelementptr i8, ptr %p.11200.i, i32 57
  %2033 = ptrtoint ptr %incdec.ptr93.7.6.i to i32
  call void @__asan_store1_noabort(i32 %2033)
  store i8 %2032, ptr %incdec.ptr93.7.6.i, align 1
  %arrayidx92.1.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 15
  %2034 = ptrtoint ptr %arrayidx92.1.7.i to i32
  call void @__asan_load1_noabort(i32 %2034)
  %2035 = load i8, ptr %arrayidx92.1.7.i, align 1
  %incdec.ptr93.1.7.i = getelementptr i8, ptr %p.11200.i, i32 58
  %2036 = ptrtoint ptr %incdec.ptr93.7257.i to i32
  call void @__asan_store1_noabort(i32 %2036)
  store i8 %2035, ptr %incdec.ptr93.7257.i, align 1
  %arrayidx92.2.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 23
  %2037 = ptrtoint ptr %arrayidx92.2.7.i to i32
  call void @__asan_load1_noabort(i32 %2037)
  %2038 = load i8, ptr %arrayidx92.2.7.i, align 1
  %incdec.ptr93.2.7.i = getelementptr i8, ptr %p.11200.i, i32 59
  %2039 = ptrtoint ptr %incdec.ptr93.1.7.i to i32
  call void @__asan_store1_noabort(i32 %2039)
  store i8 %2038, ptr %incdec.ptr93.1.7.i, align 1
  %arrayidx92.3.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 31
  %2040 = ptrtoint ptr %arrayidx92.3.7.i to i32
  call void @__asan_load1_noabort(i32 %2040)
  %2041 = load i8, ptr %arrayidx92.3.7.i, align 1
  %incdec.ptr93.3.7.i = getelementptr i8, ptr %p.11200.i, i32 60
  %2042 = ptrtoint ptr %incdec.ptr93.2.7.i to i32
  call void @__asan_store1_noabort(i32 %2042)
  store i8 %2041, ptr %incdec.ptr93.2.7.i, align 1
  %arrayidx92.4.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 39
  %2043 = ptrtoint ptr %arrayidx92.4.7.i to i32
  call void @__asan_load1_noabort(i32 %2043)
  %2044 = load i8, ptr %arrayidx92.4.7.i, align 1
  %incdec.ptr93.4.7.i = getelementptr i8, ptr %p.11200.i, i32 61
  %2045 = ptrtoint ptr %incdec.ptr93.3.7.i to i32
  call void @__asan_store1_noabort(i32 %2045)
  store i8 %2044, ptr %incdec.ptr93.3.7.i, align 1
  %arrayidx92.5.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 47
  %2046 = ptrtoint ptr %arrayidx92.5.7.i to i32
  call void @__asan_load1_noabort(i32 %2046)
  %2047 = load i8, ptr %arrayidx92.5.7.i, align 1
  %incdec.ptr93.5.7.i = getelementptr i8, ptr %p.11200.i, i32 62
  %2048 = ptrtoint ptr %incdec.ptr93.4.7.i to i32
  call void @__asan_store1_noabort(i32 %2048)
  store i8 %2047, ptr %incdec.ptr93.4.7.i, align 1
  %arrayidx92.6.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 55
  %2049 = ptrtoint ptr %arrayidx92.6.7.i to i32
  call void @__asan_load1_noabort(i32 %2049)
  %2050 = load i8, ptr %arrayidx92.6.7.i, align 1
  %incdec.ptr93.6.7.i = getelementptr i8, ptr %p.11200.i, i32 63
  %2051 = ptrtoint ptr %incdec.ptr93.5.7.i to i32
  call void @__asan_store1_noabort(i32 %2051)
  store i8 %2050, ptr %incdec.ptr93.5.7.i, align 1
  %arrayidx92.7.7.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %1390, i32 0, i32 3, i32 %i.5201.i, i32 63
  %2052 = ptrtoint ptr %arrayidx92.7.7.i to i32
  call void @__asan_load1_noabort(i32 %2052)
  %2053 = load i8, ptr %arrayidx92.7.7.i, align 1
  %incdec.ptr93.7.7.i = getelementptr i8, ptr %p.11200.i, i32 64
  %2054 = ptrtoint ptr %incdec.ptr93.6.7.i to i32
  call void @__asan_store1_noabort(i32 %2054)
  store i8 %2053, ptr %incdec.ptr93.6.7.i, align 1
  %inc101.i = add nuw nsw i32 %i.5201.i, 1
  %exitcond258.not.i = icmp eq i32 %inc101.i, 2
  br i1 %exitcond258.not.i, label %for.end102.i, label %for.cond83.preheader.i.for.cond83.preheader.i_crit_edge

for.cond83.preheader.i.for.cond83.preheader.i_crit_edge: ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond83.preheader.i

for.end102.i:                                     ; preds = %for.cond83.preheader.i
  %dma.i161 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 3
  %2055 = ptrtoint ptr %dma.i161 to i32
  call void @__asan_load4_noabort(i32 %2055)
  %2056 = load i32, ptr %dma.i161, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2057 = load i32, ptr @hantro_debug, align 4
  %and.i.i168.i = and i32 %2057, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168.i)
  %tobool.not.i.i169.i = icmp eq i32 %and.i.i168.i, 0
  br i1 %tobool.not.i.i169.i, label %for.end102.i.hantro_write_addr.exit.i162_crit_edge, label %do.end.i.i171.i

for.end102.i.hantro_write_addr.exit.i162_crit_edge: ; preds = %for.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i162

do.end.i.i171.i:                                  ; preds = %for.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 171, i32 noundef %2056) #8
  br label %hantro_write_addr.exit.i162

hantro_write_addr.exit.i162:                      ; preds = %do.end.i.i171.i, %for.end102.i.hantro_write_addr.exit.i162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %2058 = tail call i32 @llvm.bswap.i32(i32 %2056) #5
  %2059 = ptrtoint ptr %dec_base.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %2059)
  %2060 = load ptr, ptr %dec_base.i.i.i.i142, align 8
  %add.ptr.i.i172.i = getelementptr i8, ptr %2060, i32 684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172.i, i32 %2058) #5, !srcloc !45
  br label %prepare_scaling_list_buffer.exit

prepare_scaling_list_buffer.exit:                 ; preds = %hantro_write_addr.exit.i162, %hantro_reg_write.exit.i157.prepare_scaling_list_buffer.exit_crit_edge
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #5
  %dec_base.i.i.i163 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %2061 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2061)
  %2062 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i164 = getelementptr i8, ptr %2062, i32 12
  %2063 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i164) #5, !srcloc !43
  %2064 = tail call i32 @llvm.bswap.i32(i32 %2063) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2065 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i165 = and i32 %2065, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i165)
  %tobool.not.i.i.i166 = icmp eq i32 %and.i.i.i165, 0
  br i1 %tobool.not.i.i.i166, label %prepare_scaling_list_buffer.exit.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i167

prepare_scaling_list_buffer.exit.vdpu_read_mask.exit.i_crit_edge: ; preds = %prepare_scaling_list_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i167:                                  ; preds = %prepare_scaling_list_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 3, i32 noundef %2064) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i167, %prepare_scaling_list_buffer.exit.vdpu_read_mask.exit.i_crit_edge
  %and.i.i = and i32 %2064, 134217727
  %or.i.i = or i32 %and.i.i, 1610612736
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2066 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %2066, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i) #8
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge
  %2067 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %2068 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2068)
  %2069 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2069, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2067) #5, !srcloc !45
  %2070 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2070)
  %2071 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i170 = getelementptr i8, ptr %2071, i32 232
  %2072 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i170) #5, !srcloc !43
  %2073 = tail call i32 @llvm.bswap.i32(i32 %2072) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2074 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i171 = and i32 %2074, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i171)
  %tobool.not.i.i.i172 = icmp eq i32 %and.i.i.i171, 0
  br i1 %tobool.not.i.i.i172, label %hantro_reg_write.exit.vdpu_read_mask.exit.i186_crit_edge, label %do.end.i.i.i175

hantro_reg_write.exit.vdpu_read_mask.exit.i186_crit_edge: ; preds = %hantro_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i186

do.end.i.i.i175:                                  ; preds = %hantro_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 58, i32 noundef %2073) #8
  br label %vdpu_read_mask.exit.i186

vdpu_read_mask.exit.i186:                         ; preds = %do.end.i.i.i175, %hantro_reg_write.exit.vdpu_read_mask.exit.i186_crit_edge
  %or.i.i183 = or i32 %2073, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2075 = load i32, ptr @hantro_debug, align 4
  %and.i3.i184 = and i32 %2075, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i184)
  %tobool.not.i.i185 = icmp eq i32 %and.i3.i184, 0
  br i1 %tobool.not.i.i185, label %vdpu_read_mask.exit.i186.hantro_reg_write.exit191_crit_edge, label %do.end.i.i189

vdpu_read_mask.exit.i186.hantro_reg_write.exit191_crit_edge: ; preds = %vdpu_read_mask.exit.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit191

do.end.i.i189:                                    ; preds = %vdpu_read_mask.exit.i186
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i183) #8
  br label %hantro_reg_write.exit191

hantro_reg_write.exit191:                         ; preds = %do.end.i.i189, %vdpu_read_mask.exit.i186.hantro_reg_write.exit191_crit_edge
  %2076 = tail call i32 @llvm.bswap.i32(i32 %or.i.i183) #5
  %2077 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2077)
  %2078 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i190 = getelementptr i8, ptr %2078, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i190, i32 %2076) #5, !srcloc !45
  %2079 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2079)
  %2080 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i193 = getelementptr i8, ptr %2080, i32 12
  %2081 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i193) #5, !srcloc !43
  %2082 = tail call i32 @llvm.bswap.i32(i32 %2081) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2083 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i194 = and i32 %2083, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i194)
  %tobool.not.i.i.i195 = icmp eq i32 %and.i.i.i194, 0
  br i1 %tobool.not.i.i.i195, label %hantro_reg_write.exit191.vdpu_read_mask.exit.i206_crit_edge, label %do.end.i.i.i198

hantro_reg_write.exit191.vdpu_read_mask.exit.i206_crit_edge: ; preds = %hantro_reg_write.exit191
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i206

do.end.i.i.i198:                                  ; preds = %hantro_reg_write.exit191
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 3, i32 noundef %2082) #8
  br label %vdpu_read_mask.exit.i206

vdpu_read_mask.exit.i206:                         ; preds = %do.end.i.i.i198, %hantro_reg_write.exit191.vdpu_read_mask.exit.i206_crit_edge
  %and.i.i203 = and i32 %2082, -32769
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2084 = load i32, ptr @hantro_debug, align 4
  %and.i3.i204 = and i32 %2084, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i204)
  %tobool.not.i.i205 = icmp eq i32 %and.i3.i204, 0
  br i1 %tobool.not.i.i205, label %vdpu_read_mask.exit.i206.hantro_reg_write.exit211_crit_edge, label %do.end.i.i209

vdpu_read_mask.exit.i206.hantro_reg_write.exit211_crit_edge: ; preds = %vdpu_read_mask.exit.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit211

do.end.i.i209:                                    ; preds = %vdpu_read_mask.exit.i206
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 3, i32 noundef %and.i.i203) #8
  br label %hantro_reg_write.exit211

hantro_reg_write.exit211:                         ; preds = %do.end.i.i209, %vdpu_read_mask.exit.i206.hantro_reg_write.exit211_crit_edge
  %2085 = tail call i32 @llvm.bswap.i32(i32 %and.i.i203) #5
  %2086 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2086)
  %2087 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i210 = getelementptr i8, ptr %2087, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i210, i32 %2085) #5, !srcloc !45
  %2088 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2088)
  %2089 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i213 = getelementptr i8, ptr %2089, i32 12
  %2090 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i213) #5, !srcloc !43
  %2091 = tail call i32 @llvm.bswap.i32(i32 %2090) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2092 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i214 = and i32 %2092, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i214)
  %tobool.not.i.i.i215 = icmp eq i32 %and.i.i.i214, 0
  br i1 %tobool.not.i.i.i215, label %hantro_reg_write.exit211.vdpu_read_mask.exit.i229_crit_edge, label %do.end.i.i.i218

hantro_reg_write.exit211.vdpu_read_mask.exit.i229_crit_edge: ; preds = %hantro_reg_write.exit211
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i229

do.end.i.i.i218:                                  ; preds = %hantro_reg_write.exit211
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 3, i32 noundef %2091) #8
  br label %vdpu_read_mask.exit.i229

vdpu_read_mask.exit.i229:                         ; preds = %do.end.i.i.i218, %hantro_reg_write.exit211.vdpu_read_mask.exit.i229_crit_edge
  %or.i.i226 = or i32 %2091, 131072
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2093 = load i32, ptr @hantro_debug, align 4
  %and.i3.i227 = and i32 %2093, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i227)
  %tobool.not.i.i228 = icmp eq i32 %and.i3.i227, 0
  br i1 %tobool.not.i.i228, label %vdpu_read_mask.exit.i229.hantro_reg_write.exit234_crit_edge, label %do.end.i.i232

vdpu_read_mask.exit.i229.hantro_reg_write.exit234_crit_edge: ; preds = %vdpu_read_mask.exit.i229
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit234

do.end.i.i232:                                    ; preds = %vdpu_read_mask.exit.i229
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i226) #8
  br label %hantro_reg_write.exit234

hantro_reg_write.exit234:                         ; preds = %do.end.i.i232, %vdpu_read_mask.exit.i229.hantro_reg_write.exit234_crit_edge
  %2094 = tail call i32 @llvm.bswap.i32(i32 %or.i.i226) #5
  %2095 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2095)
  %2096 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i233 = getelementptr i8, ptr %2096, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i233, i32 %2094) #5, !srcloc !45
  %2097 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2097)
  %2098 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i236 = getelementptr i8, ptr %2098, i32 232
  %2099 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i236) #5, !srcloc !43
  %2100 = tail call i32 @llvm.bswap.i32(i32 %2099) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2101 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i237 = and i32 %2101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i237)
  %tobool.not.i.i.i238 = icmp eq i32 %and.i.i.i237, 0
  br i1 %tobool.not.i.i.i238, label %hantro_reg_write.exit234.vdpu_read_mask.exit.i252_crit_edge, label %do.end.i.i.i241

hantro_reg_write.exit234.vdpu_read_mask.exit.i252_crit_edge: ; preds = %hantro_reg_write.exit234
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i252

do.end.i.i.i241:                                  ; preds = %hantro_reg_write.exit234
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 58, i32 noundef %2100) #8
  br label %vdpu_read_mask.exit.i252

vdpu_read_mask.exit.i252:                         ; preds = %do.end.i.i.i241, %hantro_reg_write.exit234.vdpu_read_mask.exit.i252_crit_edge
  %and.i.i246 = and i32 %2100, -1793
  %or.i.i249 = or i32 %and.i.i246, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2102 = load i32, ptr @hantro_debug, align 4
  %and.i3.i250 = and i32 %2102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i250)
  %tobool.not.i.i251 = icmp eq i32 %and.i3.i250, 0
  br i1 %tobool.not.i.i251, label %vdpu_read_mask.exit.i252.hantro_reg_write.exit257_crit_edge, label %do.end.i.i255

vdpu_read_mask.exit.i252.hantro_reg_write.exit257_crit_edge: ; preds = %vdpu_read_mask.exit.i252
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit257

do.end.i.i255:                                    ; preds = %vdpu_read_mask.exit.i252
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i249) #8
  br label %hantro_reg_write.exit257

hantro_reg_write.exit257:                         ; preds = %do.end.i.i255, %vdpu_read_mask.exit.i252.hantro_reg_write.exit257_crit_edge
  %2103 = tail call i32 @llvm.bswap.i32(i32 %or.i.i249) #5
  %2104 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2104)
  %2105 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i256 = getelementptr i8, ptr %2105, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i256, i32 %2103) #5, !srcloc !45
  %2106 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2106)
  %2107 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i259 = getelementptr i8, ptr %2107, i32 232
  %2108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i259) #5, !srcloc !43
  %2109 = tail call i32 @llvm.bswap.i32(i32 %2108) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2110 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i260 = and i32 %2110, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i260)
  %tobool.not.i.i.i261 = icmp eq i32 %and.i.i.i260, 0
  br i1 %tobool.not.i.i.i261, label %hantro_reg_write.exit257.vdpu_read_mask.exit.i275_crit_edge, label %do.end.i.i.i264

hantro_reg_write.exit257.vdpu_read_mask.exit.i275_crit_edge: ; preds = %hantro_reg_write.exit257
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i275

do.end.i.i.i264:                                  ; preds = %hantro_reg_write.exit257
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 58, i32 noundef %2109) #8
  br label %vdpu_read_mask.exit.i275

vdpu_read_mask.exit.i275:                         ; preds = %do.end.i.i.i264, %hantro_reg_write.exit257.vdpu_read_mask.exit.i275_crit_edge
  %and.i.i269 = and i32 %2109, -256
  %or.i.i272 = or i32 %and.i.i269, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2111 = load i32, ptr @hantro_debug, align 4
  %and.i3.i273 = and i32 %2111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i273)
  %tobool.not.i.i274 = icmp eq i32 %and.i3.i273, 0
  br i1 %tobool.not.i.i274, label %vdpu_read_mask.exit.i275.hantro_reg_write.exit280_crit_edge, label %do.end.i.i278

vdpu_read_mask.exit.i275.hantro_reg_write.exit280_crit_edge: ; preds = %vdpu_read_mask.exit.i275
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit280

do.end.i.i278:                                    ; preds = %vdpu_read_mask.exit.i275
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i272) #8
  br label %hantro_reg_write.exit280

hantro_reg_write.exit280:                         ; preds = %do.end.i.i278, %vdpu_read_mask.exit.i275.hantro_reg_write.exit280_crit_edge
  %2112 = tail call i32 @llvm.bswap.i32(i32 %or.i.i272) #5
  %2113 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2113)
  %2114 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i279 = getelementptr i8, ptr %2114, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i279, i32 %2112) #5, !srcloc !45
  %2115 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2115)
  %2116 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i282 = getelementptr i8, ptr %2116, i32 8
  %2117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i282) #5, !srcloc !43
  %2118 = tail call i32 @llvm.bswap.i32(i32 %2117) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2119 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i283 = and i32 %2119, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i283)
  %tobool.not.i.i.i284 = icmp eq i32 %and.i.i.i283, 0
  br i1 %tobool.not.i.i.i284, label %hantro_reg_write.exit280.vdpu_read_mask.exit.i298_crit_edge, label %do.end.i.i.i287

hantro_reg_write.exit280.vdpu_read_mask.exit.i298_crit_edge: ; preds = %hantro_reg_write.exit280
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i298

do.end.i.i.i287:                                  ; preds = %hantro_reg_write.exit280
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 2, i32 noundef %2118) #8
  br label %vdpu_read_mask.exit.i298

vdpu_read_mask.exit.i298:                         ; preds = %do.end.i.i.i287, %hantro_reg_write.exit280.vdpu_read_mask.exit.i298_crit_edge
  %or.i.i295 = or i32 %2118, -268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2120 = load i32, ptr @hantro_debug, align 4
  %and.i3.i296 = and i32 %2120, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i296)
  %tobool.not.i.i297 = icmp eq i32 %and.i3.i296, 0
  br i1 %tobool.not.i.i297, label %vdpu_read_mask.exit.i298.hantro_reg_write.exit303_crit_edge, label %do.end.i.i301

vdpu_read_mask.exit.i298.hantro_reg_write.exit303_crit_edge: ; preds = %vdpu_read_mask.exit.i298
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit303

do.end.i.i301:                                    ; preds = %vdpu_read_mask.exit.i298
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i295) #8
  br label %hantro_reg_write.exit303

hantro_reg_write.exit303:                         ; preds = %do.end.i.i301, %vdpu_read_mask.exit.i298.hantro_reg_write.exit303_crit_edge
  %2121 = tail call i32 @llvm.bswap.i32(i32 %or.i.i295) #5
  %2122 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2122)
  %2123 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i302 = getelementptr i8, ptr %2123, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i302, i32 %2121) #5, !srcloc !45
  %2124 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2124)
  %2125 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i305 = getelementptr i8, ptr %2125, i32 8
  %2126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i305) #5, !srcloc !43
  %2127 = tail call i32 @llvm.bswap.i32(i32 %2126) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2128 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i306 = and i32 %2128, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i306)
  %tobool.not.i.i.i307 = icmp eq i32 %and.i.i.i306, 0
  br i1 %tobool.not.i.i.i307, label %hantro_reg_write.exit303.vdpu_read_mask.exit.i321_crit_edge, label %do.end.i.i.i310

hantro_reg_write.exit303.vdpu_read_mask.exit.i321_crit_edge: ; preds = %hantro_reg_write.exit303
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i321

do.end.i.i.i310:                                  ; preds = %hantro_reg_write.exit303
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 2, i32 noundef %2127) #8
  br label %vdpu_read_mask.exit.i321

vdpu_read_mask.exit.i321:                         ; preds = %do.end.i.i.i310, %hantro_reg_write.exit303.vdpu_read_mask.exit.i321_crit_edge
  %or.i.i318 = or i32 %2127, 15728640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2129 = load i32, ptr @hantro_debug, align 4
  %and.i3.i319 = and i32 %2129, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i319)
  %tobool.not.i.i320 = icmp eq i32 %and.i3.i319, 0
  br i1 %tobool.not.i.i320, label %vdpu_read_mask.exit.i321.hantro_reg_write.exit326_crit_edge, label %do.end.i.i324

vdpu_read_mask.exit.i321.hantro_reg_write.exit326_crit_edge: ; preds = %vdpu_read_mask.exit.i321
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit326

do.end.i.i324:                                    ; preds = %vdpu_read_mask.exit.i321
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i318) #8
  br label %hantro_reg_write.exit326

hantro_reg_write.exit326:                         ; preds = %do.end.i.i324, %vdpu_read_mask.exit.i321.hantro_reg_write.exit326_crit_edge
  %2130 = tail call i32 @llvm.bswap.i32(i32 %or.i.i318) #5
  %2131 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2131)
  %2132 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i325 = getelementptr i8, ptr %2132, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i325, i32 %2130) #5, !srcloc !45
  %2133 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2133)
  %2134 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i.i328 = getelementptr i8, ptr %2134, i32 12
  %2135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i328) #5, !srcloc !43
  %2136 = tail call i32 @llvm.bswap.i32(i32 %2135) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2137 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i329 = and i32 %2137, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i329)
  %tobool.not.i.i.i330 = icmp eq i32 %and.i.i.i329, 0
  br i1 %tobool.not.i.i.i330, label %hantro_reg_write.exit326.vdpu_read_mask.exit.i344_crit_edge, label %do.end.i.i.i333

hantro_reg_write.exit326.vdpu_read_mask.exit.i344_crit_edge: ; preds = %hantro_reg_write.exit326
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i344

do.end.i.i.i333:                                  ; preds = %hantro_reg_write.exit326
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef 413, i32 noundef 3, i32 noundef %2136) #8
  br label %vdpu_read_mask.exit.i344

vdpu_read_mask.exit.i344:                         ; preds = %do.end.i.i.i333, %hantro_reg_write.exit326.vdpu_read_mask.exit.i344_crit_edge
  %or.i.i341 = or i32 %2136, 15728640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2138 = load i32, ptr @hantro_debug, align 4
  %and.i3.i342 = and i32 %2138, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i342)
  %tobool.not.i.i343 = icmp eq i32 %and.i3.i342, 0
  br i1 %tobool.not.i.i343, label %vdpu_read_mask.exit.i344.hantro_reg_write.exit349_crit_edge, label %do.end.i.i347

vdpu_read_mask.exit.i344.hantro_reg_write.exit349_crit_edge: ; preds = %vdpu_read_mask.exit.i344
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit349

do.end.i.i347:                                    ; preds = %vdpu_read_mask.exit.i344
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i341) #8
  br label %hantro_reg_write.exit349

hantro_reg_write.exit349:                         ; preds = %do.end.i.i347, %vdpu_read_mask.exit.i344.hantro_reg_write.exit349_crit_edge
  %2139 = tail call i32 @llvm.bswap.i32(i32 %or.i.i341) #5
  %2140 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2140)
  %2141 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i.i348 = getelementptr i8, ptr %2141, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i348, i32 %2139) #5, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2142 = load i32, ptr @hantro_debug, align 4
  %and.i350 = and i32 %2142, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i350)
  %tobool.not.i351 = icmp eq i32 %and.i350, 0
  br i1 %tobool.not.i351, label %hantro_reg_write.exit349.vdpu_write.exit_crit_edge, label %do.end.i353

hantro_reg_write.exit349.vdpu_write.exit_crit_edge: ; preds = %hantro_reg_write.exit349
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_write.exit

do.end.i353:                                      ; preds = %hantro_reg_write.exit349
  call void @__sanitizer_cov_trace_pc() #7
  %call.i352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 1, i32 noundef 1) #8
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i353, %hantro_reg_write.exit349.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %2143 = ptrtoint ptr %dec_base.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %2143)
  %2144 = load ptr, ptr %dec_base.i.i.i163, align 8
  %add.ptr.i354 = getelementptr i8, ptr %2144, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354, i32 16777216) #5, !srcloc !45
  br label %cleanup

cleanup:                                          ; preds = %vdpu_write.exit, %if.end93.i.cleanup_crit_edge, %hantro_get_dec_buf_addr.exit.i.cleanup_crit_edge, %for.body58.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vdpu_write.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end93.i.cleanup_crit_edge ], [ -12, %hantro_get_dec_buf_addr.exit.i.cleanup_crit_edge ], [ -12, %for.body58.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_g2_check_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_hevc_dec_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_end_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_hevc_chroma_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_hevc_motion_vectors_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_hevc_get_ref_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_hevc_add_ref_buf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_hevc_ref_remove_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @set_ref.cur_poc, !1, !"cur_poc", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c", i32 363, i32 33}
!2 = !{ptr @set_ref_pic_list.ref_pic_regs0, !3, !"ref_pic_regs0", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c", i32 278, i32 33}
!4 = !{ptr @set_ref_pic_list.ref_pic_regs1, !5, !"ref_pic_regs1", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c", i32 296, i32 33}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c", i32 38, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @prepare_tile_info_buffer._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @prepare_tile_info_buffer._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c", i32 44, i32 3}
!14 = !{ptr @prepare_tile_info_buffer._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @prepare_tile_info_buffer._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/hantro/hantro_g2_hevc_dec.c", i32 103, i32 3}
!18 = !{ptr @prepare_tile_info_buffer._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @prepare_tile_info_buffer._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/hantro/hantro.h", i32 392, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vdpu_write_relaxed._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @vdpu_write_relaxed._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!28 = !{ptr @vdpu_read._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vdpu_read._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!32 = !{ptr @vdpu_write._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vdpu_write._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 4230376}
!44 = !{i64 2156579654}
!45 = !{i64 4229958}
!46 = !{i64 2156578645}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.peeled.count", i32 1}
