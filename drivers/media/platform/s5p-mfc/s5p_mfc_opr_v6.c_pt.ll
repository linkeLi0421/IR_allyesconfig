; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.117, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.114, i32 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.116 }
%struct.anon.116 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.117 = type { i32 }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_buf_size_v6 = type { i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@mfc_regs = internal global { %struct.s5p_mfc_regs, [256 x i8] } zeroinitializer, align 32
@s5p_mfc_ops_v6 = internal global { %struct.s5p_mfc_hw_ops, [36 x i8] } { %struct.s5p_mfc_hw_ops { ptr @s5p_mfc_alloc_dec_temp_buffers_v6, ptr @s5p_mfc_release_dec_desc_buffer_v6, ptr @s5p_mfc_alloc_codec_buffers_v6, ptr @s5p_mfc_release_codec_buffers_v6, ptr @s5p_mfc_alloc_instance_buffer_v6, ptr @s5p_mfc_release_instance_buffer_v6, ptr @s5p_mfc_alloc_dev_context_buffer_v6, ptr @s5p_mfc_release_dev_context_buffer_v6, ptr @s5p_mfc_dec_calc_dpb_size_v6, ptr @s5p_mfc_enc_calc_src_size_v6, ptr @s5p_mfc_set_enc_stream_buffer_v6, ptr @s5p_mfc_set_enc_frame_buffer_v6, ptr @s5p_mfc_get_enc_frame_buffer_v6, ptr @s5p_mfc_try_run_v6, ptr @s5p_mfc_clear_int_flags_v6, ptr @s5p_mfc_get_dspl_y_adr_v6, ptr @s5p_mfc_get_dec_y_adr_v6, ptr @s5p_mfc_get_dspl_status_v6, ptr @s5p_mfc_get_dec_status_v6, ptr @s5p_mfc_get_dec_frame_type_v6, ptr @s5p_mfc_get_disp_frame_type_v6, ptr @s5p_mfc_get_consumed_stream_v6, ptr @s5p_mfc_get_int_reason_v6, ptr @s5p_mfc_get_int_err_v6, ptr @s5p_mfc_err_dec_v6, ptr @s5p_mfc_get_img_width_v6, ptr @s5p_mfc_get_img_height_v6, ptr @s5p_mfc_get_dpb_count_v6, ptr @s5p_mfc_get_mv_count_v6, ptr @s5p_mfc_get_inst_no_v6, ptr @s5p_mfc_get_enc_strm_size_v6, ptr @s5p_mfc_get_enc_slice_type_v6, ptr @s5p_mfc_get_enc_dpb_count_v6, ptr @s5p_mfc_get_pic_type_top_v6, ptr @s5p_mfc_get_pic_type_bot_v6, ptr @s5p_mfc_get_crop_info_h_v6, ptr @s5p_mfc_get_crop_info_v_v6, ptr @s5p_mfc_get_min_scratch_buf_size, ptr @s5p_mfc_get_e_min_scratch_buf_size }, [36 x i8] zeroinitializer }, align 32
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_alloc_codec_buffers_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s:%d: Luma size:%d Chroma size:%d MV size:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5p_mfc_alloc_codec_buffers_v6\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Totals bufs: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.5 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.3, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:%d: recon luma size: %zu chroma size: %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.8 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.6, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:%d: Use min scratch buffer size\0A\00", [58 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.11 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.9, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.13 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.12, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.15 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.14, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.17 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.16, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.19 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.18, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.21 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.20, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.23 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.22, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.25 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.24, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.27 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.26, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.29 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.28, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.31 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.30, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v6._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: Failed to allocate Bank1 memory\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v6._entry_ptr.34 = internal global ptr @s5p_mfc_alloc_codec_buffers_v6._entry.32, section ".printk_index", align 4
@s5p_mfc_alloc_instance_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: enter\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5p_mfc_alloc_instance_buffer_v6\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_instance_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_alloc_instance_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_alloc_instance_buffer_v6._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s:%d: Codec type(%d) should be checked!\0A\00", [52 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_instance_buffer_v6._entry_ptr.39 = internal global ptr @s5p_mfc_alloc_instance_buffer_v6._entry.37, section ".printk_index", align 4
@s5p_mfc_alloc_instance_buffer_v6._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: Failed to allocate instance buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_instance_buffer_v6._entry_ptr.42 = internal global ptr @s5p_mfc_alloc_instance_buffer_v6._entry.40, section ".printk_index", align 4
@s5p_mfc_alloc_instance_buffer_v6._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: leave\0A\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_instance_buffer_v6._entry_ptr.45 = internal global ptr @s5p_mfc_alloc_instance_buffer_v6._entry.43, section ".printk_index", align 4
@s5p_mfc_alloc_dev_context_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.46, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"s5p_mfc_alloc_dev_context_buffer_v6\00", [60 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_alloc_dev_context_buffer_v6._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s:%d: Failed to allocate device context buffer\0A\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr.49 = internal global ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.47, section ".printk_index", align 4
@s5p_mfc_alloc_dev_context_buffer_v6._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr.51 = internal global ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.50, section ".printk_index", align 4
@s5p_mfc_dec_calc_dpb_size_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s:%d: SEQ Done: Movie dimensions %dx%d,\0Abuffer dimensions: %dx%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5p_mfc_dec_calc_dpb_size_v6\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_calc_dpb_size_v6._entry_ptr = internal global ptr @s5p_mfc_dec_calc_dpb_size_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_stream_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s:%d: stream buf addr: 0x%08lx, size: 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5p_mfc_set_enc_stream_buffer_v6\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_stream_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_set_enc_stream_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_frame_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:%d: enc src y buf addr: 0x%08lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s5p_mfc_set_enc_frame_buffer_v6\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_frame_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_set_enc_frame_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_frame_buffer_v6._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:%d: enc src c buf addr: 0x%08lx\0A\00", [58 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_frame_buffer_v6._entry_ptr.60 = internal global ptr @s5p_mfc_set_enc_frame_buffer_v6._entry.58, section ".printk_index", align 4
@s5p_mfc_get_enc_frame_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:%d: recon y addr: 0x%08lx y_addr: 0x%08lx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s5p_mfc_get_enc_frame_buffer_v6\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_get_enc_frame_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_get_enc_frame_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_get_enc_frame_buffer_v6._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:%d: recon c addr: 0x%08lx\0A\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_get_enc_frame_buffer_v6._entry_ptr.65 = internal global ptr @s5p_mfc_get_enc_frame_buffer_v6._entry.63, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Try run dev: %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5p_mfc_try_run_v6\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr = internal global ptr @s5p_mfc_try_run_v6._entry, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:%d: Couldn't lock HW.\0A\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.70 = internal global ptr @s5p_mfc_try_run_v6._entry.68, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 1977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: Failed to unlock hardware.\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.73 = internal global ptr @s5p_mfc_try_run_v6._entry.71, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 1981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s:%d: No ctx is scheduled to be run.\0A\00", [55 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.76 = internal global ptr @s5p_mfc_try_run_v6._entry.74, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: New context: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.79 = internal global ptr @s5p_mfc_try_run_v6._entry.77, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.2, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s:%d: Setting new context to %p\0A\00", [60 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.82 = internal global ptr @s5p_mfc_try_run_v6._entry.80, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.67, ptr @.str.2, i32 1990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s:%d: ctx->dst_queue_cnt=%d ctx->dpb_count=%d ctx->src_queue_cnt=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.85 = internal global ptr @s5p_mfc_try_run_v6._entry.83, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.67, ptr @.str.2, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:%d: ctx->state=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.88 = internal global ptr @s5p_mfc_try_run_v6._entry.86, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.67, ptr @.str.2, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s:%d: Finished remaining frames after resolution change.\0A\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.91 = internal global ptr @s5p_mfc_try_run_v6._entry.89, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.67, ptr @.str.2, i32 2032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%d: Will re-init the codec`.\0A\00", [61 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.94 = internal global ptr @s5p_mfc_try_run_v6._entry.92, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.67, ptr @.str.2, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s:%d: invalid context type: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.97 = internal global ptr @s5p_mfc_try_run_v6._entry.95, section ".printk_index", align 4
@s5p_mfc_try_run_v6._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v6._entry_ptr.99 = internal global ptr @s5p_mfc_try_run_v6._entry.98, section ".printk_index", align 4
@s5p_mfc_set_dec_stream_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.100, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5p_mfc_set_dec_stream_buffer_v6\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_stream_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_set_dec_stream_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_dec_stream_buffer_v6._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s:%d: inst_no: %d, buf_addr: 0x%08x,\0Abuf_size: 0x%08x (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_stream_buffer_v6._entry_ptr.103 = internal global ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.101, section ".printk_index", align 4
@s5p_mfc_set_dec_stream_buffer_v6._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.100, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_stream_buffer_v6._entry_ptr.105 = internal global ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.104, section ".printk_index", align 4
@s5p_mfc_decode_one_frame_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s:%d: Unsupported last frame arg.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5p_mfc_decode_one_frame_v6\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_decode_one_frame_v6._entry_ptr = internal global ptr @s5p_mfc_decode_one_frame_v6._entry, section ".printk_index", align 4
@s5p_mfc_decode_one_frame_v6._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: Decoding a usual frame.\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_decode_one_frame_v6._entry_ptr.110 = internal global ptr @s5p_mfc_decode_one_frame_v6._entry.108, section ".printk_index", align 4
@s5p_mfc_run_dec_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: No src buffers.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_mfc_run_dec_frame\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_run_dec_frame._entry_ptr = internal global ptr @s5p_mfc_run_dec_frame._entry, section ".printk_index", align 4
@s5p_mfc_run_dec_frame._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:%d: Setting ctx->state to FINISHING\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_run_dec_frame._entry_ptr.115 = internal global ptr @s5p_mfc_run_dec_frame._entry.113, section ".printk_index", align 4
@s5p_mfc_run_init_dec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:%d: Preparing to init decoding.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_run_init_dec\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec._entry_ptr = internal global ptr @s5p_mfc_run_init_dec._entry, section ".printk_index", align 4
@s5p_mfc_run_init_dec._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Header size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec._entry_ptr.120 = internal global ptr @s5p_mfc_run_init_dec._entry.118, section ".printk_index", align 4
@s5p_mfc_init_decode_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.121, ptr @.str.2, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_init_decode_v6\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_init_decode_v6._entry_ptr = internal global ptr @s5p_mfc_init_decode_v6._entry, section ".printk_index", align 4
@s5p_mfc_init_decode_v6._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:%d: InstNo: %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_init_decode_v6._entry_ptr.124 = internal global ptr @s5p_mfc_init_decode_v6._entry.122, section ".printk_index", align 4
@s5p_mfc_init_decode_v6._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:%d: BUFs: %08x %08x %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_init_decode_v6._entry_ptr.127 = internal global ptr @s5p_mfc_init_decode_v6._entry.125, section ".printk_index", align 4
@s5p_mfc_init_decode_v6._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.2, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Set loop filter to: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_init_decode_v6._entry_ptr.130 = internal global ptr @s5p_mfc_init_decode_v6._entry.128, section ".printk_index", align 4
@s5p_mfc_init_decode_v6._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.121, ptr @.str.2, i32 1654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_init_decode_v6._entry_ptr.132 = internal global ptr @s5p_mfc_init_decode_v6._entry.131, section ".printk_index", align 4
@s5p_mfc_run_init_dec_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"\013%s:%d: It seems that not all destination buffers were\0Ammapped.MFC requires that all destination are mmapped\0Abefore starting processing.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5p_mfc_run_init_dec_buffers\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec_buffers._entry_ptr = internal global ptr @s5p_mfc_run_init_dec_buffers._entry, section ".printk_index", align 4
@s5p_mfc_run_init_dec_buffers._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: Failed to alloc frame mem.\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec_buffers._entry_ptr.137 = internal global ptr @s5p_mfc_run_init_dec_buffers._entry.135, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:%d: Buf1: %p (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s5p_mfc_set_dec_frame_buffer_v6\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:%d: Total DPB COUNT: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.142 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.140, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:%d: Setting display delay to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.145 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.143, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s:%d: Frame size: %d ch: %d mv: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.148 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.146, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.139, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:%d: Luma %d: %zx\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.151 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.149, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.139, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: \09Chroma %d: %zx\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.154 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.152, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.139, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:%d: \09Buf1: %zx, size: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.157 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.155, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.139, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s:%d: Buf1: %zx, buf_size1: %d (frames %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.160 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.158, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.139, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:%d: Not enough memory has been allocated.\0A\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.163 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.161, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v6._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.139, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: After setting buffers.\0A\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.166 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.164, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: no src buffers.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_mfc_run_enc_frame\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr = internal global ptr @s5p_mfc_run_enc_frame._entry, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: no dst buffers.\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr.171 = internal global ptr @s5p_mfc_run_enc_frame._entry.169, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.2, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: enc src y addr: 0x%08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr.174 = internal global ptr @s5p_mfc_run_enc_frame._entry.172, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.168, ptr @.str.2, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: enc src c addr: 0x%08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr.177 = internal global ptr @s5p_mfc_run_enc_frame._entry.175, section ".printk_index", align 4
@s5p_mfc_encode_one_frame_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:%d: ++\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5p_mfc_encode_one_frame_v6\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_encode_one_frame_v6._entry_ptr = internal global ptr @s5p_mfc_encode_one_frame_v6._entry, section ".printk_index", align 4
@s5p_mfc_encode_one_frame_v6._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.2, i32 1777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:%d: --\0A\00", [19 x i8] zeroinitializer }, align 32
@s5p_mfc_encode_one_frame_v6._entry_ptr.182 = internal global ptr @s5p_mfc_encode_one_frame_v6._entry.180, section ".printk_index", align 4
@s5p_mfc_init_encode_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%d: Unknown codec for encoding (%x).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_init_encode_v6\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_init_encode_v6._entry_ptr = internal global ptr @s5p_mfc_init_encode_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params_h264._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.185, ptr @.str.2, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5p_mfc_set_enc_params_h264\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_h264._entry_ptr = internal global ptr @s5p_mfc_set_enc_params_h264._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params_h264._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%d: Unsupported map type for FMO: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_h264._entry_ptr.188 = internal global ptr @s5p_mfc_set_enc_params_h264._entry.186, section ".printk_index", align 4
@s5p_mfc_set_enc_params_h264._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.185, ptr @.str.2, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_h264._entry_ptr.190 = internal global ptr @s5p_mfc_set_enc_params_h264._entry.189, section ".printk_index", align 4
@s5p_mfc_set_enc_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.191, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_set_enc_params\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params._entry_ptr = internal global ptr @s5p_mfc_set_enc_params._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.191, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params._entry_ptr.193 = internal global ptr @s5p_mfc_set_enc_params._entry.192, section ".printk_index", align 4
@s5p_mfc_set_enc_params_mpeg4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.194, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5p_mfc_set_enc_params_mpeg4\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_mpeg4._entry_ptr = internal global ptr @s5p_mfc_set_enc_params_mpeg4._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params_mpeg4._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.194, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_mpeg4._entry_ptr.196 = internal global ptr @s5p_mfc_set_enc_params_mpeg4._entry.195, section ".printk_index", align 4
@s5p_mfc_set_enc_params_h263._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.197, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5p_mfc_set_enc_params_h263\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_h263._entry_ptr = internal global ptr @s5p_mfc_set_enc_params_h263._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params_h263._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.197, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_h263._entry_ptr.199 = internal global ptr @s5p_mfc_set_enc_params_h263._entry.198, section ".printk_index", align 4
@s5p_mfc_set_enc_params_vp8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.200, ptr @.str.2, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5p_mfc_set_enc_params_vp8\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_vp8._entry_ptr = internal global ptr @s5p_mfc_set_enc_params_vp8._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params_vp8._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.200, ptr @.str.2, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_vp8._entry_ptr.202 = internal global ptr @s5p_mfc_set_enc_params_vp8._entry.201, section ".printk_index", align 4
@s5p_mfc_set_enc_params_hevc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.203, ptr @.str.2, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5p_mfc_set_enc_params_hevc\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_hevc._entry_ptr = internal global ptr @s5p_mfc_set_enc_params_hevc._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_params_hevc._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.203, ptr @.str.2, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_params_hevc._entry_ptr.205 = internal global ptr @s5p_mfc_set_enc_params_hevc._entry.204, section ".printk_index", align 4
@s5p_mfc_run_init_enc_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.206, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5p_mfc_run_init_enc_buffers\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_enc_buffers._entry_ptr = internal global ptr @s5p_mfc_run_init_enc_buffers._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.207, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s5p_mfc_set_enc_ref_buffer_v6\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v6._entry_ptr = internal global ptr @s5p_mfc_set_enc_ref_buffer_v6._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v6._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.207, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.209 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.208, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v6._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.207, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s:%d: Buf1: %zu, buf_size1: %d (ref frames %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.212 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.210, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v6._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.207, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.214 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.213, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v6._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.207, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.216 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.215, section ".printk_index", align 4
@switch.table.s5p_mfc_run_init_enc = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 32, i32 64], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.217 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 17, i64 18, i64 20, i64 22, i64 23, i64 24, i64 26]
@__sancov_gen_cov_switch_values.218 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 17, i64 18, i64 20, i64 22, i64 23, i64 24, i64 26]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 17]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.221 = internal global [12 x i64] [i64 10, i64 32, i64 100, i64 101, i64 102, i64 105, i64 106, i64 108, i64 111, i64 112, i64 113, i64 114]
@__sancov_gen_cov_switch_values.222 = internal global [8 x i64] [i64 6, i64 32, i64 100, i64 101, i64 103, i64 105, i64 106, i64 108]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 17, i64 4294967295]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 17]
@__sancov_gen_cov_switch_values.225 = internal global [7 x i64] [i64 5, i64 32, i64 20, i64 22, i64 23, i64 24, i64 26]
@__sancov_gen_cov_switch_values.226 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.231 = internal global [5 x i64] [i64 3, i64 32, i64 825380174, i64 842091854, i64 842091862]
@___asan_gen_.232 = private unnamed_addr constant [9 x i8] c"mfc_regs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 2226, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"s5p_mfc_ops_v6\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 2487, i32 30 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 71, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 73, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 126, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 137, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 156, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 176, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 193, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 205, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 221, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 227, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 234, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 258, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 277, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 300, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 318, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 339, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 369, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 375, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 382, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 399, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 404, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 411, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 441, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 620, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 635, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 636, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 652, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 653, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1963, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1968, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1977, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1981, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1985, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1987, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1989, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1991, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 2030, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 2032, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 2062, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 2069, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 498, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 499, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 507, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1694, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1698, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1808, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1822, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1893, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1895, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1604, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1605, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1607, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1627, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1654, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1927, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1936, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 525, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 526, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 527, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 556, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 561, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 565, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 580, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 595, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 598, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 606, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1842, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1847, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1865, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1866, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1760, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1777, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1718, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 923, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1175, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1190, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 756, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 909, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1203, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1272, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1285, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1342, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1356, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1435, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1449, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1591, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 1950, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 664, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 669, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 712, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 715, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.767 = private constant [51 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 723, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [34 x i8] c"switch.table.s5p_mfc_run_init_enc\00", align 1
@llvm.compiler.used = appending global [272 x ptr] [ptr @s5p_mfc_alloc_codec_buffers_v6._entry, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.12, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.14, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.16, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.18, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.20, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.22, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.24, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.26, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.28, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.3, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.30, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.32, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.6, ptr @s5p_mfc_alloc_codec_buffers_v6._entry.9, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.11, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.13, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.15, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.17, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.19, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.21, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.23, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.25, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.27, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.29, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.31, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.34, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.5, ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.8, ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry, ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.47, ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.50, ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr, ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr.49, ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr.51, ptr @s5p_mfc_alloc_instance_buffer_v6._entry, ptr @s5p_mfc_alloc_instance_buffer_v6._entry.37, ptr @s5p_mfc_alloc_instance_buffer_v6._entry.40, ptr @s5p_mfc_alloc_instance_buffer_v6._entry.43, ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr, ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr.39, ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr.42, ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr.45, ptr @s5p_mfc_dec_calc_dpb_size_v6._entry, ptr @s5p_mfc_dec_calc_dpb_size_v6._entry_ptr, ptr @s5p_mfc_decode_one_frame_v6._entry, ptr @s5p_mfc_decode_one_frame_v6._entry.108, ptr @s5p_mfc_decode_one_frame_v6._entry_ptr, ptr @s5p_mfc_decode_one_frame_v6._entry_ptr.110, ptr @s5p_mfc_encode_one_frame_v6._entry, ptr @s5p_mfc_encode_one_frame_v6._entry.180, ptr @s5p_mfc_encode_one_frame_v6._entry_ptr, ptr @s5p_mfc_encode_one_frame_v6._entry_ptr.182, ptr @s5p_mfc_get_enc_frame_buffer_v6._entry, ptr @s5p_mfc_get_enc_frame_buffer_v6._entry.63, ptr @s5p_mfc_get_enc_frame_buffer_v6._entry_ptr, ptr @s5p_mfc_get_enc_frame_buffer_v6._entry_ptr.65, ptr @s5p_mfc_init_decode_v6._entry, ptr @s5p_mfc_init_decode_v6._entry.122, ptr @s5p_mfc_init_decode_v6._entry.125, ptr @s5p_mfc_init_decode_v6._entry.128, ptr @s5p_mfc_init_decode_v6._entry.131, ptr @s5p_mfc_init_decode_v6._entry_ptr, ptr @s5p_mfc_init_decode_v6._entry_ptr.124, ptr @s5p_mfc_init_decode_v6._entry_ptr.127, ptr @s5p_mfc_init_decode_v6._entry_ptr.130, ptr @s5p_mfc_init_decode_v6._entry_ptr.132, ptr @s5p_mfc_init_encode_v6._entry, ptr @s5p_mfc_init_encode_v6._entry_ptr, ptr @s5p_mfc_run_dec_frame._entry, ptr @s5p_mfc_run_dec_frame._entry.113, ptr @s5p_mfc_run_dec_frame._entry_ptr, ptr @s5p_mfc_run_dec_frame._entry_ptr.115, ptr @s5p_mfc_run_enc_frame._entry, ptr @s5p_mfc_run_enc_frame._entry.169, ptr @s5p_mfc_run_enc_frame._entry.172, ptr @s5p_mfc_run_enc_frame._entry.175, ptr @s5p_mfc_run_enc_frame._entry_ptr, ptr @s5p_mfc_run_enc_frame._entry_ptr.171, ptr @s5p_mfc_run_enc_frame._entry_ptr.174, ptr @s5p_mfc_run_enc_frame._entry_ptr.177, ptr @s5p_mfc_run_init_dec._entry, ptr @s5p_mfc_run_init_dec._entry.118, ptr @s5p_mfc_run_init_dec._entry_ptr, ptr @s5p_mfc_run_init_dec._entry_ptr.120, ptr @s5p_mfc_run_init_dec_buffers._entry, ptr @s5p_mfc_run_init_dec_buffers._entry.135, ptr @s5p_mfc_run_init_dec_buffers._entry_ptr, ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.137, ptr @s5p_mfc_run_init_enc_buffers._entry, ptr @s5p_mfc_run_init_enc_buffers._entry_ptr, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.140, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.143, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.146, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.149, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.152, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.155, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.158, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.161, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.164, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.142, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.145, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.148, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.151, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.154, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.157, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.160, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.163, ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.166, ptr @s5p_mfc_set_dec_stream_buffer_v6._entry, ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.101, ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.104, ptr @s5p_mfc_set_dec_stream_buffer_v6._entry_ptr, ptr @s5p_mfc_set_dec_stream_buffer_v6._entry_ptr.103, ptr @s5p_mfc_set_dec_stream_buffer_v6._entry_ptr.105, ptr @s5p_mfc_set_enc_frame_buffer_v6._entry, ptr @s5p_mfc_set_enc_frame_buffer_v6._entry.58, ptr @s5p_mfc_set_enc_frame_buffer_v6._entry_ptr, ptr @s5p_mfc_set_enc_frame_buffer_v6._entry_ptr.60, ptr @s5p_mfc_set_enc_params._entry, ptr @s5p_mfc_set_enc_params._entry.192, ptr @s5p_mfc_set_enc_params._entry_ptr, ptr @s5p_mfc_set_enc_params._entry_ptr.193, ptr @s5p_mfc_set_enc_params_h263._entry, ptr @s5p_mfc_set_enc_params_h263._entry.198, ptr @s5p_mfc_set_enc_params_h263._entry_ptr, ptr @s5p_mfc_set_enc_params_h263._entry_ptr.199, ptr @s5p_mfc_set_enc_params_h264._entry, ptr @s5p_mfc_set_enc_params_h264._entry.186, ptr @s5p_mfc_set_enc_params_h264._entry.189, ptr @s5p_mfc_set_enc_params_h264._entry_ptr, ptr @s5p_mfc_set_enc_params_h264._entry_ptr.188, ptr @s5p_mfc_set_enc_params_h264._entry_ptr.190, ptr @s5p_mfc_set_enc_params_hevc._entry, ptr @s5p_mfc_set_enc_params_hevc._entry.204, ptr @s5p_mfc_set_enc_params_hevc._entry_ptr, ptr @s5p_mfc_set_enc_params_hevc._entry_ptr.205, ptr @s5p_mfc_set_enc_params_mpeg4._entry, ptr @s5p_mfc_set_enc_params_mpeg4._entry.195, ptr @s5p_mfc_set_enc_params_mpeg4._entry_ptr, ptr @s5p_mfc_set_enc_params_mpeg4._entry_ptr.196, ptr @s5p_mfc_set_enc_params_vp8._entry, ptr @s5p_mfc_set_enc_params_vp8._entry.201, ptr @s5p_mfc_set_enc_params_vp8._entry_ptr, ptr @s5p_mfc_set_enc_params_vp8._entry_ptr.202, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.208, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.210, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.213, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.215, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.209, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.212, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.214, ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.216, ptr @s5p_mfc_set_enc_stream_buffer_v6._entry, ptr @s5p_mfc_set_enc_stream_buffer_v6._entry_ptr, ptr @s5p_mfc_try_run_v6._entry, ptr @s5p_mfc_try_run_v6._entry.68, ptr @s5p_mfc_try_run_v6._entry.71, ptr @s5p_mfc_try_run_v6._entry.74, ptr @s5p_mfc_try_run_v6._entry.77, ptr @s5p_mfc_try_run_v6._entry.80, ptr @s5p_mfc_try_run_v6._entry.83, ptr @s5p_mfc_try_run_v6._entry.86, ptr @s5p_mfc_try_run_v6._entry.89, ptr @s5p_mfc_try_run_v6._entry.92, ptr @s5p_mfc_try_run_v6._entry.95, ptr @s5p_mfc_try_run_v6._entry.98, ptr @s5p_mfc_try_run_v6._entry_ptr, ptr @s5p_mfc_try_run_v6._entry_ptr.70, ptr @s5p_mfc_try_run_v6._entry_ptr.73, ptr @s5p_mfc_try_run_v6._entry_ptr.76, ptr @s5p_mfc_try_run_v6._entry_ptr.79, ptr @s5p_mfc_try_run_v6._entry_ptr.82, ptr @s5p_mfc_try_run_v6._entry_ptr.85, ptr @s5p_mfc_try_run_v6._entry_ptr.88, ptr @s5p_mfc_try_run_v6._entry_ptr.91, ptr @s5p_mfc_try_run_v6._entry_ptr.94, ptr @s5p_mfc_try_run_v6._entry_ptr.97, ptr @s5p_mfc_try_run_v6._entry_ptr.99, ptr @mfc_regs, ptr @s5p_mfc_ops_v6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.100, ptr @.str.102, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.207, ptr @.str.211, ptr @switch.table.s5p_mfc_run_init_enc], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_regs to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_ops_v6 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v6._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_instance_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_instance_buffer_v6._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_instance_buffer_v6._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_instance_buffer_v6._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_calc_dpb_size_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_stream_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_frame_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_frame_buffer_v6._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_get_enc_frame_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_get_enc_frame_buffer_v6._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v6._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_stream_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_decode_one_frame_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_decode_one_frame_v6._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_dec_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_dec_frame._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_decode_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_decode_v6._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_decode_v6._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_decode_v6._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_decode_v6._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec_buffers._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_encode_one_frame_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_encode_one_frame_v6._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_encode_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_h264._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_h264._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_h264._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_mpeg4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_mpeg4._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_h263._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_h263._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_vp8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_vp8._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_hevc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_params_hevc._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_enc_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5p_mfc_run_init_enc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_regs_v6_plus(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @mfc_regs, i32 0, i32 1024)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_base, align 4
  store ptr %2, ptr @mfc_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %2, i32 60
  store ptr %add.ptr2, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 1), align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 68
  store ptr %add.ptr4, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 2), align 4
  %add.ptr6 = getelementptr i8, ptr %2, i32 84
  store ptr %add.ptr6, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 3), align 4
  %add.ptr8 = getelementptr i8, ptr %2, i32 4208
  store ptr %add.ptr8, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 4), align 4
  %add.ptr10 = getelementptr i8, ptr %2, i32 4352
  store ptr %add.ptr10, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 5), align 4
  %add.ptr12 = getelementptr i8, ptr %2, i32 4356
  store ptr %add.ptr12, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 6), align 4
  %add.ptr14 = getelementptr i8, ptr %2, i32 61440
  store ptr %add.ptr14, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 8), align 4
  %add.ptr16 = getelementptr i8, ptr %2, i32 61448
  store ptr %add.ptr16, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 9), align 4
  %add.ptr18 = getelementptr i8, ptr %2, i32 61452
  store ptr %add.ptr18, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 10), align 4
  %add.ptr20 = getelementptr i8, ptr %2, i32 61460
  store ptr %add.ptr20, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 11), align 4
  %add.ptr22 = getelementptr i8, ptr %2, i32 61464
  store ptr %add.ptr22, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 12), align 4
  %add.ptr24 = getelementptr i8, ptr %2, i32 61472
  store ptr %add.ptr24, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 13), align 4
  %add.ptr26 = getelementptr i8, ptr %2, i32 61552
  store ptr %add.ptr26, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 23), align 4
  %add.ptr28 = getelementptr i8, ptr %2, i32 61556
  store ptr %add.ptr28, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 24), align 4
  %add.ptr30 = getelementptr i8, ptr %2, i32 61616
  store ptr %add.ptr30, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 30), align 4
  %add.ptr32 = getelementptr i8, ptr %2, i32 61620
  store ptr %add.ptr32, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 31), align 4
  %add.ptr34 = getelementptr i8, ptr %2, i32 61624
  store ptr %add.ptr34, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 32), align 4
  %add.ptr36 = getelementptr i8, ptr %2, i32 61636
  store ptr %add.ptr36, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 35), align 4
  %add.ptr38 = getelementptr i8, ptr %2, i32 61680
  store ptr %add.ptr38, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 36), align 4
  %add.ptr40 = getelementptr i8, ptr %2, i32 61696
  store ptr %add.ptr40, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 40), align 4
  %3 = load ptr, ptr %regs_base, align 4
  %add.ptr42 = getelementptr i8, ptr %3, i32 61692
  store ptr %add.ptr42, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 41), align 4
  %4 = load ptr, ptr %regs_base, align 4
  %add.ptr44 = getelementptr i8, ptr %4, i32 61744
  store ptr %add.ptr44, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 52), align 4
  %5 = load ptr, ptr %regs_base, align 4
  %add.ptr46 = getelementptr i8, ptr %5, i32 62584
  store ptr %add.ptr46, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 53), align 4
  %6 = load ptr, ptr %regs_base, align 4
  %add.ptr48 = getelementptr i8, ptr %6, i32 62588
  store ptr %add.ptr48, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 54), align 4
  %7 = load ptr, ptr %regs_base, align 4
  %add.ptr50 = getelementptr i8, ptr %7, i32 61748
  store ptr %add.ptr50, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 58), align 4
  %8 = load ptr, ptr %regs_base, align 4
  %add.ptr52 = getelementptr i8, ptr %8, i32 61752
  store ptr %add.ptr52, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 59), align 4
  %9 = load ptr, ptr %regs_base, align 4
  %add.ptr54 = getelementptr i8, ptr %9, i32 61756
  store ptr %add.ptr54, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 61), align 4
  %10 = load ptr, ptr %regs_base, align 4
  %add.ptr56 = getelementptr i8, ptr %10, i32 61760
  store ptr %add.ptr56, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 62), align 4
  %11 = load ptr, ptr %regs_base, align 4
  %add.ptr58 = getelementptr i8, ptr %11, i32 62016
  store ptr %add.ptr58, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 63), align 4
  %12 = load ptr, ptr %regs_base, align 4
  %add.ptr60 = getelementptr i8, ptr %12, i32 62272
  store ptr %add.ptr60, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 65), align 4
  %13 = load ptr, ptr %regs_base, align 4
  %add.ptr62 = getelementptr i8, ptr %13, i32 62528
  store ptr %add.ptr62, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 66), align 4
  %14 = load ptr, ptr %regs_base, align 4
  %add.ptr64 = getelementptr i8, ptr %14, i32 62532
  store ptr %add.ptr64, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 67), align 4
  %15 = load ptr, ptr %regs_base, align 4
  %add.ptr66 = getelementptr i8, ptr %15, i32 62640
  store ptr %add.ptr66, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 71), align 4
  %16 = load ptr, ptr %regs_base, align 4
  %add.ptr68 = getelementptr i8, ptr %16, i32 62644
  store ptr %add.ptr68, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 72), align 4
  %17 = load ptr, ptr %regs_base, align 4
  %add.ptr70 = getelementptr i8, ptr %17, i32 62652
  store ptr %add.ptr70, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 74), align 4
  %18 = load ptr, ptr %regs_base, align 4
  %add.ptr72 = getelementptr i8, ptr %18, i32 62656
  store ptr %add.ptr72, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 75), align 4
  %19 = load ptr, ptr %regs_base, align 4
  %add.ptr74 = getelementptr i8, ptr %19, i32 62660
  store ptr %add.ptr74, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 76), align 4
  %20 = load ptr, ptr %regs_base, align 4
  %add.ptr76 = getelementptr i8, ptr %20, i32 62672
  store ptr %add.ptr76, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 78), align 4
  %21 = load ptr, ptr %regs_base, align 4
  %add.ptr78 = getelementptr i8, ptr %21, i32 62720
  store ptr %add.ptr78, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 81), align 4
  %22 = load ptr, ptr %regs_base, align 4
  %add.ptr80 = getelementptr i8, ptr %22, i32 62724
  store ptr %add.ptr80, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 82), align 4
  %23 = load ptr, ptr %regs_base, align 4
  %add.ptr82 = getelementptr i8, ptr %23, i32 62728
  store ptr %add.ptr82, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 83), align 4
  %24 = load ptr, ptr %regs_base, align 4
  %add.ptr84 = getelementptr i8, ptr %24, i32 62732
  store ptr %add.ptr84, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 84), align 4
  %25 = load ptr, ptr %regs_base, align 4
  %add.ptr86 = getelementptr i8, ptr %25, i32 62736
  store ptr %add.ptr86, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 85), align 4
  %26 = load ptr, ptr %regs_base, align 4
  %add.ptr88 = getelementptr i8, ptr %26, i32 62740
  store ptr %add.ptr88, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 87), align 4
  %27 = load ptr, ptr %regs_base, align 4
  %add.ptr90 = getelementptr i8, ptr %27, i32 62744
  store ptr %add.ptr90, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 88), align 4
  %28 = load ptr, ptr %regs_base, align 4
  %add.ptr92 = getelementptr i8, ptr %28, i32 62748
  store ptr %add.ptr92, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 89), align 4
  %29 = load ptr, ptr %regs_base, align 4
  %add.ptr94 = getelementptr i8, ptr %29, i32 62772
  store ptr %add.ptr94, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 98), align 4
  %30 = load ptr, ptr %regs_base, align 4
  %add.ptr96 = getelementptr i8, ptr %30, i32 62776
  store ptr %add.ptr96, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 99), align 4
  %31 = load ptr, ptr %regs_base, align 4
  %add.ptr98 = getelementptr i8, ptr %31, i32 62788
  store ptr %add.ptr98, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 102), align 4
  %32 = load ptr, ptr %regs_base, align 4
  %add.ptr100 = getelementptr i8, ptr %32, i32 62792
  store ptr %add.ptr100, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 103), align 4
  %33 = load ptr, ptr %regs_base, align 4
  %add.ptr102 = getelementptr i8, ptr %33, i32 62796
  store ptr %add.ptr102, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 104), align 4
  %34 = load ptr, ptr %regs_base, align 4
  %add.ptr104 = getelementptr i8, ptr %34, i32 62800
  store ptr %add.ptr104, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 106), align 4
  %35 = load ptr, ptr %regs_base, align 4
  %add.ptr106 = getelementptr i8, ptr %35, i32 62816
  store ptr %add.ptr106, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 110), align 4
  %36 = load ptr, ptr %regs_base, align 4
  %add.ptr108 = getelementptr i8, ptr %36, i32 62836
  store ptr %add.ptr108, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 114), align 4
  %37 = load ptr, ptr %regs_base, align 4
  %add.ptr110 = getelementptr i8, ptr %37, i32 62840
  store ptr %add.ptr110, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 115), align 4
  %38 = load ptr, ptr %regs_base, align 4
  %add.ptr112 = getelementptr i8, ptr %38, i32 62864
  store ptr %add.ptr112, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 121), align 4
  %39 = load ptr, ptr %regs_base, align 4
  %add.ptr114 = getelementptr i8, ptr %39, i32 62900
  store ptr %add.ptr114, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 132), align 4
  %40 = load ptr, ptr %regs_base, align 4
  %add.ptr116 = getelementptr i8, ptr %40, i32 62960
  store ptr %add.ptr116, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 133), align 4
  %41 = load ptr, ptr %regs_base, align 4
  %add.ptr118 = getelementptr i8, ptr %41, i32 63344
  store ptr %add.ptr118, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 150), align 4
  %42 = load ptr, ptr %regs_base, align 4
  %add.ptr120 = getelementptr i8, ptr %42, i32 63348
  store ptr %add.ptr120, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 151), align 4
  %43 = load ptr, ptr %regs_base, align 4
  %add.ptr122 = getelementptr i8, ptr %43, i32 63352
  store ptr %add.ptr122, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 152), align 4
  %44 = load ptr, ptr %regs_base, align 4
  %add.ptr124 = getelementptr i8, ptr %44, i32 63356
  store ptr %add.ptr124, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 153), align 4
  %45 = load ptr, ptr %regs_base, align 4
  %add.ptr126 = getelementptr i8, ptr %45, i32 63360
  store ptr %add.ptr126, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 154), align 4
  %46 = load ptr, ptr %regs_base, align 4
  %add.ptr128 = getelementptr i8, ptr %46, i32 63364
  store ptr %add.ptr128, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 155), align 4
  %47 = load ptr, ptr %regs_base, align 4
  %add.ptr130 = getelementptr i8, ptr %47, i32 63368
  store ptr %add.ptr130, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 156), align 4
  %48 = load ptr, ptr %regs_base, align 4
  %add.ptr132 = getelementptr i8, ptr %48, i32 63564
  store ptr %add.ptr132, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 157), align 4
  %49 = load ptr, ptr %regs_base, align 4
  %add.ptr134 = getelementptr i8, ptr %49, i32 63568
  store ptr %add.ptr134, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 158), align 4
  %50 = load ptr, ptr %regs_base, align 4
  %add.ptr136 = getelementptr i8, ptr %50, i32 63376
  store ptr %add.ptr136, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 159), align 4
  %51 = load ptr, ptr %regs_base, align 4
  %add.ptr138 = getelementptr i8, ptr %51, i32 63380
  store ptr %add.ptr138, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 160), align 4
  %52 = load ptr, ptr %regs_base, align 4
  %add.ptr140 = getelementptr i8, ptr %52, i32 63384
  store ptr %add.ptr140, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 161), align 4
  %53 = load ptr, ptr %regs_base, align 4
  %add.ptr142 = getelementptr i8, ptr %53, i32 63388
  store ptr %add.ptr142, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 163), align 4
  %54 = load ptr, ptr %regs_base, align 4
  %add.ptr144 = getelementptr i8, ptr %54, i32 63392
  store ptr %add.ptr144, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 164), align 4
  %55 = load ptr, ptr %regs_base, align 4
  %add.ptr146 = getelementptr i8, ptr %55, i32 63396
  store ptr %add.ptr146, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 165), align 4
  %56 = load ptr, ptr %regs_base, align 4
  %add.ptr148 = getelementptr i8, ptr %56, i32 63404
  store ptr %add.ptr148, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 167), align 4
  %57 = load ptr, ptr %regs_base, align 4
  %add.ptr150 = getelementptr i8, ptr %57, i32 63408
  store ptr %add.ptr150, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 168), align 4
  %58 = load ptr, ptr %regs_base, align 4
  %add.ptr152 = getelementptr i8, ptr %58, i32 63632
  store ptr %add.ptr152, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 169), align 4
  %59 = load ptr, ptr %regs_base, align 4
  %add.ptr154 = getelementptr i8, ptr %59, i32 63680
  store ptr %add.ptr154, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 170), align 4
  %60 = load ptr, ptr %regs_base, align 4
  %add.ptr156 = getelementptr i8, ptr %60, i32 63748
  store ptr %add.ptr156, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 171), align 4
  %61 = load ptr, ptr %regs_base, align 4
  %add.ptr158 = getelementptr i8, ptr %61, i32 63816
  store ptr %add.ptr158, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 172), align 4
  %62 = load ptr, ptr %regs_base, align 4
  %add.ptr160 = getelementptr i8, ptr %62, i32 63884
  store ptr %add.ptr160, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 173), align 4
  %63 = load ptr, ptr %regs_base, align 4
  %add.ptr162 = getelementptr i8, ptr %63, i32 63888
  store ptr %add.ptr162, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 174), align 4
  %64 = load ptr, ptr %regs_base, align 4
  %add.ptr164 = getelementptr i8, ptr %64, i32 63892
  store ptr %add.ptr164, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 175), align 4
  %65 = load ptr, ptr %regs_base, align 4
  %add.ptr166 = getelementptr i8, ptr %65, i32 63896
  store ptr %add.ptr166, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 176), align 4
  %66 = load ptr, ptr %regs_base, align 4
  %add.ptr168 = getelementptr i8, ptr %66, i32 63984
  store ptr %add.ptr168, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 178), align 4
  %67 = load ptr, ptr %regs_base, align 4
  %add.ptr170 = getelementptr i8, ptr %67, i32 63988
  store ptr %add.ptr170, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 179), align 4
  %68 = load ptr, ptr %regs_base, align 4
  %add.ptr172 = getelementptr i8, ptr %68, i32 63992
  store ptr %add.ptr172, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 184), align 4
  %69 = load ptr, ptr %regs_base, align 4
  %add.ptr174 = getelementptr i8, ptr %69, i32 63996
  store ptr %add.ptr174, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 185), align 4
  %70 = load ptr, ptr %regs_base, align 4
  %add.ptr176 = getelementptr i8, ptr %70, i32 64000
  store ptr %add.ptr176, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 186), align 4
  %71 = load ptr, ptr %regs_base, align 4
  %add.ptr178 = getelementptr i8, ptr %71, i32 64004
  store ptr %add.ptr178, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 187), align 4
  %72 = load ptr, ptr %regs_base, align 4
  %add.ptr180 = getelementptr i8, ptr %72, i32 64008
  store ptr %add.ptr180, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 188), align 4
  %73 = load ptr, ptr %regs_base, align 4
  %add.ptr182 = getelementptr i8, ptr %73, i32 64012
  store ptr %add.ptr182, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 189), align 4
  %74 = load ptr, ptr %regs_base, align 4
  %add.ptr184 = getelementptr i8, ptr %74, i32 64016
  store ptr %add.ptr184, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 190), align 4
  %75 = load ptr, ptr %regs_base, align 4
  %add.ptr186 = getelementptr i8, ptr %75, i32 64020
  store ptr %add.ptr186, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 191), align 4
  %76 = load ptr, ptr %regs_base, align 4
  %add.ptr188 = getelementptr i8, ptr %76, i32 64024
  store ptr %add.ptr188, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 192), align 4
  %77 = load ptr, ptr %regs_base, align 4
  %add.ptr190 = getelementptr i8, ptr %77, i32 64028
  store ptr %add.ptr190, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 193), align 4
  %78 = load ptr, ptr %regs_base, align 4
  %add.ptr192 = getelementptr i8, ptr %78, i32 64032
  store ptr %add.ptr192, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 194), align 4
  %79 = load ptr, ptr %regs_base, align 4
  %add.ptr194 = getelementptr i8, ptr %79, i32 64036
  store ptr %add.ptr194, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 195), align 4
  %80 = load ptr, ptr %regs_base, align 4
  %add.ptr196 = getelementptr i8, ptr %80, i32 64044
  store ptr %add.ptr196, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 196), align 4
  %81 = load ptr, ptr %regs_base, align 4
  %add.ptr198 = getelementptr i8, ptr %81, i32 64048
  store ptr %add.ptr198, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 197), align 4
  %82 = load ptr, ptr %regs_base, align 4
  %add.ptr200 = getelementptr i8, ptr %82, i32 64052
  store ptr %add.ptr200, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 198), align 4
  %83 = load ptr, ptr %regs_base, align 4
  %add.ptr202 = getelementptr i8, ptr %83, i32 64056
  store ptr %add.ptr202, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 199), align 4
  %84 = load ptr, ptr %regs_base, align 4
  %add.ptr204 = getelementptr i8, ptr %84, i32 64060
  store ptr %add.ptr204, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 200), align 4
  %85 = load ptr, ptr %regs_base, align 4
  %add.ptr206 = getelementptr i8, ptr %85, i32 64064
  store ptr %add.ptr206, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 201), align 4
  %86 = load ptr, ptr %regs_base, align 4
  %add.ptr208 = getelementptr i8, ptr %86, i32 64068
  store ptr %add.ptr208, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 202), align 4
  %87 = load ptr, ptr %regs_base, align 4
  %add.ptr210 = getelementptr i8, ptr %87, i32 64148
  store ptr %add.ptr210, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 203), align 4
  %88 = load ptr, ptr %regs_base, align 4
  %add.ptr212 = getelementptr i8, ptr %88, i32 64152
  store ptr %add.ptr212, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 204), align 4
  %89 = load ptr, ptr %regs_base, align 4
  %add.ptr214 = getelementptr i8, ptr %89, i32 64128
  store ptr %add.ptr214, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 206), align 4
  %90 = load ptr, ptr %regs_base, align 4
  %add.ptr216 = getelementptr i8, ptr %90, i32 64132
  store ptr %add.ptr216, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 207), align 4
  %91 = load ptr, ptr %regs_base, align 4
  %add.ptr218 = getelementptr i8, ptr %91, i32 64136
  store ptr %add.ptr218, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 208), align 4
  %92 = load ptr, ptr %regs_base, align 4
  %add.ptr220 = getelementptr i8, ptr %92, i32 64140
  store ptr %add.ptr220, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 209), align 4
  %93 = load ptr, ptr %regs_base, align 4
  %add.ptr222 = getelementptr i8, ptr %93, i32 64156
  store ptr %add.ptr222, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 211), align 4
  %94 = load ptr, ptr %regs_base, align 4
  %add.ptr224 = getelementptr i8, ptr %94, i32 64160
  store ptr %add.ptr224, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 212), align 4
  %95 = load ptr, ptr %regs_base, align 4
  %add.ptr226 = getelementptr i8, ptr %95, i32 64272
  store ptr %add.ptr226, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 215), align 4
  %96 = load ptr, ptr %regs_base, align 4
  %add.ptr228 = getelementptr i8, ptr %96, i32 64276
  store ptr %add.ptr228, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 216), align 4
  %97 = load ptr, ptr %regs_base, align 4
  %add.ptr230 = getelementptr i8, ptr %97, i32 64336
  store ptr %add.ptr230, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 217), align 4
  %98 = load ptr, ptr %regs_base, align 4
  %add.ptr232 = getelementptr i8, ptr %98, i32 64340
  store ptr %add.ptr232, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 218), align 4
  %99 = load ptr, ptr %regs_base, align 4
  %add.ptr234 = getelementptr i8, ptr %99, i32 64344
  store ptr %add.ptr234, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 219), align 4
  %100 = load ptr, ptr %regs_base, align 4
  %add.ptr236 = getelementptr i8, ptr %100, i32 64348
  store ptr %add.ptr236, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 221), align 4
  %101 = load ptr, ptr %regs_base, align 4
  %add.ptr238 = getelementptr i8, ptr %101, i32 64352
  store ptr %add.ptr238, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 222), align 4
  %102 = load ptr, ptr %regs_base, align 4
  %add.ptr240 = getelementptr i8, ptr %102, i32 64356
  store ptr %add.ptr240, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 223), align 4
  %103 = load ptr, ptr %regs_base, align 4
  %add.ptr242 = getelementptr i8, ptr %103, i32 64360
  store ptr %add.ptr242, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 224), align 4
  %104 = load ptr, ptr %regs_base, align 4
  %add.ptr244 = getelementptr i8, ptr %104, i32 64364
  store ptr %add.ptr244, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 225), align 4
  %105 = load ptr, ptr %regs_base, align 4
  %add.ptr246 = getelementptr i8, ptr %105, i32 64368
  store ptr %add.ptr246, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 226), align 4
  %106 = load ptr, ptr %regs_base, align 4
  %add.ptr248 = getelementptr i8, ptr %106, i32 64372
  store ptr %add.ptr248, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 227), align 4
  %107 = load ptr, ptr %regs_base, align 4
  %add.ptr250 = getelementptr i8, ptr %107, i32 64376
  store ptr %add.ptr250, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 228), align 4
  %108 = load ptr, ptr %regs_base, align 4
  %add.ptr252 = getelementptr i8, ptr %108, i32 64392
  store ptr %add.ptr252, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 229), align 4
  %109 = load ptr, ptr %regs_base, align 4
  %add.ptr254 = getelementptr i8, ptr %109, i32 64428
  store ptr %add.ptr254, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 231), align 4
  %110 = load ptr, ptr %regs_base, align 4
  %add.ptr256 = getelementptr i8, ptr %110, i32 64432
  store ptr %add.ptr256, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 232), align 4
  %111 = load ptr, ptr %regs_base, align 4
  %add.ptr258 = getelementptr i8, ptr %111, i32 64588
  store ptr %add.ptr258, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 233), align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %112 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %variant, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %115)
  %cmp = icmp ugt i32 %115, 111
  br i1 %cmp, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %entry
  %116 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs_base, align 4
  %add.ptr260 = getelementptr i8, ptr %117, i32 63968
  store ptr %add.ptr260, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 178), align 4
  %118 = load ptr, ptr %regs_base, align 4
  %add.ptr262 = getelementptr i8, ptr %118, i32 63972
  store ptr %add.ptr262, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 179), align 4
  %119 = load ptr, ptr %regs_base, align 4
  %add.ptr264 = getelementptr i8, ptr %119, i32 63976
  store ptr %add.ptr264, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 180), align 4
  %120 = load ptr, ptr %regs_base, align 4
  %add.ptr266 = getelementptr i8, ptr %120, i32 63980
  store ptr %add.ptr266, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 181), align 4
  %121 = load ptr, ptr %regs_base, align 4
  %add.ptr268 = getelementptr i8, ptr %121, i32 63984
  store ptr %add.ptr268, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 182), align 4
  %122 = load ptr, ptr %regs_base, align 4
  %add.ptr270 = getelementptr i8, ptr %122, i32 63988
  store ptr %add.ptr270, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 183), align 4
  %123 = load ptr, ptr %regs_base, align 4
  %add.ptr272 = getelementptr i8, ptr %123, i32 64112
  store ptr %add.ptr272, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 203), align 4
  %124 = load ptr, ptr %regs_base, align 4
  %add.ptr274 = getelementptr i8, ptr %124, i32 64116
  store ptr %add.ptr274, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 204), align 4
  %125 = load ptr, ptr %regs_base, align 4
  %add.ptr276 = getelementptr i8, ptr %125, i32 64944
  store ptr %add.ptr276, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 240), align 4
  %126 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %variant, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %129)
  %cmp279 = icmp ugt i32 %129, 127
  br i1 %cmp279, label %if.end283, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end283:                                        ; preds = %if.end
  %130 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs_base, align 4
  %add.ptr285 = getelementptr i8, ptr %131, i32 62928
  store ptr %add.ptr285, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 78), align 4
  %132 = load ptr, ptr %regs_base, align 4
  %add.ptr287 = getelementptr i8, ptr %132, i32 62896
  store ptr %add.ptr287, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 71), align 4
  %133 = load ptr, ptr %regs_base, align 4
  %add.ptr289 = getelementptr i8, ptr %133, i32 62900
  store ptr %add.ptr289, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 72), align 4
  %134 = load ptr, ptr %regs_base, align 4
  %add.ptr291 = getelementptr i8, ptr %134, i32 62912
  store ptr %add.ptr291, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 75), align 4
  %135 = load ptr, ptr %regs_base, align 4
  %add.ptr293 = getelementptr i8, ptr %135, i32 61764
  store ptr %add.ptr293, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 58), align 4
  %136 = load ptr, ptr %regs_base, align 4
  %add.ptr295 = getelementptr i8, ptr %136, i32 61768
  store ptr %add.ptr295, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 59), align 4
  %137 = load ptr, ptr %regs_base, align 4
  %add.ptr297 = getelementptr i8, ptr %137, i32 62816
  store ptr %add.ptr297, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 66), align 4
  %138 = load ptr, ptr %regs_base, align 4
  %add.ptr299 = getelementptr i8, ptr %138, i32 62820
  store ptr %add.ptr299, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 67), align 4
  %139 = load ptr, ptr %regs_base, align 4
  %add.ptr301 = getelementptr i8, ptr %139, i32 61752
  store ptr %add.ptr301, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 55), align 4
  %140 = load ptr, ptr %regs_base, align 4
  %add.ptr303 = getelementptr i8, ptr %140, i32 61756
  store ptr %add.ptr303, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 56), align 4
  %141 = load ptr, ptr %regs_base, align 4
  %add.ptr305 = getelementptr i8, ptr %141, i32 61776
  store ptr %add.ptr305, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 61), align 4
  %142 = load ptr, ptr %regs_base, align 4
  %add.ptr307 = getelementptr i8, ptr %142, i32 61748
  store ptr %add.ptr307, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 53), align 4
  %143 = load ptr, ptr %regs_base, align 4
  %add.ptr309 = getelementptr i8, ptr %143, i32 61792
  store ptr %add.ptr309, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 62), align 4
  %144 = load ptr, ptr %regs_base, align 4
  %add.ptr311 = getelementptr i8, ptr %144, i32 62048
  store ptr %add.ptr311, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 63), align 4
  %145 = load ptr, ptr %regs_base, align 4
  %add.ptr313 = getelementptr i8, ptr %145, i32 62560
  store ptr %add.ptr313, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 65), align 4
  %146 = load ptr, ptr %regs_base, align 4
  %add.ptr315 = getelementptr i8, ptr %146, i32 61780
  store ptr %add.ptr315, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 54), align 4
  %147 = load ptr, ptr %regs_base, align 4
  %add.ptr317 = getelementptr i8, ptr %147, i32 62908
  store ptr %add.ptr317, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 74), align 4
  %148 = load ptr, ptr %regs_base, align 4
  %add.ptr319 = getelementptr i8, ptr %148, i32 62916
  store ptr %add.ptr319, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 76), align 4
  %149 = load ptr, ptr %regs_base, align 4
  %add.ptr321 = getelementptr i8, ptr %149, i32 62988
  store ptr %add.ptr321, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 84), align 4
  %150 = load ptr, ptr %regs_base, align 4
  %add.ptr323 = getelementptr i8, ptr %150, i32 62992
  store ptr %add.ptr323, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 85), align 4
  %151 = load ptr, ptr %regs_base, align 4
  %add.ptr325 = getelementptr i8, ptr %151, i32 63048
  store ptr %add.ptr325, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 103), align 4
  %152 = load ptr, ptr %regs_base, align 4
  %add.ptr327 = getelementptr i8, ptr %152, i32 63052
  store ptr %add.ptr327, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 104), align 4
  %153 = load ptr, ptr %regs_base, align 4
  %add.ptr329 = getelementptr i8, ptr %153, i32 62984
  store ptr %add.ptr329, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 83), align 4
  %154 = load ptr, ptr %regs_base, align 4
  %add.ptr331 = getelementptr i8, ptr %154, i32 63044
  store ptr %add.ptr331, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 102), align 4
  %155 = load ptr, ptr %regs_base, align 4
  %add.ptr333 = getelementptr i8, ptr %155, i32 63060
  store ptr %add.ptr333, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 106), align 4
  %156 = load ptr, ptr %regs_base, align 4
  %add.ptr335 = getelementptr i8, ptr %156, i32 63000
  store ptr %add.ptr335, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 87), align 4
  %157 = load ptr, ptr %regs_base, align 4
  %add.ptr337 = getelementptr i8, ptr %157, i32 63076
  store ptr %add.ptr337, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 110), align 4
  %158 = load ptr, ptr %regs_base, align 4
  %add.ptr339 = getelementptr i8, ptr %158, i32 62976
  store ptr %add.ptr339, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 81), align 4
  %159 = load ptr, ptr %regs_base, align 4
  %add.ptr341 = getelementptr i8, ptr %159, i32 62980
  store ptr %add.ptr341, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 82), align 4
  %160 = load ptr, ptr %regs_base, align 4
  %add.ptr343 = getelementptr i8, ptr %160, i32 63196
  store ptr %add.ptr343, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 133), align 4
  %161 = load ptr, ptr %regs_base, align 4
  %add.ptr345 = getelementptr i8, ptr %161, i32 61700
  store ptr %add.ptr345, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 41), align 4
  %162 = load ptr, ptr %regs_base, align 4
  %add.ptr347 = getelementptr i8, ptr %162, i32 63192
  store ptr %add.ptr347, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 132), align 4
  %163 = load ptr, ptr %regs_base, align 4
  %add.ptr349 = getelementptr i8, ptr %163, i32 63092
  store ptr %add.ptr349, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 114), align 4
  %164 = load ptr, ptr %regs_base, align 4
  %add.ptr351 = getelementptr i8, ptr %164, i32 63096
  store ptr %add.ptr351, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 115), align 4
  %165 = load ptr, ptr %regs_base, align 4
  %add.ptr353 = getelementptr i8, ptr %165, i32 63004
  store ptr %add.ptr353, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 88), align 4
  %166 = load ptr, ptr %regs_base, align 4
  %add.ptr355 = getelementptr i8, ptr %166, i32 63008
  store ptr %add.ptr355, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 89), align 4
  %167 = load ptr, ptr %regs_base, align 4
  %add.ptr357 = getelementptr i8, ptr %167, i32 61704
  store ptr %add.ptr357, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 147), align 4
  %168 = load ptr, ptr %regs_base, align 4
  %add.ptr359 = getelementptr i8, ptr %168, i32 63404
  store ptr %add.ptr359, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 165), align 4
  %169 = load ptr, ptr %regs_base, align 4
  %add.ptr361 = getelementptr i8, ptr %169, i32 63384
  store ptr %add.ptr361, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 160), align 4
  %170 = load ptr, ptr %regs_base, align 4
  %add.ptr363 = getelementptr i8, ptr %170, i32 63396
  store ptr %add.ptr363, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 163), align 4
  %171 = load ptr, ptr %regs_base, align 4
  %add.ptr365 = getelementptr i8, ptr %171, i32 63412
  store ptr %add.ptr365, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 167), align 4
  %172 = load ptr, ptr %regs_base, align 4
  %add.ptr367 = getelementptr i8, ptr %172, i32 63416
  store ptr %add.ptr367, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 168), align 4
  %173 = load ptr, ptr %regs_base, align 4
  %add.ptr369 = getelementptr i8, ptr %173, i32 63388
  store ptr %add.ptr369, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 161), align 4
  %174 = load ptr, ptr %regs_base, align 4
  %add.ptr371 = getelementptr i8, ptr %174, i32 63380
  store ptr %add.ptr371, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 159), align 4
  %175 = load ptr, ptr %regs_base, align 4
  %add.ptr373 = getelementptr i8, ptr %175, i32 63372
  store ptr %add.ptr373, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 157), align 4
  %176 = load ptr, ptr %regs_base, align 4
  %add.ptr375 = getelementptr i8, ptr %176, i32 63376
  store ptr %add.ptr375, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 158), align 4
  %177 = load ptr, ptr %regs_base, align 4
  %add.ptr377 = getelementptr i8, ptr %177, i32 63400
  store ptr %add.ptr377, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 164), align 4
  %178 = load ptr, ptr %regs_base, align 4
  %add.ptr379 = getelementptr i8, ptr %178, i32 64332
  store ptr %add.ptr379, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 217), align 4
  %179 = load ptr, ptr %regs_base, align 4
  %add.ptr381 = getelementptr i8, ptr %179, i32 64336
  store ptr %add.ptr381, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 218), align 4
  %180 = load ptr, ptr %regs_base, align 4
  %add.ptr383 = getelementptr i8, ptr %180, i32 64340
  store ptr %add.ptr383, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 219), align 4
  %181 = load ptr, ptr %regs_base, align 4
  %add.ptr385 = getelementptr i8, ptr %181, i32 63636
  store ptr %add.ptr385, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 247), align 4
  %182 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %variant, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %185)
  %cmp388 = icmp ugt i32 %185, 159
  br i1 %cmp388, label %if.end392, label %if.end283.done_crit_edge

if.end283.done_crit_edge:                         ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end392:                                        ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs_base, align 4
  %add.ptr394 = getelementptr i8, ptr %187, i32 62832
  store ptr %add.ptr394, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 148), align 4
  %188 = load ptr, ptr %regs_base, align 4
  %add.ptr396 = getelementptr i8, ptr %188, i32 62836
  store ptr %add.ptr396, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 149), align 4
  %189 = load ptr, ptr %regs_base, align 4
  %add.ptr398 = getelementptr i8, ptr %189, i32 64428
  store ptr %add.ptr398, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 248), align 4
  %190 = load ptr, ptr %regs_base, align 4
  %add.ptr400 = getelementptr i8, ptr %190, i32 64432
  store ptr %add.ptr400, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 249), align 4
  %191 = load ptr, ptr %regs_base, align 4
  %add.ptr402 = getelementptr i8, ptr %191, i32 64792
  store ptr %add.ptr402, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 250), align 4
  %192 = load ptr, ptr %regs_base, align 4
  %add.ptr404 = getelementptr i8, ptr %192, i32 64980
  store ptr %add.ptr404, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 251), align 4
  %193 = load ptr, ptr %regs_base, align 4
  %add.ptr406 = getelementptr i8, ptr %193, i32 64984
  store ptr %add.ptr406, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 252), align 4
  %194 = load ptr, ptr %regs_base, align 4
  %add.ptr408 = getelementptr i8, ptr %194, i32 64992
  store ptr %add.ptr408, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 253), align 4
  %195 = load ptr, ptr %regs_base, align 4
  %add.ptr410 = getelementptr i8, ptr %195, i32 64996
  store ptr %add.ptr410, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 254), align 4
  %196 = load ptr, ptr %regs_base, align 4
  %add.ptr412 = getelementptr i8, ptr %196, i32 65000
  store ptr %add.ptr412, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 255), align 4
  br label %done

done:                                             ; preds = %if.end392, %if.end283.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  ret ptr @mfc_regs
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_ops_v6() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_ops_v6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_alloc_dec_temp_buffers_v6(ptr nocapture noundef readnone %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_release_dec_desc_buffer_v6(ptr nocapture noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_codec_buffers_v6(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %2 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %img_width, align 4
  %sub = add i32 %3, 15
  %div = sdiv i32 %sub, 16
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %4 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %img_height, align 4
  %sub3 = add i32 %5, 15
  %div4 = sdiv i32 %sub3, 16
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 15
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 2, label %if.then23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp sgt i32 %9, 1
  br i1 %cmp5, label %do.body10, label %do.body.if.end170_crit_edge

do.body.if.end170_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.body10:                                        ; preds = %do.body
  %luma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %10 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %luma_size, align 4
  %chroma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %12 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chroma_size, align 4
  %mv_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %14 = ptrtoint ptr %mv_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mv_size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef %11, i32 noundef %13, i32 noundef %15) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp11 = icmp sgt i32 %.pr, 1
  br i1 %cmp11, label %do.end15, label %do.body10.if.end170_crit_edge

do.body10.if.end170_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %total_dpb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 47
  %16 = ptrtoint ptr %total_dpb_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_dpb_count, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef %17) #11
  br label %if.end170

if.then23:                                        ; preds = %entry
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %variant, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %21)
  %cmp24 = icmp ugt i32 %21, 159
  br i1 %cmp24, label %if.then23.if.end49_crit_edge, label %if.else26

if.then23.if.end49_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %21)
  %cmp29 = icmp ugt i32 %21, 127
  br i1 %cmp29, label %if.then32, label %if.else39

if.then32:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %add34 = add nsw i32 %div4, 1
  %add33 = shl nsw i32 %div, 4
  %mul = add i32 %add33, 16
  %mul35 = mul i32 %mul, %add34
  %and = add i32 %mul35, 30
  %mul37 = and i32 %and, -32
  br label %if.end49

if.else39:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %add41 = add nsw i32 %div4, 3
  %add40 = shl nsw i32 %div, 4
  %mul42 = add i32 %add40, 16
  %mul43 = mul i32 %mul42, %add41
  %and45 = add i32 %mul43, 30
  %mul46 = and i32 %and45, -32
  br label %if.end49

if.end49:                                         ; preds = %if.else39, %if.then32, %if.then23.if.end49_crit_edge
  %mul37.sink = phi i32 [ %mul37, %if.then32 ], [ %mul46, %if.else39 ], [ 0, %if.then23.if.end49_crit_edge ]
  %tmv_buffer_size38 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 57
  %22 = ptrtoint ptr %tmv_buffer_size38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul37.sink, ptr %tmv_buffer_size38, align 4
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %26)
  %cmp52 = icmp ugt i32 %26, 159
  br i1 %cmp52, label %if.then55, label %if.else98

if.then55:                                        ; preds = %if.end49
  %sub58 = add i32 %3, 31
  %div59 = sdiv i32 %sub58, 32
  %sub62 = add i32 %5, 31
  %div63 = sdiv i32 %sub62, 32
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %27 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %28)
  %cmp64.not = icmp eq i32 %28, 26
  br i1 %cmp64.not, label %if.else80, label %if.then65

if.then65:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %mul66 = shl nsw i32 %div, 4
  %add67 = add i32 %mul66, 63
  %and68 = and i32 %add67, -64
  %mul69 = shl nsw i32 %div4, 4
  %add70 = add i32 %mul69, 31
  %and71 = and i32 %add70, -32
  %mul72 = mul i32 %and71, %and68
  %add73 = or i32 %mul72, 64
  %luma_dpb_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %29 = ptrtoint ptr %luma_dpb_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add73, ptr %luma_dpb_size, align 4
  %mul77 = shl nsw i32 %div4, 3
  %mul78 = mul i32 %mul77, %and68
  %add79 = or i32 %mul78, 64
  br label %if.end109

if.else80:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %mul81 = shl nsw i32 %div59, 5
  %add82 = add i32 %mul81, 63
  %and83 = and i32 %add82, -64
  %mul84 = shl nsw i32 %div63, 5
  %mul87 = mul i32 %mul84, %and83
  %add88 = or i32 %mul87, 64
  %luma_dpb_size89 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %30 = ptrtoint ptr %luma_dpb_size89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add88, ptr %luma_dpb_size89, align 4
  %mul93 = shl nsw i32 %div63, 4
  %mul94 = mul i32 %mul93, %and83
  %add95 = or i32 %mul94, 64
  br label %if.end109

if.else98:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %mul99 = mul i32 %div4, %div
  %mul100 = shl i32 %mul99, 8
  %luma_dpb_size103 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %31 = ptrtoint ptr %luma_dpb_size103 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul100, ptr %luma_dpb_size103, align 4
  %mul105 = shl i32 %mul99, 7
  %add106 = add i32 %mul105, 255
  %and107 = and i32 %add106, -256
  br label %if.end109

if.end109:                                        ; preds = %if.else98, %if.else80, %if.then65
  %add79.sink = phi i32 [ %add79, %if.then65 ], [ %add95, %if.else80 ], [ %and107, %if.else98 ]
  %lcu_height.0 = phi i32 [ %div63, %if.then65 ], [ %div63, %if.else80 ], [ 0, %if.else98 ]
  %lcu_width.0 = phi i32 [ %div59, %if.then65 ], [ %div59, %if.else80 ], [ 0, %if.else98 ]
  %chroma_dpb_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %32 = ptrtoint ptr %chroma_dpb_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add79.sink, ptr %chroma_dpb_size, align 4
  %33 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %36)
  %cmp112 = icmp ugt i32 %36, 127
  br i1 %cmp112, label %if.then115, label %if.else134

if.then115:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %mul116 = shl i32 %div, 6
  %mul120 = shl nsw i32 %div4, 4
  %sub122 = add i32 %mul120, 63
  %div123937 = lshr i32 %sub122, 6
  %37 = add i32 %mul116, 252
  %mul124 = and i32 %37, -256
  %mul125 = mul i32 %mul124, %div123937
  %mul126 = mul i32 %div4, %div
  %sub128 = add i32 %mul126, 31
  %38 = lshr i32 %sub128, 1
  %mul130 = and i32 %38, 2147483632
  %add131 = add nuw i32 %mul130, 255
  %add132 = add i32 %add131, %mul125
  br label %do.body155

if.else134:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %add136 = add i32 %3, 127
  %div137 = sdiv i32 %add136, 64
  %sub141 = add i32 %5, 63
  %div142 = sdiv i32 %sub141, 64
  %mul143 = shl i32 %div137, 12
  %mul144 = mul i32 %mul143, %div142
  %mul145 = mul i32 %div4, %div
  %sub147 = add i32 %mul145, 31
  %39 = lshr i32 %sub147, 1
  %mul149 = and i32 %39, 2147483632
  %add150 = or i32 %mul144, 255
  %add151 = add i32 %add150, %mul149
  br label %do.body155

do.body155:                                       ; preds = %if.else134, %if.then115
  %and152.sink.in = phi i32 [ %add132, %if.then115 ], [ %add151, %if.else134 ]
  %and152.sink = and i32 %and152.sink.in, -256
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and152.sink, ptr %40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %42 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp156 = icmp sgt i32 %42, 1
  br i1 %cmp156, label %do.end160, label %do.body155.if.end170_crit_edge

do.body155.if.end170_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.end160:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  %luma_dpb_size162 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %43 = ptrtoint ptr %luma_dpb_size162 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %luma_dpb_size162, align 4
  %chroma_dpb_size163 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %45 = ptrtoint ptr %chroma_dpb_size163 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chroma_dpb_size163, align 4
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef %44, i32 noundef %46) #11
  br label %if.end170

if.end170:                                        ; preds = %do.end160, %do.body155.if.end170_crit_edge, %do.end15, %do.body10.if.end170_crit_edge, %do.body.if.end170_crit_edge
  %lcu_height.1 = phi i32 [ 0, %do.end15 ], [ 0, %do.body10.if.end170_crit_edge ], [ %lcu_height.0, %do.end160 ], [ %lcu_height.0, %do.body155.if.end170_crit_edge ], [ 0, %do.body.if.end170_crit_edge ]
  %lcu_width.1 = phi i32 [ 0, %do.end15 ], [ 0, %do.body10.if.end170_crit_edge ], [ %lcu_width.0, %do.end160 ], [ %lcu_width.0, %do.body155.if.end170_crit_edge ], [ 0, %do.body.if.end170_crit_edge ]
  %codec_mode171 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %47 = ptrtoint ptr %codec_mode171 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %codec_mode171, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %48, label %if.end170.sw.epilog_crit_edge [
    i32 0, label %if.end170.sw.bb_crit_edge
    i32 1, label %if.end170.sw.bb_crit_edge944
    i32 3, label %sw.bb212
    i32 6, label %if.end170.sw.bb259_crit_edge
    i32 2, label %if.end170.sw.bb259_crit_edge945
    i32 4, label %sw.bb290
    i32 5, label %sw.bb294
    i32 7, label %sw.bb327
    i32 17, label %do.body377
    i32 18, label %do.body396
    i32 20, label %sw.bb411
    i32 22, label %if.end170.sw.bb486_crit_edge
    i32 23, label %if.end170.sw.bb486_crit_edge946
    i32 24, label %sw.bb550
    i32 26, label %do.body637
  ]

if.end170.sw.bb486_crit_edge946:                  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb486

if.end170.sw.bb486_crit_edge:                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb486

if.end170.sw.bb259_crit_edge945:                  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb259

if.end170.sw.bb259_crit_edge:                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb259

if.end170.sw.bb_crit_edge944:                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end170.sw.bb_crit_edge:                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end170.sw.epilog_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end170.sw.bb_crit_edge, %if.end170.sw.bb_crit_edge944
  %variant172 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %variant172 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %variant172, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %53)
  %cmp174 = icmp ugt i32 %53, 159
  br i1 %cmp174, label %do.body178, label %if.else189

do.body178:                                       ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %54 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp179 = icmp sgt i32 %54, 1
  br i1 %cmp179, label %do.end183, label %do.body178.if.end203_crit_edge

do.body178.if.end203_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

do.end183:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #10
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 137) #11
  br label %if.end203

if.else189:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %53)
  %cmp192 = icmp ugt i32 %53, 127
  br i1 %cmp192, label %if.then195, label %if.else198

if.then195:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #10
  %mul196 = mul i32 %div, 704
  %add197 = add i32 %mul196, 2176
  %scratch_buf_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %55 = ptrtoint ptr %scratch_buf_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add197, ptr %scratch_buf_size, align 4
  br label %if.end203

if.else198:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #10
  %mul199 = mul i32 %div, 192
  %add200 = add i32 %mul199, 64
  %scratch_buf_size201 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %56 = ptrtoint ptr %scratch_buf_size201 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add200, ptr %scratch_buf_size201, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.else198, %if.then195, %do.end183, %do.body178.if.end203_crit_edge
  %scratch_buf_size204 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %57 = ptrtoint ptr %scratch_buf_size204 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scratch_buf_size204, align 4
  %add205 = add i32 %58, 255
  %and206 = and i32 %add205, -256
  store i32 %and206, ptr %scratch_buf_size204, align 4
  %mv_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 48
  %59 = ptrtoint ptr %mv_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mv_count, align 4
  %mv_size209 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %61 = ptrtoint ptr %mv_size209 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mv_size209, align 4
  %mul210 = mul i32 %62, %60
  %add211 = add i32 %mul210, %and206
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %63 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add211, ptr %size, align 4
  br label %sw.epilog

sw.bb212:                                         ; preds = %if.end170
  %variant213 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %64 = ptrtoint ptr %variant213 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %variant213, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %67)
  %cmp215 = icmp ugt i32 %67, 159
  br i1 %cmp215, label %do.body219, label %if.else230

do.body219:                                       ; preds = %sw.bb212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %68 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp220 = icmp sgt i32 %68, 1
  br i1 %cmp220, label %do.end224, label %do.body219.if.end251_crit_edge

do.body219.if.end251_crit_edge:                   ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

do.end224:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 156) #11
  br label %if.end251

if.else230:                                       ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #10
  %mul237 = mul i32 %div, 144
  %mul239 = shl i32 %div4, 13
  %add240 = add i32 %mul237, 1097792
  %add241 = add i32 %add240, %mul239
  %scratch_buf_size242 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %69 = ptrtoint ptr %scratch_buf_size242 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add241, ptr %scratch_buf_size242, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.else230, %do.end224, %do.body219.if.end251_crit_edge
  %scratch_buf_size252 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %70 = ptrtoint ptr %scratch_buf_size252 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scratch_buf_size252, align 4
  %add253 = add i32 %71, 255
  %and254 = and i32 %add253, -256
  store i32 %and254, ptr %scratch_buf_size252, align 4
  %size258 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %72 = ptrtoint ptr %size258 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and254, ptr %size258, align 4
  br label %sw.epilog

sw.bb259:                                         ; preds = %if.end170.sw.bb259_crit_edge, %if.end170.sw.bb259_crit_edge945
  %variant260 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %73 = ptrtoint ptr %variant260 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %variant260, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %76)
  %cmp262 = icmp ugt i32 %76, 159
  br i1 %cmp262, label %do.body266, label %if.else277

do.body266:                                       ; preds = %sw.bb259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %77 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp267 = icmp sgt i32 %77, 1
  br i1 %cmp267, label %do.end271, label %do.body266.if.end282_crit_edge

do.body266.if.end282_crit_edge:                   ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

do.end271:                                        ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #10
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 176) #11
  br label %if.end282

if.else277:                                       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #10
  %add278 = add nsw i32 %div4, %div
  %78 = mul i32 %add278, 2096
  %mul280 = add i32 %78, 2096
  %scratch_buf_size281 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %79 = ptrtoint ptr %scratch_buf_size281 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul280, ptr %scratch_buf_size281, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.else277, %do.end271, %do.body266.if.end282_crit_edge
  %scratch_buf_size283 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %80 = ptrtoint ptr %scratch_buf_size283 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %scratch_buf_size283, align 4
  %add284 = add i32 %81, 255
  %and285 = and i32 %add284, -256
  store i32 %and285, ptr %scratch_buf_size283, align 4
  %size289 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %82 = ptrtoint ptr %size289 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and285, ptr %size289, align 4
  br label %sw.epilog

sw.bb290:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %size292 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %83 = ptrtoint ptr %size292 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %size292, align 4
  %size293 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %84 = ptrtoint ptr %size293 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %size293, align 4
  br label %sw.epilog

sw.bb294:                                         ; preds = %if.end170
  %variant295 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %85 = ptrtoint ptr %variant295 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %variant295, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %88)
  %cmp297 = icmp ugt i32 %88, 159
  br i1 %cmp297, label %do.body301, label %if.else312

do.body301:                                       ; preds = %sw.bb294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %89 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp302 = icmp sgt i32 %89, 1
  br i1 %cmp302, label %do.end306, label %do.body301.if.end319_crit_edge

do.body301.if.end319_crit_edge:                   ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end319

do.end306:                                        ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #10
  %call308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 193) #11
  br label %if.end319

if.else312:                                       ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #10
  %mul313 = mul i32 %div, 144
  %mul314 = shl i32 %div4, 13
  %add315 = add i32 %mul313, 1097792
  %add317 = add i32 %add315, %mul314
  %scratch_buf_size318 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %90 = ptrtoint ptr %scratch_buf_size318 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add317, ptr %scratch_buf_size318, align 4
  br label %if.end319

if.end319:                                        ; preds = %if.else312, %do.end306, %do.body301.if.end319_crit_edge
  %scratch_buf_size320 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %91 = ptrtoint ptr %scratch_buf_size320 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %scratch_buf_size320, align 4
  %add321 = add i32 %92, 255
  %and322 = and i32 %add321, -256
  store i32 %and322, ptr %scratch_buf_size320, align 4
  %size326 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %93 = ptrtoint ptr %size326 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and322, ptr %size326, align 4
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.end170
  %variant328 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %94 = ptrtoint ptr %variant328 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %variant328, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %97)
  %cmp330 = icmp ugt i32 %97, 159
  br i1 %cmp330, label %do.body334, label %if.else345

do.body334:                                       ; preds = %sw.bb327
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %98 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp335 = icmp sgt i32 %98, 1
  br i1 %cmp335, label %do.end339, label %do.body334.if.end368_crit_edge

do.body334.if.end368_crit_edge:                   ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end368

do.end339:                                        ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #10
  %call341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 205) #11
  br label %if.end368

if.else345:                                       ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %97)
  %cmp348 = icmp ugt i32 %97, 127
  br i1 %cmp348, label %if.then351, label %if.else357

if.then351:                                       ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #10
  %mul352 = mul i32 %div, 576
  %mul353 = shl i32 %div4, 7
  %add354 = add i32 %mul352, 4128
  %add355 = add i32 %add354, %mul353
  %scratch_buf_size356 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %99 = ptrtoint ptr %scratch_buf_size356 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add355, ptr %scratch_buf_size356, align 4
  br label %if.end368

if.else357:                                       ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #10
  %mul358 = shl i32 %div, 5
  %mul359 = shl i32 %div4, 7
  %100 = add i32 %mul358, 32
  %mul363 = and i32 %100, -64
  %add360 = add i32 %mul358, 2112
  %add364 = add i32 %add360, %mul359
  %add365 = add i32 %add364, %mul363
  %scratch_buf_size366 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %101 = ptrtoint ptr %scratch_buf_size366 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add365, ptr %scratch_buf_size366, align 4
  br label %if.end368

if.end368:                                        ; preds = %if.else357, %if.then351, %do.end339, %do.body334.if.end368_crit_edge
  %scratch_buf_size369 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %102 = ptrtoint ptr %scratch_buf_size369 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %scratch_buf_size369, align 4
  %add370 = add i32 %103, 255
  %and371 = and i32 %add370, -256
  store i32 %and371, ptr %scratch_buf_size369, align 4
  %size375 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %104 = ptrtoint ptr %size375 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and371, ptr %size375, align 4
  br label %sw.epilog

do.body377:                                       ; preds = %if.end170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %105 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp378 = icmp sgt i32 %105, 1
  br i1 %cmp378, label %do.end382, label %do.body377.do.end387_crit_edge

do.body377.do.end387_crit_edge:                   ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end387

do.end382:                                        ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #10
  %call384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 221) #11
  br label %do.end387

do.end387:                                        ; preds = %do.end382, %do.body377.do.end387_crit_edge
  %scratch_buf_size388 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %106 = ptrtoint ptr %scratch_buf_size388 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %scratch_buf_size388, align 4
  %mv_count389 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 48
  %108 = ptrtoint ptr %mv_count389 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mv_count389, align 4
  %mv_size390 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %110 = ptrtoint ptr %mv_size390 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mv_size390, align 4
  %mul391 = mul i32 %111, %109
  %add392 = add i32 %mul391, %107
  %size394 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %112 = ptrtoint ptr %size394 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add392, ptr %size394, align 4
  br label %sw.epilog

do.body396:                                       ; preds = %if.end170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %113 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp397 = icmp sgt i32 %113, 1
  br i1 %cmp397, label %do.end401, label %do.body396.do.end406_crit_edge

do.body396.do.end406_crit_edge:                   ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end406

do.end401:                                        ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #10
  %call403 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 227) #11
  br label %do.end406

do.end406:                                        ; preds = %do.end401, %do.body396.do.end406_crit_edge
  %scratch_buf_size407 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %114 = ptrtoint ptr %scratch_buf_size407 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %scratch_buf_size407, align 4
  %add408 = add i32 %115, 20480
  %size410 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %116 = ptrtoint ptr %size410 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add408, ptr %size410, align 4
  br label %sw.epilog

sw.bb411:                                         ; preds = %if.end170
  %variant412 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %117 = ptrtoint ptr %variant412 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %variant412, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %120)
  %cmp414 = icmp ugt i32 %120, 159
  br i1 %cmp414, label %do.body418, label %if.else449

do.body418:                                       ; preds = %sw.bb411
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %121 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp419 = icmp sgt i32 %121, 1
  br i1 %cmp419, label %do.end423, label %do.body418.do.end428_crit_edge

do.body418.do.end428_crit_edge:                   ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end428

do.end423:                                        ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #10
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 234) #11
  br label %do.end428

do.end428:                                        ; preds = %do.end423, %do.body418.do.end428_crit_edge
  %add430 = add nsw i32 %div4, 3
  %add429 = shl nsw i32 %div, 3
  %mul431 = add nsw i32 %add429, 24
  %mul432 = mul i32 %mul431, %add430
  %mul433 = shl i32 %div4, 6
  %add434 = add i32 %mul433, 1280
  %sub436 = add nsw i32 %div, 7
  %div437933 = lshr i32 %sub436, 3
  %mul438 = mul i32 %add434, %div437933
  %mul440 = mul i32 %div4, %div
  %sub442 = add i32 %mul440, 63
  %122 = lshr i32 %sub442, 1
  %mul444 = and i32 %122, 2147483616
  %add439 = add i32 %mul432, 15
  %add445 = add i32 %add439, %mul438
  %add446 = add i32 %add445, %mul444
  %and447 = and i32 %add446, -16
  %me_buffer_size448 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %123 = ptrtoint ptr %me_buffer_size448 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and447, ptr %me_buffer_size448, align 4
  br label %if.end467

if.else449:                                       ; preds = %sw.bb411
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %120)
  %cmp452 = icmp ugt i32 %120, 127
  br i1 %cmp452, label %if.then455, label %if.else459

if.then455:                                       ; preds = %if.else449
  call void @__sanitizer_cov_trace_pc() #10
  %mul456 = mul i32 %div, 592
  %add457 = add i32 %mul456, 2336
  %scratch_buf_size458 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %124 = ptrtoint ptr %scratch_buf_size458 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add457, ptr %scratch_buf_size458, align 4
  br label %if.end467

if.else459:                                       ; preds = %if.else449
  call void @__sanitizer_cov_trace_pc() #10
  %reass.mul943 = mul i32 %div, 80
  %add464 = add i32 %reass.mul943, 65552
  %scratch_buf_size465 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %125 = ptrtoint ptr %scratch_buf_size465 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add464, ptr %scratch_buf_size465, align 4
  br label %if.end467

if.end467:                                        ; preds = %if.else459, %if.then455, %do.end428
  %scratch_buf_size468 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %126 = ptrtoint ptr %scratch_buf_size468 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %scratch_buf_size468, align 4
  %add469 = add i32 %127, 255
  %and470 = and i32 %add469, -256
  store i32 %and470, ptr %scratch_buf_size468, align 4
  %tmv_buffer_size473 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 57
  %128 = ptrtoint ptr %tmv_buffer_size473 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tmv_buffer_size473, align 4
  %add474 = add i32 %and470, %129
  %pb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %130 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pb_count, align 4
  %luma_dpb_size475 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %132 = ptrtoint ptr %luma_dpb_size475 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %luma_dpb_size475, align 4
  %chroma_dpb_size476 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %134 = ptrtoint ptr %chroma_dpb_size476 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %chroma_dpb_size476, align 4
  %add477 = add i32 %135, %133
  %me_buffer_size478 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %136 = ptrtoint ptr %me_buffer_size478 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %me_buffer_size478, align 4
  %add479 = add i32 %add477, %137
  %mul480 = mul i32 %add479, %131
  %add481 = add i32 %add474, %mul480
  %size483 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %138 = ptrtoint ptr %size483 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add481, ptr %size483, align 4
  %size485 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %139 = ptrtoint ptr %size485 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %size485, align 4
  br label %sw.epilog

sw.bb486:                                         ; preds = %if.end170.sw.bb486_crit_edge, %if.end170.sw.bb486_crit_edge946
  %variant487 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %140 = ptrtoint ptr %variant487 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %variant487, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %143)
  %cmp489 = icmp ugt i32 %143, 159
  br i1 %cmp489, label %do.body493, label %if.else524

do.body493:                                       ; preds = %sw.bb486
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %144 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp494 = icmp sgt i32 %144, 1
  br i1 %cmp494, label %do.end498, label %do.body493.do.end503_crit_edge

do.body493.do.end503_crit_edge:                   ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end503

do.end498:                                        ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #10
  %call500 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 258) #11
  br label %do.end503

do.end503:                                        ; preds = %do.end498, %do.body493.do.end503_crit_edge
  %add505 = add nsw i32 %div4, 3
  %add504 = shl nsw i32 %div, 3
  %mul506 = add nsw i32 %add504, 24
  %mul507 = mul i32 %mul506, %add505
  %mul508 = shl i32 %div4, 6
  %add509 = add i32 %mul508, 1280
  %sub511 = add nsw i32 %div, 7
  %div512931 = lshr i32 %sub511, 3
  %mul513 = mul i32 %add509, %div512931
  %mul515 = mul i32 %div4, %div
  %sub517 = add i32 %mul515, 127
  %145 = lshr i32 %sub517, 3
  %mul519 = and i32 %145, 536870896
  %add514 = add i32 %mul507, 15
  %add520 = add i32 %add514, %mul513
  %add521 = add i32 %add520, %mul519
  %and522 = and i32 %add521, -16
  %me_buffer_size523 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %146 = ptrtoint ptr %me_buffer_size523 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and522, ptr %me_buffer_size523, align 4
  br label %if.end530

if.else524:                                       ; preds = %sw.bb486
  call void @__sanitizer_cov_trace_pc() #10
  %mul525 = shl i32 %div, 5
  %add528 = or i32 %mul525, 16
  %scratch_buf_size529 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %147 = ptrtoint ptr %scratch_buf_size529 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add528, ptr %scratch_buf_size529, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.else524, %do.end503
  %scratch_buf_size531 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %148 = ptrtoint ptr %scratch_buf_size531 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %scratch_buf_size531, align 4
  %add532 = add i32 %149, 255
  %and533 = and i32 %add532, -256
  store i32 %and533, ptr %scratch_buf_size531, align 4
  %tmv_buffer_size536 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 57
  %150 = ptrtoint ptr %tmv_buffer_size536 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tmv_buffer_size536, align 4
  %add537 = add i32 %and533, %151
  %pb_count538 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %152 = ptrtoint ptr %pb_count538 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pb_count538, align 4
  %luma_dpb_size539 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %154 = ptrtoint ptr %luma_dpb_size539 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %luma_dpb_size539, align 4
  %chroma_dpb_size540 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %156 = ptrtoint ptr %chroma_dpb_size540 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %chroma_dpb_size540, align 4
  %add541 = add i32 %157, %155
  %me_buffer_size542 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %158 = ptrtoint ptr %me_buffer_size542 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %me_buffer_size542, align 4
  %add543 = add i32 %add541, %159
  %mul544 = mul i32 %add543, %153
  %add545 = add i32 %add537, %mul544
  %size547 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %160 = ptrtoint ptr %size547 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add545, ptr %size547, align 4
  %size549 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %161 = ptrtoint ptr %size549 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %size549, align 4
  br label %sw.epilog

sw.bb550:                                         ; preds = %if.end170
  %variant551 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %162 = ptrtoint ptr %variant551 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %variant551, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %165)
  %cmp553 = icmp ugt i32 %165, 159
  br i1 %cmp553, label %do.body557, label %if.else582

do.body557:                                       ; preds = %sw.bb550
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %166 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp558 = icmp sgt i32 %166, 1
  br i1 %cmp558, label %do.end562, label %do.body557.do.end567_crit_edge

do.body557.do.end567_crit_edge:                   ; preds = %do.body557
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end567

do.end562:                                        ; preds = %do.body557
  call void @__sanitizer_cov_trace_pc() #10
  %call564 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 277) #11
  br label %do.end567

do.end567:                                        ; preds = %do.end562, %do.body557.do.end567_crit_edge
  %add569 = add nsw i32 %div4, 3
  %add568 = shl nsw i32 %div, 3
  %mul570 = add nsw i32 %add568, 24
  %mul571 = mul i32 %mul570, %add569
  %mul572 = shl i32 %div4, 6
  %add573 = add i32 %mul572, 1280
  %sub575 = add nsw i32 %div, 7
  %div576930 = lshr i32 %sub575, 3
  %mul577 = mul i32 %add573, %div576930
  %add578 = add i32 %mul571, 15
  %add579 = add i32 %add578, %mul577
  %and580 = and i32 %add579, -16
  %me_buffer_size581 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %167 = ptrtoint ptr %me_buffer_size581 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and580, ptr %me_buffer_size581, align 4
  br label %if.end616

if.else582:                                       ; preds = %sw.bb550
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %165)
  %cmp585 = icmp ugt i32 %165, 127
  br i1 %cmp585, label %if.then588, label %if.else599

if.then588:                                       ; preds = %if.else582
  call void @__sanitizer_cov_trace_pc() #10
  %mul596 = mul i32 %div4, 1536
  %reass.add940 = add i32 %mul596, 576
  %reass.mul941 = mul i32 %reass.add940, %div
  %add597 = add i32 %reass.mul941, 10512
  %scratch_buf_size598 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %168 = ptrtoint ptr %scratch_buf_size598 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %add597, ptr %scratch_buf_size598, align 4
  br label %if.end616

if.else599:                                       ; preds = %if.else582
  call void @__sanitizer_cov_trace_pc() #10
  %add602 = shl i32 %div, 6
  %169 = add i32 %add602, 64
  %mul604 = and i32 %169, -128
  %mul612 = mul i32 %div4, 1536
  %reass.add = or i32 %mul612, 48
  %reass.mul = mul i32 %reass.add, %div
  %add606 = add i32 %mul604, 8336
  %add613 = add i32 %add606, %reass.mul
  %scratch_buf_size614 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %170 = ptrtoint ptr %scratch_buf_size614 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %add613, ptr %scratch_buf_size614, align 4
  br label %if.end616

if.end616:                                        ; preds = %if.else599, %if.then588, %do.end567
  %scratch_buf_size617 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %171 = ptrtoint ptr %scratch_buf_size617 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %scratch_buf_size617, align 4
  %add618 = add i32 %172, 255
  %and619 = and i32 %add618, -256
  store i32 %and619, ptr %scratch_buf_size617, align 4
  %tmv_buffer_size622 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 57
  %173 = ptrtoint ptr %tmv_buffer_size622 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tmv_buffer_size622, align 4
  %add623 = add i32 %and619, %174
  %pb_count624 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %175 = ptrtoint ptr %pb_count624 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pb_count624, align 4
  %luma_dpb_size625 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %177 = ptrtoint ptr %luma_dpb_size625 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %luma_dpb_size625, align 4
  %chroma_dpb_size626 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %179 = ptrtoint ptr %chroma_dpb_size626 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %chroma_dpb_size626, align 4
  %add627 = add i32 %180, %178
  %me_buffer_size628 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %181 = ptrtoint ptr %me_buffer_size628 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %me_buffer_size628, align 4
  %add629 = add i32 %add627, %182
  %mul630 = mul i32 %add629, %176
  %add631 = add i32 %add623, %mul630
  %size633 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %183 = ptrtoint ptr %size633 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add631, ptr %size633, align 4
  %size635 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %184 = ptrtoint ptr %size635 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %size635, align 4
  br label %sw.epilog

do.body637:                                       ; preds = %if.end170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %185 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp638 = icmp sgt i32 %185, 1
  br i1 %cmp638, label %do.end642, label %do.body637.do.end647_crit_edge

do.body637.do.end647_crit_edge:                   ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end647

do.end642:                                        ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #10
  %call644 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 300) #11
  br label %do.end647

do.end647:                                        ; preds = %do.end642, %do.body637.do.end647_crit_edge
  %add648 = add nsw i32 %lcu_width.1, 3
  %add649 = shl nsw i32 %lcu_height.1, 5
  %mul650 = add i32 %add649, 96
  %mul651 = mul i32 %mul650, %add648
  %mul652 = shl i32 %lcu_height.1, 7
  %add653 = add i32 %mul652, 1280
  %div656926 = lshr i32 %add648, 2
  %mul657 = mul i32 %div656926, %add653
  %add658 = add i32 %mul657, %mul651
  %me_buffer_size661 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  %186 = ptrtoint ptr %me_buffer_size661 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add658, ptr %me_buffer_size661, align 4
  %scratch_buf_size662 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %187 = ptrtoint ptr %scratch_buf_size662 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %scratch_buf_size662, align 4
  %add663 = add i32 %188, 255
  %and664 = and i32 %add663, -256
  store i32 %and664, ptr %scratch_buf_size662, align 4
  %tmv_buffer_size667 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 57
  %189 = ptrtoint ptr %tmv_buffer_size667 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tmv_buffer_size667, align 4
  %add668 = add i32 %and664, %190
  %pb_count669 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %191 = ptrtoint ptr %pb_count669 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pb_count669, align 4
  %luma_dpb_size670 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %193 = ptrtoint ptr %luma_dpb_size670 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %luma_dpb_size670, align 4
  %chroma_dpb_size671 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %195 = ptrtoint ptr %chroma_dpb_size671 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %chroma_dpb_size671, align 4
  %add672 = add i32 %194, %add658
  %add674 = add i32 %add672, %196
  %mul675 = mul i32 %add674, %192
  %add676 = add i32 %add668, %mul675
  %size678 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %197 = ptrtoint ptr %size678 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %add676, ptr %size678, align 4
  %size680 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %198 = ptrtoint ptr %size680 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %size680, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end647, %if.end616, %if.end530, %if.end467, %do.end406, %do.end387, %if.end368, %if.end319, %sw.bb290, %if.end282, %if.end251, %if.end203, %if.end170.sw.epilog_crit_edge
  %size682 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %199 = ptrtoint ptr %size682 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %size682, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp683.not = icmp eq i32 %200, 0
  br i1 %cmp683.not, label %sw.epilog.cleanup_crit_edge, label %if.then684

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then684:                                       ; preds = %sw.epilog
  %bank1681 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28
  %call686 = tail call i32 @s5p_mfc_alloc_generic_buf(ptr noundef %1, i32 noundef 0, ptr noundef %bank1681) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call686)
  %tobool.not = icmp eq i32 %call686, 0
  br i1 %tobool.not, label %do.body697, label %do.end691

do.end691:                                        ; preds = %if.then684
  call void @__sanitizer_cov_trace_pc() #10
  %call693 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 318) #11
  br label %cleanup

do.body697:                                       ; preds = %if.then684
  %dma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 2
  %201 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dma, align 4
  %and699 = and i32 %202, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and699)
  %tobool700.not = icmp eq i32 %and699, 0
  br i1 %tobool700.not, label %do.body697.cleanup_crit_edge, label %do.body704, !prof !374

do.body697.cleanup_crit_edge:                     ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body704:                                       ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #8, !srcloc !375
  unreachable

cleanup:                                          ; preds = %do.body697.cleanup_crit_edge, %do.end691, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call686, %do.end691 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body697.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_release_codec_buffers_v6(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bank1 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28
  tail call void @s5p_mfc_release_generic_buf(ptr noundef %1, ptr noundef %bank1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_instance_buffer_v6(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %buf_size2 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %buf_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_size2, align 4
  %priv = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %8 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp sgt i32 %8, 4
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 339) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %9 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %10, label %sw.default [
    i32 0, label %do.end5.sw.bb_crit_edge
    i32 1, label %do.end5.sw.bb_crit_edge78
    i32 17, label %do.end5.sw.bb_crit_edge79
    i32 3, label %do.end5.sw.bb7_crit_edge
    i32 5, label %do.end5.sw.bb7_crit_edge80
    i32 6, label %do.end5.sw.bb7_crit_edge81
    i32 2, label %do.end5.sw.bb7_crit_edge82
    i32 4, label %do.end5.sw.bb7_crit_edge83
    i32 7, label %do.end5.sw.bb7_crit_edge84
    i32 18, label %do.end5.sw.bb7_crit_edge85
    i32 20, label %sw.bb10
    i32 26, label %sw.bb13
    i32 22, label %do.end5.sw.bb16_crit_edge
    i32 23, label %do.end5.sw.bb16_crit_edge86
    i32 24, label %do.end5.sw.bb16_crit_edge87
  ]

do.end5.sw.bb16_crit_edge87:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

do.end5.sw.bb16_crit_edge86:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

do.end5.sw.bb16_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

do.end5.sw.bb7_crit_edge85:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb7_crit_edge84:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb7_crit_edge83:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb7_crit_edge82:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb7_crit_edge81:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb7_crit_edge80:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb7_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end5.sw.bb_crit_edge79:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end5.sw.bb_crit_edge78:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end5.sw.bb_crit_edge:                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end5.sw.bb_crit_edge, %do.end5.sw.bb_crit_edge78, %do.end5.sw.bb_crit_edge79
  %h264_dec_ctx = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %h264_dec_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h264_dec_ctx, align 4
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end5.sw.bb7_crit_edge, %do.end5.sw.bb7_crit_edge80, %do.end5.sw.bb7_crit_edge81, %do.end5.sw.bb7_crit_edge82, %do.end5.sw.bb7_crit_edge83, %do.end5.sw.bb7_crit_edge84, %do.end5.sw.bb7_crit_edge85
  %other_dec_ctx = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %other_dec_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %other_dec_ctx, align 4
  %size9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %17 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %size9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %h264_enc_ctx = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %h264_enc_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h264_enc_ctx, align 4
  %size12 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %20 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %hevc_enc_ctx = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %hevc_enc_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hevc_enc_ctx, align 4
  %size15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %23 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %size15, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end5.sw.bb16_crit_edge, %do.end5.sw.bb16_crit_edge86, %do.end5.sw.bb16_crit_edge87
  %other_enc_ctx = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %7, i32 0, i32 5
  %24 = ptrtoint ptr %other_enc_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %other_enc_ctx, align 4
  %size18 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %26 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %size18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %size20 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %27 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %size20, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 369, i32 noundef %10) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb
  %ctx30 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49
  %call31 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %1, i32 noundef 0, ptr noundef %ctx30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end41, label %do.end36

do.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, i32 noundef 375) #11
  br label %cleanup

if.end41:                                         ; preds = %sw.epilog
  %virt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 1
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt, align 4
  %size44 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %30 = ptrtoint ptr %size44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size44, align 4
  %32 = call ptr @memset(ptr %29, i32 0, i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !376
  tail call void @arm_heavy_mb() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %33 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp49 = icmp sgt i32 %33, 4
  br i1 %cmp49, label %do.end53, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end53:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.36, i32 noundef 382) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end41.cleanup_crit_edge, %do.end36
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_release_instance_buffer_v6(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ctx1 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %1, ptr noundef %ctx1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_dev_context_buffer_v6(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %buf_size1 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buf_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_size1, align 4
  %priv = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %6 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp sgt i32 %6, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.46, i32 noundef 399) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %ctx_buf = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 34
  %size = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 34, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size, align 4
  %call6 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %dev, i32 noundef 0, ptr noundef %ctx_buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end16, label %do.end11

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef 404) #11
  br label %cleanup

if.end16:                                         ; preds = %do.end4
  %virt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 34, i32 1
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %14 = call ptr @memset(ptr %11, i32 0, i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !377
  tail call void @arm_heavy_mb() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %15 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp23 = icmp sgt i32 %15, 4
  br i1 %cmp23, label %do.end27, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.46, i32 noundef 411) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end16.cleanup_crit_edge, %do.end11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_release_dev_context_buffer_v6(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_buf = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 34
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %dev, ptr noundef %ctx_buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_dec_calc_dpb_size_v6(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %2 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %img_width, align 4
  %add = add i32 %3, 15
  %and = and i32 %add, -16
  %buf_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 20
  %4 = ptrtoint ptr %buf_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %buf_width, align 4
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %5 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %img_height, align 4
  %add2 = add i32 %6, 15
  %and3 = and i32 %add2, -16
  %buf_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 21
  %7 = ptrtoint ptr %buf_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and3, ptr %buf_height, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %8 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 443, i32 noundef %3, i32 noundef %6, i32 noundef %and, i32 noundef %and3) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %9 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %img_width, align 4
  %11 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %img_height, align 4
  %sub2.i = add i32 %12, 15
  %div3.i = sdiv i32 %sub2.i, 16
  %mul.i = mul i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 2097152
  %add4.i = add nsw i32 %div3.i, 1
  %div5.i = sdiv i32 %add4.i, 2
  %mul6.i = shl nsw i32 %div5.i, 1
  %mbY.0.i = select i1 %cmp.i, i32 %mul6.i, i32 %div3.i
  %sub.i = add i32 %10, 15
  %div.i = sdiv i32 %sub.i, 16
  %mul7.i = shl i32 %div.i, 8
  %mul9.i = mul i32 %mbY.0.i, %mul7.i
  %luma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %13 = ptrtoint ptr %luma_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul9.i, ptr %luma_size, align 4
  %shr = ashr i32 %12, 1
  %sub2.i118 = add nsw i32 %shr, 15
  %div3.i119 = sdiv i32 %sub2.i118, 16
  %mul.i120 = mul i32 %shr, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul.i120)
  %cmp.i121 = icmp slt i32 %mul.i120, 2097152
  %add4.i122 = add nsw i32 %div3.i119, 1
  %div5.i123 = sdiv i32 %add4.i122, 2
  %mul6.i124 = shl nsw i32 %div5.i123, 1
  %mbY.0.i125 = select i1 %cmp.i121, i32 %mul6.i124, i32 %div3.i119
  %mul9.i129 = mul i32 %mbY.0.i125, %mul7.i
  %chroma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %14 = ptrtoint ptr %chroma_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul9.i129, ptr %chroma_size, align 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %variant, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %20)
  %cmp18 = icmp ugt i32 %20, 127
  br i1 %cmp18, label %if.then19, label %do.end10.if.end24_crit_edge

do.end10.if.end24_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %add21 = or i32 %mul9.i, 64
  %21 = ptrtoint ptr %luma_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add21, ptr %luma_size, align 4
  %add23 = or i32 %mul9.i129, 64
  %22 = ptrtoint ptr %chroma_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add23, ptr %chroma_size, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.end10.if.end24_crit_edge
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %23 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %codec_mode, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %24, label %if.else82 [
    i32 0, label %if.end24.if.then28_crit_edge
    i32 1, label %if.end24.if.then28_crit_edge130
    i32 17, label %if.then65
  ]

if.end24.if.then28_crit_edge130:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end24.if.then28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %if.end24.if.then28_crit_edge, %if.end24.if.then28_crit_edge130
  %variant29 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %variant29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant29, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %29)
  %cmp31 = icmp ugt i32 %29, 159
  %mul43 = mul i32 %mul6.i, %div.i
  %mul44 = shl i32 %mul43, 6
  br i1 %cmp31, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %add45 = add i32 %mul44, 512
  %mv_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %30 = ptrtoint ptr %mv_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add45, ptr %mv_size, align 4
  br label %if.end85

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %add59 = add i32 %mul44, 128
  %mv_size60 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %31 = ptrtoint ptr %mv_size60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add59, ptr %mv_size60, align 4
  br label %if.end85

if.then65:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %sub68 = add i32 %10, 63
  %div69 = sdiv i32 %sub68, 64
  %sub72 = add i32 %12, 63
  %div73 = sdiv i32 %sub72, 64
  %mul74 = shl i32 %div69, 8
  %mul75 = mul i32 %mul74, %div73
  %mv_size77 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %add79 = add i32 %mul75, 543
  %and80 = and i32 %add79, -256
  %32 = ptrtoint ptr %mv_size77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and80, ptr %mv_size77, align 4
  br label %if.end85

if.else82:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %mv_size83 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %33 = ptrtoint ptr %mv_size83 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %mv_size83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then65, %if.else, %if.then34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_enc_calc_src_size_v6(ptr nocapture noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %0 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %img_width, align 4
  %sub = add i32 %1, 15
  %div = sdiv i32 %sub, 16
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %2 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %img_height, align 4
  %sub2 = add i32 %3, 15
  %div3 = sdiv i32 %sub2, 16
  %and = and i32 %sub, -16
  %buf_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 20
  %4 = ptrtoint ptr %buf_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %buf_width, align 4
  %mul = mul i32 %div3, %div
  %mul6 = shl i32 %mul, 8
  %luma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %5 = ptrtoint ptr %luma_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul6, ptr %luma_size, align 4
  %mul10 = shl i32 %mul, 7
  %add11 = add i32 %mul10, 255
  %and12 = and i32 %add11, -256
  %chroma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %6 = ptrtoint ptr %chroma_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and12, ptr %chroma_size, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %12)
  %cmp = icmp ugt i32 %12, 111
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add14 = add i32 %mul6, 256
  %13 = ptrtoint ptr %luma_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add14, ptr %luma_size, align 4
  %add16 = or i32 %and12, 128
  %14 = ptrtoint ptr %chroma_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add16, ptr %chroma_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_set_enc_stream_buffer_v6(ptr nocapture noundef readonly %ctx, i32 noundef %addr, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !378
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %e_stream_buffer_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 184
  %5 = ptrtoint ptr %e_stream_buffer_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e_stream_buffer_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %size)
  %e_stream_buffer_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 185
  %8 = ptrtoint ptr %e_stream_buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e_stream_buffer_size, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %10 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %do.end9, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 621, i32 noundef %addr, i32 noundef %size) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end9, %entry.do.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_set_enc_frame_buffer_v6(ptr nocapture noundef readonly %ctx, i32 noundef %y_addr, i32 noundef %c_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !381
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %y_addr)
  %e_source_first_plane_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 178
  %5 = ptrtoint ptr %e_source_first_plane_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e_source_first_plane_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %c_addr)
  %e_source_second_plane_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 179
  %8 = ptrtoint ptr %e_source_second_plane_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e_source_second_plane_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %10 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %do.body12, label %entry.do.end22_crit_edge

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.body12:                                        ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 635, i32 noundef %y_addr) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp13 = icmp sgt i32 %.pr, 1
  br i1 %cmp13, label %do.end17, label %do.body12.do.end22_crit_edge

do.body12.do.end22_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 636, i32 noundef %c_addr) #11
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.body12.do.end22_crit_edge, %entry.do.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_get_enc_frame_buffer_v6(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %y_addr, ptr nocapture noundef writeonly %c_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  %e_encoded_source_first_plane_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 203
  %4 = ptrtoint ptr %e_encoded_source_first_plane_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %e_encoded_source_first_plane_addr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !383
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !384
  %8 = ptrtoint ptr %y_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %y_addr, align 4
  %e_encoded_source_second_plane_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 204
  %9 = ptrtoint ptr %e_encoded_source_second_plane_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %e_encoded_source_second_plane_addr, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !383
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !385
  %13 = ptrtoint ptr %c_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %c_addr, align 4
  %e_recon_luma_dpb_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 211
  %14 = ptrtoint ptr %e_recon_luma_dpb_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e_recon_luma_dpb_addr, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  %e_recon_chroma_dpb_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 212
  %17 = ptrtoint ptr %e_recon_chroma_dpb_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %e_recon_chroma_dpb_addr, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !383
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %21 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %do.body24, label %entry.do.end34_crit_edge

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.body24:                                        ; preds = %entry
  %22 = tail call i32 @llvm.bswap.i32(i32 %16)
  %23 = ptrtoint ptr %y_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y_addr, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 652, i32 noundef %22, i32 noundef %24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp25 = icmp sgt i32 %.pr, 1
  br i1 %cmp25, label %do.end29, label %do.body24.do.end34_crit_edge

do.body24.do.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 653, i32 noundef %20) #11
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body24.do.end34_crit_edge, %entry.do.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_try_run_v6(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 1963, ptr noundef %dev) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 25
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %hw_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end18, label %do.body7

do.body7:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %1 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %do.end12, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef 1968) #11
  br label %cleanup

if.end18:                                         ; preds = %do.end3
  %call19 = tail call i32 @s5p_mfc_get_new_ctx(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %do.body47

if.then21:                                        ; preds = %if.end18
  %call23 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %do.end29, label %do.body35

do.end29:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef 1977) #11
  br label %cleanup

do.body35:                                        ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp36 = icmp sgt i32 %2, 0
  br i1 %cmp36, label %do.end40, label %do.body35.cleanup_crit_edge

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.67, i32 noundef 1981) #11
  br label %cleanup

do.body47:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %3 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp48 = icmp sgt i32 %3, 0
  br i1 %cmp48, label %do.end57, label %do.end57.thread

do.end57.thread:                                  ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx269 = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 26, i32 %call19
  %4 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx269, align 4
  br label %do.end91

do.end57:                                         ; preds = %do.body47
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.67, i32 noundef 1985, i32 noundef %call19) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 26, i32 %call19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp60 = icmp sgt i32 %.pr, 0
  br i1 %cmp60, label %do.body70, label %do.end57.do.end91_crit_edge

do.end57.do.end91_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

do.body70:                                        ; preds = %do.end57
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.67, i32 noundef 1987, ptr noundef %7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr271 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr271)
  %cmp71 = icmp sgt i32 %.pr271, 0
  br i1 %cmp71, label %do.body81, label %do.body70.do.end91_crit_edge

do.body70.do.end91_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

do.body81:                                        ; preds = %do.body70
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_queue_cnt, align 4
  %pb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %7, i32 0, i32 46
  %10 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pb_count, align 4
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %7, i32 0, i32 13
  %12 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_queue_cnt, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.67, i32 noundef 1990, i32 noundef %9, i32 noundef %11, i32 noundef %13) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr274.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr274.pr)
  %cmp82 = icmp sgt i32 %.pr274.pr, 0
  br i1 %cmp82, label %do.end86, label %do.body81.do.end91_crit_edge

do.body81.do.end91_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

do.end86:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.67, i32 noundef 1991, i32 noundef %15) #11
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body81.do.end91_crit_edge, %do.body70.do.end91_crit_edge, %do.end57.do.end91_crit_edge, %do.end57.thread
  %16 = phi ptr [ %7, %do.end86 ], [ %7, %do.body81.do.end91_crit_edge ], [ %7, %do.body70.do.end91_crit_edge ], [ %5, %do.end57.thread ], [ %7, %do.end57.do.end91_crit_edge ]
  %call92 = tail call i32 @s5p_mfc_clock_on() #8
  tail call void @s5p_mfc_clean_ctx_int_flags(ptr noundef %16) #8
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %18, label %do.end189 [
    i32 1, label %if.then94
    i32 2, label %if.then148
  ]

if.then94:                                        ; preds = %do.end91
  %state95 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 16
  %20 = ptrtoint ptr %state95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state95, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %21, label %if.then94.if.then198_crit_edge [
    i32 106, label %sw.bb
    i32 105, label %sw.bb96
    i32 100, label %sw.bb98
    i32 108, label %sw.bb104
    i32 101, label %sw.bb117
    i32 102, label %sw.bb118
    i32 111, label %sw.bb120
    i32 112, label %sw.bb121
    i32 113, label %sw.bb122
    i32 114, label %do.body124
  ]

if.then94.if.then198_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

sw.bb:                                            ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s5p_mfc_run_dec_last_frames(ptr noundef %16)
  br label %cleanup

sw.bb96:                                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %16)
  br label %if.end196

sw.bb98:                                          ; preds = %if.then94
  %mfc_cmds = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %23 = ptrtoint ptr %mfc_cmds to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mfc_cmds, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %sw.bb98.if.then198_crit_edge, label %land.lhs.true

sw.bb98.if.then198_crit_edge:                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

land.lhs.true:                                    ; preds = %sw.bb98
  %open_inst_cmd = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %open_inst_cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %open_inst_cmd, align 4
  %tobool100.not = icmp eq ptr %26, null
  br i1 %tobool100.not, label %land.lhs.true.if.then198_crit_edge, label %cond.true

land.lhs.true.if.then198_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = tail call i32 %26(ptr noundef %16) #8
  br label %if.end196

sw.bb104:                                         ; preds = %if.then94
  %mfc_cmds105 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %27 = ptrtoint ptr %mfc_cmds105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mfc_cmds105, align 4
  %tobool106.not = icmp eq ptr %28, null
  br i1 %tobool106.not, label %sw.bb104.if.then198_crit_edge, label %land.lhs.true107

sw.bb104.if.then198_crit_edge:                    ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

land.lhs.true107:                                 ; preds = %sw.bb104
  %close_inst_cmd = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %close_inst_cmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %close_inst_cmd, align 4
  %tobool109.not = icmp eq ptr %30, null
  br i1 %tobool109.not, label %land.lhs.true107.if.then198_crit_edge, label %cond.true110

land.lhs.true107.if.then198_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

cond.true110:                                     ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #10
  %call113 = tail call i32 %30(ptr noundef %16) #8
  br label %if.end196

sw.bb117:                                         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %16)
  br label %cleanup

sw.bb118:                                         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %call119 = tail call fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %16)
  br label %if.end196

sw.bb120:                                         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %dpb_flush_flag = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 26
  %31 = ptrtoint ptr %dpb_flush_flag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dpb_flush_flag, align 4
  tail call fastcc void @s5p_mfc_set_flush(ptr noundef %16, i32 noundef %32)
  br label %cleanup

sw.bb121:                                         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s5p_mfc_run_dec_last_frames(ptr noundef %16)
  br label %cleanup

sw.bb122:                                         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s5p_mfc_run_dec_last_frames(ptr noundef %16)
  br label %cleanup

do.body124:                                       ; preds = %if.then94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %33 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp125 = icmp sgt i32 %33, 1
  br i1 %cmp125, label %do.end134, label %do.end134.thread

do.end134.thread:                                 ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  %capture_state277 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 30
  %34 = ptrtoint ptr %capture_state277 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %capture_state277, align 4
  br label %do.end145

do.end134:                                        ; preds = %do.body124
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.67, i32 noundef 2030) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr276 = load i32, ptr @mfc_debug_level, align 4
  %capture_state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 30
  %35 = ptrtoint ptr %capture_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %capture_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr276)
  %cmp136 = icmp sgt i32 %.pr276, 1
  br i1 %cmp136, label %do.end140, label %do.end134.do.end145_crit_edge

do.end134.do.end145_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end145

do.end140:                                        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.67, i32 noundef 2032) #11
  br label %do.end145

do.end145:                                        ; preds = %do.end140, %do.end134.do.end145_crit_edge, %do.end134.thread
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %16)
  br label %cleanup

if.then148:                                       ; preds = %do.end91
  %state149 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 16
  %36 = ptrtoint ptr %state149 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state149, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %37, label %if.then148.if.then198_crit_edge [
    i32 106, label %if.then148.sw.bb150_crit_edge
    i32 105, label %if.then148.sw.bb150_crit_edge289
    i32 100, label %sw.bb152
    i32 108, label %sw.bb166
    i32 101, label %sw.bb180
    i32 103, label %sw.bb181
  ]

if.then148.sw.bb150_crit_edge289:                 ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb150

if.then148.sw.bb150_crit_edge:                    ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb150

if.then148.if.then198_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

sw.bb150:                                         ; preds = %if.then148.sw.bb150_crit_edge, %if.then148.sw.bb150_crit_edge289
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %16, align 4
  %src_queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 11
  %41 = ptrtoint ptr %src_queue.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %src_queue.i, align 4
  %cmp.i.not.i = icmp ne ptr %42, %src_queue.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 106
  %or.cond = select i1 %cmp.i.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %if.end8.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %43 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp2.i = icmp sgt i32 %43, 1
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.if.then198_crit_edge

do.body.i.if.then198_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, i32 noundef 1842) #11
  br label %if.then198

if.end8.i:                                        ; preds = %sw.bb150
  %dst_queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 12
  %44 = ptrtoint ptr %dst_queue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %dst_queue.i, align 4
  %cmp.i112.not.i = icmp eq ptr %45, %dst_queue.i
  br i1 %cmp.i112.not.i, label %do.body12.i, label %if.end23.i

do.body12.i:                                      ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %46 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp13.i = icmp sgt i32 %46, 1
  br i1 %cmp13.i, label %do.end17.i, label %do.body12.i.if.then198_crit_edge

do.body12.i.if.then198_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

do.end17.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.168, i32 noundef 1847) #11
  br label %if.then198

if.end23.i:                                       ; preds = %if.end8.i
  %47 = ptrtoint ptr %src_queue.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %src_queue.i, align 4
  %cmp.i114.not.i = icmp eq ptr %48, %src_queue.i
  br i1 %cmp.i114.not.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end23.i
  %mfc_regs2.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %40, i32 0, i32 38
  %49 = ptrtoint ptr %mfc_regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mfc_regs2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !381
  tail call void @arm_heavy_mb() #8
  %e_source_first_plane_addr.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %50, i32 0, i32 178
  %51 = ptrtoint ptr %e_source_first_plane_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %e_source_first_plane_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  tail call void @arm_heavy_mb() #8
  %e_source_second_plane_addr.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %50, i32 0, i32 179
  %53 = ptrtoint ptr %e_source_second_plane_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %e_source_second_plane_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %55 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i116.i = icmp sgt i32 %55, 1
  br i1 %cmp.i116.i, label %do.body12.i.i, label %if.then27.i.if.end68.i_crit_edge

if.then27.i.if.end68.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

do.body12.i.i:                                    ; preds = %if.then27.i
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 635, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i.i = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp13.i.i = icmp sgt i32 %.pr.i.i, 1
  br i1 %cmp13.i.i, label %do.end17.i.i, label %do.body12.i.i.if.end68.i_crit_edge

do.body12.i.i.if.end68.i_crit_edge:               ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

do.end17.i.i:                                     ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 636, i32 noundef 0) #11
  br label %if.end68.i

if.else.i:                                        ; preds = %if.end23.i
  %add.ptr.i = getelementptr i8, ptr %48, i32 -4
  %flags.i = getelementptr i8, ptr %48, i32 16
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %57, 1
  store i32 %or.i, ptr %flags.i, align 4
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 10, i32 0, i32 3
  %60 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp30.i = icmp eq i32 %61, 0
  br i1 %cmp30.i, label %if.then31.i, label %if.else33.i

if.then31.i:                                      ; preds = %if.else.i
  %62 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %16, align 4
  %mfc_regs2.i117.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %63, i32 0, i32 38
  %64 = ptrtoint ptr %mfc_regs2.i117.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mfc_regs2.i117.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !381
  tail call void @arm_heavy_mb() #8
  %e_source_first_plane_addr.i118.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %65, i32 0, i32 178
  %66 = ptrtoint ptr %e_source_first_plane_addr.i118.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %e_source_first_plane_addr.i118.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  tail call void @arm_heavy_mb() #8
  %e_source_second_plane_addr.i119.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %65, i32 0, i32 179
  %68 = ptrtoint ptr %e_source_second_plane_addr.i119.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %e_source_second_plane_addr.i119.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %70 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i120.i = icmp sgt i32 %70, 1
  br i1 %cmp.i120.i, label %do.body12.i124.i, label %if.then31.i.s5p_mfc_set_enc_frame_buffer_v6.exit127.i_crit_edge

if.then31.i.s5p_mfc_set_enc_frame_buffer_v6.exit127.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_set_enc_frame_buffer_v6.exit127.i

do.body12.i124.i:                                 ; preds = %if.then31.i
  %call.i121.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 635, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i122.i = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i122.i)
  %cmp13.i123.i = icmp sgt i32 %.pr.i122.i, 1
  br i1 %cmp13.i123.i, label %do.end17.i126.i, label %do.body12.i124.i.s5p_mfc_set_enc_frame_buffer_v6.exit127.i_crit_edge

do.body12.i124.i.s5p_mfc_set_enc_frame_buffer_v6.exit127.i_crit_edge: ; preds = %do.body12.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_set_enc_frame_buffer_v6.exit127.i

do.end17.i126.i:                                  ; preds = %do.body12.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 636, i32 noundef 0) #11
  br label %s5p_mfc_set_enc_frame_buffer_v6.exit127.i

s5p_mfc_set_enc_frame_buffer_v6.exit127.i:        ; preds = %do.end17.i126.i, %do.body12.i124.i.s5p_mfc_set_enc_frame_buffer_v6.exit127.i_crit_edge, %if.then31.i.s5p_mfc_set_enc_frame_buffer_v6.exit127.i_crit_edge
  %71 = ptrtoint ptr %state149 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 106, ptr %state149, align 4
  br label %if.end68.i

if.else33.i:                                      ; preds = %if.else.i
  %call.i128.i = tail call ptr @vb2_plane_cookie(ptr noundef %59, i32 noundef 0) #8
  %72 = ptrtoint ptr %call.i128.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call.i128.i, align 4
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  %call.i129.i = tail call ptr @vb2_plane_cookie(ptr noundef %75, i32 noundef 1) #8
  %76 = ptrtoint ptr %call.i129.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %call.i129.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %78 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp41.i = icmp sgt i32 %78, 1
  br i1 %cmp41.i, label %do.body51.i, label %if.else33.i.do.end61.i_crit_edge

if.else33.i.do.end61.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61.i

do.body51.i:                                      ; preds = %if.else33.i
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.168, i32 noundef 1865, i32 noundef %73) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp52.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp52.i, label %do.end56.i, label %do.body51.i.do.end61.i_crit_edge

do.body51.i.do.end61.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61.i

do.end56.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.168, i32 noundef 1866, i32 noundef %77) #11
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.end56.i, %do.body51.i.do.end61.i_crit_edge, %if.else33.i.do.end61.i_crit_edge
  tail call void @s5p_mfc_set_enc_frame_buffer_v6(ptr noundef %16, i32 noundef %73, i32 noundef %77) #8
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool63.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool63.not.i, label %do.end61.i.if.end68.i_crit_edge, label %if.then64.i

do.end61.i.if.end68.i_crit_edge:                  ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then64.i:                                      ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %state149 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 106, ptr %state149, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then64.i, %do.end61.i.if.end68.i_crit_edge, %s5p_mfc_set_enc_frame_buffer_v6.exit127.i, %do.end17.i.i, %do.body12.i.i.if.end68.i_crit_edge, %if.then27.i.if.end68.i_crit_edge
  %82 = ptrtoint ptr %dst_queue.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dst_queue.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %83, i32 -4
  %flags74.i = getelementptr i8, ptr %83, i32 16
  %84 = ptrtoint ptr %flags74.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags74.i, align 4
  %or75.i = or i32 %85, 1
  store i32 %or75.i, ptr %flags74.i, align 4
  %86 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr73.i, align 4
  %call.i130.i = tail call ptr @vb2_plane_cookie(ptr noundef %87, i32 noundef 0) #8
  %88 = ptrtoint ptr %call.i130.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call.i130.i, align 4
  %90 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr73.i, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.not.i.i = icmp eq i32 %93, 0
  br i1 %cmp.not.i.i, label %if.end68.i.vb2_plane_size.exit.i_crit_edge, label %if.then.i.i

if.end68.i.vb2_plane_size.exit.i_crit_edge:       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit.i

if.then.i.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %91, i32 0, i32 10, i32 0, i32 4
  %94 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i.i, %if.end68.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %95, %if.then.i.i ], [ 0, %if.end68.i.vb2_plane_size.exit.i_crit_edge ]
  %96 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %16, align 4
  %mfc_regs2.i131.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %97, i32 0, i32 38
  %98 = ptrtoint ptr %mfc_regs2.i131.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mfc_regs2.i131.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !378
  tail call void @arm_heavy_mb() #8
  %100 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  %e_stream_buffer_addr.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %99, i32 0, i32 184
  %101 = ptrtoint ptr %e_stream_buffer_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %e_stream_buffer_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  tail call void @arm_heavy_mb() #8
  %103 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #8
  %e_stream_buffer_size.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %99, i32 0, i32 185
  %104 = ptrtoint ptr %e_stream_buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %e_stream_buffer_size.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %106 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.i132.i = icmp sgt i32 %106, 1
  br i1 %cmp.i132.i, label %do.end9.i.i, label %vb2_plane_size.exit.i.s5p_mfc_set_enc_stream_buffer_v6.exit.i_crit_edge

vb2_plane_size.exit.i.s5p_mfc_set_enc_stream_buffer_v6.exit.i_crit_edge: ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_set_enc_stream_buffer_v6.exit.i

do.end9.i.i:                                      ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 621, i32 noundef %89, i32 noundef %retval.0.i.i) #11
  br label %s5p_mfc_set_enc_stream_buffer_v6.exit.i

s5p_mfc_set_enc_stream_buffer_v6.exit.i:          ; preds = %do.end9.i.i, %vb2_plane_size.exit.i.s5p_mfc_set_enc_stream_buffer_v6.exit.i_crit_edge
  %num.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 2
  %107 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num.i, align 4
  %curr_ctx.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %40, i32 0, i32 27
  %109 = ptrtoint ptr %curr_ctx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %curr_ctx.i, align 4
  %110 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %16, align 4
  %mfc_regs2.i134.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %111, i32 0, i32 38
  %112 = ptrtoint ptr %mfc_regs2.i134.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mfc_regs2.i134.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %114 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp.i135.i = icmp sgt i32 %114, 1
  br i1 %cmp.i135.i, label %do.end.i.i, label %s5p_mfc_set_enc_stream_buffer_v6.exit.i.do.end5.i.i_crit_edge

s5p_mfc_set_enc_stream_buffer_v6.exit.i.do.end5.i.i_crit_edge: ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179, i32 noundef 1760) #11
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %s5p_mfc_set_enc_stream_buffer_v6.exit.i.do.end5.i.i_crit_edge
  %codec_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 39
  %115 = ptrtoint ptr %codec_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %codec_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %116)
  %cmp6.i.i = icmp eq i32 %116, 20
  br i1 %cmp6.i.i, label %if.then7.i.i, label %do.end5.i.i.if.end9.i.i_crit_edge

do.end5.i.i.if.end9.i.i_crit_edge:                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %do.end5.i.i
  %aso.i.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 40
  %117 = ptrtoint ptr %aso.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %aso.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i.i.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.i.if.end9.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.then7.i.i.if.end9.i.i_crit_edge:               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %16, align 4
  %mfc_regs2.i.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %120, i32 0, i32 38
  %121 = ptrtoint ptr %mfc_regs2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mfc_regs2.i.i.i, align 4
  %e_h264_aso_slice_order_0.i.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %122, i32 0, i32 229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 0
  %123 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i.i, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  %126 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.1.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 1
  %128 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.1.i.i.i, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #8
  %131 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.1.i.i.i = getelementptr i8, ptr %132, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i.i.i, i32 %130) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.2.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 2
  %133 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.2.i.i.i, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  %136 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.2.i.i.i = getelementptr i8, ptr %137, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i.i.i, i32 %135) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.3.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 3
  %138 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.3.i.i.i, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #8
  %141 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.3.i.i.i = getelementptr i8, ptr %142, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i.i.i, i32 %140) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.4.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 4
  %143 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.4.i.i.i, align 4
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #8
  %146 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.4.i.i.i = getelementptr i8, ptr %147, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i.i.i, i32 %145) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.5.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 5
  %148 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.5.i.i.i, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #8
  %151 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.5.i.i.i = getelementptr i8, ptr %152, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i.i.i, i32 %150) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.6.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 6
  %153 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.6.i.i.i, align 4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #8
  %156 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.6.i.i.i = getelementptr i8, ptr %157, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i.i.i, i32 %155) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %arrayidx.7.i.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 52, i32 25, i32 0, i32 41, i32 7
  %158 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.7.i.i.i, align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #8
  %161 = ptrtoint ptr %e_h264_aso_slice_order_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %e_h264_aso_slice_order_0.i.i.i, align 4
  %add.ptr.7.i.i.i = getelementptr i8, ptr %162, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i.i.i, i32 %160) #8, !srcloc !379
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %for.cond.preheader.i.i.i, %if.then7.i.i.if.end9.i.i_crit_edge, %do.end5.i.i.if.end9.i.i_crit_edge
  tail call fastcc void @s5p_mfc_set_slice_mode(ptr noundef %16) #8
  %163 = ptrtoint ptr %state149 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %state149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %164)
  %cmp11.not.i.i = icmp eq i32 %164, 106
  %..i.i = select i1 %cmp11.not.i.i, i32 9, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !389
  tail call void @arm_heavy_mb() #8
  %inst_no.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 17
  %165 = ptrtoint ptr %inst_no.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %inst_no.i.i, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #8
  %instance_id.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %113, i32 0, i32 9
  %168 = ptrtoint ptr %instance_id.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %instance_id.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #8, !srcloc !379
  %mfc_cmds.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %111, i32 0, i32 37
  %170 = ptrtoint ptr %mfc_cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mfc_cmds.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %171, null
  br i1 %tobool.not.i.i, label %if.end9.i.i.do.body22.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.i.do.body22.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %tobool18.not.i.i = icmp eq ptr %173, null
  br i1 %tobool18.not.i.i, label %land.lhs.true.i.i.do.body22.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.do.body22.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i.i = tail call i32 %173(ptr noundef %111, i32 noundef %..i.i, ptr noundef null) #8
  br label %do.body22.i.i

do.body22.i.i:                                    ; preds = %cond.true.i.i, %land.lhs.true.i.i.do.body22.i.i_crit_edge, %if.end9.i.i.do.body22.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %174 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp23.i.i = icmp sgt i32 %174, 1
  br i1 %cmp23.i.i, label %do.end27.i.i, label %do.body22.i.i.cleanup_crit_edge

do.body22.i.i.cleanup_crit_edge:                  ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27.i.i:                                     ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.179, i32 noundef 1777) #11
  br label %cleanup

sw.bb152:                                         ; preds = %if.then148
  %mfc_cmds153 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %175 = ptrtoint ptr %mfc_cmds153 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mfc_cmds153, align 4
  %tobool154.not = icmp eq ptr %176, null
  br i1 %tobool154.not, label %sw.bb152.if.then198_crit_edge, label %land.lhs.true155

sw.bb152.if.then198_crit_edge:                    ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

land.lhs.true155:                                 ; preds = %sw.bb152
  %open_inst_cmd157 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %open_inst_cmd157 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %open_inst_cmd157, align 4
  %tobool158.not = icmp eq ptr %178, null
  br i1 %tobool158.not, label %land.lhs.true155.if.then198_crit_edge, label %cond.true159

land.lhs.true155.if.then198_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

cond.true159:                                     ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  %call162 = tail call i32 %178(ptr noundef %16) #8
  br label %if.end196

sw.bb166:                                         ; preds = %if.then148
  %mfc_cmds167 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %179 = ptrtoint ptr %mfc_cmds167 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mfc_cmds167, align 4
  %tobool168.not = icmp eq ptr %180, null
  br i1 %tobool168.not, label %sw.bb166.if.then198_crit_edge, label %land.lhs.true169

sw.bb166.if.then198_crit_edge:                    ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

land.lhs.true169:                                 ; preds = %sw.bb166
  %close_inst_cmd171 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %close_inst_cmd171 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %close_inst_cmd171, align 4
  %tobool172.not = icmp eq ptr %182, null
  br i1 %tobool172.not, label %land.lhs.true169.if.then198_crit_edge, label %cond.true173

land.lhs.true169.if.then198_crit_edge:            ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

cond.true173:                                     ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #10
  %call176 = tail call i32 %182(ptr noundef %16) #8
  br label %if.end196

sw.bb180:                                         ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s5p_mfc_run_init_enc(ptr noundef %16)
  br label %cleanup

sw.bb181:                                         ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  %call182 = tail call fastcc i32 @s5p_mfc_run_init_enc_buffers(ptr noundef %16)
  br label %if.end196

do.end189:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.67, i32 noundef 2062, i32 noundef %18) #11
  br label %if.then198

if.end196:                                        ; preds = %sw.bb181, %cond.true173, %cond.true159, %sw.bb118, %cond.true110, %cond.true, %sw.bb96
  %ret.0 = phi i32 [ %call119, %sw.bb118 ], [ %call97, %sw.bb96 ], [ %call182, %sw.bb181 ], [ %call103, %cond.true ], [ %call113, %cond.true110 ], [ %call162, %cond.true159 ], [ %call176, %cond.true173 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool197.not = icmp eq i32 %ret.0, 0
  br i1 %tobool197.not, label %if.end196.cleanup_crit_edge, label %if.end196.if.then198_crit_edge

if.end196.if.then198_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then198

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then198:                                       ; preds = %if.end196.if.then198_crit_edge, %do.end189, %land.lhs.true169.if.then198_crit_edge, %sw.bb166.if.then198_crit_edge, %land.lhs.true155.if.then198_crit_edge, %sw.bb152.if.then198_crit_edge, %do.end17.i, %do.body12.i.if.then198_crit_edge, %do.end.i, %do.body.i.if.then198_crit_edge, %if.then148.if.then198_crit_edge, %land.lhs.true107.if.then198_crit_edge, %sw.bb104.if.then198_crit_edge, %land.lhs.true.if.then198_crit_edge, %sw.bb98.if.then198_crit_edge, %if.then94.if.then198_crit_edge
  %call200 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %do.end206, label %if.then198.if.end211_crit_edge

if.then198.if.end211_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211

do.end206:                                        ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef 2069) #11
  br label %if.end211

if.end211:                                        ; preds = %do.end206, %if.then198.if.end211_crit_edge
  tail call void @s5p_mfc_clock_off() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end211, %if.end196.cleanup_crit_edge, %sw.bb180, %do.end27.i.i, %do.body22.i.i.cleanup_crit_edge, %do.end145, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb117, %sw.bb, %do.end40, %do.body35.cleanup_crit_edge, %do.end29, %do.end12, %do.body7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_clear_int_flags_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs1 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !390
  tail call void @arm_heavy_mb() #8
  %risc2host_command = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %risc2host_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %risc2host_command, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  tail call void @arm_heavy_mb() #8
  %risc2host_int = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %risc2host_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %risc2host_int, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #8, !srcloc !379
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_y_adr_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_display_first_plane_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 84
  %2 = ptrtoint ptr %d_display_first_plane_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_display_first_plane_addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_y_adr_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_decoded_first_plane_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %d_decoded_first_plane_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_decoded_first_plane_addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_status_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_display_status = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %d_display_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_display_status, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_status_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_decoded_status = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 102
  %2 = ptrtoint ptr %d_decoded_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_decoded_status, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !395
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_frame_type_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_decoded_frame_type = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 106
  %2 = ptrtoint ptr %d_decoded_frame_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_decoded_frame_type, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !396
  %and = and i32 %5, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_disp_frame_type_v6(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs, align 4
  %d_display_frame_type = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 87
  %4 = ptrtoint ptr %d_display_frame_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_display_frame_type, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !383
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !397
  %and = and i32 %7, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_consumed_stream_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_decoded_nal_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 110
  %2 = ptrtoint ptr %d_decoded_nal_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_decoded_nal_size, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !398
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_reason_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %risc2host_command = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %risc2host_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %risc2host_command, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !399
  %5 = and i32 %4, -65280
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_err_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %error_code = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %error_code, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_err_dec_v6(i32 noundef %err) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %err, 65535
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_width_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_display_frame_width = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 81
  %2 = ptrtoint ptr %d_display_frame_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_display_frame_width, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_height_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_display_frame_height = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %d_display_frame_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_display_frame_height, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dpb_count_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_min_num_dpb = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %d_min_num_dpb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_min_num_dpb, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !403
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_mv_count_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_min_num_mv = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %d_min_num_mv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_min_num_mv, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !404
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_inst_no_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %ret_instance_id = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ret_instance_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ret_instance_id, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !405
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_strm_size_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %e_stream_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %e_stream_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e_stream_size, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_slice_type_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %e_slice_type = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 207
  %2 = ptrtoint ptr %e_slice_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e_slice_type, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !407
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_dpb_count_v6(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %e_num_dpb = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 169
  %2 = ptrtoint ptr %e_num_dpb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e_num_dpb, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_top_v6(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs, align 4
  %d_ret_picture_tag_top = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 114
  %4 = ptrtoint ptr %d_ret_picture_tag_top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_ret_picture_tag_top, align 4
  %call.i = tail call i32 @s5p_mfc_clock_on() #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !383
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @s5p_mfc_clock_off() #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_bot_v6(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs, align 4
  %d_ret_picture_tag_bot = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 115
  %4 = ptrtoint ptr %d_ret_picture_tag_bot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_ret_picture_tag_bot, align 4
  %call.i = tail call i32 @s5p_mfc_clock_on() #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !383
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @s5p_mfc_clock_off() #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_h_v6(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs, align 4
  %d_display_crop_info1 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 88
  %4 = ptrtoint ptr %d_display_crop_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_display_crop_info1, align 4
  %call.i = tail call i32 @s5p_mfc_clock_on() #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !383
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @s5p_mfc_clock_off() #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_v_v6(ptr nocapture noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs, align 4
  %d_display_crop_info2 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %d_display_crop_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_display_crop_info2, align 4
  %call.i = tail call i32 @s5p_mfc_clock_on() #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !383
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @s5p_mfc_clock_off() #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_min_scratch_buf_size(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %d_min_scratch_buffer_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 147
  %2 = ptrtoint ptr %d_min_scratch_buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_min_scratch_buffer_size, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !410
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_e_min_scratch_buf_size(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_regs = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %mfc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_regs, align 4
  %e_min_scratch_buffer_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %1, i32 0, i32 247
  %2 = ptrtoint ptr %e_min_scratch_buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e_min_scratch_buffer_size, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !383
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !411
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_generic_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_generic_buf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_priv_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_priv_buf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_get_new_ctx(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clean_ctx_int_flags(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_dec_last_frames(ptr nocapture noundef readonly %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %ctx, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %curr_ctx, align 4
  tail call fastcc void @s5p_mfc_decode_one_frame_v6(ptr noundef %ctx, i32 noundef 1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %3)
  %cmp = icmp eq i32 %3, 106
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %ctx, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %curr_ctx, align 4
  tail call void @s5p_mfc_clean_ctx_int_flags(ptr noundef %ctx) #8
  tail call fastcc void @s5p_mfc_decode_one_frame_v6(ptr noundef %ctx, i32 noundef 1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %7 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not = icmp eq ptr %8, %src_queue
  br i1 %cmp.i.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp sgt i32 %9, 1
  br i1 %cmp5, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 1808) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %8, i32 -4
  %flags = getelementptr i8, ptr %8, i32 16
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %consumed_stream = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 25
  %16 = ptrtoint ptr %consumed_stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %consumed_stream, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused, align 4
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %ctx, i32 noundef %15, i32 noundef %17, i32 noundef %21)
  %num19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %22 = ptrtoint ptr %num19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num19, align 4
  %curr_ctx20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %curr_ctx20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %curr_ctx20, align 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %bytesused25 = getelementptr inbounds %struct.vb2_buffer, ptr %26, i32 0, i32 10, i32 0, i32 3
  %27 = ptrtoint ptr %bytesused25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytesused25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26 = icmp eq i32 %28, 0
  br i1 %cmp26, label %if.then27, label %if.end12.if.end40_crit_edge

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then27:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %29 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp29 = icmp sgt i32 %29, 1
  br i1 %cmp29, label %do.end33, label %if.then27.do.end38_crit_edge

if.then27.do.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, i32 noundef 1822) #11
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %if.then27.do.end38_crit_edge
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 106, ptr %state, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.end12.if.end40_crit_edge
  %last_frame.0 = phi i32 [ 1, %do.end38 ], [ 0, %if.end12.if.end40_crit_edge ]
  tail call fastcc void @s5p_mfc_decode_one_frame_v6(ptr noundef %ctx, i32 noundef %last_frame.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end40 ], [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_dec(ptr nocapture noundef readonly %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end4, label %do.end4.thread

do.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %src_queue34 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %3 = ptrtoint ptr %src_queue34 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src_queue34, align 4
  %add.ptr35 = getelementptr i8, ptr %4, i32 -4
  br label %do.end16

do.end4:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef 1893) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %5 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src_queue, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp7 = icmp sgt i32 %.pr, 1
  br i1 %cmp7, label %do.end11, label %do.end4.do.end16_crit_edge

do.end4.do.end16_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %8, i32 0, i32 10, i32 0, i32 3
  %9 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytesused, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, i32 noundef 1895, i32 noundef %10) #11
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.end4.do.end16_crit_edge, %do.end4.thread
  %add.ptr37 = phi ptr [ %add.ptr35, %do.end4.thread ], [ %add.ptr, %do.end11 ], [ %add.ptr, %do.end4.do.end16_crit_edge ]
  %11 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr37, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %12, i32 noundef 0) #8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %15 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr37, align 4
  %bytesused24 = getelementptr inbounds %struct.vb2_buffer, ptr %16, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %bytesused24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesused24, align 4
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %ctx, i32 noundef %14, i32 noundef 0, i32 noundef %18)
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %curr_ctx, align 4
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %mfc_regs2.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %23, i32 0, i32 38
  %24 = ptrtoint ptr %mfc_regs2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mfc_regs2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %26 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i = icmp sgt i32 %26, 4
  br i1 %cmp.i, label %do.end.i, label %do.end16.do.body6.i_crit_edge

do.end16.do.body6.i_crit_edge:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

do.end.i:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.121, i32 noundef 1604) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i = load i32, ptr @mfc_debug_level, align 4
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %do.end16.do.body6.i_crit_edge
  %27 = phi i32 [ %26, %do.end16.do.body6.i_crit_edge ], [ %.pr.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp7.i = icmp sgt i32 %27, 1
  br i1 %cmp7.i, label %do.end11.i, label %do.body6.i.do.body17.i_crit_edge

do.body6.i.do.body17.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %28 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inst_no.i, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, i32 noundef 1606, i32 noundef %29, i32 noundef 3) #11
  br label %do.body17.i

do.body17.i:                                      ; preds = %do.end11.i, %do.body6.i.do.body17.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %30 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp18.i = icmp sgt i32 %30, 1
  br i1 %cmp18.i, label %do.end22.i, label %do.body17.i.do.end42.i_crit_edge

do.body17.i.do.end42.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42.i

do.end22.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  %d_cpb_buffer_addr.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 71
  %31 = ptrtoint ptr %d_cpb_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_cpb_buffer_addr.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !383
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !412
  %35 = ptrtoint ptr %d_cpb_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_cpb_buffer_addr.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !383
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  %39 = ptrtoint ptr %d_cpb_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_cpb_buffer_addr.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !383
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121, i32 noundef 1610, i32 noundef %34, i32 noundef %38, i32 noundef %42) #11
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end22.i, %do.body17.i.do.end42.i_crit_edge
  %display_delay_enable.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 43
  %43 = ptrtoint ptr %display_delay_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %display_delay_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %do.end42.i.if.end48.i_crit_edge, label %if.then43.i

do.end42.i.if.end48.i_crit_edge:                  ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then43.i:                                      ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  tail call void @arm_heavy_mb() #8
  %display_delay.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 42
  %45 = ptrtoint ptr %display_delay.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %display_delay.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %d_display_delay.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 32
  %48 = ptrtoint ptr %d_display_delay.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_display_delay.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !379
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %do.end42.i.if.end48.i_crit_edge
  %reg.0.i = phi i32 [ 8, %if.then43.i ], [ 0, %do.end42.i.if.end48.i_crit_edge ]
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %23, i32 0, i32 10
  %50 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %variant.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %53)
  %cmp49.i = icmp ugt i32 %53, 111
  br i1 %cmp49.i, label %if.end48.i.do.body57.i_crit_edge, label %land.lhs.true.i

if.end48.i.do.body57.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57.i

land.lhs.true.i:                                  ; preds = %if.end48.i
  %fw_ver.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %23, i32 0, i32 39
  %54 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp55.i = icmp eq i32 %55, 1
  br i1 %cmp55.i, label %land.lhs.true.i.do.body57.i_crit_edge, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

land.lhs.true.i.do.body57.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57.i

do.body57.i:                                      ; preds = %land.lhs.true.i.do.body57.i_crit_edge, %if.end48.i.do.body57.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  tail call void @arm_heavy_mb() #8
  %56 = shl nuw nsw i32 %reg.0.i, 24
  %d_dec_options.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 31
  %57 = ptrtoint ptr %d_dec_options.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %d_dec_options.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !379
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.body57.i, %land.lhs.true.i.if.end60.i_crit_edge
  %reg.1.i = phi i32 [ 0, %do.body57.i ], [ %reg.0.i, %land.lhs.true.i.if.end60.i_crit_edge ]
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %59 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp61.i = icmp eq i32 %60, 3
  br i1 %cmp61.i, label %do.body63.i, label %if.end60.i.if.end77.i_crit_edge

if.end60.i.if.end77.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

do.body63.i:                                      ; preds = %if.end60.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %61 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp64.i = icmp sgt i32 %61, 1
  br i1 %cmp64.i, label %do.end68.i, label %do.body63.i.do.end73.i_crit_edge

do.body63.i.do.end73.i_crit_edge:                 ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73.i

do.end68.i:                                       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  %loop_filter_mpeg4.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 41
  %62 = ptrtoint ptr %loop_filter_mpeg4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %loop_filter_mpeg4.i, align 4
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.121, i32 noundef 1628, i32 noundef %63) #11
  br label %do.end73.i

do.end73.i:                                       ; preds = %do.end68.i, %do.body63.i.do.end73.i_crit_edge
  %loop_filter_mpeg474.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 41
  %64 = ptrtoint ptr %loop_filter_mpeg474.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %loop_filter_mpeg474.i, align 4
  %shl75.i = shl i32 %65, 1
  %or76.i = or i32 %shl75.i, %reg.1.i
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end73.i, %if.end60.i.if.end77.i_crit_edge
  %reg.2.i = phi i32 [ %or76.i, %do.end73.i ], [ %reg.1.i, %if.end60.i.if.end77.i_crit_edge ]
  %dst_fmt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 8
  %66 = ptrtoint ptr %dst_fmt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dst_fmt.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091862, i32 %69)
  %cmp78.i = icmp eq i32 %69, 842091862
  %or80.i = zext i1 %cmp78.i to i32
  %spec.select.i = or i32 %reg.2.i, %or80.i
  %70 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %variant.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %73)
  %cmp84.i = icmp ugt i32 %73, 111
  br i1 %cmp84.i, label %if.end77.i.do.body97.i_crit_edge, label %land.lhs.true93.i

if.end77.i.do.body97.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97.i

land.lhs.true93.i:                                ; preds = %if.end77.i
  %fw_ver94.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %23, i32 0, i32 39
  %74 = ptrtoint ptr %fw_ver94.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_ver94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp95.i = icmp eq i32 %75, 1
  br i1 %cmp95.i, label %land.lhs.true93.i.do.body97.i_crit_edge, label %do.body100.i

land.lhs.true93.i.do.body97.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97.i

do.body97.i:                                      ; preds = %land.lhs.true93.i.do.body97.i_crit_edge, %if.end77.i.do.body97.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %d_init_buffer_options.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 54
  %77 = ptrtoint ptr %d_init_buffer_options.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %d_init_buffer_options.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #8, !srcloc !379
  br label %if.end104.i

do.body100.i:                                     ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %79 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %d_dec_options103.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 31
  %80 = ptrtoint ptr %d_dec_options103.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_dec_options103.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !379
  br label %if.end104.i

if.end104.i:                                      ; preds = %do.body100.i, %do.body97.i
  %82 = ptrtoint ptr %dst_fmt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dst_fmt.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825380174, i32 %85)
  %cmp107.i = icmp eq i32 %85, 825380174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %pixel_format.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 13
  %86 = ptrtoint ptr %pixel_format.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pixel_format.i, align 4
  br i1 %cmp107.i, label %do.body109.i, label %do.body113.i

do.body109.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 16777216) #8, !srcloc !379
  br label %do.body118.i

do.body113.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #8, !srcloc !379
  br label %do.body118.i

do.body118.i:                                     ; preds = %do.body113.i, %do.body109.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %sei_fp_parse.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 45
  %88 = ptrtoint ptr %sei_fp_parse.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sei_fp_parse.i, align 4
  %and.i = shl i32 %89, 24
  %90 = and i32 %and.i, 16777216
  %d_sei_enable.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 35
  %91 = ptrtoint ptr %d_sei_enable.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %d_sei_enable.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  tail call void @arm_heavy_mb() #8
  %inst_no124.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %93 = ptrtoint ptr %inst_no124.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %inst_no124.i, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #8
  %instance_id.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %25, i32 0, i32 9
  %96 = ptrtoint ptr %instance_id.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %instance_id.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #8, !srcloc !379
  %mfc_cmds.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %23, i32 0, i32 37
  %98 = ptrtoint ptr %mfc_cmds.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mfc_cmds.i, align 4
  %tobool125.not.i = icmp eq ptr %99, null
  br i1 %tobool125.not.i, label %do.body118.i.do.body134.i_crit_edge, label %land.lhs.true126.i

do.body118.i.do.body134.i_crit_edge:              ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body134.i

land.lhs.true126.i:                               ; preds = %do.body118.i
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %tobool128.not.i = icmp eq ptr %101, null
  br i1 %tobool128.not.i, label %land.lhs.true126.i.do.body134.i_crit_edge, label %cond.true129.i

land.lhs.true126.i.do.body134.i_crit_edge:        ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body134.i

cond.true129.i:                                   ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #10
  %call132.i = tail call i32 %101(ptr noundef %23, i32 noundef 3, ptr noundef null) #8
  br label %do.body134.i

do.body134.i:                                     ; preds = %cond.true129.i, %land.lhs.true126.i.do.body134.i_crit_edge, %do.body118.i.do.body134.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %102 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp135.i = icmp sgt i32 %102, 4
  br i1 %cmp135.i, label %do.end139.i, label %do.body134.i.s5p_mfc_init_decode_v6.exit_crit_edge

do.body134.i.s5p_mfc_init_decode_v6.exit_crit_edge: ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_init_decode_v6.exit

do.end139.i:                                      ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #10
  %call141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.121, i32 noundef 1654) #11
  br label %s5p_mfc_init_decode_v6.exit

s5p_mfc_init_decode_v6.exit:                      ; preds = %do.end139.i, %do.body134.i.s5p_mfc_init_decode_v6.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %capture_state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 30
  %0 = ptrtoint ptr %capture_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capture_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef 1929) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %curr_ctx, align 4
  %7 = load ptr, ptr %ctx, align 4
  %mfc_regs2.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %7, i32 0, i32 38
  %8 = ptrtoint ptr %mfc_regs2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mfc_regs2.i, align 4
  %dma.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i, align 4
  %size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %14 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp sgt i32 %14, 1
  br i1 %cmp.i, label %do.body7.i, label %if.end.do.body29.i_crit_edge

if.end.do.body29.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29.i

do.body7.i:                                       ; preds = %if.end
  %15 = inttoptr i32 %11 to ptr
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef 525, ptr noundef %15, i32 noundef %13) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp8.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp8.i, label %do.body18.i, label %do.body7.i.do.body29.i_crit_edge

do.body7.i.do.body29.i_crit_edge:                 ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29.i

do.body18.i:                                      ; preds = %do.body7.i
  %total_dpb_count.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 47
  %16 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_dpb_count.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139, i32 noundef 526, i32 noundef %17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr321.i = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr321.i)
  %cmp19.i = icmp sgt i32 %.pr321.i, 1
  br i1 %cmp19.i, label %do.end23.i, label %do.body18.i.do.body29.i_crit_edge

do.body18.i.do.body29.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29.i

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  %display_delay.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 42
  %18 = ptrtoint ptr %display_delay.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %display_delay.i, align 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.139, i32 noundef 527, i32 noundef %19) #11
  br label %do.body29.i

do.body29.i:                                      ; preds = %do.end23.i, %do.body18.i.do.body29.i_crit_edge, %do.body7.i.do.body29.i_crit_edge, %if.end.do.body29.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  tail call void @arm_heavy_mb() #8
  %total_dpb_count32.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 47
  %20 = ptrtoint ptr %total_dpb_count32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_dpb_count32.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %d_num_dpb.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 52
  %23 = ptrtoint ptr %d_num_dpb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_num_dpb.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  tail call void @arm_heavy_mb() #8
  %luma_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %25 = ptrtoint ptr %luma_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %luma_size.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %d_first_plane_dpb_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 58
  %28 = ptrtoint ptr %d_first_plane_dpb_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_first_plane_dpb_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !423
  tail call void @arm_heavy_mb() #8
  %chroma_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %30 = ptrtoint ptr %chroma_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chroma_size.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %d_second_plane_dpb_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 59
  %33 = ptrtoint ptr %d_second_plane_dpb_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_second_plane_dpb_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !424
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %d_scratch_buffer_addr.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 66
  %36 = ptrtoint ptr %d_scratch_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_scratch_buffer_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !425
  tail call void @arm_heavy_mb() #8
  %scratch_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %38 = ptrtoint ptr %scratch_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scratch_buf_size.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %d_scratch_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 67
  %41 = ptrtoint ptr %d_scratch_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_scratch_buffer_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !379
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %7, i32 0, i32 10
  %43 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %46)
  %cmp45.i = icmp ugt i32 %46, 127
  br i1 %cmp45.i, label %do.body47.i, label %do.body29.i.if.end54.i_crit_edge

do.body29.i.if.end54.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

do.body47.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !426
  tail call void @arm_heavy_mb() #8
  %img_width.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %47 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %img_width.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %d_first_plane_dpb_stride_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 55
  %50 = ptrtoint ptr %d_first_plane_dpb_stride_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d_first_plane_dpb_stride_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !427
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %img_width.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  %d_second_plane_dpb_stride_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 56
  %55 = ptrtoint ptr %d_second_plane_dpb_stride_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_second_plane_dpb_stride_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !379
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.body47.i, %do.body29.i.if.end54.i_crit_edge
  %57 = ptrtoint ptr %scratch_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scratch_buf_size.i, align 4
  %add.i = add i32 %58, %11
  %sub.i = sub i32 %13, %58
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %59 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %codec_mode.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %60, label %if.end54.i.if.end70.i_crit_edge [
    i32 0, label %if.end54.i.do.body64.i_crit_edge
    i32 -1, label %if.end54.i.do.body64.i_crit_edge24
    i32 17, label %if.end54.i.do.body64.i_crit_edge25
  ]

if.end54.i.do.body64.i_crit_edge25:               ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

if.end54.i.do.body64.i_crit_edge24:               ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

if.end54.i.do.body64.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

if.end54.i.if.end70.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

do.body64.i:                                      ; preds = %if.end54.i.do.body64.i_crit_edge, %if.end54.i.do.body64.i_crit_edge24, %if.end54.i.do.body64.i_crit_edge25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !428
  tail call void @arm_heavy_mb() #8
  %mv_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %62 = ptrtoint ptr %mv_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mv_size.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %d_mv_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 61
  %65 = ptrtoint ptr %d_mv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_mv_buffer_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !429
  tail call void @arm_heavy_mb() #8
  %mv_count.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 48
  %67 = ptrtoint ptr %mv_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mv_count.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %d_num_mv.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 53
  %70 = ptrtoint ptr %d_num_mv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_num_mv.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #8, !srcloc !379
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.body64.i, %if.end54.i.if.end70.i_crit_edge
  %mv_size73.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %72 = ptrtoint ptr %mv_size73.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mv_size73.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %74 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp75.i = icmp sgt i32 %74, 1
  br i1 %cmp75.i, label %do.end79.i, label %if.end70.i.do.end84.i_crit_edge

if.end70.i.do.end84.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84.i

do.end79.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %chroma_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chroma_size.i, align 4
  %77 = ptrtoint ptr %luma_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %luma_size.i, align 4
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.139, i32 noundef 557, i32 noundef %78, i32 noundef %76, i32 noundef %73) #11
  br label %do.end84.i

do.end84.i:                                       ; preds = %do.end79.i, %if.end70.i.do.end84.i_crit_edge
  %79 = ptrtoint ptr %total_dpb_count32.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %total_dpb_count32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp86324.not.i = icmp eq i32 %80, 0
  br i1 %cmp86324.not.i, label %do.end84.i.for.end.i_crit_edge, label %do.body87.lr.ph.i

do.end84.i.for.end.i_crit_edge:                   ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.body87.lr.ph.i:                                ; preds = %do.end84.i
  %d_first_plane_dpb.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 62
  %d_second_plane_dpb.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 63
  br label %do.body87.i

do.body87.i:                                      ; preds = %do.body119.i.do.body87.i_crit_edge, %do.body87.lr.ph.i
  %i.0325.i = phi i32 [ 0, %do.body87.lr.ph.i ], [ %inc.i, %do.body119.i.do.body87.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %81 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp88.i = icmp sgt i32 %81, 1
  br i1 %cmp88.i, label %do.end92.i, label %do.body87.i.do.body98.i_crit_edge

do.body87.i.do.body98.i_crit_edge:                ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body98.i

do.end92.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #10
  %cookie.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 34, i32 %i.0325.i, i32 2
  %82 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cookie.i, align 4
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.139, i32 noundef 562, i32 noundef %i.0325.i, i32 noundef %83) #11
  br label %do.body98.i

do.body98.i:                                      ; preds = %do.end92.i, %do.body87.i.do.body98.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !430
  tail call void @arm_heavy_mb() #8
  %cookie103.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 34, i32 %i.0325.i, i32 2
  %84 = ptrtoint ptr %cookie103.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cookie103.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  %87 = ptrtoint ptr %d_first_plane_dpb.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %d_first_plane_dpb.i, align 4
  %mul.i = shl i32 %i.0325.i, 2
  %add.ptr.i = getelementptr i8, ptr %88, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %86) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %89 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp106.i = icmp sgt i32 %89, 1
  br i1 %cmp106.i, label %do.end110.i, label %do.body98.i.do.body119.i_crit_edge

do.body98.i.do.body119.i_crit_edge:               ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body119.i

do.end110.i:                                      ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #10
  %chroma.i = getelementptr inbounds %struct.anon.115, ptr %cookie103.i, i32 0, i32 1
  %90 = ptrtoint ptr %chroma.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chroma.i, align 4
  %call115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.139, i32 noundef 566, i32 noundef %i.0325.i, i32 noundef %91) #11
  br label %do.body119.i

do.body119.i:                                     ; preds = %do.end110.i, %do.body98.i.do.body119.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  tail call void @arm_heavy_mb() #8
  %chroma125.i = getelementptr inbounds %struct.anon.115, ptr %cookie103.i, i32 0, i32 1
  %92 = ptrtoint ptr %chroma125.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %chroma125.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  %95 = ptrtoint ptr %d_second_plane_dpb.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %d_second_plane_dpb.i, align 4
  %add.ptr127.i = getelementptr i8, ptr %96, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127.i, i32 %94) #8, !srcloc !379
  %inc.i = add nuw i32 %i.0325.i, 1
  %97 = ptrtoint ptr %total_dpb_count32.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %total_dpb_count32.i, align 4
  %cmp86.i = icmp ult i32 %inc.i, %98
  br i1 %cmp86.i, label %do.body119.i.do.body87.i_crit_edge, label %do.body119.i.for.end.i_crit_edge

do.body119.i.for.end.i_crit_edge:                 ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.body119.i.do.body87.i_crit_edge:               ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87.i

for.end.i:                                        ; preds = %do.body119.i.for.end.i_crit_edge, %do.end84.i.for.end.i_crit_edge
  %99 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %codec_mode.i, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %100, label %for.end.i.if.end165.i_crit_edge [
    i32 0, label %for.end.i.if.then136.i_crit_edge
    i32 1, label %for.end.i.if.then136.i_crit_edge26
    i32 17, label %for.end.i.if.then136.i_crit_edge27
  ]

for.end.i.if.then136.i_crit_edge27:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136.i

for.end.i.if.then136.i_crit_edge26:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136.i

for.end.i.if.then136.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136.i

for.end.i.if.end165.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165.i

if.then136.i:                                     ; preds = %for.end.i.if.then136.i_crit_edge, %for.end.i.if.then136.i_crit_edge26, %for.end.i.if.then136.i_crit_edge27
  %mv_count138.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 48
  %102 = ptrtoint ptr %mv_count138.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mv_count138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp139328.not.i = icmp eq i32 %103, 0
  br i1 %cmp139328.not.i, label %if.then136.i.if.end165thread-pre-split.i_crit_edge, label %for.body140.lr.ph.i

if.then136.i.if.end165thread-pre-split.i_crit_edge: ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165thread-pre-split.i

for.body140.lr.ph.i:                              ; preds = %if.then136.i
  %d_mv_buffer.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 65
  br label %for.body140.i

for.body140.i:                                    ; preds = %do.body155.i.for.body140.i_crit_edge, %for.body140.lr.ph.i
  %i.1331.i = phi i32 [ 0, %for.body140.lr.ph.i ], [ %inc163.i, %do.body155.i.for.body140.i_crit_edge ]
  %buf_addr1.0330.i = phi i32 [ %add.i, %for.body140.lr.ph.i ], [ %add160.i, %do.body155.i.for.body140.i_crit_edge ]
  %buf_size1.0329.i = phi i32 [ %sub.i, %for.body140.lr.ph.i ], [ %sub161.i, %do.body155.i.for.body140.i_crit_edge ]
  %add141.i = add i32 %buf_addr1.0330.i, 15
  %and.i = and i32 %add141.i, -16
  %sub142.neg.i = sub i32 %buf_addr1.0330.i, %and.i
  %sub143.i = add i32 %sub142.neg.i, %buf_size1.0329.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %104 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp145.i = icmp sgt i32 %104, 1
  br i1 %cmp145.i, label %do.end149.i, label %for.body140.i.do.body155.i_crit_edge

for.body140.i.do.body155.i_crit_edge:             ; preds = %for.body140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body155.i

do.end149.i:                                      ; preds = %for.body140.i
  call void @__sanitizer_cov_trace_pc() #10
  %call151.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.139, i32 noundef 581, i32 noundef %and.i, i32 noundef %sub143.i) #11
  br label %do.body155.i

do.body155.i:                                     ; preds = %do.end149.i, %for.body140.i.do.body155.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !432
  tail call void @arm_heavy_mb() #8
  %105 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %106 = ptrtoint ptr %d_mv_buffer.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %d_mv_buffer.i, align 4
  %mul158.i = shl i32 %i.1331.i, 2
  %add.ptr159.i = getelementptr i8, ptr %107, i32 %mul158.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159.i, i32 %105) #8, !srcloc !379
  %add160.i = add i32 %and.i, %73
  %sub161.i = sub i32 %sub143.i, %73
  %inc163.i = add nuw i32 %i.1331.i, 1
  %108 = ptrtoint ptr %mv_count138.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mv_count138.i, align 4
  %cmp139.i = icmp ult i32 %inc163.i, %109
  br i1 %cmp139.i, label %do.body155.i.for.body140.i_crit_edge, label %do.body155.i.if.end165thread-pre-split.i_crit_edge

do.body155.i.if.end165thread-pre-split.i_crit_edge: ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165thread-pre-split.i

do.body155.i.for.body140.i_crit_edge:             ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body140.i

if.end165thread-pre-split.i:                      ; preds = %do.body155.i.if.end165thread-pre-split.i_crit_edge, %if.then136.i.if.end165thread-pre-split.i_crit_edge
  %buf_size1.0.lcssa.i = phi i32 [ %sub.i, %if.then136.i.if.end165thread-pre-split.i_crit_edge ], [ %sub161.i, %do.body155.i.if.end165thread-pre-split.i_crit_edge ]
  %buf_addr1.0.lcssa.i = phi i32 [ %add.i, %if.then136.i.if.end165thread-pre-split.i_crit_edge ], [ %add160.i, %do.body155.i.if.end165thread-pre-split.i_crit_edge ]
  %110 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr323.i = load i32, ptr %codec_mode.i, align 4
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.end165thread-pre-split.i, %for.end.i.if.end165.i_crit_edge
  %111 = phi i32 [ %.pr323.i, %if.end165thread-pre-split.i ], [ %100, %for.end.i.if.end165.i_crit_edge ]
  %buf_size1.1.i = phi i32 [ %buf_size1.0.lcssa.i, %if.end165thread-pre-split.i ], [ %sub.i, %for.end.i.if.end165.i_crit_edge ]
  %buf_addr1.1.i = phi i32 [ %buf_addr1.0.lcssa.i, %if.end165thread-pre-split.i ], [ %add.i, %for.end.i.if.end165.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %111)
  %cmp167.i = icmp eq i32 %111, 18
  br i1 %cmp167.i, label %do.body169.i, label %if.end165.i.do.body178.i_crit_edge

if.end165.i.do.body178.i_crit_edge:               ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body178.i

do.body169.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  tail call void @arm_heavy_mb() #8
  %112 = tail call i32 @llvm.bswap.i32(i32 %buf_addr1.1.i) #8
  %d_static_buffer_addr.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 148
  %113 = ptrtoint ptr %d_static_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %d_static_buffer_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !434
  tail call void @arm_heavy_mb() #8
  %d_static_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 149
  %115 = ptrtoint ptr %d_static_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %d_static_buffer_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 5242880) #8, !srcloc !379
  %add175.i = add i32 %buf_addr1.1.i, 20480
  %sub176.i = add i32 %buf_size1.1.i, -20480
  br label %do.body178.i

do.body178.i:                                     ; preds = %do.body169.i, %if.end165.i.do.body178.i_crit_edge
  %buf_size1.2.i = phi i32 [ %sub176.i, %do.body169.i ], [ %buf_size1.1.i, %if.end165.i.do.body178.i_crit_edge ]
  %buf_addr1.2.i = phi i32 [ %add175.i, %do.body169.i ], [ %buf_addr1.1.i, %if.end165.i.do.body178.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %117 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp179.i = icmp sgt i32 %117, 1
  br i1 %cmp179.i, label %do.end183.i, label %do.body178.i.do.end189.i_crit_edge

do.body178.i.do.end189.i_crit_edge:               ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189.i

do.end183.i:                                      ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %total_dpb_count32.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %total_dpb_count32.i, align 4
  %call186.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.139, i32 noundef 596, i32 noundef %buf_addr1.2.i, i32 noundef %buf_size1.2.i, i32 noundef %119) #11
  br label %do.end189.i

do.end189.i:                                      ; preds = %do.end183.i, %do.body178.i.do.end189.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size1.2.i)
  %cmp190.i = icmp slt i32 %buf_size1.2.i, 0
  br i1 %cmp190.i, label %do.body192.i, label %do.body204.i

do.body192.i:                                     ; preds = %do.end189.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %120 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp193.i = icmp sgt i32 %120, 1
  br i1 %cmp193.i, label %do.end197.i, label %do.body192.i.do.end10_crit_edge

do.body192.i.do.end10_crit_edge:                  ; preds = %do.body192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end197.i:                                      ; preds = %do.body192.i
  call void @__sanitizer_cov_trace_pc() #10
  %call199.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.139, i32 noundef 598) #11
  br label %do.end10

do.body204.i:                                     ; preds = %do.end189.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !435
  tail call void @arm_heavy_mb() #8
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %121 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %inst_no.i, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  %instance_id.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %9, i32 0, i32 9
  %124 = ptrtoint ptr %instance_id.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %instance_id.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #8, !srcloc !379
  %mfc_cmds.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %7, i32 0, i32 37
  %126 = ptrtoint ptr %mfc_cmds.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mfc_cmds.i, align 4
  %tobool.not.i = icmp eq ptr %127, null
  br i1 %tobool.not.i, label %do.body204.i.do.body214.i_crit_edge, label %land.lhs.true.i

do.body204.i.do.body214.i_crit_edge:              ; preds = %do.body204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body214.i

land.lhs.true.i:                                  ; preds = %do.body204.i
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %tobool208.not.i = icmp eq ptr %129, null
  br i1 %tobool208.not.i, label %land.lhs.true.i.do.body214.i_crit_edge, label %cond.true209.i

land.lhs.true.i.do.body214.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body214.i

cond.true209.i:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call212.i = tail call i32 %129(ptr noundef %7, i32 noundef 4, ptr noundef null) #8
  br label %do.body214.i

do.body214.i:                                     ; preds = %cond.true209.i, %land.lhs.true.i.do.body214.i_crit_edge, %do.body204.i.do.body214.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %130 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp215.i = icmp sgt i32 %130, 1
  br i1 %cmp215.i, label %do.end219.i, label %do.body214.i.cleanup_crit_edge

do.body214.i.cleanup_crit_edge:                   ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end219.i:                                      ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #10
  %call221.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.139, i32 noundef 606) #11
  br label %cleanup

do.end10:                                         ; preds = %do.end197.i, %do.body192.i.do.end10_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.134, i32 noundef 1936) #11
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %131 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 109, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end219.i, %do.body214.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -12, %do.end10 ], [ 0, %do.end219.i ], [ 0, %do.body214.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_flush(ptr nocapture noundef readonly %ctx, i32 noundef %flush) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %tobool.not = icmp eq i32 %flush, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %curr_ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !436
  tail call void @arm_heavy_mb() #8
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %7 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst_no, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %instance_id = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instance_id, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !379
  %mfc_cmds = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 37
  %12 = ptrtoint ptr %mfc_cmds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mfc_cmds, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %cond.true

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %15(ptr noundef %1, i32 noundef 10, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %cond.true, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_enc(ptr noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %2 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_queue, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %mfc_regs2.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %15, i32 0, i32 38
  %16 = ptrtoint ptr %mfc_regs2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfc_regs2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !378
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %e_stream_buffer_addr.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %17, i32 0, i32 184
  %19 = ptrtoint ptr %e_stream_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %e_stream_buffer_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #8
  %e_stream_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %17, i32 0, i32 185
  %22 = ptrtoint ptr %e_stream_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %e_stream_buffer_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %24 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp sgt i32 %24, 1
  br i1 %cmp.i, label %do.end9.i, label %vb2_plane_size.exit.s5p_mfc_set_enc_stream_buffer_v6.exit_crit_edge

vb2_plane_size.exit.s5p_mfc_set_enc_stream_buffer_v6.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_set_enc_stream_buffer_v6.exit

do.end9.i:                                        ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 621, i32 noundef %7, i32 noundef %retval.0.i) #11
  br label %s5p_mfc_set_enc_stream_buffer_v6.exit

s5p_mfc_set_enc_stream_buffer_v6.exit:            ; preds = %do.end9.i, %vb2_plane_size.exit.s5p_mfc_set_enc_stream_buffer_v6.exit_crit_edge
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %27 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %curr_ctx, align 4
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %mfc_regs2.i13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %29, i32 0, i32 38
  %30 = ptrtoint ptr %mfc_regs2.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mfc_regs2.i13, align 4
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %32 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %codec_mode.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %33, label %do.end.i [
    i32 20, label %if.then.i14
    i32 22, label %if.then5.i
    i32 23, label %if.then10.i
    i32 24, label %if.then15.i
    i32 26, label %if.then20.i
  ]

if.then.i14:                                      ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit
  %codec.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %35 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp.i.i = icmp sgt i32 %35, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i14.do.end5.i.i_crit_edge

if.then.i14.do.end5.i.i_crit_edge:                ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.185, i32 noundef 923) #11
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %if.then.i14.do.end5.i.i_crit_edge
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #8
  %e_gop_config.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 189
  %36 = ptrtoint ptr %e_gop_config.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %e_gop_config.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !437
  %39 = and i32 %38, -769
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %num_b_frame.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 22
  %41 = ptrtoint ptr %num_b_frame.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_b_frame.i.i, align 4
  %43 = and i8 %42, 3
  %and10.i.i = zext i8 %43 to i32
  %shl.i.i = shl nuw nsw i32 %and10.i.i, 16
  %or.i.i = or i32 %shl.i.i, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !438
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %45 = ptrtoint ptr %e_gop_config.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %e_gop_config.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !379
  %level.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 24
  %47 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %level.i.i, align 4
  %and15.i.i = shl i32 %48, 8
  %shl16.i.i = and i32 %and15.i.i, 65280
  %49 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %codec.i.i, align 4
  %and18.i.i = and i32 %50, 63
  %or19.i.i = or i32 %shl16.i.i, %and18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !439
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %or19.i.i) #8
  %e_picture_profile.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 156
  %52 = ptrtoint ptr %e_picture_profile.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %e_picture_profile.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #8, !srcloc !379
  %e_rc_config.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 160
  %54 = ptrtoint ptr %e_rc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %e_rc_config.i.i, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !440
  %57 = and i32 %56, -65537
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %rc_mb.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 14
  %59 = ptrtoint ptr %rc_mb.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rc_mb.i.i, align 4
  %and29.i.i = shl i32 %60, 8
  %shl30.i.i = and i32 %and29.i.i, 256
  %or31.i.i = or i32 %shl30.i.i, %58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !441
  tail call void @arm_heavy_mb() #8
  %61 = tail call i32 @llvm.bswap.i32(i32 %or31.i.i) #8
  %62 = ptrtoint ptr %e_rc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %e_rc_config.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !379
  %and36.i.i = and i32 %or31.i.i, -64
  %rc_frame_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 18
  %64 = ptrtoint ptr %rc_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rc_frame_qp.i.i, align 2
  %66 = and i8 %65, 63
  %and38.i.i = zext i8 %66 to i32
  %or39.i.i = or i32 %and36.i.i, %and38.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !442
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %or39.i.i) #8
  %68 = ptrtoint ptr %e_rc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %e_rc_config.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !379
  %rc_max_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 20
  %70 = ptrtoint ptr %rc_max_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rc_max_qp.i.i, align 4
  %72 = and i8 %71, 63
  %and45.i.i = zext i8 %72 to i32
  %shl46.i.i = shl nuw nsw i32 %and45.i.i, 8
  %rc_min_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 19
  %73 = ptrtoint ptr %rc_min_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rc_min_qp.i.i, align 1
  %75 = and i8 %74, 63
  %and49.i.i = zext i8 %75 to i32
  %or50.i.i = or i32 %shl46.i.i, %and49.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %or50.i.i) #8
  %e_rc_qp_bound.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 161
  %77 = ptrtoint ptr %e_rc_qp_bound.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %e_rc_qp_bound.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  tail call void @arm_heavy_mb() #8
  %e_fixed_picture_qp.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 159
  %79 = ptrtoint ptr %e_fixed_picture_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %e_fixed_picture_qp.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #8, !srcloc !379
  %rc_frame.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %81 = ptrtoint ptr %rc_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rc_frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end5.i.i.land.lhs.true79.i.i_crit_edge

do.end5.i.i.land.lhs.true79.i.i_crit_edge:        ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true79.i.i

land.lhs.true.i.i:                                ; preds = %do.end5.i.i
  %83 = ptrtoint ptr %rc_mb.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rc_mb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool58.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool58.not.i.i, label %if.end76.i.i, label %land.lhs.true.i.i.if.end94.i.i_crit_edge

land.lhs.true.i.i.if.end94.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i.i

if.end76.i.i:                                     ; preds = %land.lhs.true.i.i
  %rc_b_frame_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 22
  %85 = ptrtoint ptr %rc_b_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rc_b_frame_qp.i.i, align 2
  %87 = and i8 %86, 63
  %and61.i.i = zext i8 %87 to i32
  %shl62.i.i = shl nuw nsw i32 %and61.i.i, 16
  %rc_p_frame_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 21
  %88 = ptrtoint ptr %rc_p_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rc_p_frame_qp.i.i, align 1
  %90 = and i8 %89, 63
  %and65.i.i = zext i8 %90 to i32
  %shl66.i.i = shl nuw nsw i32 %and65.i.i, 8
  %or67.i.i = or i32 %shl66.i.i, %shl62.i.i
  %91 = ptrtoint ptr %rc_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rc_frame_qp.i.i, align 2
  %93 = and i8 %92, 63
  %and70.i.i = zext i8 %93 to i32
  %or71.i.i = or i32 %or67.i.i, %and70.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  tail call void @arm_heavy_mb() #8
  %94 = tail call i32 @llvm.bswap.i32(i32 %or71.i.i) #8
  %95 = ptrtoint ptr %e_fixed_picture_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %e_fixed_picture_qp.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #8, !srcloc !379
  %97 = ptrtoint ptr %rc_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr.i.i = load i32, ptr %rc_frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool78.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end76.i.i.if.end94.i.i_crit_edge, label %if.end76.i.i.land.lhs.true79.i.i_crit_edge

if.end76.i.i.land.lhs.true79.i.i_crit_edge:       ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true79.i.i

if.end76.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i.i

land.lhs.true79.i.i:                              ; preds = %if.end76.i.i.land.lhs.true79.i.i_crit_edge, %do.end5.i.i.land.lhs.true79.i.i_crit_edge
  %rc_framerate_num.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %98 = ptrtoint ptr %rc_framerate_num.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rc_framerate_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool80.not.i.i = icmp eq i32 %99, 0
  br i1 %tobool80.not.i.i, label %land.lhs.true79.i.i.if.end94.i.i_crit_edge, label %land.lhs.true81.i.i

land.lhs.true79.i.i.if.end94.i.i_crit_edge:       ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i.i

land.lhs.true81.i.i:                              ; preds = %land.lhs.true79.i.i
  %rc_framerate_denom.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %100 = ptrtoint ptr %rc_framerate_denom.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rc_framerate_denom.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool82.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool82.not.i.i, label %land.lhs.true81.i.i.if.end94.i.i_crit_edge, label %if.then83.i.i

land.lhs.true81.i.i.if.end94.i.i_crit_edge:       ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i.i

if.then83.i.i:                                    ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl86.i.i = shl i32 %99, 16
  %and89.i.i = and i32 %101, 65535
  %or90.i.i = or i32 %and89.i.i, %shl86.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !446
  tail call void @arm_heavy_mb() #8
  %102 = tail call i32 @llvm.bswap.i32(i32 %or90.i.i) #8
  %e_rc_frame_rate.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 194
  %103 = ptrtoint ptr %e_rc_frame_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %e_rc_frame_rate.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #8, !srcloc !379
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.then83.i.i, %land.lhs.true81.i.i.if.end94.i.i_crit_edge, %land.lhs.true79.i.i.if.end94.i.i_crit_edge, %if.end76.i.i.if.end94.i.i_crit_edge, %land.lhs.true.i.i.if.end94.i.i_crit_edge
  %frame_skip_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %105 = ptrtoint ptr %frame_skip_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %frame_skip_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp95.i.i = icmp eq i32 %106, 2
  br i1 %cmp95.i.i, label %do.body98.i.i, label %if.end94.i.i.if.end110.i.i_crit_edge

if.end94.i.i.if.end110.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.i.i

do.body98.i.i:                                    ; preds = %if.end94.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !447
  tail call void @arm_heavy_mb() #8
  %cpb_size.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 25
  %107 = ptrtoint ptr %cpb_size.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cpb_size.i.i, align 4
  %conv101.i.i = zext i16 %108 to i32
  %109 = tail call i32 @llvm.bswap.i32(i32 %conv101.i.i) #8
  %e_vbv_buffer_size.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 157
  %110 = ptrtoint ptr %e_vbv_buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %e_vbv_buffer_size.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #8, !srcloc !379
  %112 = ptrtoint ptr %rc_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rc_frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool104.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool104.not.i.i, label %do.body98.i.i.if.end110.i.i_crit_edge, label %do.body106.i.i

do.body98.i.i.if.end110.i.i_crit_edge:            ; preds = %do.body98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.i.i

do.body106.i.i:                                   ; preds = %do.body98.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %vbv_delay.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 18
  %114 = ptrtoint ptr %vbv_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vbv_delay.i.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #8
  %e_vbv_init_delay.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 158
  %117 = ptrtoint ptr %e_vbv_init_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %e_vbv_init_delay.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #8, !srcloc !379
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %do.body106.i.i, %do.body98.i.i.if.end110.i.i_crit_edge, %if.end94.i.i.if.end110.i.i_crit_edge
  %interlace.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 26
  %119 = ptrtoint ptr %interlace.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %interlace.i.i, align 4
  %and111.i.i = shl i32 %120, 27
  %shl112.i.i = and i32 %and111.i.i, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !449
  tail call void @arm_heavy_mb() #8
  %e_h264_options.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 219
  %121 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %shl112.i.i) #8, !srcloc !379
  %123 = ptrtoint ptr %interlace.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %interlace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool118.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool118.not.i.i, label %if.end110.i.i.if.end128.i.i_crit_edge, label %do.body120.i.i

if.end110.i.i.if.end128.i.i_crit_edge:            ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i.i

do.body120.i.i:                                   ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !450
  tail call void @arm_heavy_mb() #8
  %img_height.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %125 = ptrtoint ptr %img_height.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %img_height.i.i, align 4
  %shr.i.i = ashr i32 %126, 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #8
  %e_frame_height.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 151
  %128 = ptrtoint ptr %e_frame_height.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %e_frame_height.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %img_height.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %img_height.i.i, align 4
  %shr127.i.i = ashr i32 %131, 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %shr127.i.i) #8
  %e_cropped_frame_height.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 153
  %133 = ptrtoint ptr %e_cropped_frame_height.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %e_cropped_frame_height.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #8, !srcloc !379
  br label %if.end128.i.i

if.end128.i.i:                                    ; preds = %do.body120.i.i, %if.end110.i.i.if.end128.i.i_crit_edge
  %135 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %e_h264_options.i.i, align 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !452
  %138 = and i32 %137, -100663297
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #8
  %loop_filter_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 1
  %140 = ptrtoint ptr %loop_filter_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %loop_filter_mode.i.i, align 4
  %and136.i.i = shl i32 %141, 1
  %shl137.i.i = and i32 %and136.i.i, 6
  %or138.i.i = or i32 %shl137.i.i, %139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %142 = tail call i32 @llvm.bswap.i32(i32 %or138.i.i) #8
  %143 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #8, !srcloc !379
  %loop_filter_alpha.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 2
  %145 = ptrtoint ptr %loop_filter_alpha.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %loop_filter_alpha.i.i, align 4
  %conv143.i.i = sext i8 %146 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp144.i.i = icmp slt i8 %146, 0
  %add.i.i = sub nsw i32 256, %conv143.i.i
  %or149.i.i = or i32 %add.i.i, 16
  %and152.i.i = and i32 %conv143.i.i, 15
  %reg.0.i.i = select i1 %cmp144.i.i, i32 %or149.i.i, i32 %and152.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  tail call void @arm_heavy_mb() #8
  %147 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #8
  %e_h264_lf_alpha_offset.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 221
  %148 = ptrtoint ptr %e_h264_lf_alpha_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %e_h264_lf_alpha_offset.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #8, !srcloc !379
  %loop_filter_beta.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 3
  %150 = ptrtoint ptr %loop_filter_beta.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %loop_filter_beta.i.i, align 1
  %conv158.i.i = sext i8 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp159.i.i = icmp slt i8 %151, 0
  %add165.i.i = sub nsw i32 256, %conv158.i.i
  %or166.i.i = or i32 %add165.i.i, 16
  %and170.i.i = and i32 %conv158.i.i, 15
  %reg.1.i.i = select i1 %cmp159.i.i, i32 %or166.i.i, i32 %and170.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !455
  tail call void @arm_heavy_mb() #8
  %152 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i.i) #8
  %e_h264_lf_beta_offset.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 222
  %153 = ptrtoint ptr %e_h264_lf_beta_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %e_h264_lf_beta_offset.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #8, !srcloc !379
  %155 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %e_h264_options.i.i, align 4
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  %158 = and i32 %157, -16777217
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #8
  %entropy_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 4
  %160 = ptrtoint ptr %entropy_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %entropy_mode.i.i, align 4
  %and183.i.i = and i32 %161, 1
  %or184.i.i = or i32 %and183.i.i, %159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  tail call void @arm_heavy_mb() #8
  %162 = tail call i32 @llvm.bswap.i32(i32 %or184.i.i) #8
  %163 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #8, !srcloc !379
  %165 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %e_h264_options.i.i, align 4
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  %168 = and i32 %167, 2147483647
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #8
  %num_ref_pic_4p.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 6
  %170 = ptrtoint ptr %num_ref_pic_4p.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %num_ref_pic_4p.i.i, align 1
  %172 = xor i8 %171, -1
  %173 = shl i8 %172, 7
  %shl199.i.i = zext i8 %173 to i32
  %or200.i.i = or i32 %169, %shl199.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  tail call void @arm_heavy_mb() #8
  %174 = tail call i32 @llvm.bswap.i32(i32 %or200.i.i) #8
  %175 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #8, !srcloc !379
  %177 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %e_h264_options.i.i, align 4
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  %180 = and i32 %179, -3145729
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #8
  %_8x8_transform.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 7
  %182 = ptrtoint ptr %_8x8_transform.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %_8x8_transform.i.i, align 4
  %and212.i.i = shl i32 %183, 12
  %shl213.i.i = and i32 %and212.i.i, 12288
  %or214.i.i = or i32 %shl213.i.i, %181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  tail call void @arm_heavy_mb() #8
  %184 = tail call i32 @llvm.bswap.i32(i32 %or214.i.i) #8
  %185 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  %e_mb_rc_config.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 164
  %187 = ptrtoint ptr %e_mb_rc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %e_mb_rc_config.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 0) #8, !srcloc !379
  %189 = ptrtoint ptr %rc_mb.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %rc_mb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool223.not.i.i = icmp eq i32 %190, 0
  br i1 %tobool223.not.i.i, label %if.end128.i.i.if.end240.i.i_crit_edge, label %if.then224.i.i

if.end128.i.i.if.end240.i.i_crit_edge:            ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240.i.i

if.then224.i.i:                                   ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rc_mb_dark.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 8
  %191 = ptrtoint ptr %rc_mb_dark.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rc_mb_dark.i.i, align 4
  %and225.i.i = shl i32 %192, 3
  %shl226.i.i = and i32 %and225.i.i, 8
  %rc_mb_smooth.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 9
  %193 = ptrtoint ptr %rc_mb_smooth.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rc_mb_smooth.i.i, align 4
  %and228.i.i = shl i32 %194, 2
  %shl229.i.i = and i32 %and228.i.i, 4
  %or230.i.i = or i32 %shl229.i.i, %shl226.i.i
  %rc_mb_static.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 10
  %195 = ptrtoint ptr %rc_mb_static.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rc_mb_static.i.i, align 4
  %and231.i.i = shl i32 %196, 1
  %shl232.i.i = and i32 %and231.i.i, 2
  %or233.i.i = or i32 %or230.i.i, %shl232.i.i
  %rc_mb_activity.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 11
  %197 = ptrtoint ptr %rc_mb_activity.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %rc_mb_activity.i.i, align 4
  %and234.i.i = and i32 %198, 1
  %or235.i.i = or i32 %or233.i.i, %and234.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  tail call void @arm_heavy_mb() #8
  %199 = shl nuw nsw i32 %or235.i.i, 24
  %200 = ptrtoint ptr %e_mb_rc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %e_mb_rc_config.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #8, !srcloc !379
  br label %if.end240.i.i

if.end240.i.i:                                    ; preds = %if.then224.i.i, %if.end128.i.i.if.end240.i.i_crit_edge
  %reg.2.i.i = phi i32 [ %or235.i.i, %if.then224.i.i ], [ %or214.i.i, %if.end128.i.i.if.end240.i.i_crit_edge ]
  %202 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %e_h264_options.i.i, align 4
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  %and247.i.i = and i32 %reg.2.i.i, -33
  %vui_sar.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 12
  %205 = ptrtoint ptr %vui_sar.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %vui_sar.i.i, align 4
  %and248.i.i = shl i32 %206, 5
  %shl249.i.i = and i32 %and248.i.i, 32
  %or250.i.i = or i32 %shl249.i.i, %and247.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !465
  tail call void @arm_heavy_mb() #8
  %207 = tail call i32 @llvm.bswap.i32(i32 %or250.i.i) #8
  %208 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !466
  tail call void @arm_heavy_mb() #8
  %e_aspect_ratio.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 217
  %210 = ptrtoint ptr %e_aspect_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %e_aspect_ratio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !467
  tail call void @arm_heavy_mb() #8
  %e_extended_sar.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 218
  %212 = ptrtoint ptr %e_extended_sar.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %e_extended_sar.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 0) #8, !srcloc !379
  %214 = ptrtoint ptr %vui_sar.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %vui_sar.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool262.not.i.i = icmp eq i32 %215, 0
  br i1 %tobool262.not.i.i, label %if.end240.i.i.if.end288.i.i_crit_edge, label %if.then263.i.i

if.end240.i.i.if.end288.i.i_crit_edge:            ; preds = %if.end240.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i.i

if.then263.i.i:                                   ; preds = %if.end240.i.i
  %vui_sar_idc.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 13
  %216 = ptrtoint ptr %vui_sar_idc.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %vui_sar_idc.i.i, align 4
  %conv264.i.i = zext i8 %217 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !468
  tail call void @arm_heavy_mb() #8
  %218 = shl nuw i32 %conv264.i.i, 24
  %219 = ptrtoint ptr %e_aspect_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %e_aspect_ratio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #8, !srcloc !379
  %221 = ptrtoint ptr %vui_sar_idc.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %vui_sar_idc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %222)
  %cmp273.i.i = icmp eq i8 %222, -1
  br i1 %cmp273.i.i, label %if.then275.i.i, label %if.then263.i.i.if.end288.i.i_crit_edge

if.then263.i.i.if.end288.i.i_crit_edge:           ; preds = %if.then263.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i.i

if.then275.i.i:                                   ; preds = %if.then263.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vui_ext_sar_width.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 14
  %223 = ptrtoint ptr %vui_ext_sar_width.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %vui_ext_sar_width.i.i, align 2
  %conv276.i.i = zext i16 %224 to i32
  %shl278.i.i = shl nuw i32 %conv276.i.i, 16
  %vui_ext_sar_height.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 15
  %225 = ptrtoint ptr %vui_ext_sar_height.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %vui_ext_sar_height.i.i, align 4
  %conv280.i.i = zext i16 %226 to i32
  %or282.i.i = or i32 %shl278.i.i, %conv280.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !469
  tail call void @arm_heavy_mb() #8
  %227 = tail call i32 @llvm.bswap.i32(i32 %or282.i.i) #8
  %228 = ptrtoint ptr %e_extended_sar.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %e_extended_sar.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #8, !srcloc !379
  br label %if.end288.i.i

if.end288.i.i:                                    ; preds = %if.then275.i.i, %if.then263.i.i.if.end288.i.i_crit_edge, %if.end240.i.i.if.end288.i.i_crit_edge
  %reg.3.i.i = phi i32 [ %or282.i.i, %if.then275.i.i ], [ %conv264.i.i, %if.then263.i.i.if.end288.i.i_crit_edge ], [ %or250.i.i, %if.end240.i.i.if.end288.i.i_crit_edge ]
  %230 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %e_h264_options.i.i, align 4
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !470
  %and295.i.i = and i32 %reg.3.i.i, -17
  %open_gop.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 16
  %233 = ptrtoint ptr %open_gop.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %open_gop.i.i, align 4
  %and296.i.i = shl i32 %234, 4
  %shl297.i.i = and i32 %and296.i.i, 16
  %or298.i.i = or i32 %shl297.i.i, %and295.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !471
  tail call void @arm_heavy_mb() #8
  %235 = tail call i32 @llvm.bswap.i32(i32 %or298.i.i) #8
  %236 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !472
  tail call void @arm_heavy_mb() #8
  %e_h264_i_period.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 223
  %238 = ptrtoint ptr %e_h264_i_period.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %e_h264_i_period.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 0) #8, !srcloc !379
  %240 = ptrtoint ptr %open_gop.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %open_gop.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool307.not.i.i = icmp eq i32 %241, 0
  br i1 %tobool307.not.i.i, label %if.end288.i.i.if.end316.i.i_crit_edge, label %if.then308.i.i

if.end288.i.i.if.end316.i.i_crit_edge:            ; preds = %if.end288.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316.i.i

if.then308.i.i:                                   ; preds = %if.end288.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %open_gop_size.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 17
  %242 = ptrtoint ptr %open_gop_size.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %open_gop_size.i.i, align 4
  %conv309.i.i = zext i16 %243 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !473
  tail call void @arm_heavy_mb() #8
  %244 = tail call i32 @llvm.bswap.i32(i32 %conv309.i.i) #8
  %245 = ptrtoint ptr %e_h264_i_period.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %e_h264_i_period.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #8, !srcloc !379
  br label %if.end316.i.i

if.end316.i.i:                                    ; preds = %if.then308.i.i, %if.end288.i.i.if.end316.i.i_crit_edge
  %reg.4.i.i = phi i32 [ %conv309.i.i, %if.then308.i.i ], [ %or298.i.i, %if.end288.i.i.if.end316.i.i_crit_edge ]
  %247 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %e_h264_options.i.i, align 4
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !474
  %and323.i.i = and i32 %reg.4.i.i, -1537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !475
  tail call void @arm_heavy_mb() #8
  %250 = tail call i32 @llvm.bswap.i32(i32 %and323.i.i) #8
  %251 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #8, !srcloc !379
  %253 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %e_h264_options.i.i, align 4
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !476
  %and334.i.i = and i32 %reg.4.i.i, -17921
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !477
  tail call void @arm_heavy_mb() #8
  %256 = tail call i32 @llvm.bswap.i32(i32 %and334.i.i) #8
  %257 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #8, !srcloc !379
  %259 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %e_h264_options.i.i, align 4
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !478
  %and345.i.i = and i32 %reg.4.i.i, -17985
  %aso.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 40
  %262 = ptrtoint ptr %aso.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %aso.i.i, align 4
  %264 = shl i8 %263, 6
  %265 = and i8 %264, 64
  %shl348.i.i = zext i8 %265 to i32
  %or349.i.i = or i32 %and345.i.i, %shl348.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !479
  tail call void @arm_heavy_mb() #8
  %266 = tail call i32 @llvm.bswap.i32(i32 %or349.i.i) #8
  %267 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %266) #8, !srcloc !379
  %269 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %e_h264_options.i.i, align 4
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !480
  %and360.i.i = and i32 %or349.i.i, -18177
  %272 = ptrtoint ptr %open_gop.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %open_gop.i.i, align 4
  %and362.i.i = shl i32 %273, 8
  %shl363.i.i = and i32 %and362.i.i, 256
  %or364.i.i = or i32 %shl363.i.i, %and360.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !481
  tail call void @arm_heavy_mb() #8
  %274 = tail call i32 @llvm.bswap.i32(i32 %or364.i.i) #8
  %275 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %274) #8, !srcloc !379
  %hier_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 27
  %277 = ptrtoint ptr %hier_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %hier_qp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool370.not.i.i = icmp eq i8 %278, 0
  br i1 %tobool370.not.i.i, label %if.end316.i.i.do.body397.i.i_crit_edge, label %land.lhs.true371.i.i

if.end316.i.i.do.body397.i.i_crit_edge:           ; preds = %if.end316.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

land.lhs.true371.i.i:                             ; preds = %if.end316.i.i
  %hier_qp_layer.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 29
  %279 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool373.not.i.i = icmp eq i8 %280, 0
  br i1 %tobool373.not.i.i, label %land.lhs.true371.i.i.do.body397.i.i_crit_edge, label %if.then374.i.i

land.lhs.true371.i.i.do.body397.i.i_crit_edge:    ; preds = %land.lhs.true371.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

if.then374.i.i:                                   ; preds = %land.lhs.true371.i.i
  %hier_qp_type.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 28
  %281 = ptrtoint ptr %hier_qp_type.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %hier_qp_type.i.i, align 1
  %283 = shl i8 %282, 3
  %284 = and i8 %283, 8
  %285 = and i8 %280, 7
  %or3822.i.i = or i8 %284, %285
  %or382.i.i = zext i8 %or3822.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !482
  tail call void @arm_heavy_mb() #8
  %286 = shl nuw nsw i32 %or382.i.i, 24
  %e_h264_num_t_layer.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 231
  %287 = ptrtoint ptr %e_h264_num_t_layer.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %e_h264_num_t_layer.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %286) #8, !srcloc !379
  %289 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %cmp3887.not.i.i = icmp eq i8 %290, 0
  br i1 %cmp3887.not.i.i, label %if.then374.i.i.do.body397.i.i_crit_edge, label %do.body392.lr.ph.i.i

if.then374.i.i.do.body397.i.i_crit_edge:          ; preds = %if.then374.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.lr.ph.i.i:                             ; preds = %if.then374.i.i
  %e_h264_hierarchical_qp_layer0.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 0
  %291 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx.i.i, align 1
  %conv395.i.i = zext i8 %292 to i32
  %293 = shl nuw i32 %conv395.i.i, 24
  %294 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %293) #8, !srcloc !379
  %296 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %297)
  %cmp388.i.i = icmp ugt i8 %297, 1
  br i1 %cmp388.i.i, label %do.body392.i.i.1, label %do.body392.lr.ph.i.i.do.body397.i.i_crit_edge

do.body392.lr.ph.i.i.do.body397.i.i_crit_edge:    ; preds = %do.body392.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.i.i.1:                                 ; preds = %do.body392.lr.ph.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.1 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 1
  %298 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx.i.i.1, align 1
  %conv395.i.i.1 = zext i8 %299 to i32
  %300 = shl nuw i32 %conv395.i.i.1, 24
  %301 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %302, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %300) #8, !srcloc !379
  %303 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %304)
  %cmp388.i.i.1 = icmp ugt i8 %304, 2
  br i1 %cmp388.i.i.1, label %do.body392.i.i.2, label %do.body392.i.i.1.do.body397.i.i_crit_edge

do.body392.i.i.1.do.body397.i.i_crit_edge:        ; preds = %do.body392.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.i.i.2:                                 ; preds = %do.body392.i.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.2 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 2
  %305 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx.i.i.2, align 1
  %conv395.i.i.2 = zext i8 %306 to i32
  %307 = shl nuw i32 %conv395.i.i.2, 24
  %308 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %309, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 %307) #8, !srcloc !379
  %310 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %311)
  %cmp388.i.i.2 = icmp ugt i8 %311, 3
  br i1 %cmp388.i.i.2, label %do.body392.i.i.3, label %do.body392.i.i.2.do.body397.i.i_crit_edge

do.body392.i.i.2.do.body397.i.i_crit_edge:        ; preds = %do.body392.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.i.i.3:                                 ; preds = %do.body392.i.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.3 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 3
  %312 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx.i.i.3, align 1
  %conv395.i.i.3 = zext i8 %313 to i32
  %314 = shl nuw i32 %conv395.i.i.3, 24
  %315 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %316, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 %314) #8, !srcloc !379
  %317 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %318)
  %cmp388.i.i.3 = icmp ugt i8 %318, 4
  br i1 %cmp388.i.i.3, label %do.body392.i.i.4, label %do.body392.i.i.3.do.body397.i.i_crit_edge

do.body392.i.i.3.do.body397.i.i_crit_edge:        ; preds = %do.body392.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.i.i.4:                                 ; preds = %do.body392.i.i.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.4 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 4
  %319 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx.i.i.4, align 1
  %conv395.i.i.4 = zext i8 %320 to i32
  %321 = shl nuw i32 %conv395.i.i.4, 24
  %322 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %323, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4, i32 %321) #8, !srcloc !379
  %324 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %325)
  %cmp388.i.i.4 = icmp ugt i8 %325, 5
  br i1 %cmp388.i.i.4, label %do.body392.i.i.5, label %do.body392.i.i.4.do.body397.i.i_crit_edge

do.body392.i.i.4.do.body397.i.i_crit_edge:        ; preds = %do.body392.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.i.i.5:                                 ; preds = %do.body392.i.i.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.5 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 5
  %326 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx.i.i.5, align 1
  %conv395.i.i.5 = zext i8 %327 to i32
  %328 = shl nuw i32 %conv395.i.i.5, 24
  %329 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  %add.ptr.i.i.5 = getelementptr i8, ptr %330, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5, i32 %328) #8, !srcloc !379
  %331 = ptrtoint ptr %hier_qp_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %hier_qp_layer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %332)
  %cmp388.i.i.5 = icmp ugt i8 %332, 6
  br i1 %cmp388.i.i.5, label %do.body392.i.i.6, label %do.body392.i.i.5.do.body397.i.i_crit_edge

do.body392.i.i.5.do.body397.i.i_crit_edge:        ; preds = %do.body392.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body397.i.i

do.body392.i.i.6:                                 ; preds = %do.body392.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.6 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 30, i32 6
  %333 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx.i.i.6, align 1
  %conv395.i.i.6 = zext i8 %334 to i32
  %335 = shl nuw i32 %conv395.i.i.6, 24
  %336 = ptrtoint ptr %e_h264_hierarchical_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %e_h264_hierarchical_qp_layer0.i.i, align 4
  %add.ptr.i.i.6 = getelementptr i8, ptr %337, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.6, i32 %335) #8, !srcloc !379
  br label %do.body397.i.i

do.body397.i.i:                                   ; preds = %do.body392.i.i.6, %do.body392.i.i.5.do.body397.i.i_crit_edge, %do.body392.i.i.4.do.body397.i.i_crit_edge, %do.body392.i.i.3.do.body397.i.i_crit_edge, %do.body392.i.i.2.do.body397.i.i_crit_edge, %do.body392.i.i.1.do.body397.i.i_crit_edge, %do.body392.lr.ph.i.i.do.body397.i.i_crit_edge, %if.then374.i.i.do.body397.i.i_crit_edge, %land.lhs.true371.i.i.do.body397.i.i_crit_edge, %if.end316.i.i.do.body397.i.i_crit_edge
  %reg.5.i.i = phi i32 [ 0, %land.lhs.true371.i.i.do.body397.i.i_crit_edge ], [ 0, %if.end316.i.i.do.body397.i.i_crit_edge ], [ %or382.i.i, %if.then374.i.i.do.body397.i.i_crit_edge ], [ %or382.i.i, %do.body392.i.i.6 ], [ %or382.i.i, %do.body392.i.i.5.do.body397.i.i_crit_edge ], [ %or382.i.i, %do.body392.i.i.4.do.body397.i.i_crit_edge ], [ %or382.i.i, %do.body392.i.i.3.do.body397.i.i_crit_edge ], [ %or382.i.i, %do.body392.i.i.2.do.body397.i.i_crit_edge ], [ %or382.i.i, %do.body392.i.i.1.do.body397.i.i_crit_edge ], [ %or382.i.i, %do.body392.lr.ph.i.i.do.body397.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !484
  tail call void @arm_heavy_mb() #8
  %338 = shl nuw nsw i32 %reg.5.i.i, 24
  %e_h264_num_t_layer400.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 231
  %339 = ptrtoint ptr %e_h264_num_t_layer400.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %e_h264_num_t_layer400.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #8, !srcloc !379
  %341 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %e_h264_options.i.i, align 4
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !485
  %sei_frame_packing.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 31
  %344 = ptrtoint ptr %sei_frame_packing.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %sei_frame_packing.i.i, align 2
  %346 = and i8 %345, 1
  %and409.i.i = zext i8 %346 to i32
  %shl410.i.i = shl nuw nsw i32 %and409.i.i, 25
  %or411.i.i = or i32 %shl410.i.i, %reg.5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !486
  tail call void @arm_heavy_mb() #8
  %347 = tail call i32 @llvm.bswap.i32(i32 %or411.i.i) #8
  %348 = ptrtoint ptr %e_h264_options.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %e_h264_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 %347) #8, !srcloc !379
  %350 = ptrtoint ptr %sei_frame_packing.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %sei_frame_packing.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool417.not.i.i = icmp eq i8 %351, 0
  br i1 %tobool417.not.i.i, label %do.body397.i.i.if.end429.i.i_crit_edge, label %if.then418.i.i

do.body397.i.i.if.end429.i.i_crit_edge:           ; preds = %do.body397.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end429.i.i

if.then418.i.i:                                   ; preds = %do.body397.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sei_fp_curr_frame_0.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 32
  %352 = ptrtoint ptr %sei_fp_curr_frame_0.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %sei_fp_curr_frame_0.i.i, align 1
  %354 = shl i8 %353, 2
  %355 = and i8 %354, 4
  %sei_fp_arrangement_type.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 33
  %356 = ptrtoint ptr %sei_fp_arrangement_type.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %sei_fp_arrangement_type.i.i, align 4
  %358 = and i8 %357, 3
  %or4251.i.i = or i8 %355, %358
  %or425.i.i = zext i8 %or4251.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  tail call void @arm_heavy_mb() #8
  %359 = shl nuw nsw i32 %or425.i.i, 24
  %e_h264_frame_packing_sei_info.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 233
  %360 = ptrtoint ptr %e_h264_frame_packing_sei_info.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %e_h264_frame_packing_sei_info.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %359) #8, !srcloc !379
  br label %if.end429.i.i

if.end429.i.i:                                    ; preds = %if.then418.i.i, %do.body397.i.i.if.end429.i.i_crit_edge
  %fmo.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 34
  %362 = ptrtoint ptr %fmo.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %fmo.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool430.not.i.i = icmp eq i8 %363, 0
  br i1 %tobool430.not.i.i, label %do.body504.i.i, label %if.then431.i.i

if.then431.i.i:                                   ; preds = %if.end429.i.i
  %fmo_map_type.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 35
  %364 = ptrtoint ptr %fmo_map_type.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %fmo_map_type.i.i, align 2
  %366 = zext i8 %365 to i64
  call void @__sanitizer_cov_trace_switch(i64 %366, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %365, label %do.end483.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb456.i.i
    i8 4, label %if.then431.i.i.sw.bb464.i.i_crit_edge
    i8 5, label %if.then431.i.i.sw.bb464.i.i_crit_edge15
  ]

if.then431.i.i.sw.bb464.i.i_crit_edge15:          ; preds = %if.then431.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb464.i.i

if.then431.i.i.sw.bb464.i.i_crit_edge:            ; preds = %if.then431.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb464.i.i

sw.bb.i.i:                                        ; preds = %if.then431.i.i
  %fmo_slice_grp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 36
  %367 = ptrtoint ptr %fmo_slice_grp.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %fmo_slice_grp.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %368)
  %cmp434.i.i = icmp ugt i8 %368, 4
  br i1 %cmp434.i.i, label %if.then436.i.i, label %sw.bb.i.i.if.end438.i.i_crit_edge

sw.bb.i.i.if.end438.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end438.i.i

if.then436.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %369 = ptrtoint ptr %fmo_slice_grp.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 4, ptr %fmo_slice_grp.i.i, align 1
  br label %if.end438.i.i

if.end438.i.i:                                    ; preds = %if.then436.i.i, %sw.bb.i.i.if.end438.i.i_crit_edge
  %370 = ptrtoint ptr %fmo_slice_grp.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %fmo_slice_grp.i.i, align 1
  %372 = and i8 %371, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %cmp44310.not.i.i = icmp eq i8 %372, 0
  br i1 %cmp44310.not.i.i, label %if.end438.i.i.do.body492.i.i_crit_edge, label %do.body446.lr.ph.i.i

if.end438.i.i.do.body492.i.i_crit_edge:           ; preds = %if.end438.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body492.i.i

do.body446.lr.ph.i.i:                             ; preds = %if.end438.i.i
  %e_h264_fmo_run_length_minus1_0.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 228
  br label %do.body446.i.i

do.body446.i.i:                                   ; preds = %do.body446.i.i.do.body446.i.i_crit_edge, %do.body446.lr.ph.i.i
  %i.111.i.i = phi i32 [ 0, %do.body446.lr.ph.i.i ], [ %inc454.i.i, %do.body446.i.i.do.body446.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !488
  tail call void @arm_heavy_mb() #8
  %arrayidx449.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 39, i32 %i.111.i.i
  %373 = ptrtoint ptr %arrayidx449.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx449.i.i, align 4
  %sub450.i.i = add i32 %374, -1
  %375 = tail call i32 @llvm.bswap.i32(i32 %sub450.i.i) #8
  %376 = ptrtoint ptr %e_h264_fmo_run_length_minus1_0.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %e_h264_fmo_run_length_minus1_0.i.i, align 4
  %mul451.i.i = shl i32 %i.111.i.i, 2
  %add.ptr452.i.i = getelementptr i8, ptr %377, i32 %mul451.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr452.i.i, i32 %375) #8, !srcloc !379
  %inc454.i.i = add nuw nsw i32 %i.111.i.i, 1
  %378 = ptrtoint ptr %fmo_slice_grp.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %fmo_slice_grp.i.i, align 1
  %380 = and i8 %379, 15
  %and442.i.i = zext i8 %380 to i32
  %cmp443.i.i = icmp ult i32 %inc454.i.i, %and442.i.i
  br i1 %cmp443.i.i, label %do.body446.i.i.do.body446.i.i_crit_edge, label %do.body446.i.i.do.body492.i.i_crit_edge

do.body446.i.i.do.body492.i.i_crit_edge:          ; preds = %do.body446.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body492.i.i

do.body446.i.i.do.body446.i.i_crit_edge:          ; preds = %do.body446.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body446.i.i

sw.bb456.i.i:                                     ; preds = %if.then431.i.i
  %fmo_slice_grp457.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 36
  %381 = ptrtoint ptr %fmo_slice_grp457.i.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %fmo_slice_grp457.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %382)
  %cmp459.i.i = icmp ugt i8 %382, 4
  br i1 %cmp459.i.i, label %if.then461.i.i, label %sw.bb456.i.i.do.body492.i.i_crit_edge

sw.bb456.i.i.do.body492.i.i_crit_edge:            ; preds = %sw.bb456.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body492.i.i

if.then461.i.i:                                   ; preds = %sw.bb456.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %383 = ptrtoint ptr %fmo_slice_grp457.i.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 4, ptr %fmo_slice_grp457.i.i, align 1
  br label %do.body492.i.i

sw.bb464.i.i:                                     ; preds = %if.then431.i.i.sw.bb464.i.i_crit_edge, %if.then431.i.i.sw.bb464.i.i_crit_edge15
  %fmo_slice_grp465.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 36
  %384 = ptrtoint ptr %fmo_slice_grp465.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %fmo_slice_grp465.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %385)
  %cmp467.i.i = icmp ugt i8 %385, 2
  br i1 %cmp467.i.i, label %if.then469.i.i, label %sw.bb464.i.i.do.body472.i.i_crit_edge

sw.bb464.i.i.do.body472.i.i_crit_edge:            ; preds = %sw.bb464.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body472.i.i

if.then469.i.i:                                   ; preds = %sw.bb464.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %386 = ptrtoint ptr %fmo_slice_grp465.i.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 2, ptr %fmo_slice_grp465.i.i, align 1
  br label %do.body472.i.i

do.body472.i.i:                                   ; preds = %if.then469.i.i, %sw.bb464.i.i.do.body472.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !489
  tail call void @arm_heavy_mb() #8
  %fmo_chg_dir.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 37
  %387 = ptrtoint ptr %fmo_chg_dir.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %fmo_chg_dir.i.i, align 4
  %389 = and i8 %388, 1
  %and476.i.i = zext i8 %389 to i32
  %390 = shl nuw nsw i32 %and476.i.i, 24
  %e_h264_fmo_slice_grp_change_dir.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 226
  %391 = ptrtoint ptr %e_h264_fmo_slice_grp_change_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %e_h264_fmo_slice_grp_change_dir.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %392, i32 %390) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !490
  tail call void @arm_heavy_mb() #8
  %fmo_chg_rate.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 38
  %393 = ptrtoint ptr %fmo_chg_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %fmo_chg_rate.i.i, align 4
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #8
  %e_h264_fmo_slice_grp_change_rate_minus1.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 227
  %396 = ptrtoint ptr %e_h264_fmo_slice_grp_change_rate_minus1.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %e_h264_fmo_slice_grp_change_rate_minus1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 %395) #8, !srcloc !379
  br label %do.body492.i.i

do.end483.i.i:                                    ; preds = %if.then431.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv432.i.i = zext i8 %365 to i32
  %call487.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.185, i32 noundef 1176, i32 noundef %conv432.i.i) #11
  %398 = ptrtoint ptr %fmo_map_type.i.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 0, ptr %fmo_map_type.i.i, align 2
  %fmo_slice_grp491.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 36
  %399 = ptrtoint ptr %fmo_slice_grp491.i.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 1, ptr %fmo_slice_grp491.i.i, align 1
  br label %do.body492.i.i

do.body492.i.i:                                   ; preds = %do.end483.i.i, %do.body472.i.i, %if.then461.i.i, %sw.bb456.i.i.do.body492.i.i_crit_edge, %do.body446.i.i.do.body492.i.i_crit_edge, %if.end438.i.i.do.body492.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !491
  tail call void @arm_heavy_mb() #8
  %400 = ptrtoint ptr %fmo_map_type.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %fmo_map_type.i.i, align 2
  %conv496.i.i = zext i8 %401 to i32
  %402 = shl nuw i32 %conv496.i.i, 24
  %e_h264_fmo_slice_grp_map_type.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 224
  %403 = ptrtoint ptr %e_h264_fmo_slice_grp_map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %e_h264_fmo_slice_grp_map_type.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 %402) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !492
  tail call void @arm_heavy_mb() #8
  %fmo_slice_grp500.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 36
  %405 = ptrtoint ptr %fmo_slice_grp500.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %fmo_slice_grp500.i.i, align 1
  %conv501.i.i = zext i8 %406 to i32
  %sub502.i.i = add nsw i32 %conv501.i.i, -1
  %407 = tail call i32 @llvm.bswap.i32(i32 %sub502.i.i) #8
  %e_h264_fmo_num_slice_grp_minus1.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 225
  %408 = ptrtoint ptr %e_h264_fmo_num_slice_grp_minus1.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %e_h264_fmo_num_slice_grp_minus1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 %407) #8, !srcloc !379
  br label %do.body509.i.i

do.body504.i.i:                                   ; preds = %if.end429.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !493
  tail call void @arm_heavy_mb() #8
  %e_h264_fmo_num_slice_grp_minus1507.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 225
  %410 = ptrtoint ptr %e_h264_fmo_num_slice_grp_minus1507.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %e_h264_fmo_num_slice_grp_minus1507.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 0) #8, !srcloc !379
  br label %do.body509.i.i

do.body509.i.i:                                   ; preds = %do.body504.i.i, %do.body492.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %412 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %412)
  %cmp510.i.i = icmp sgt i32 %412, 4
  br i1 %cmp510.i.i, label %do.end515.i.i, label %do.body509.i.i.if.end31.i_crit_edge

do.body509.i.i.if.end31.i_crit_edge:              ; preds = %do.body509.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end515.i.i:                                    ; preds = %do.body509.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call517.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.185, i32 noundef 1190) #11
  br label %if.end31.i

if.then5.i:                                       ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit
  %mpeg4.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %413 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %413)
  %cmp.i2.i = icmp sgt i32 %413, 4
  br i1 %cmp.i2.i, label %do.end.i4.i, label %if.then5.i.do.end5.i35.i_crit_edge

if.then5.i.do.end5.i35.i_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i35.i

do.end.i4.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.194, i32 noundef 1203) #11
  br label %do.end5.i35.i

do.end5.i35.i:                                    ; preds = %do.end.i4.i, %if.then5.i.do.end5.i35.i_crit_edge
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #8
  %e_gop_config.i5.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 189
  %414 = ptrtoint ptr %e_gop_config.i5.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %e_gop_config.i5.i, align 4
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %415) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !494
  %417 = and i32 %416, -769
  %418 = tail call i32 @llvm.bswap.i32(i32 %417) #8
  %num_b_frame.i6.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 22
  %419 = ptrtoint ptr %num_b_frame.i6.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %num_b_frame.i6.i, align 4
  %421 = and i8 %420, 3
  %and10.i7.i = zext i8 %421 to i32
  %shl.i8.i = shl nuw nsw i32 %and10.i7.i, 16
  %or.i9.i = or i32 %shl.i8.i, %418
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !495
  tail call void @arm_heavy_mb() #8
  %422 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i) #8
  %423 = ptrtoint ptr %e_gop_config.i5.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %e_gop_config.i5.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %424, i32 %422) #8, !srcloc !379
  %level.i10.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 10
  %425 = ptrtoint ptr %level.i10.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %level.i10.i, align 4
  %and15.i11.i = shl i32 %426, 8
  %shl16.i12.i = and i32 %and15.i11.i, 65280
  %427 = ptrtoint ptr %mpeg4.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %mpeg4.i.i, align 4
  %and18.i13.i = and i32 %428, 63
  %or19.i14.i = or i32 %shl16.i12.i, %and18.i13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !496
  tail call void @arm_heavy_mb() #8
  %429 = tail call i32 @llvm.bswap.i32(i32 %or19.i14.i) #8
  %e_picture_profile.i15.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 156
  %430 = ptrtoint ptr %e_picture_profile.i15.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %e_picture_profile.i15.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %431, i32 %429) #8, !srcloc !379
  %e_rc_config.i16.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 160
  %432 = ptrtoint ptr %e_rc_config.i16.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %e_rc_config.i16.i, align 4
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !497
  %435 = and i32 %434, -65537
  %436 = tail call i32 @llvm.bswap.i32(i32 %435) #8
  %rc_mb.i17.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 14
  %437 = ptrtoint ptr %rc_mb.i17.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %rc_mb.i17.i, align 4
  %and29.i18.i = shl i32 %438, 8
  %shl30.i19.i = and i32 %and29.i18.i, 256
  %or31.i20.i = or i32 %shl30.i19.i, %436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !498
  tail call void @arm_heavy_mb() #8
  %439 = tail call i32 @llvm.bswap.i32(i32 %or31.i20.i) #8
  %440 = ptrtoint ptr %e_rc_config.i16.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %e_rc_config.i16.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 %439) #8, !srcloc !379
  %and36.i21.i = and i32 %or31.i20.i, -64
  %rc_frame_qp.i22.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 4
  %442 = ptrtoint ptr %rc_frame_qp.i22.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %rc_frame_qp.i22.i, align 4
  %444 = and i8 %443, 63
  %and38.i23.i = zext i8 %444 to i32
  %or39.i24.i = or i32 %and36.i21.i, %and38.i23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !499
  tail call void @arm_heavy_mb() #8
  %445 = tail call i32 @llvm.bswap.i32(i32 %or39.i24.i) #8
  %446 = ptrtoint ptr %e_rc_config.i16.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %e_rc_config.i16.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %447, i32 %445) #8, !srcloc !379
  %rc_max_qp.i25.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 6
  %448 = ptrtoint ptr %rc_max_qp.i25.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %rc_max_qp.i25.i, align 2
  %450 = and i8 %449, 63
  %and45.i26.i = zext i8 %450 to i32
  %shl46.i27.i = shl nuw nsw i32 %and45.i26.i, 8
  %rc_min_qp.i28.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 5
  %451 = ptrtoint ptr %rc_min_qp.i28.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %rc_min_qp.i28.i, align 1
  %453 = and i8 %452, 63
  %and49.i29.i = zext i8 %453 to i32
  %or50.i30.i = or i32 %shl46.i27.i, %and49.i29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !500
  tail call void @arm_heavy_mb() #8
  %454 = tail call i32 @llvm.bswap.i32(i32 %or50.i30.i) #8
  %e_rc_qp_bound.i31.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 161
  %455 = ptrtoint ptr %e_rc_qp_bound.i31.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %e_rc_qp_bound.i31.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %456, i32 %454) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !501
  tail call void @arm_heavy_mb() #8
  %e_fixed_picture_qp.i32.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 159
  %457 = ptrtoint ptr %e_fixed_picture_qp.i32.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %e_fixed_picture_qp.i32.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 0) #8, !srcloc !379
  %rc_frame.i33.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %459 = ptrtoint ptr %rc_frame.i33.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %rc_frame.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool.not.i34.i = icmp eq i32 %460, 0
  br i1 %tobool.not.i34.i, label %land.lhs.true.i37.i, label %do.end5.i35.i.land.lhs.true79.i52.i_crit_edge

do.end5.i35.i.land.lhs.true79.i52.i_crit_edge:    ; preds = %do.end5.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true79.i52.i

land.lhs.true.i37.i:                              ; preds = %do.end5.i35.i
  %461 = ptrtoint ptr %rc_mb.i17.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %rc_mb.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %tobool58.not.i36.i = icmp eq i32 %462, 0
  br i1 %tobool58.not.i36.i, label %if.end76.i49.i, label %land.lhs.true.i37.i.if.end94.i63.i_crit_edge

land.lhs.true.i37.i.if.end94.i63.i_crit_edge:     ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i63.i

if.end76.i49.i:                                   ; preds = %land.lhs.true.i37.i
  %rc_b_frame_qp.i38.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 8
  %463 = ptrtoint ptr %rc_b_frame_qp.i38.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %rc_b_frame_qp.i38.i, align 4
  %465 = and i8 %464, 63
  %and61.i39.i = zext i8 %465 to i32
  %shl62.i40.i = shl nuw nsw i32 %and61.i39.i, 16
  %rc_p_frame_qp.i41.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 7
  %466 = ptrtoint ptr %rc_p_frame_qp.i41.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %rc_p_frame_qp.i41.i, align 1
  %468 = and i8 %467, 63
  %and65.i42.i = zext i8 %468 to i32
  %shl66.i43.i = shl nuw nsw i32 %and65.i42.i, 8
  %or67.i44.i = or i32 %shl66.i43.i, %shl62.i40.i
  %469 = ptrtoint ptr %rc_frame_qp.i22.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %rc_frame_qp.i22.i, align 4
  %471 = and i8 %470, 63
  %and70.i45.i = zext i8 %471 to i32
  %or71.i46.i = or i32 %or67.i44.i, %and70.i45.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !502
  tail call void @arm_heavy_mb() #8
  %472 = tail call i32 @llvm.bswap.i32(i32 %or71.i46.i) #8
  %473 = ptrtoint ptr %e_fixed_picture_qp.i32.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %e_fixed_picture_qp.i32.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %474, i32 %472) #8, !srcloc !379
  %475 = ptrtoint ptr %rc_frame.i33.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %.pr.i47.i = load i32, ptr %rc_frame.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i47.i)
  %tobool78.not.i48.i = icmp eq i32 %.pr.i47.i, 0
  br i1 %tobool78.not.i48.i, label %if.end76.i49.i.if.end94.i63.i_crit_edge, label %if.end76.i49.i.land.lhs.true79.i52.i_crit_edge

if.end76.i49.i.land.lhs.true79.i52.i_crit_edge:   ; preds = %if.end76.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true79.i52.i

if.end76.i49.i.if.end94.i63.i_crit_edge:          ; preds = %if.end76.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i63.i

land.lhs.true79.i52.i:                            ; preds = %if.end76.i49.i.land.lhs.true79.i52.i_crit_edge, %do.end5.i35.i.land.lhs.true79.i52.i_crit_edge
  %rc_framerate_num.i50.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %476 = ptrtoint ptr %rc_framerate_num.i50.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %rc_framerate_num.i50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %477)
  %tobool80.not.i51.i = icmp eq i32 %477, 0
  br i1 %tobool80.not.i51.i, label %land.lhs.true79.i52.i.if.end94.i63.i_crit_edge, label %land.lhs.true81.i55.i

land.lhs.true79.i52.i.if.end94.i63.i_crit_edge:   ; preds = %land.lhs.true79.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i63.i

land.lhs.true81.i55.i:                            ; preds = %land.lhs.true79.i52.i
  %rc_framerate_denom.i53.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %478 = ptrtoint ptr %rc_framerate_denom.i53.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %rc_framerate_denom.i53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %479)
  %tobool82.not.i54.i = icmp eq i32 %479, 0
  br i1 %tobool82.not.i54.i, label %land.lhs.true81.i55.i.if.end94.i63.i_crit_edge, label %if.then83.i60.i

land.lhs.true81.i55.i.if.end94.i63.i_crit_edge:   ; preds = %land.lhs.true81.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i63.i

if.then83.i60.i:                                  ; preds = %land.lhs.true81.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl86.i56.i = shl i32 %477, 16
  %and89.i57.i = and i32 %479, 65535
  %or90.i58.i = or i32 %and89.i57.i, %shl86.i56.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !503
  tail call void @arm_heavy_mb() #8
  %480 = tail call i32 @llvm.bswap.i32(i32 %or90.i58.i) #8
  %e_rc_frame_rate.i59.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 194
  %481 = ptrtoint ptr %e_rc_frame_rate.i59.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %e_rc_frame_rate.i59.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %482, i32 %480) #8, !srcloc !379
  br label %if.end94.i63.i

if.end94.i63.i:                                   ; preds = %if.then83.i60.i, %land.lhs.true81.i55.i.if.end94.i63.i_crit_edge, %land.lhs.true79.i52.i.if.end94.i63.i_crit_edge, %if.end76.i49.i.if.end94.i63.i_crit_edge, %land.lhs.true.i37.i.if.end94.i63.i_crit_edge
  %frame_skip_mode.i61.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %483 = ptrtoint ptr %frame_skip_mode.i61.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %frame_skip_mode.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %484)
  %cmp95.i62.i = icmp eq i32 %484, 2
  br i1 %cmp95.i62.i, label %do.body98.i67.i, label %if.end94.i63.i.do.body111.i.i_crit_edge

if.end94.i63.i.do.body111.i.i_crit_edge:          ; preds = %if.end94.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111.i.i

do.body98.i67.i:                                  ; preds = %if.end94.i63.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !504
  tail call void @arm_heavy_mb() #8
  %vbv_size.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 17
  %485 = ptrtoint ptr %vbv_size.i.i to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %vbv_size.i.i, align 2
  %conv101.i64.i = zext i16 %486 to i32
  %487 = tail call i32 @llvm.bswap.i32(i32 %conv101.i64.i) #8
  %e_vbv_buffer_size.i65.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 157
  %488 = ptrtoint ptr %e_vbv_buffer_size.i65.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %e_vbv_buffer_size.i65.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %489, i32 %487) #8, !srcloc !379
  %490 = ptrtoint ptr %rc_frame.i33.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %rc_frame.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool104.not.i66.i = icmp eq i32 %491, 0
  br i1 %tobool104.not.i66.i, label %do.body98.i67.i.do.body111.i.i_crit_edge, label %do.body106.i70.i

do.body98.i67.i.do.body111.i.i_crit_edge:         ; preds = %do.body98.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111.i.i

do.body106.i70.i:                                 ; preds = %do.body98.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !505
  tail call void @arm_heavy_mb() #8
  %vbv_delay.i68.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 18
  %492 = ptrtoint ptr %vbv_delay.i68.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %vbv_delay.i68.i, align 4
  %494 = tail call i32 @llvm.bswap.i32(i32 %493) #8
  %e_vbv_init_delay.i69.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 158
  %495 = ptrtoint ptr %e_vbv_init_delay.i69.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %e_vbv_init_delay.i69.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %496, i32 %494) #8, !srcloc !379
  br label %do.body111.i.i

do.body111.i.i:                                   ; preds = %do.body106.i70.i, %do.body98.i67.i.do.body111.i.i_crit_edge, %if.end94.i63.i.do.body111.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !506
  tail call void @arm_heavy_mb() #8
  %e_mpeg4_options.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 215
  %497 = ptrtoint ptr %e_mpeg4_options.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %e_mpeg4_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !507
  tail call void @arm_heavy_mb() #8
  %e_mpeg4_hec_period.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 216
  %499 = ptrtoint ptr %e_mpeg4_hec_period.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %e_mpeg4_hec_period.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %500, i32 0) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %501 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %501)
  %cmp118.i.i = icmp sgt i32 %501, 4
  br i1 %cmp118.i.i, label %do.end123.i.i, label %do.body111.i.i.if.end31.i_crit_edge

do.body111.i.i.if.end31.i_crit_edge:              ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end123.i.i:                                    ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call125.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.194, i32 noundef 1272) #11
  br label %if.end31.i

if.then10.i:                                      ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %502 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %502)
  %cmp.i72.i = icmp sgt i32 %502, 4
  br i1 %cmp.i72.i, label %do.end.i74.i, label %if.then10.i.do.end5.i86.i_crit_edge

if.then10.i.do.end5.i86.i_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i86.i

do.end.i74.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.197, i32 noundef 1285) #11
  br label %do.end5.i86.i

do.end5.i86.i:                                    ; preds = %do.end.i74.i, %if.then10.i.do.end5.i86.i_crit_edge
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !508
  tail call void @arm_heavy_mb() #8
  %e_picture_profile.i75.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 156
  %503 = ptrtoint ptr %e_picture_profile.i75.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %e_picture_profile.i75.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %504, i32 268435456) #8, !srcloc !379
  %e_rc_config.i76.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 160
  %505 = ptrtoint ptr %e_rc_config.i76.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %e_rc_config.i76.i, align 4
  %507 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %506) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !509
  %508 = and i32 %507, -65537
  %509 = tail call i32 @llvm.bswap.i32(i32 %508) #8
  %rc_mb.i77.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 14
  %510 = ptrtoint ptr %rc_mb.i77.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %rc_mb.i77.i, align 4
  %and13.i.i = shl i32 %511, 8
  %shl.i78.i = and i32 %and13.i.i, 256
  %or14.i.i = or i32 %shl.i78.i, %509
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !510
  tail call void @arm_heavy_mb() #8
  %512 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #8
  %513 = ptrtoint ptr %e_rc_config.i76.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %e_rc_config.i76.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %514, i32 %512) #8, !srcloc !379
  %and19.i.i = and i32 %or14.i.i, -64
  %rc_frame_qp.i79.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 4
  %515 = ptrtoint ptr %rc_frame_qp.i79.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %rc_frame_qp.i79.i, align 4
  %517 = and i8 %516, 63
  %and20.i.i = zext i8 %517 to i32
  %or21.i.i = or i32 %and19.i.i, %and20.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !511
  tail call void @arm_heavy_mb() #8
  %518 = tail call i32 @llvm.bswap.i32(i32 %or21.i.i) #8
  %519 = ptrtoint ptr %e_rc_config.i76.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %e_rc_config.i76.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %520, i32 %518) #8, !srcloc !379
  %rc_max_qp.i80.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 6
  %521 = ptrtoint ptr %rc_max_qp.i80.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %rc_max_qp.i80.i, align 2
  %523 = and i8 %522, 63
  %and27.i.i = zext i8 %523 to i32
  %shl28.i.i = shl nuw nsw i32 %and27.i.i, 8
  %rc_min_qp.i81.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 5
  %524 = ptrtoint ptr %rc_min_qp.i81.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %rc_min_qp.i81.i, align 1
  %526 = and i8 %525, 63
  %and31.i.i = zext i8 %526 to i32
  %or32.i.i = or i32 %shl28.i.i, %and31.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !512
  tail call void @arm_heavy_mb() #8
  %527 = tail call i32 @llvm.bswap.i32(i32 %or32.i.i) #8
  %e_rc_qp_bound.i82.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 161
  %528 = ptrtoint ptr %e_rc_qp_bound.i82.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %e_rc_qp_bound.i82.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %529, i32 %527) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !513
  tail call void @arm_heavy_mb() #8
  %e_fixed_picture_qp.i83.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 159
  %530 = ptrtoint ptr %e_fixed_picture_qp.i83.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %e_fixed_picture_qp.i83.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %531, i32 0) #8, !srcloc !379
  %rc_frame.i84.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %532 = ptrtoint ptr %rc_frame.i84.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %rc_frame.i84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %tobool.not.i85.i = icmp eq i32 %533, 0
  br i1 %tobool.not.i85.i, label %land.lhs.true.i87.i, label %do.end5.i86.i.land.lhs.true61.i.i_crit_edge

do.end5.i86.i.land.lhs.true61.i.i_crit_edge:      ; preds = %do.end5.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true61.i.i

land.lhs.true.i87.i:                              ; preds = %do.end5.i86.i
  %534 = ptrtoint ptr %rc_mb.i77.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %rc_mb.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %535)
  %tobool40.not.i.i = icmp eq i32 %535, 0
  br i1 %tobool40.not.i.i, label %if.end58.i.i, label %land.lhs.true.i87.i.if.end76.i95.i_crit_edge

land.lhs.true.i87.i.if.end76.i95.i_crit_edge:     ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i95.i

if.end58.i.i:                                     ; preds = %land.lhs.true.i87.i
  %rc_b_frame_qp.i88.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 8
  %536 = ptrtoint ptr %rc_b_frame_qp.i88.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %rc_b_frame_qp.i88.i, align 4
  %538 = and i8 %537, 63
  %and43.i.i = zext i8 %538 to i32
  %shl44.i.i = shl nuw nsw i32 %and43.i.i, 16
  %rc_p_frame_qp.i89.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 7
  %539 = ptrtoint ptr %rc_p_frame_qp.i89.i to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %rc_p_frame_qp.i89.i, align 1
  %541 = and i8 %540, 63
  %and47.i.i = zext i8 %541 to i32
  %shl48.i.i = shl nuw nsw i32 %and47.i.i, 8
  %or49.i.i = or i32 %shl48.i.i, %shl44.i.i
  %542 = ptrtoint ptr %rc_frame_qp.i79.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %rc_frame_qp.i79.i, align 4
  %544 = and i8 %543, 63
  %and52.i.i = zext i8 %544 to i32
  %or53.i.i = or i32 %or49.i.i, %and52.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !514
  tail call void @arm_heavy_mb() #8
  %545 = tail call i32 @llvm.bswap.i32(i32 %or53.i.i) #8
  %546 = ptrtoint ptr %e_fixed_picture_qp.i83.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %e_fixed_picture_qp.i83.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %547, i32 %545) #8, !srcloc !379
  %548 = ptrtoint ptr %rc_frame.i84.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %.pr.i90.i = load i32, ptr %rc_frame.i84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i90.i)
  %tobool60.not.i.i = icmp eq i32 %.pr.i90.i, 0
  br i1 %tobool60.not.i.i, label %if.end58.i.i.if.end76.i95.i_crit_edge, label %if.end58.i.i.land.lhs.true61.i.i_crit_edge

if.end58.i.i.land.lhs.true61.i.i_crit_edge:       ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true61.i.i

if.end58.i.i.if.end76.i95.i_crit_edge:            ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i95.i

land.lhs.true61.i.i:                              ; preds = %if.end58.i.i.land.lhs.true61.i.i_crit_edge, %do.end5.i86.i.land.lhs.true61.i.i_crit_edge
  %rc_framerate_num.i91.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %549 = ptrtoint ptr %rc_framerate_num.i91.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %rc_framerate_num.i91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %550)
  %tobool62.not.i.i = icmp eq i32 %550, 0
  br i1 %tobool62.not.i.i, label %land.lhs.true61.i.i.if.end76.i95.i_crit_edge, label %land.lhs.true63.i.i

land.lhs.true61.i.i.if.end76.i95.i_crit_edge:     ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i95.i

land.lhs.true63.i.i:                              ; preds = %land.lhs.true61.i.i
  %rc_framerate_denom.i92.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %551 = ptrtoint ptr %rc_framerate_denom.i92.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %rc_framerate_denom.i92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %552)
  %tobool64.not.i.i = icmp eq i32 %552, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true63.i.i.if.end76.i95.i_crit_edge, label %if.then65.i.i

land.lhs.true63.i.i.if.end76.i95.i_crit_edge:     ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i95.i

if.then65.i.i:                                    ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl68.i.i = shl i32 %550, 16
  %and71.i.i = and i32 %552, 65535
  %or72.i.i = or i32 %and71.i.i, %shl68.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !515
  tail call void @arm_heavy_mb() #8
  %553 = tail call i32 @llvm.bswap.i32(i32 %or72.i.i) #8
  %e_rc_frame_rate.i93.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 194
  %554 = ptrtoint ptr %e_rc_frame_rate.i93.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %e_rc_frame_rate.i93.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %555, i32 %553) #8, !srcloc !379
  br label %if.end76.i95.i

if.end76.i95.i:                                   ; preds = %if.then65.i.i, %land.lhs.true63.i.i.if.end76.i95.i_crit_edge, %land.lhs.true61.i.i.if.end76.i95.i_crit_edge, %if.end58.i.i.if.end76.i95.i_crit_edge, %land.lhs.true.i87.i.if.end76.i95.i_crit_edge
  %frame_skip_mode.i94.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %556 = ptrtoint ptr %frame_skip_mode.i94.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %frame_skip_mode.i94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %557)
  %cmp77.i.i = icmp eq i32 %557, 2
  br i1 %cmp77.i.i, label %do.body80.i.i, label %if.end76.i95.i.do.body93.i.i_crit_edge

if.end76.i95.i.do.body93.i.i_crit_edge:           ; preds = %if.end76.i95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i.i

do.body80.i.i:                                    ; preds = %if.end76.i95.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !516
  tail call void @arm_heavy_mb() #8
  %vbv_size.i96.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 17
  %558 = ptrtoint ptr %vbv_size.i96.i to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %vbv_size.i96.i, align 2
  %conv83.i.i = zext i16 %559 to i32
  %560 = tail call i32 @llvm.bswap.i32(i32 %conv83.i.i) #8
  %e_vbv_buffer_size.i97.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 157
  %561 = ptrtoint ptr %e_vbv_buffer_size.i97.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %e_vbv_buffer_size.i97.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %562, i32 %560) #8, !srcloc !379
  %563 = ptrtoint ptr %rc_frame.i84.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %rc_frame.i84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %564)
  %tobool86.not.i.i = icmp eq i32 %564, 0
  br i1 %tobool86.not.i.i, label %do.body80.i.i.do.body93.i.i_crit_edge, label %do.body88.i.i

do.body80.i.i.do.body93.i.i_crit_edge:            ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i.i

do.body88.i.i:                                    ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !517
  tail call void @arm_heavy_mb() #8
  %vbv_delay.i98.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 18
  %565 = ptrtoint ptr %vbv_delay.i98.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %vbv_delay.i98.i, align 4
  %567 = tail call i32 @llvm.bswap.i32(i32 %566) #8
  %e_vbv_init_delay.i99.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 158
  %568 = ptrtoint ptr %e_vbv_init_delay.i99.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %e_vbv_init_delay.i99.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %569, i32 %567) #8, !srcloc !379
  br label %do.body93.i.i

do.body93.i.i:                                    ; preds = %do.body88.i.i, %do.body80.i.i.do.body93.i.i_crit_edge, %if.end76.i95.i.do.body93.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %570 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %570)
  %cmp94.i.i = icmp sgt i32 %570, 4
  br i1 %cmp94.i.i, label %do.end99.i.i, label %do.body93.i.i.if.end31.i_crit_edge

do.body93.i.i.if.end31.i_crit_edge:               ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end99.i.i:                                     ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call101.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.197, i32 noundef 1342) #11
  br label %if.end31.i

if.then15.i:                                      ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit
  %vp8.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %571 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %571)
  %cmp.i101.i = icmp sgt i32 %571, 4
  br i1 %cmp.i101.i, label %do.end.i103.i, label %if.then15.i.do.end5.i114.i_crit_edge

if.then15.i.do.end5.i114.i_crit_edge:             ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i114.i

do.end.i103.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.200, i32 noundef 1356) #11
  br label %do.end5.i114.i

do.end5.i114.i:                                   ; preds = %do.end.i103.i, %if.then15.i.do.end5.i114.i_crit_edge
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #8
  %e_gop_config.i104.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 189
  %572 = ptrtoint ptr %e_gop_config.i104.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %e_gop_config.i104.i, align 4
  %574 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %573) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !518
  %575 = and i32 %574, -769
  %576 = tail call i32 @llvm.bswap.i32(i32 %575) #8
  %num_b_frame.i105.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 22
  %577 = ptrtoint ptr %num_b_frame.i105.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %num_b_frame.i105.i, align 4
  %579 = and i8 %578, 3
  %and10.i106.i = zext i8 %579 to i32
  %shl.i107.i = shl nuw nsw i32 %and10.i106.i, 16
  %or.i108.i = or i32 %shl.i107.i, %576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !519
  tail call void @arm_heavy_mb() #8
  %580 = tail call i32 @llvm.bswap.i32(i32 %or.i108.i) #8
  %581 = ptrtoint ptr %e_gop_config.i104.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %e_gop_config.i104.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %582, i32 %580) #8, !srcloc !379
  %profile.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 13
  %583 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %profile.i.i, align 4
  %585 = and i8 %584, 3
  %and16.i.i = zext i8 %585 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !520
  tail call void @arm_heavy_mb() #8
  %586 = shl nuw nsw i32 %and16.i.i, 24
  %e_picture_profile.i109.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 156
  %587 = ptrtoint ptr %e_picture_profile.i109.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %e_picture_profile.i109.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %588, i32 %586) #8, !srcloc !379
  %e_rc_config.i110.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 160
  %589 = ptrtoint ptr %e_rc_config.i110.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %e_rc_config.i110.i, align 4
  %591 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %590) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !521
  %592 = and i32 %591, -65537
  %593 = tail call i32 @llvm.bswap.i32(i32 %592) #8
  %rc_mb.i111.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 14
  %594 = ptrtoint ptr %rc_mb.i111.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %rc_mb.i111.i, align 4
  %and26.i.i = shl i32 %595, 8
  %shl27.i.i = and i32 %and26.i.i, 256
  %or28.i.i = or i32 %shl27.i.i, %593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !522
  tail call void @arm_heavy_mb() #8
  %596 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i) #8
  %597 = ptrtoint ptr %e_rc_config.i110.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %e_rc_config.i110.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %598, i32 %596) #8, !srcloc !379
  %rc_frame.i112.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %599 = ptrtoint ptr %rc_frame.i112.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %rc_frame.i112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %600)
  %tobool.not.i113.i = icmp eq i32 %600, 0
  br i1 %tobool.not.i113.i, label %do.end5.i114.i.if.end47.i.i_crit_edge, label %land.lhs.true.i116.i

do.end5.i114.i.if.end47.i.i_crit_edge:            ; preds = %do.end5.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true.i116.i:                             ; preds = %do.end5.i114.i
  %rc_framerate_num.i115.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %601 = ptrtoint ptr %rc_framerate_num.i115.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %rc_framerate_num.i115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %602)
  %tobool33.not.i.i = icmp eq i32 %602, 0
  br i1 %tobool33.not.i.i, label %land.lhs.true.i116.i.if.end47.i.i_crit_edge, label %land.lhs.true34.i.i

land.lhs.true.i116.i.if.end47.i.i_crit_edge:      ; preds = %land.lhs.true.i116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true34.i.i:                              ; preds = %land.lhs.true.i116.i
  %rc_framerate_denom.i117.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %603 = ptrtoint ptr %rc_framerate_denom.i117.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %rc_framerate_denom.i117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %604)
  %tobool35.not.i.i = icmp eq i32 %604, 0
  br i1 %tobool35.not.i.i, label %land.lhs.true34.i.i.if.end47.i.i_crit_edge, label %if.then36.i.i

land.lhs.true34.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

if.then36.i.i:                                    ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl39.i.i = shl i32 %602, 16
  %and42.i.i = and i32 %604, 65535
  %or43.i.i = or i32 %and42.i.i, %shl39.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !523
  tail call void @arm_heavy_mb() #8
  %605 = tail call i32 @llvm.bswap.i32(i32 %or43.i.i) #8
  %e_rc_frame_rate.i118.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 194
  %606 = ptrtoint ptr %e_rc_frame_rate.i118.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %e_rc_frame_rate.i118.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %607, i32 %605) #8, !srcloc !379
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then36.i.i, %land.lhs.true34.i.i.if.end47.i.i_crit_edge, %land.lhs.true.i116.i.if.end47.i.i_crit_edge, %do.end5.i114.i.if.end47.i.i_crit_edge
  %reg.0.i119.i = phi i32 [ %or43.i.i, %if.then36.i.i ], [ %or28.i.i, %land.lhs.true34.i.i.if.end47.i.i_crit_edge ], [ %or28.i.i, %land.lhs.true.i116.i.if.end47.i.i_crit_edge ], [ %or28.i.i, %do.end5.i114.i.if.end47.i.i_crit_edge ]
  %and48.i.i = and i32 %reg.0.i119.i, -128
  %rc_frame_qp.i120.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 11
  %608 = ptrtoint ptr %rc_frame_qp.i120.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %rc_frame_qp.i120.i, align 2
  %610 = and i8 %609, 127
  %and50.i.i = zext i8 %610 to i32
  %or51.i.i = or i32 %and48.i.i, %and50.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !524
  tail call void @arm_heavy_mb() #8
  %611 = tail call i32 @llvm.bswap.i32(i32 %or51.i.i) #8
  %612 = ptrtoint ptr %e_rc_config.i110.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %e_rc_config.i110.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %613, i32 %611) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !525
  tail call void @arm_heavy_mb() #8
  %e_fixed_picture_qp.i121.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 159
  %614 = ptrtoint ptr %e_fixed_picture_qp.i121.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %e_fixed_picture_qp.i121.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %615, i32 0) #8, !srcloc !379
  %616 = ptrtoint ptr %rc_frame.i112.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %rc_frame.i112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %617)
  %tobool60.not.i122.i = icmp eq i32 %617, 0
  br i1 %tobool60.not.i122.i, label %land.lhs.true61.i123.i, label %if.end47.i.i.if.end77.i.i_crit_edge

if.end47.i.i.if.end77.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i.i

land.lhs.true61.i123.i:                           ; preds = %if.end47.i.i
  %618 = ptrtoint ptr %rc_mb.i111.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %rc_mb.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %619)
  %tobool63.not.i.i = icmp eq i32 %619, 0
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %land.lhs.true61.i123.i.if.end77.i.i_crit_edge

land.lhs.true61.i123.i.if.end77.i.i_crit_edge:    ; preds = %land.lhs.true61.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i.i

if.then64.i.i:                                    ; preds = %land.lhs.true61.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  %rc_p_frame_qp.i124.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 12
  %620 = ptrtoint ptr %rc_p_frame_qp.i124.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %rc_p_frame_qp.i124.i, align 1
  %622 = and i8 %621, 127
  %and66.i.i = zext i8 %622 to i32
  %shl67.i.i = shl nuw nsw i32 %and66.i.i, 8
  %623 = ptrtoint ptr %rc_frame_qp.i120.i to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %rc_frame_qp.i120.i, align 2
  %625 = and i8 %624, 127
  %and71.i125.i = zext i8 %625 to i32
  %or72.i126.i = or i32 %shl67.i.i, %and71.i125.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !526
  tail call void @arm_heavy_mb() #8
  %626 = tail call i32 @llvm.bswap.i32(i32 %or72.i126.i) #8
  %627 = ptrtoint ptr %e_fixed_picture_qp.i121.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %e_fixed_picture_qp.i121.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %628, i32 %626) #8, !srcloc !379
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.then64.i.i, %land.lhs.true61.i123.i.if.end77.i.i_crit_edge, %if.end47.i.i.if.end77.i.i_crit_edge
  %rc_max_qp.i127.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 10
  %629 = ptrtoint ptr %rc_max_qp.i127.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %rc_max_qp.i127.i, align 1
  %631 = and i8 %630, 127
  %and79.i.i = zext i8 %631 to i32
  %shl80.i.i = shl nuw nsw i32 %and79.i.i, 8
  %rc_min_qp.i128.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 9
  %632 = ptrtoint ptr %rc_min_qp.i128.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %rc_min_qp.i128.i, align 4
  %634 = and i8 %633, 127
  %and82.i.i = zext i8 %634 to i32
  %or83.i.i = or i32 %shl80.i.i, %and82.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !527
  tail call void @arm_heavy_mb() #8
  %635 = tail call i32 @llvm.bswap.i32(i32 %or83.i.i) #8
  %e_rc_qp_bound.i129.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 161
  %636 = ptrtoint ptr %e_rc_qp_bound.i129.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %e_rc_qp_bound.i129.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %637, i32 %635) #8, !srcloc !379
  %frame_skip_mode.i130.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %638 = ptrtoint ptr %frame_skip_mode.i130.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %frame_skip_mode.i130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %639)
  %cmp87.i.i = icmp eq i32 %639, 2
  br i1 %cmp87.i.i, label %do.body90.i.i, label %if.end77.i.i.if.end102.i.i_crit_edge

if.end77.i.i.if.end102.i.i_crit_edge:             ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i

do.body90.i.i:                                    ; preds = %if.end77.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !528
  tail call void @arm_heavy_mb() #8
  %vbv_size.i131.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 17
  %640 = ptrtoint ptr %vbv_size.i131.i to i32
  call void @__asan_load2_noabort(i32 %640)
  %641 = load i16, ptr %vbv_size.i131.i, align 2
  %conv93.i.i = zext i16 %641 to i32
  %642 = tail call i32 @llvm.bswap.i32(i32 %conv93.i.i) #8
  %e_vbv_buffer_size.i132.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 157
  %643 = ptrtoint ptr %e_vbv_buffer_size.i132.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %e_vbv_buffer_size.i132.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %644, i32 %642) #8, !srcloc !379
  %645 = ptrtoint ptr %rc_frame.i112.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %rc_frame.i112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %646)
  %tobool96.not.i.i = icmp eq i32 %646, 0
  br i1 %tobool96.not.i.i, label %do.body90.i.i.if.end102.i.i_crit_edge, label %do.body98.i135.i

do.body90.i.i.if.end102.i.i_crit_edge:            ; preds = %do.body90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i

do.body98.i135.i:                                 ; preds = %do.body90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !529
  tail call void @arm_heavy_mb() #8
  %vbv_delay.i133.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 18
  %647 = ptrtoint ptr %vbv_delay.i133.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %vbv_delay.i133.i, align 4
  %649 = tail call i32 @llvm.bswap.i32(i32 %648) #8
  %e_vbv_init_delay.i134.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 158
  %650 = ptrtoint ptr %e_vbv_init_delay.i134.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %e_vbv_init_delay.i134.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %651, i32 %649) #8, !srcloc !379
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %do.body98.i135.i, %do.body90.i.i.if.end102.i.i_crit_edge, %if.end77.i.i.if.end102.i.i_crit_edge
  %652 = ptrtoint ptr %vp8.i.i to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %vp8.i.i, align 4
  %654 = and i8 %653, 1
  %and104.i.i = zext i8 %654 to i32
  %shl105.i.i = shl nuw nsw i32 %and104.i.i, 10
  %num_partitions.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 1
  %655 = ptrtoint ptr %num_partitions.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %num_partitions.i.i, align 4
  %switch.tableidx = add i32 %656, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %657 = icmp ult i32 %switch.tableidx, 3
  br i1 %657, label %switch.lookup, label %if.end102.i.i.sw.epilog.i.i_crit_edge

if.end102.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.s5p_mfc_run_init_enc, i32 0, i32 %switch.tableidx
  %658 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %658)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %if.end102.i.i.sw.epilog.i.i_crit_edge
  %val.0.i.i = phi i32 [ 0, %if.end102.i.i.sw.epilog.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %or112.i.i = or i32 %val.0.i.i, %shl105.i.i
  %num_ref.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 2, i32 2
  %659 = ptrtoint ptr %num_ref.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %num_ref.i.i, align 4
  %and113.i.i = and i32 %660, 2
  %or114.i.i = or i32 %and113.i.i, %or112.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !530
  tail call void @arm_heavy_mb() #8
  %661 = tail call i32 @llvm.bswap.i32(i32 %or114.i.i) #8
  %e_vp8_options.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 240
  %662 = ptrtoint ptr %e_vp8_options.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %e_vp8_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %663, i32 %661) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %664 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %664)
  %cmp119.i.i = icmp sgt i32 %664, 4
  br i1 %cmp119.i.i, label %do.end124.i.i, label %sw.epilog.i.i.if.end31.i_crit_edge

sw.epilog.i.i.if.end31.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end124.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call126.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.200, i32 noundef 1435) #11
  br label %if.end31.i

if.then20.i:                                      ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit
  %hevc.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %665 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %665)
  %cmp.i137.i = icmp sgt i32 %665, 4
  br i1 %cmp.i137.i, label %do.end.i139.i, label %if.then20.i.do.end5.i144.i_crit_edge

if.then20.i.do.end5.i144.i_crit_edge:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i144.i

do.end.i139.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.203, i32 noundef 1449) #11
  br label %do.end5.i144.i

do.end5.i144.i:                                   ; preds = %do.end.i139.i, %if.then20.i.do.end5.i144.i_crit_edge
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #8
  %e_gop_config.i140.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 189
  %666 = ptrtoint ptr %e_gop_config.i140.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %e_gop_config.i140.i, align 4
  %668 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %667) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !531
  %669 = and i32 %668, -769
  %670 = tail call i32 @llvm.bswap.i32(i32 %669) #8
  %num_b_frame.i141.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 22
  %671 = ptrtoint ptr %num_b_frame.i141.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %num_b_frame.i141.i, align 4
  %conv.i.i = zext i8 %672 to i32
  %shl.i142.i = shl nuw nsw i32 %conv.i.i, 16
  %or.i143.i = or i32 %shl.i142.i, %670
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !532
  tail call void @arm_heavy_mb() #8
  %673 = tail call i32 @llvm.bswap.i32(i32 %or.i143.i) #8
  %674 = ptrtoint ptr %e_gop_config.i140.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %e_gop_config.i140.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %675, i32 %673) #8, !srcloc !379
  %img_width.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %676 = ptrtoint ptr %img_width.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %img_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %677)
  %cmp14.i.i = icmp eq i32 %677, 3840
  br i1 %cmp14.i.i, label %land.lhs.true.i146.i, label %do.end5.i144.i.if.end19.i.i_crit_edge

do.end5.i144.i.if.end19.i.i_crit_edge:            ; preds = %do.end5.i144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

land.lhs.true.i146.i:                             ; preds = %do.end5.i144.i
  %img_height.i145.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %678 = ptrtoint ptr %img_height.i145.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %img_height.i145.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %679)
  %cmp16.i.i = icmp eq i32 %679, 2160
  br i1 %cmp16.i.i, label %if.then18.i.i, label %land.lhs.true.i146.i.if.end19.i.i_crit_edge

land.lhs.true.i146.i.if.end19.i.i_crit_edge:      ; preds = %land.lhs.true.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  %level.i147.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 1
  %680 = ptrtoint ptr %level.i147.i to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 51, ptr %level.i147.i, align 4
  %tier.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 3
  %681 = ptrtoint ptr %tier.i.i to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 0, ptr %tier.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then18.i.i, %land.lhs.true.i146.i.if.end19.i.i_crit_edge, %do.end5.i144.i.if.end19.i.i_crit_edge
  %682 = ptrtoint ptr %hevc.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %hevc.i.i, align 4
  %and20.i148.i = and i32 %683, 3
  %level23.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 1
  %684 = ptrtoint ptr %level23.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %level23.i.i, align 4
  %shl24.i.i = shl i32 %685, 8
  %or25.i.i = or i32 %shl24.i.i, %and20.i148.i
  %tier26.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 3
  %686 = ptrtoint ptr %tier26.i.i to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %tier26.i.i, align 4
  %conv27.i.i = zext i8 %687 to i32
  %shl28.i149.i = shl nuw nsw i32 %conv27.i.i, 16
  %or29.i.i = or i32 %shl28.i149.i, %or25.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !533
  tail call void @arm_heavy_mb() #8
  %688 = tail call i32 @llvm.bswap.i32(i32 %or29.i.i) #8
  %e_picture_profile.i150.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 156
  %689 = ptrtoint ptr %e_picture_profile.i150.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %e_picture_profile.i150.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %690, i32 %688) #8, !srcloc !379
  %loopfilter.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 20
  %691 = ptrtoint ptr %loopfilter.i.i to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %loopfilter.i.i, align 4
  %693 = zext i8 %692 to i64
  call void @__sanitizer_cov_trace_switch(i64 %693, ptr @__sancov_gen_cov_switch_values.227)
  switch i8 %692, label %if.end19.i.i.sw.epilog.i156.i_crit_edge [
    i8 0, label %sw.bb.i151.i
    i8 1, label %sw.bb34.i.i
    i8 2, label %sw.bb36.i.i
  ]

if.end19.i.i.sw.epilog.i156.i_crit_edge:          ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i156.i

sw.bb.i151.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %loopfilter_disable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 21
  %694 = ptrtoint ptr %loopfilter_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 1, ptr %loopfilter_disable.i.i, align 1
  br label %sw.epilog.i156.i

sw.bb34.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %loopfilter_disable35.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 21
  %695 = ptrtoint ptr %loopfilter_disable35.i.i to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 0, ptr %loopfilter_disable35.i.i, align 1
  %loopfilter_across.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 22
  %696 = ptrtoint ptr %loopfilter_across.i.i to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 1, ptr %loopfilter_across.i.i, align 2
  br label %sw.epilog.i156.i

sw.bb36.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %loopfilter_disable37.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 21
  %697 = ptrtoint ptr %loopfilter_disable37.i.i to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 0, ptr %loopfilter_disable37.i.i, align 1
  %loopfilter_across38.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 22
  %698 = ptrtoint ptr %loopfilter_across38.i.i to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 0, ptr %loopfilter_across38.i.i, align 2
  br label %sw.epilog.i156.i

sw.epilog.i156.i:                                 ; preds = %sw.bb36.i.i, %sw.bb34.i.i, %sw.bb.i151.i, %if.end19.i.i.sw.epilog.i156.i_crit_edge
  %max_partition_depth.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 14
  %699 = ptrtoint ptr %max_partition_depth.i.i to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %max_partition_depth.i.i, align 1
  %701 = and i8 %700, 1
  %and40.i.i = zext i8 %701 to i32
  %num_refs_for_p.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 15
  %702 = ptrtoint ptr %num_refs_for_p.i.i to i32
  call void @__asan_load1_noabort(i32 %702)
  %703 = load i8, ptr %num_refs_for_p.i.i, align 2
  %conv42.i.i = zext i8 %703 to i32
  %sub.i.i = shl nuw nsw i32 %conv42.i.i, 2
  %shl43.i.i = add nsw i32 %sub.i.i, -4
  %or44.i.i = or i32 %shl43.i.i, %and40.i.i
  %refreshtype.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 16
  %704 = ptrtoint ptr %refreshtype.i.i to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %refreshtype.i.i, align 1
  %706 = shl i8 %705, 3
  %707 = and i8 %706, 24
  %shl47.i.i = zext i8 %707 to i32
  %or48.i.i = or i32 %or44.i.i, %shl47.i.i
  %const_intra_period_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 26
  %708 = ptrtoint ptr %const_intra_period_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %const_intra_period_enable.i.i, align 2
  %710 = shl i8 %709, 5
  %711 = and i8 %710, 32
  %shl51.i.i = zext i8 %711 to i32
  %or52.i.i = or i32 %or48.i.i, %shl51.i.i
  %lossless_cu_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 27
  %712 = ptrtoint ptr %lossless_cu_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %lossless_cu_enable.i.i, align 1
  %714 = shl i8 %713, 6
  %715 = and i8 %714, 64
  %shl55.i.i = zext i8 %715 to i32
  %or56.i.i = or i32 %or52.i.i, %shl55.i.i
  %wavefront_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 28
  %716 = ptrtoint ptr %wavefront_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %wavefront_enable.i.i, align 4
  %718 = shl i8 %717, 7
  %shl59.i.i = zext i8 %718 to i32
  %or60.i.i = or i32 %or56.i.i, %shl59.i.i
  %loopfilter_disable61.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 21
  %719 = ptrtoint ptr %loopfilter_disable61.i.i to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %loopfilter_disable61.i.i, align 1
  %721 = and i8 %720, 1
  %and63.i.i = zext i8 %721 to i32
  %shl64.i.i = shl nuw nsw i32 %and63.i.i, 8
  %or65.i.i = or i32 %or60.i.i, %shl64.i.i
  %loopfilter_across66.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 22
  %722 = ptrtoint ptr %loopfilter_across66.i.i to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %loopfilter_across66.i.i, align 2
  %724 = and i8 %723, 1
  %and68.i.i = zext i8 %724 to i32
  %shl69.i.i = shl nuw nsw i32 %and68.i.i, 9
  %or70.i.i = or i32 %or65.i.i, %shl69.i.i
  %enable_ltr.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 29
  %725 = ptrtoint ptr %enable_ltr.i.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %enable_ltr.i.i, align 1
  %727 = and i8 %726, 1
  %and72.i.i = zext i8 %727 to i32
  %shl73.i.i = shl nuw nsw i32 %and72.i.i, 10
  %or74.i.i = or i32 %or70.i.i, %shl73.i.i
  %hier_qp_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 30
  %728 = ptrtoint ptr %hier_qp_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %hier_qp_enable.i.i, align 2
  %730 = and i8 %729, 1
  %and76.i.i = zext i8 %730 to i32
  %shl77.i.i = shl nuw nsw i32 %and76.i.i, 11
  %or78.i.i = or i32 %or74.i.i, %shl77.i.i
  %general_pb_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 36
  %731 = ptrtoint ptr %general_pb_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %general_pb_enable.i.i, align 1
  %733 = and i8 %732, 1
  %and80.i.i = zext i8 %733 to i32
  %shl81.i.i = shl nuw nsw i32 %and80.i.i, 13
  %or82.i.i = or i32 %or78.i.i, %shl81.i.i
  %temporal_id_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 37
  %734 = ptrtoint ptr %temporal_id_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %temporal_id_enable.i.i, align 2
  %736 = and i8 %735, 1
  %and84.i.i = zext i8 %736 to i32
  %shl85.i.i = shl nuw nsw i32 %and84.i.i, 14
  %or86.i.i = or i32 %or82.i.i, %shl85.i.i
  %strong_intra_smooth.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 38
  %737 = ptrtoint ptr %strong_intra_smooth.i.i to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %strong_intra_smooth.i.i, align 1
  %739 = and i8 %738, 1
  %and88.i.i = zext i8 %739 to i32
  %shl89.i.i = shl nuw nsw i32 %and88.i.i, 15
  %or90.i152.i = or i32 %or86.i.i, %shl89.i.i
  %intra_pu_split_disable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 39
  %740 = ptrtoint ptr %intra_pu_split_disable.i.i to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %intra_pu_split_disable.i.i, align 4
  %742 = and i8 %741, 1
  %and92.i.i = zext i8 %742 to i32
  %shl93.i.i = shl nuw nsw i32 %and92.i.i, 16
  %or94.i.i = or i32 %or90.i152.i, %shl93.i.i
  %tmv_prediction_disable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 40
  %743 = ptrtoint ptr %tmv_prediction_disable.i.i to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %tmv_prediction_disable.i.i, align 1
  %745 = and i8 %744, 1
  %and96.i.i = zext i8 %745 to i32
  %shl97.i.i = shl nuw nsw i32 %and96.i.i, 17
  %or98.i.i = or i32 %or94.i.i, %shl97.i.i
  %max_num_merge_mv.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 41
  %746 = ptrtoint ptr %max_num_merge_mv.i.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %max_num_merge_mv.i.i, align 2
  %748 = and i8 %747, 7
  %and100.i.i = zext i8 %748 to i32
  %shl101.i.i = shl nuw nsw i32 %and100.i.i, 18
  %or102.i.i = or i32 %or98.i.i, %shl101.i.i
  %encoding_nostartcode_enable.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 43
  %749 = ptrtoint ptr %encoding_nostartcode_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %encoding_nostartcode_enable.i.i, align 4
  %751 = and i8 %750, 1
  %and104.i153.i = zext i8 %751 to i32
  %shl105.i154.i = shl nuw nsw i32 %and104.i153.i, 23
  %or106.i.i = or i32 %or102.i.i, %shl105.i154.i
  %prepend_sps_pps_to_idr.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 45
  %752 = ptrtoint ptr %prepend_sps_pps_to_idr.i.i to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %prepend_sps_pps_to_idr.i.i, align 2
  %conv107.i.i = zext i8 %753 to i32
  %shl108.i.i = shl i32 %conv107.i.i, 26
  %or109.i.i = or i32 %or106.i.i, %shl108.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !534
  tail call void @arm_heavy_mb() #8
  %754 = tail call i32 @llvm.bswap.i32(i32 %or109.i.i) #8
  %e_hevc_options.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 251
  %755 = ptrtoint ptr %e_hevc_options.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %e_hevc_options.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %756, i32 %754) #8, !srcloc !379
  %757 = ptrtoint ptr %refreshtype.i.i to i32
  call void @__asan_load1_noabort(i32 %757)
  %758 = load i8, ptr %refreshtype.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %758)
  %tobool.not.i155.i = icmp eq i8 %758, 0
  br i1 %tobool.not.i155.i, label %sw.epilog.i156.i.if.end121.i.i_crit_edge, label %if.then114.i.i

sw.epilog.i156.i.if.end121.i.i_crit_edge:         ; preds = %sw.epilog.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i.i

if.then114.i.i:                                   ; preds = %sw.epilog.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  %refreshperiod.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 17
  %759 = ptrtoint ptr %refreshperiod.i.i to i32
  call void @__asan_load2_noabort(i32 %759)
  %760 = load i16, ptr %refreshperiod.i.i, align 4
  %conv115.i.i = zext i16 %760 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !535
  tail call void @arm_heavy_mb() #8
  %761 = tail call i32 @llvm.bswap.i32(i32 %conv115.i.i) #8
  %e_hevc_refresh_period.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 252
  %762 = ptrtoint ptr %e_hevc_refresh_period.i.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %e_hevc_refresh_period.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %763, i32 %761) #8, !srcloc !379
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then114.i.i, %sw.epilog.i156.i.if.end121.i.i_crit_edge
  %764 = ptrtoint ptr %loopfilter_disable61.i.i to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %loopfilter_disable61.i.i, align 1
  %766 = and i8 %765, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %766)
  %tobool125.not.i.i = icmp eq i8 %766, 0
  br i1 %tobool125.not.i.i, label %if.then126.i.i, label %if.end121.i.i.if.end135.i.i_crit_edge

if.end121.i.i.if.end135.i.i_crit_edge:            ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135.i.i

if.then126.i.i:                                   ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %lf_beta_offset_div2.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 18
  %767 = ptrtoint ptr %lf_beta_offset_div2.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %lf_beta_offset_div2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @arm_heavy_mb() #8
  %769 = tail call i32 @llvm.bswap.i32(i32 %768) #8
  %e_hevc_lf_beta_offset_div2.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 253
  %770 = ptrtoint ptr %e_hevc_lf_beta_offset_div2.i.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %e_hevc_lf_beta_offset_div2.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %771, i32 %769) #8, !srcloc !379
  %lf_tc_offset_div2.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 19
  %772 = ptrtoint ptr %lf_tc_offset_div2.i.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %lf_tc_offset_div2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !537
  tail call void @arm_heavy_mb() #8
  %774 = tail call i32 @llvm.bswap.i32(i32 %773) #8
  %e_hevc_lf_tc_offset_div2.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 254
  %775 = ptrtoint ptr %e_hevc_lf_tc_offset_div2.i.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %e_hevc_lf_tc_offset_div2.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %776, i32 %774) #8, !srcloc !379
  br label %if.end135.i.i

if.end135.i.i:                                    ; preds = %if.then126.i.i, %if.end121.i.i.if.end135.i.i_crit_edge
  %num_hier_layer.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 32
  %777 = ptrtoint ptr %num_hier_layer.i.i to i32
  call void @__asan_load1_noabort(i32 %777)
  %778 = load i8, ptr %num_hier_layer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %778)
  %tobool136.not.i.i = icmp eq i8 %778, 0
  br i1 %tobool136.not.i.i, label %if.end135.i.i.if.end174.i.i_crit_edge, label %if.then137.i.i

if.end135.i.i.if.end174.i.i_crit_edge:            ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i.i

if.then137.i.i:                                   ; preds = %if.end135.i.i
  %hier_qp_type.i157.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 31
  %779 = ptrtoint ptr %hier_qp_type.i157.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %hier_qp_type.i157.i, align 4
  %and138.i.i = shl i32 %780, 3
  %shl139.i.i = and i32 %and138.i.i, 8
  %781 = and i8 %778, 7
  %and143.i.i = zext i8 %781 to i32
  %or144.i.i = or i32 %shl139.i.i, %and143.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %782 = shl nuw nsw i32 %or144.i.i, 24
  %e_num_t_layer.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 248
  %783 = ptrtoint ptr %e_num_t_layer.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %e_num_t_layer.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %784, i32 %782) #8, !srcloc !379
  %785 = ptrtoint ptr %hier_qp_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %785)
  %786 = load i8, ptr %hier_qp_enable.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %786)
  %tobool149.not.i.i = icmp eq i8 %786, 0
  br i1 %tobool149.not.i.i, label %if.then137.i.i.if.end157.i.i_crit_edge, label %for.cond.preheader.i.i

if.then137.i.i.if.end157.i.i_crit_edge:           ; preds = %if.then137.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157.i.i

for.cond.preheader.i.i:                           ; preds = %if.then137.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %e_hier_qp_layer0.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.i158.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 0
  %787 = ptrtoint ptr %arrayidx.i158.i to i32
  call void @__asan_load1_noabort(i32 %787)
  %788 = load i8, ptr %arrayidx.i158.i, align 1
  %conv156.i.i = zext i8 %788 to i32
  %789 = shl nuw i32 %conv156.i.i, 24
  %790 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %791, i32 %789) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.1.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 1
  %792 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %792)
  %793 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv156.1.i.i = zext i8 %793 to i32
  %794 = shl nuw i32 %conv156.1.i.i, 24
  %795 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %796, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i.i, i32 %794) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.2.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 2
  %797 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv156.2.i.i = zext i8 %798 to i32
  %799 = shl nuw i32 %conv156.2.i.i, 24
  %800 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  %add.ptr.2.i.i = getelementptr i8, ptr %801, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i.i, i32 %799) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.3.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 3
  %802 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %802)
  %803 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv156.3.i.i = zext i8 %803 to i32
  %804 = shl nuw i32 %conv156.3.i.i, 24
  %805 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  %add.ptr.3.i.i = getelementptr i8, ptr %806, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i.i, i32 %804) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.4.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 4
  %807 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %807)
  %808 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv156.4.i.i = zext i8 %808 to i32
  %809 = shl nuw i32 %conv156.4.i.i, 24
  %810 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  %add.ptr.4.i.i = getelementptr i8, ptr %811, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i.i, i32 %809) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.5.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 5
  %812 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv156.5.i.i = zext i8 %813 to i32
  %814 = shl nuw i32 %conv156.5.i.i, 24
  %815 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  %add.ptr.5.i.i = getelementptr i8, ptr %816, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i.i, i32 %814) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %arrayidx.6.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 33, i32 6
  %817 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %817)
  %818 = load i8, ptr %arrayidx.6.i.i, align 1
  %conv156.6.i.i = zext i8 %818 to i32
  %819 = shl nuw i32 %conv156.6.i.i, 24
  %820 = ptrtoint ptr %e_hier_qp_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %e_hier_qp_layer0.i.i, align 4
  %add.ptr.6.i.i = getelementptr i8, ptr %821, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i.i, i32 %819) #8, !srcloc !379
  br label %if.end157.i.i

if.end157.i.i:                                    ; preds = %for.cond.preheader.i.i, %if.then137.i.i.if.end157.i.i_crit_edge
  %rc_frame.i159.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %822 = ptrtoint ptr %rc_frame.i159.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %rc_frame.i159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %823)
  %tobool158.not.i.i = icmp eq i32 %823, 0
  br i1 %tobool158.not.i.i, label %if.end157.i.i.if.end174.i.i_crit_edge, label %for.cond160.preheader.i.i

if.end157.i.i.if.end174.i.i_crit_edge:            ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i.i

for.cond160.preheader.i.i:                        ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %e_hier_bit_rate_layer0.i.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 0
  %824 = ptrtoint ptr %arrayidx167.i.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %arrayidx167.i.i, align 4
  %826 = tail call i32 @llvm.bswap.i32(i32 %825) #8
  %827 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %828, i32 %826) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.1.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 1
  %829 = ptrtoint ptr %arrayidx167.1.i.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %arrayidx167.1.i.i, align 4
  %831 = tail call i32 @llvm.bswap.i32(i32 %830) #8
  %832 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  %add.ptr169.1.i.i = getelementptr i8, ptr %833, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.1.i.i, i32 %831) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.2.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 2
  %834 = ptrtoint ptr %arrayidx167.2.i.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %arrayidx167.2.i.i, align 4
  %836 = tail call i32 @llvm.bswap.i32(i32 %835) #8
  %837 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  %add.ptr169.2.i.i = getelementptr i8, ptr %838, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.2.i.i, i32 %836) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.3.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 3
  %839 = ptrtoint ptr %arrayidx167.3.i.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %arrayidx167.3.i.i, align 4
  %841 = tail call i32 @llvm.bswap.i32(i32 %840) #8
  %842 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  %add.ptr169.3.i.i = getelementptr i8, ptr %843, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.3.i.i, i32 %841) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.4.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 4
  %844 = ptrtoint ptr %arrayidx167.4.i.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load i32, ptr %arrayidx167.4.i.i, align 4
  %846 = tail call i32 @llvm.bswap.i32(i32 %845) #8
  %847 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  %add.ptr169.4.i.i = getelementptr i8, ptr %848, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.4.i.i, i32 %846) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.5.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 5
  %849 = ptrtoint ptr %arrayidx167.5.i.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %arrayidx167.5.i.i, align 4
  %851 = tail call i32 @llvm.bswap.i32(i32 %850) #8
  %852 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  %add.ptr169.5.i.i = getelementptr i8, ptr %853, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.5.i.i, i32 %851) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %arrayidx167.6.i.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 34, i32 6
  %854 = ptrtoint ptr %arrayidx167.6.i.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load i32, ptr %arrayidx167.6.i.i, align 4
  %856 = tail call i32 @llvm.bswap.i32(i32 %855) #8
  %857 = ptrtoint ptr %e_hier_bit_rate_layer0.i.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %e_hier_bit_rate_layer0.i.i, align 4
  %add.ptr169.6.i.i = getelementptr i8, ptr %858, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.6.i.i, i32 %856) #8, !srcloc !379
  br label %if.end174.i.i

if.end174.i.i:                                    ; preds = %for.cond160.preheader.i.i, %if.end157.i.i.if.end174.i.i_crit_edge, %if.end135.i.i.if.end174.i.i_crit_edge
  %e_rc_config.i160.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 160
  %859 = ptrtoint ptr %e_rc_config.i160.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %e_rc_config.i160.i, align 4
  %861 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %860) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !541
  %862 = and i32 %861, -65537
  %863 = tail call i32 @llvm.bswap.i32(i32 %862) #8
  %rc_mb.i161.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 14
  %864 = ptrtoint ptr %rc_mb.i161.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load i32, ptr %rc_mb.i161.i, align 4
  %shl181.i.i = shl i32 %865, 8
  %or182.i.i = or i32 %shl181.i.i, %863
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  %866 = tail call i32 @llvm.bswap.i32(i32 %or182.i.i) #8
  %867 = ptrtoint ptr %e_rc_config.i160.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %e_rc_config.i160.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %868, i32 %866) #8, !srcloc !379
  %and187.i.i = and i32 %or182.i.i, -256
  %rc_frame_qp.i162.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 11
  %869 = ptrtoint ptr %rc_frame_qp.i162.i to i32
  call void @__asan_load1_noabort(i32 %869)
  %870 = load i8, ptr %rc_frame_qp.i162.i, align 2
  %conv188.i.i = zext i8 %870 to i32
  %or189.i.i = or i32 %and187.i.i, %conv188.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  tail call void @arm_heavy_mb() #8
  %871 = tail call i32 @llvm.bswap.i32(i32 %or189.i.i) #8
  %872 = ptrtoint ptr %e_rc_config.i160.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %e_rc_config.i160.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %873, i32 %871) #8, !srcloc !379
  %rc_frame194.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %874 = ptrtoint ptr %rc_frame194.i.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %rc_frame194.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %875)
  %tobool195.not.i.i = icmp eq i32 %875, 0
  br i1 %tobool195.not.i.i, label %if.end174.i.i.if.end205.i.i_crit_edge, label %if.then196.i.i

if.end174.i.i.if.end205.i.i_crit_edge:            ; preds = %if.end174.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.i.i

if.then196.i.i:                                   ; preds = %if.end174.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rc_framerate.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 4
  %876 = ptrtoint ptr %rc_framerate.i.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load i32, ptr %rc_framerate.i.i, align 4
  %shl198.i.i = shl i32 %877, 16
  %or201.i.i = or i32 %shl198.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !544
  tail call void @arm_heavy_mb() #8
  %878 = tail call i32 @llvm.bswap.i32(i32 %or201.i.i) #8
  %e_rc_frame_rate.i163.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 194
  %879 = ptrtoint ptr %e_rc_frame_rate.i163.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %e_rc_frame_rate.i163.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %880, i32 %878) #8, !srcloc !379
  br label %if.end205.i.i

if.end205.i.i:                                    ; preds = %if.then196.i.i, %if.end174.i.i.if.end205.i.i_crit_edge
  %rc_max_qp.i164.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 6
  %881 = ptrtoint ptr %rc_max_qp.i164.i to i32
  call void @__asan_load1_noabort(i32 %881)
  %882 = load i8, ptr %rc_max_qp.i164.i, align 1
  %conv207.i.i = zext i8 %882 to i32
  %shl208.i.i = shl nuw nsw i32 %conv207.i.i, 8
  %rc_min_qp.i165.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 5
  %883 = ptrtoint ptr %rc_min_qp.i165.i to i32
  call void @__asan_load1_noabort(i32 %883)
  %884 = load i8, ptr %rc_min_qp.i165.i, align 4
  %conv211.i.i = zext i8 %884 to i32
  %or212.i.i = or i32 %shl208.i.i, %conv211.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !545
  tail call void @arm_heavy_mb() #8
  %885 = tail call i32 @llvm.bswap.i32(i32 %or212.i.i) #8
  %e_rc_qp_bound.i166.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 161
  %886 = ptrtoint ptr %e_rc_qp_bound.i166.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %e_rc_qp_bound.i166.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %887, i32 %885) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !546
  tail call void @arm_heavy_mb() #8
  %e_fixed_picture_qp.i167.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 159
  %888 = ptrtoint ptr %e_fixed_picture_qp.i167.i to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %e_fixed_picture_qp.i167.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %889, i32 0) #8, !srcloc !379
  %890 = ptrtoint ptr %rc_frame194.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %rc_frame194.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %891)
  %tobool220.not.i.i = icmp eq i32 %891, 0
  br i1 %tobool220.not.i.i, label %land.lhs.true221.i.i, label %if.end205.i.i.do.body242.i.i_crit_edge

if.end205.i.i.do.body242.i.i_crit_edge:           ; preds = %if.end205.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body242.i.i

land.lhs.true221.i.i:                             ; preds = %if.end205.i.i
  %892 = ptrtoint ptr %rc_mb.i161.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load i32, ptr %rc_mb.i161.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %893)
  %tobool223.not.i168.i = icmp eq i32 %893, 0
  br i1 %tobool223.not.i168.i, label %if.then224.i171.i, label %land.lhs.true221.i.i.do.body242.i.i_crit_edge

land.lhs.true221.i.i.do.body242.i.i_crit_edge:    ; preds = %land.lhs.true221.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body242.i.i

if.then224.i171.i:                                ; preds = %land.lhs.true221.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rc_b_frame_qp.i169.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 13
  %894 = ptrtoint ptr %rc_b_frame_qp.i169.i to i32
  call void @__asan_load1_noabort(i32 %894)
  %895 = load i8, ptr %rc_b_frame_qp.i169.i, align 4
  %conv226.i.i = zext i8 %895 to i32
  %shl227.i.i = shl nuw nsw i32 %conv226.i.i, 16
  %rc_p_frame_qp.i170.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 3, i32 12
  %896 = ptrtoint ptr %rc_p_frame_qp.i170.i to i32
  call void @__asan_load1_noabort(i32 %896)
  %897 = load i8, ptr %rc_p_frame_qp.i170.i, align 1
  %conv230.i.i = zext i8 %897 to i32
  %shl231.i.i = shl nuw nsw i32 %conv230.i.i, 8
  %or232.i.i = or i32 %shl231.i.i, %shl227.i.i
  %898 = ptrtoint ptr %rc_frame_qp.i162.i to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %rc_frame_qp.i162.i, align 2
  %conv235.i.i = zext i8 %899 to i32
  %or236.i.i = or i32 %or232.i.i, %conv235.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !547
  tail call void @arm_heavy_mb() #8
  %900 = tail call i32 @llvm.bswap.i32(i32 %or236.i.i) #8
  %901 = ptrtoint ptr %e_fixed_picture_qp.i167.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %e_fixed_picture_qp.i167.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %902, i32 %900) #8, !srcloc !379
  br label %do.body242.i.i

do.body242.i.i:                                   ; preds = %if.then224.i171.i, %land.lhs.true221.i.i.do.body242.i.i_crit_edge, %if.end205.i.i.do.body242.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %903 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %903)
  %cmp243.i.i = icmp sgt i32 %903, 4
  br i1 %cmp243.i.i, label %do.end248.i.i, label %do.body242.i.i.if.end31.i_crit_edge

do.body242.i.i.if.end31.i_crit_edge:              ; preds = %do.body242.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end248.i.i:                                    ; preds = %do.body242.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call250.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.203, i32 noundef 1591) #11
  br label %if.end31.i

do.end.i:                                         ; preds = %s5p_mfc_set_enc_stream_buffer_v6.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef 1719, i32 noundef %33) #11
  br label %s5p_mfc_init_encode_v6.exit

if.end31.i:                                       ; preds = %do.end248.i.i, %do.body242.i.i.if.end31.i_crit_edge, %do.end124.i.i, %sw.epilog.i.i.if.end31.i_crit_edge, %do.end99.i.i, %do.body93.i.i.if.end31.i_crit_edge, %do.end123.i.i, %do.body111.i.i.if.end31.i_crit_edge, %do.end515.i.i, %do.body509.i.i.if.end31.i_crit_edge
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %29, i32 0, i32 10
  %904 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %variant.i, align 4
  %906 = ptrtoint ptr %905 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %905, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %907)
  %cmp32.i = icmp ugt i32 %907, 111
  br i1 %cmp32.i, label %do.body34.i, label %if.end31.i.do.body42.i_crit_edge

if.end31.i.do.body42.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42.i

do.body34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !548
  tail call void @arm_heavy_mb() #8
  %img_width.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %908 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %img_width.i, align 4
  %910 = tail call i32 @llvm.bswap.i32(i32 %909) #8
  %e_source_first_plane_stride.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 181
  %911 = ptrtoint ptr %e_source_first_plane_stride.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %e_source_first_plane_stride.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %912, i32 %910) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !549
  tail call void @arm_heavy_mb() #8
  %913 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load i32, ptr %img_width.i, align 4
  %915 = tail call i32 @llvm.bswap.i32(i32 %914) #8
  %e_source_second_plane_stride.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 182
  %916 = ptrtoint ptr %e_source_second_plane_stride.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %e_source_second_plane_stride.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %917, i32 %915) #8, !srcloc !379
  br label %do.body42.i

do.body42.i:                                      ; preds = %do.body34.i, %if.end31.i.do.body42.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !550
  tail call void @arm_heavy_mb() #8
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %918 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %inst_no.i, align 4
  %920 = tail call i32 @llvm.bswap.i32(i32 %919) #8
  %instance_id.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %31, i32 0, i32 9
  %921 = ptrtoint ptr %instance_id.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %instance_id.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %922, i32 %920) #8, !srcloc !379
  %mfc_cmds.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %29, i32 0, i32 37
  %923 = ptrtoint ptr %mfc_cmds.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %mfc_cmds.i, align 4
  %tobool.not.i = icmp eq ptr %924, null
  br i1 %tobool.not.i, label %do.body42.i.s5p_mfc_init_encode_v6.exit_crit_edge, label %land.lhs.true.i

do.body42.i.s5p_mfc_init_encode_v6.exit_crit_edge: ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_init_encode_v6.exit

land.lhs.true.i:                                  ; preds = %do.body42.i
  %925 = ptrtoint ptr %924 to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %924, align 4
  %tobool46.not.i = icmp eq ptr %926, null
  br i1 %tobool46.not.i, label %land.lhs.true.i.s5p_mfc_init_encode_v6.exit_crit_edge, label %cond.true47.i

land.lhs.true.i.s5p_mfc_init_encode_v6.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5p_mfc_init_encode_v6.exit

cond.true47.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i = tail call i32 %926(ptr noundef %29, i32 noundef 3, ptr noundef null) #8
  br label %s5p_mfc_init_encode_v6.exit

s5p_mfc_init_encode_v6.exit:                      ; preds = %cond.true47.i, %land.lhs.true.i.s5p_mfc_init_encode_v6.exit_crit_edge, %do.body42.i.s5p_mfc_init_encode_v6.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_init_enc_buffers(ptr nocapture noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %curr_ctx, align 4
  %5 = load ptr, ptr %ctx, align 4
  %mfc_regs2.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %mfc_regs2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfc_regs2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %8 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp sgt i32 %8, 4
  br i1 %cmp.i, label %do.end.i, label %entry.do.end5.i_crit_edge

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.207, i32 noundef 664) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i = load i32, ptr @mfc_debug_level, align 4
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %9 = phi i32 [ %.pr.i, %do.end.i ], [ %8, %entry.do.end5.i_crit_edge ]
  %dma.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i, align 4
  %size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8.i = icmp sgt i32 %9, 1
  br i1 %cmp8.i, label %do.end12.i, label %do.end5.i.do.end17.i_crit_edge

do.end5.i.do.end17.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

do.end12.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = inttoptr i32 %11 to ptr
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.207, i32 noundef 669, ptr noundef %14, i32 noundef %13) #11
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end12.i, %do.end5.i.do.end17.i_crit_edge
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %18)
  %cmp18.i = icmp ugt i32 %18, 159
  %pb_count.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %19 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20259.i = icmp sgt i32 %20, 0
  br i1 %cmp18.i, label %for.cond.preheader.i, label %for.cond55.preheader.i

for.cond55.preheader.i:                           ; preds = %do.end17.i
  br i1 %cmp20259.i, label %do.body59.lr.ph.i, label %for.cond55.preheader.i.do.body93.i_crit_edge

for.cond55.preheader.i.do.body93.i_crit_edge:     ; preds = %for.cond55.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

do.body59.lr.ph.i:                                ; preds = %for.cond55.preheader.i
  %e_luma_dpb62.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 170
  %luma_dpb_size65.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  %e_chroma_dpb70.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 171
  %chroma_dpb_size73.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  %e_me_buffer78.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 172
  %me_buffer_size81.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  br label %do.body59.i

for.cond.preheader.i:                             ; preds = %do.end17.i
  br i1 %cmp20259.i, label %do.body21.lr.ph.i, label %for.cond.preheader.i.do.body93.i_crit_edge

for.cond.preheader.i.do.body93.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

do.body21.lr.ph.i:                                ; preds = %for.cond.preheader.i
  %e_luma_dpb.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 170
  %luma_dpb_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 54
  br label %do.body21.i

for.cond25.preheader.i:                           ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp27265.i = icmp sgt i32 %27, 0
  br i1 %cmp27265.i, label %do.body29.lr.ph.i, label %for.cond25.preheader.i.do.body93.i_crit_edge

for.cond25.preheader.i.do.body93.i_crit_edge:     ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

do.body29.lr.ph.i:                                ; preds = %for.cond25.preheader.i
  %e_chroma_dpb.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 171
  %chroma_dpb_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 55
  br label %do.body29.i

do.body21.i:                                      ; preds = %do.body21.i.do.body21.i_crit_edge, %do.body21.lr.ph.i
  %buf_addr1.0262.i = phi i32 [ %11, %do.body21.lr.ph.i ], [ %add.i, %do.body21.i.do.body21.i_crit_edge ]
  %i.0261.i = phi i32 [ 0, %do.body21.lr.ph.i ], [ %inc.i, %do.body21.i.do.body21.i_crit_edge ]
  %buf_size1.0260.i = phi i32 [ %13, %do.body21.lr.ph.i ], [ %sub.i, %do.body21.i.do.body21.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !551
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %buf_addr1.0262.i) #8
  %22 = ptrtoint ptr %e_luma_dpb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %e_luma_dpb.i, align 4
  %mul.i = shl i32 %i.0261.i, 2
  %add.ptr.i = getelementptr i8, ptr %23, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #8, !srcloc !379
  %24 = ptrtoint ptr %luma_dpb_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %luma_dpb_size.i, align 4
  %add.i = add i32 %25, %buf_addr1.0262.i
  %sub.i = sub i32 %buf_size1.0260.i, %25
  %inc.i = add nuw nsw i32 %i.0261.i, 1
  %26 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pb_count.i, align 4
  %cmp20.i = icmp slt i32 %inc.i, %27
  br i1 %cmp20.i, label %do.body21.i.do.body21.i_crit_edge, label %for.cond25.preheader.i

do.body21.i.do.body21.i_crit_edge:                ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

for.cond40.preheader.i:                           ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp42271.i = icmp sgt i32 %34, 0
  br i1 %cmp42271.i, label %do.body44.lr.ph.i, label %for.cond40.preheader.i.do.body93.i_crit_edge

for.cond40.preheader.i.do.body93.i_crit_edge:     ; preds = %for.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

do.body44.lr.ph.i:                                ; preds = %for.cond40.preheader.i
  %e_me_buffer.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 172
  %me_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 56
  br label %do.body44.i

do.body29.i:                                      ; preds = %do.body29.i.do.body29.i_crit_edge, %do.body29.lr.ph.i
  %buf_addr1.1268.i = phi i32 [ %add.i, %do.body29.lr.ph.i ], [ %add34.i, %do.body29.i.do.body29.i_crit_edge ]
  %i.1267.i = phi i32 [ 0, %do.body29.lr.ph.i ], [ %inc38.i, %do.body29.i.do.body29.i_crit_edge ]
  %buf_size1.1266.i = phi i32 [ %sub.i, %do.body29.lr.ph.i ], [ %sub36.i, %do.body29.i.do.body29.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !552
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %buf_addr1.1268.i) #8
  %29 = ptrtoint ptr %e_chroma_dpb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %e_chroma_dpb.i, align 4
  %mul32.i = shl i32 %i.1267.i, 2
  %add.ptr33.i = getelementptr i8, ptr %30, i32 %mul32.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %28) #8, !srcloc !379
  %31 = ptrtoint ptr %chroma_dpb_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chroma_dpb_size.i, align 4
  %add34.i = add i32 %32, %buf_addr1.1268.i
  %sub36.i = sub i32 %buf_size1.1266.i, %32
  %inc38.i = add nuw nsw i32 %i.1267.i, 1
  %33 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pb_count.i, align 4
  %cmp27.i = icmp slt i32 %inc38.i, %34
  br i1 %cmp27.i, label %do.body29.i.do.body29.i_crit_edge, label %for.cond40.preheader.i

do.body29.i.do.body29.i_crit_edge:                ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29.i

do.body44.i:                                      ; preds = %do.body44.i.do.body44.i_crit_edge, %do.body44.lr.ph.i
  %buf_addr1.2274.i = phi i32 [ %add34.i, %do.body44.lr.ph.i ], [ %add49.i, %do.body44.i.do.body44.i_crit_edge ]
  %i.2273.i = phi i32 [ 0, %do.body44.lr.ph.i ], [ %inc53.i, %do.body44.i.do.body44.i_crit_edge ]
  %buf_size1.2272.i = phi i32 [ %sub36.i, %do.body44.lr.ph.i ], [ %sub51.i, %do.body44.i.do.body44.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !553
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %buf_addr1.2274.i) #8
  %36 = ptrtoint ptr %e_me_buffer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %e_me_buffer.i, align 4
  %mul47.i = shl i32 %i.2273.i, 2
  %add.ptr48.i = getelementptr i8, ptr %37, i32 %mul47.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %35) #8, !srcloc !379
  %38 = ptrtoint ptr %me_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %me_buffer_size.i, align 4
  %add49.i = add i32 %39, %buf_addr1.2274.i
  %sub51.i = sub i32 %buf_size1.2272.i, %39
  %inc53.i = add nuw nsw i32 %i.2273.i, 1
  %40 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pb_count.i, align 4
  %cmp42.i = icmp slt i32 %inc53.i, %41
  br i1 %cmp42.i, label %do.body44.i.do.body44.i_crit_edge, label %do.body44.i.do.body93.i_crit_edge

do.body44.i.do.body93.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

do.body44.i.do.body44.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44.i

do.body59.i:                                      ; preds = %do.body59.i.do.body59.i_crit_edge, %do.body59.lr.ph.i
  %buf_addr1.3257.i = phi i32 [ %11, %do.body59.lr.ph.i ], [ %add82.i, %do.body59.i.do.body59.i_crit_edge ]
  %i.3256.i = phi i32 [ 0, %do.body59.lr.ph.i ], [ %inc90.i, %do.body59.i.do.body59.i_crit_edge ]
  %buf_size1.3255.i = phi i32 [ %13, %do.body59.lr.ph.i ], [ %sub88.i, %do.body59.i.do.body59.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !554
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %buf_addr1.3257.i) #8
  %43 = ptrtoint ptr %e_luma_dpb62.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %e_luma_dpb62.i, align 4
  %mul63.i = shl i32 %i.3256.i, 2
  %add.ptr64.i = getelementptr i8, ptr %44, i32 %mul63.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %42) #8, !srcloc !379
  %45 = ptrtoint ptr %luma_dpb_size65.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %luma_dpb_size65.i, align 4
  %add66.i = add i32 %46, %buf_addr1.3257.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !555
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %add66.i) #8
  %48 = ptrtoint ptr %e_chroma_dpb70.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %e_chroma_dpb70.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %49, i32 %mul63.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %47) #8, !srcloc !379
  %50 = ptrtoint ptr %chroma_dpb_size73.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chroma_dpb_size73.i, align 4
  %add74.i = add i32 %51, %add66.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %add74.i) #8
  %53 = ptrtoint ptr %e_me_buffer78.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %e_me_buffer78.i, align 4
  %add.ptr80.i = getelementptr i8, ptr %54, i32 %mul63.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %52) #8, !srcloc !379
  %55 = ptrtoint ptr %me_buffer_size81.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %me_buffer_size81.i, align 4
  %add82.i = add i32 %56, %add74.i
  %57 = ptrtoint ptr %luma_dpb_size65.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %luma_dpb_size65.i, align 4
  %59 = ptrtoint ptr %chroma_dpb_size73.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chroma_dpb_size73.i, align 4
  %61 = add i32 %56, %58
  %62 = add i32 %61, %60
  %sub88.i = sub i32 %buf_size1.3255.i, %62
  %inc90.i = add nuw nsw i32 %i.3256.i, 1
  %63 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pb_count.i, align 4
  %cmp57.i = icmp slt i32 %inc90.i, %64
  br i1 %cmp57.i, label %do.body59.i.do.body59.i_crit_edge, label %do.body59.i.do.body93.i_crit_edge

do.body59.i.do.body93.i_crit_edge:                ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93.i

do.body59.i.do.body59.i_crit_edge:                ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i

do.body93.i:                                      ; preds = %do.body59.i.do.body93.i_crit_edge, %do.body44.i.do.body93.i_crit_edge, %for.cond40.preheader.i.do.body93.i_crit_edge, %for.cond25.preheader.i.do.body93.i_crit_edge, %for.cond.preheader.i.do.body93.i_crit_edge, %for.cond55.preheader.i.do.body93.i_crit_edge
  %buf_size1.4.i = phi i32 [ %sub36.i, %for.cond40.preheader.i.do.body93.i_crit_edge ], [ %13, %for.cond55.preheader.i.do.body93.i_crit_edge ], [ %13, %for.cond.preheader.i.do.body93.i_crit_edge ], [ %sub.i, %for.cond25.preheader.i.do.body93.i_crit_edge ], [ %sub51.i, %do.body44.i.do.body93.i_crit_edge ], [ %sub88.i, %do.body59.i.do.body93.i_crit_edge ]
  %buf_addr1.4.i = phi i32 [ %add34.i, %for.cond40.preheader.i.do.body93.i_crit_edge ], [ %11, %for.cond55.preheader.i.do.body93.i_crit_edge ], [ %11, %for.cond.preheader.i.do.body93.i_crit_edge ], [ %add.i, %for.cond25.preheader.i.do.body93.i_crit_edge ], [ %add49.i, %do.body44.i.do.body93.i_crit_edge ], [ %add82.i, %do.body59.i.do.body93.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !557
  tail call void @arm_heavy_mb() #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %buf_addr1.4.i) #8
  %e_scratch_buffer_addr.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 173
  %66 = ptrtoint ptr %e_scratch_buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %e_scratch_buffer_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !558
  tail call void @arm_heavy_mb() #8
  %scratch_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %68 = ptrtoint ptr %scratch_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scratch_buf_size.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %e_scratch_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 174
  %71 = ptrtoint ptr %e_scratch_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %e_scratch_buffer_size.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #8, !srcloc !379
  %73 = ptrtoint ptr %scratch_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scratch_buf_size.i, align 4
  %add100.i = add i32 %74, %buf_addr1.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  tail call void @arm_heavy_mb() #8
  %75 = tail call i32 @llvm.bswap.i32(i32 %add100.i) #8
  %e_tmv_buffer0.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 175
  %76 = ptrtoint ptr %e_tmv_buffer0.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %e_tmv_buffer0.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !379
  %tmv_buffer_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 57
  %78 = ptrtoint ptr %tmv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmv_buffer_size.i, align 4
  %shr.i = lshr i32 %79, 1
  %add106.i = add i32 %shr.i, %add100.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !560
  tail call void @arm_heavy_mb() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %add106.i) #8
  %e_tmv_buffer1.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 176
  %81 = ptrtoint ptr %e_tmv_buffer1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %e_tmv_buffer1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #8, !srcloc !379
  %83 = ptrtoint ptr %tmv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tmv_buffer_size.i, align 4
  %85 = add i32 %74, %84
  %sub114.i = sub i32 %buf_size1.4.i, %85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %86 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp116.i = icmp sgt i32 %86, 1
  br i1 %cmp116.i, label %do.end120.i, label %do.body93.i.do.end126.i_crit_edge

do.body93.i.do.end126.i_crit_edge:                ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126.i

do.end120.i:                                      ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr111.i = lshr i32 %84, 1
  %add112.i = add i32 %shr111.i, %add106.i
  %87 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pb_count.i, align 4
  %call123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.207, i32 noundef 713, i32 noundef %add112.i, i32 noundef %sub114.i, i32 noundef %88) #11
  br label %do.end126.i

do.end126.i:                                      ; preds = %do.end120.i, %do.body93.i.do.end126.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub114.i)
  %cmp127.i = icmp slt i32 %sub114.i, 0
  br i1 %cmp127.i, label %do.body129.i, label %do.body141.i

do.body129.i:                                     ; preds = %do.end126.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %89 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp130.i = icmp sgt i32 %89, 1
  br i1 %cmp130.i, label %do.end134.i, label %do.body129.i.do.end_crit_edge

do.body129.i.do.end_crit_edge:                    ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end134.i:                                      ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #10
  %call136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.207, i32 noundef 715) #11
  br label %do.end

do.body141.i:                                     ; preds = %do.end126.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !561
  tail call void @arm_heavy_mb() #8
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %90 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %inst_no.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %instance_id.i = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 9
  %93 = ptrtoint ptr %instance_id.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %instance_id.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #8, !srcloc !379
  %mfc_cmds.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 37
  %95 = ptrtoint ptr %mfc_cmds.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mfc_cmds.i, align 4
  %tobool.not.i = icmp eq ptr %96, null
  br i1 %tobool.not.i, label %do.body141.i.do.body151.i_crit_edge, label %land.lhs.true.i

do.body141.i.do.body151.i_crit_edge:              ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body151.i

land.lhs.true.i:                                  ; preds = %do.body141.i
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %tobool145.not.i = icmp eq ptr %98, null
  br i1 %tobool145.not.i, label %land.lhs.true.i.do.body151.i_crit_edge, label %cond.true146.i

land.lhs.true.i.do.body151.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body151.i

cond.true146.i:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call149.i = tail call i32 %98(ptr noundef %5, i32 noundef 4, ptr noundef null) #8
  br label %do.body151.i

do.body151.i:                                     ; preds = %cond.true146.i, %land.lhs.true.i.do.body151.i_crit_edge, %do.body141.i.do.body151.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %99 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %cmp152.i = icmp sgt i32 %99, 4
  br i1 %cmp152.i, label %do.end156.i, label %do.body151.i.if.end_crit_edge

do.body151.i.if.end_crit_edge:                    ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end156.i:                                      ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #10
  %call158.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.207, i32 noundef 723) #11
  br label %if.end

do.end:                                           ; preds = %do.end134.i, %do.body129.i.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.206, i32 noundef 1950) #11
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %100 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 109, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %do.end156.i, %do.body151.i.if.end_crit_edge
  %retval.0.i15 = phi i32 [ -12, %do.end ], [ 0, %do.end156.i ], [ 0, %do.body151.i.if.end_crit_edge ]
  ret i32 %retval.0.i15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr nocapture noundef readonly %ctx, i32 noundef %buf_addr, i32 noundef %start_num_byte, i32 noundef %strm_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %buf_size3 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %buf_size3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_size3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %8 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp sgt i32 %8, 4
  br i1 %cmp, label %do.end, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.100, i32 noundef 498) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %9 = phi i32 [ %8, %entry.do.body7_crit_edge ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8 = icmp sgt i32 %9, 1
  br i1 %cmp8, label %do.end12, label %do.body7.do.body18_crit_edge

do.body7.do.body18_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %10 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst_no, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef 501, i32 noundef %11, i32 noundef %buf_addr, i32 noundef %strm_size, i32 noundef %strm_size) #11
  br label %do.body18

do.body18:                                        ; preds = %do.end12, %do.body7.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %strm_size)
  %d_stream_data_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 78
  %13 = ptrtoint ptr %d_stream_data_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_stream_data_size, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %buf_addr)
  %d_cpb_buffer_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 71
  %16 = ptrtoint ptr %d_cpb_buffer_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_cpb_buffer_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !564
  tail call void @arm_heavy_mb() #8
  %cpb = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %cpb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpb, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %d_cpb_buffer_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 72
  %21 = ptrtoint ptr %d_cpb_buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_cpb_buffer_size, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !565
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %start_num_byte)
  %d_cpb_buffer_offset = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 75
  %24 = ptrtoint ptr %d_cpb_buffer_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_cpb_buffer_offset, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %26 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp31 = icmp sgt i32 %26, 4
  br i1 %cmp31, label %do.end35, label %do.body18.do.end40_crit_edge

do.body18.do.end40_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

do.end35:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.100, i32 noundef 507) #11
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body18.do.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_decode_one_frame_v6(ptr nocapture noundef readonly %ctx, i32 noundef %last_frame) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !566
  tail call void @arm_heavy_mb() #8
  %dec_dst_flag = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 37
  %4 = ptrtoint ptr %dec_dst_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dec_dst_flag, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %d_available_dpb_flag_lower = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 74
  %7 = ptrtoint ptr %d_available_dpb_flag_lower to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_available_dpb_flag_lower, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !567
  tail call void @arm_heavy_mb() #8
  %slice_interface = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 40
  %9 = ptrtoint ptr %slice_interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slice_interface, align 4
  %and = shl i32 %10, 24
  %11 = and i32 %and, 16777216
  %d_slice_if_enable = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 76
  %12 = ptrtoint ptr %d_slice_if_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_slice_if_enable, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !568
  tail call void @arm_heavy_mb() #8
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %14 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inst_no, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %instance_id = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %instance_id, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !379
  %19 = zext i32 %last_frame to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %last_frame, label %do.end30 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %mfc_cmds = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 37
  %20 = ptrtoint ptr %mfc_cmds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mfc_cmds, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %sw.bb.do.body34_crit_edge, label %land.lhs.true

sw.bb.do.body34_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

land.lhs.true:                                    ; preds = %sw.bb
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %land.lhs.true.do.body34_crit_edge, label %cond.true

land.lhs.true.do.body34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %23(ptr noundef %1, i32 noundef 5, ptr noundef null) #8
  br label %do.body34

sw.bb13:                                          ; preds = %entry
  %mfc_cmds14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 37
  %24 = ptrtoint ptr %mfc_cmds14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mfc_cmds14, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %sw.bb13.do.body34_crit_edge, label %land.lhs.true16

sw.bb13.do.body34_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

land.lhs.true16:                                  ; preds = %sw.bb13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %land.lhs.true16.do.body34_crit_edge, label %cond.true20

land.lhs.true16.do.body34_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

cond.true20:                                      ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 %27(ptr noundef %1, i32 noundef 9, ptr noundef null) #8
  br label %do.body34

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef 1694) #11
  br label %cleanup

do.body34:                                        ; preds = %cond.true20, %land.lhs.true16.do.body34_crit_edge, %sw.bb13.do.body34_crit_edge, %cond.true, %land.lhs.true.do.body34_crit_edge, %sw.bb.do.body34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %28 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp = icmp sgt i32 %28, 1
  br i1 %cmp, label %do.end37, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, i32 noundef 1698) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.body34.cleanup_crit_edge, %do.end30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_slice_mode(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !569
  tail call void @arm_heavy_mb() #8
  %slice_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 61
  %4 = ptrtoint ptr %slice_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slice_mode, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %e_mslice_mode = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 190
  %7 = ptrtoint ptr %e_mslice_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %e_mslice_mode, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !379
  %9 = ptrtoint ptr %slice_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slice_mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %10, label %do.body15 [
    i32 1, label %do.body4
    i32 2, label %do.body10
  ]

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !570
  tail call void @arm_heavy_mb() #8
  %slice_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 62
  %12 = ptrtoint ptr %slice_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slice_size, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %e_mslice_size_mb = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 191
  %15 = ptrtoint ptr %e_mslice_size_mb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e_mslice_size_mb, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !379
  br label %if.end23

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !571
  tail call void @arm_heavy_mb() #8
  %slice_size13 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 62
  %17 = ptrtoint ptr %slice_size13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slice_size13, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %e_mslice_size_bits = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 192
  %20 = ptrtoint ptr %e_mslice_size_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %e_mslice_size_bits, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !379
  br label %if.end23

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !572
  tail call void @arm_heavy_mb() #8
  %e_mslice_size_mb18 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 191
  %22 = ptrtoint ptr %e_mslice_size_mb18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %e_mslice_size_mb18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !573
  tail call void @arm_heavy_mb() #8
  %e_mslice_size_bits22 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 192
  %24 = ptrtoint ptr %e_mslice_size_bits22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %e_mslice_size_bits22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #8, !srcloc !379
  br label %if.end23

if.end23:                                         ; preds = %do.body15, %do.body10, %do.body4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_regs2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %mfc_regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_regs2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %4 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp sgt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.191, i32 noundef 756) #11
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !574
  tail call void @arm_heavy_mb() #8
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %5 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %img_width, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %e_frame_width = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 150
  %8 = ptrtoint ptr %e_frame_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e_frame_width, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !575
  tail call void @arm_heavy_mb() #8
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %10 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %img_height, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %e_frame_height = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 151
  %13 = ptrtoint ptr %e_frame_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %e_frame_height, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !576
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %img_width, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %e_cropped_frame_width = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 152
  %18 = ptrtoint ptr %e_cropped_frame_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %e_cropped_frame_width, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !577
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %img_height, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %e_cropped_frame_height = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 153
  %23 = ptrtoint ptr %e_cropped_frame_height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %e_cropped_frame_height, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !578
  tail call void @arm_heavy_mb() #8
  %e_frame_crop_offset = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 154
  %25 = ptrtoint ptr %e_frame_crop_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %e_frame_crop_offset, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #8, !srcloc !379
  %gop_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 4
  %27 = ptrtoint ptr %gop_size to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %gop_size, align 4
  %conv = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %e_gop_config = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 189
  %30 = ptrtoint ptr %e_gop_config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %e_gop_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !379
  %slice_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 5
  %32 = ptrtoint ptr %slice_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slice_mode, align 4
  %slice_mode26 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 61
  %34 = ptrtoint ptr %slice_mode26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %slice_mode26, align 4
  %35 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %33, label %if.else46 [
    i32 1, label %if.then30
    i32 2, label %if.then39
  ]

if.then30:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !580
  tail call void @arm_heavy_mb() #8
  %e_enc_options = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 155
  %36 = ptrtoint ptr %e_enc_options to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %e_enc_options, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 134217728) #8, !srcloc !379
  %slice_mb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 6
  %38 = ptrtoint ptr %slice_mb to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %slice_mb, align 4
  %conv35 = zext i16 %39 to i32
  %slice_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 62
  %40 = ptrtoint ptr %slice_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv35, ptr %slice_size, align 4
  br label %if.end53

if.then39:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !581
  tail call void @arm_heavy_mb() #8
  %e_enc_options44 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 155
  %41 = ptrtoint ptr %e_enc_options44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %e_enc_options44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 134217728) #8, !srcloc !379
  %slice_bit = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 7
  %43 = ptrtoint ptr %slice_bit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slice_bit, align 4
  %slice_size45 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 62
  %45 = ptrtoint ptr %slice_size45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %slice_size45, align 4
  br label %if.end53

if.else46:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !582
  tail call void @arm_heavy_mb() #8
  %e_enc_options51 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 155
  %46 = ptrtoint ptr %e_enc_options51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %e_enc_options51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #8, !srcloc !379
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.then39, %if.then30
  tail call fastcc void @s5p_mfc_set_slice_mode(ptr noundef %ctx)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !583
  tail call void @arm_heavy_mb() #8
  %intra_refresh_mb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 8
  %48 = ptrtoint ptr %intra_refresh_mb to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %intra_refresh_mb, align 4
  %conv58 = zext i16 %49 to i32
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv58)
  %e_ir_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 188
  %51 = ptrtoint ptr %e_ir_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %e_ir_size, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !379
  %e_enc_options59 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 155
  %53 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %e_enc_options59, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !584
  %56 = ptrtoint ptr %intra_refresh_mb to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %intra_refresh_mb, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp65 = icmp eq i16 %57, 0
  %58 = and i32 %55, -268435457
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %masksel = select i1 %cmp65, i32 0, i32 16
  %reg.0 = or i32 %masksel, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !585
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %61 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #8, !srcloc !379
  %63 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %e_enc_options59, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !586
  %66 = and i32 %65, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !587
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !379
  %src_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 7
  %69 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %src_fmt, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %72, label %if.end53.if.end148_crit_edge [
    i32 842091854, label %if.then89
    i32 825380174, label %if.then109
    i32 842091862, label %if.then130
  ]

if.end53.if.end148_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then89:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %e_enc_options59, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !588
  %77 = and i32 %76, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !589
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !590
  tail call void @arm_heavy_mb() #8
  %pixel_format = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 13
  %80 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pixel_format, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #8, !srcloc !379
  br label %if.end148

if.then109:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %e_enc_options59, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !591
  %85 = and i32 %84, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !592
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !593
  tail call void @arm_heavy_mb() #8
  %pixel_format124 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 13
  %88 = ptrtoint ptr %pixel_format124 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pixel_format124, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 16777216) #8, !srcloc !379
  br label %if.end148

if.then130:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %e_enc_options59, align 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !594
  %93 = or i32 %92, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !595
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !596
  tail call void @arm_heavy_mb() #8
  %pixel_format145 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 13
  %96 = ptrtoint ptr %pixel_format145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pixel_format145, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 0) #8, !srcloc !379
  br label %if.end148

if.end148:                                        ; preds = %if.then130, %if.then109, %if.then89, %if.end53.if.end148_crit_edge
  %98 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %e_enc_options59, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !597
  %101 = or i32 %100, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !598
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !599
  tail call void @arm_heavy_mb() #8
  %e_padding_ctrl = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 165
  %104 = ptrtoint ptr %e_padding_ctrl to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %e_padding_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 0) #8, !srcloc !379
  %pad = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 9
  %106 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not = icmp eq i32 %107, 0
  br i1 %tobool.not, label %if.end148.if.end179_crit_edge, label %if.then163

if.end148.if.end179_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then163:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %pad_cr = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 12
  %108 = ptrtoint ptr %pad_cr to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pad_cr, align 2
  %conv165 = zext i8 %109 to i32
  %shl = shl nuw nsw i32 %conv165, 16
  %pad_cb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 11
  %110 = ptrtoint ptr %pad_cb to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pad_cb, align 1
  %conv168 = zext i8 %111 to i32
  %shl170 = shl nuw nsw i32 %conv168, 8
  %pad_luma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 10
  %112 = ptrtoint ptr %pad_luma to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pad_luma, align 4
  %conv172 = zext i8 %113 to i32
  %or167 = or i32 %shl, %shl170
  %or171 = or i32 %or167, %conv172
  %or174 = or i32 %or171, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !600
  tail call void @arm_heavy_mb() #8
  %114 = tail call i32 @llvm.bswap.i32(i32 %or174)
  %115 = ptrtoint ptr %e_padding_ctrl to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %e_padding_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #8, !srcloc !379
  br label %if.end179

if.end179:                                        ; preds = %if.then163, %if.end148.if.end179_crit_edge
  %rc_frame = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %117 = ptrtoint ptr %rc_frame to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rc_frame, align 4
  %and180 = shl i32 %118, 17
  %shl181 = and i32 %and180, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !601
  tail call void @arm_heavy_mb() #8
  %e_rc_config = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 160
  %119 = ptrtoint ptr %e_rc_config to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %e_rc_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %shl181) #8, !srcloc !379
  %121 = ptrtoint ptr %rc_frame to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rc_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool187.not = icmp eq i32 %122, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool187.not, label %do.body193, label %do.body189

do.body189:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %rc_bitrate = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 15
  %123 = ptrtoint ptr %rc_bitrate to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rc_bitrate, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %e_rc_bit_rate = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 195
  %126 = ptrtoint ptr %e_rc_bit_rate to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %e_rc_bit_rate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #8, !srcloc !379
  br label %if.end197

do.body193:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %e_rc_bit_rate196 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 195
  %128 = ptrtoint ptr %e_rc_bit_rate196 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %e_rc_bit_rate196, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 16777216) #8, !srcloc !379
  br label %if.end197

if.end197:                                        ; preds = %do.body193, %do.body189
  %130 = ptrtoint ptr %rc_frame to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rc_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool199.not = icmp eq i32 %131, 0
  br i1 %tobool199.not, label %if.end197.if.end214_crit_edge, label %if.then200

if.end197.if.end214_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then200:                                       ; preds = %if.end197
  %rc_reaction_coeff = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 16
  %132 = ptrtoint ptr %rc_reaction_coeff to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %rc_reaction_coeff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %133)
  %cmp202 = icmp ult i16 %133, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %e_rc_mode = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 163
  %134 = ptrtoint ptr %e_rc_mode to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %e_rc_mode, align 4
  br i1 %cmp202, label %do.body205, label %do.body209

do.body205:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 16777216) #8, !srcloc !379
  br label %if.end214

do.body209:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 33554432) #8, !srcloc !379
  br label %if.end214

if.end214:                                        ; preds = %do.body209, %do.body205, %if.end197.if.end214_crit_edge
  %136 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %e_enc_options59, align 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !602
  %seq_hdr_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 19
  %139 = ptrtoint ptr %seq_hdr_mode to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %seq_hdr_mode, align 4
  %and222 = shl i32 %140, 2
  %shl223 = and i32 %and222, 4
  %141 = and i32 %138, -117440513
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %and225 = or i32 %shl223, %142
  %frame_skip_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %143 = ptrtoint ptr %frame_skip_mode to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %frame_skip_mode, align 4
  %and226 = and i32 %144, 3
  %or227 = or i32 %and225, %and226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !603
  tail call void @arm_heavy_mb() #8
  %145 = tail call i32 @llvm.bswap.i32(i32 %or227)
  %146 = ptrtoint ptr %e_enc_options59 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %e_enc_options59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #8, !srcloc !379
  %148 = ptrtoint ptr %e_rc_config to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %e_rc_config, align 4
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #8, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !604
  %151 = and i32 %150, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !605
  tail call void @arm_heavy_mb() #8
  %152 = ptrtoint ptr %e_rc_config to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %e_rc_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #8, !srcloc !379
  %mv_h_range = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 2
  %154 = ptrtoint ptr %mv_h_range to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mv_h_range, align 4
  %and243 = and i32 %155, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !606
  tail call void @arm_heavy_mb() #8
  %156 = tail call i32 @llvm.bswap.i32(i32 %and243)
  %e_mv_hor_range = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 167
  %157 = ptrtoint ptr %e_mv_hor_range to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %e_mv_hor_range, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #8, !srcloc !379
  %mv_v_range = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 3
  %159 = ptrtoint ptr %mv_v_range to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mv_v_range, align 4
  %and247 = and i32 %160, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !607
  tail call void @arm_heavy_mb() #8
  %161 = tail call i32 @llvm.bswap.i32(i32 %and247)
  %e_mv_ver_range = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 168
  %162 = ptrtoint ptr %e_mv_ver_range to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %e_mv_ver_range, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !608
  tail call void @arm_heavy_mb() #8
  %e_frame_insertion = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 193
  %164 = ptrtoint ptr %e_frame_insertion to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %e_frame_insertion, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !609
  tail call void @arm_heavy_mb() #8
  %e_roi_buffer_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 186
  %166 = ptrtoint ptr %e_roi_buffer_addr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %e_roi_buffer_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !610
  tail call void @arm_heavy_mb() #8
  %e_param_change = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 187
  %168 = ptrtoint ptr %e_param_change to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %e_param_change, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !611
  tail call void @arm_heavy_mb() #8
  %e_rc_roi_ctrl = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 196
  %170 = ptrtoint ptr %e_rc_roi_ctrl to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %e_rc_roi_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !612
  tail call void @arm_heavy_mb() #8
  %e_picture_tag = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 197
  %172 = ptrtoint ptr %e_picture_tag to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %e_picture_tag, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !613
  tail call void @arm_heavy_mb() #8
  %e_bit_count_enable = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 198
  %174 = ptrtoint ptr %e_bit_count_enable to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %e_bit_count_enable, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !614
  tail call void @arm_heavy_mb() #8
  %e_max_bit_count = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 199
  %176 = ptrtoint ptr %e_max_bit_count to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %e_max_bit_count, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !615
  tail call void @arm_heavy_mb() #8
  %e_min_bit_count = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 200
  %178 = ptrtoint ptr %e_min_bit_count to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %e_min_bit_count, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !616
  tail call void @arm_heavy_mb() #8
  %e_metadata_buffer_addr = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 201
  %180 = ptrtoint ptr %e_metadata_buffer_addr to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %e_metadata_buffer_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 0) #8, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !617
  tail call void @arm_heavy_mb() #8
  %e_metadata_buffer_size = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 202
  %182 = ptrtoint ptr %e_metadata_buffer_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %e_metadata_buffer_size, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 0) #8, !srcloc !379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %184 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %184)
  %cmp282 = icmp sgt i32 %184, 4
  br i1 %cmp282, label %do.end287, label %if.end214.do.end292_crit_edge

if.end214.do.end292_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end292

do.end287:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.191, i32 noundef 909) #11
  br label %do.end292

do.end292:                                        ; preds = %do.end287, %if.end214.do.end292_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !311, !312, !313, !315, !316, !318, !319, !320, !322, !323, !325, !326, !327, !329, !330, !332, !333, !334, !336, !337, !339, !340, !341, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !357, !358, !359, !361, !362, !364}
!llvm.module.flags = !{!365, !366, !367, !368, !369, !370, !371, !372}
!llvm.ident = !{!373}

!0 = !{ptr @mfc_regs, !1, !"mfc_regs", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 2226, i32 28}
!2 = !{ptr @s5p_mfc_ops_v6, !3, !"s5p_mfc_ops_v6", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 2487, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 71, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 73, i32 3}
!12 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 126, i32 3}
!16 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 137, i32 4}
!20 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.12, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 156, i32 4}
!24 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.14, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 176, i32 4}
!27 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.16, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 193, i32 4}
!30 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.18, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 205, i32 4}
!33 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.20, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 221, i32 3}
!36 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.22, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 227, i32 3}
!39 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.24, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 234, i32 4}
!42 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.26, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 258, i32 4}
!45 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.28, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 277, i32 4}
!48 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.30, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 300, i32 3}
!51 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 318, i32 4}
!54 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry.32, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5p_mfc_alloc_codec_buffers_v6._entry_ptr.34, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 339, i32 2}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 369, i32 3}
!63 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 375, i32 3}
!67 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry.40, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 382, i32 2}
!71 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry.43, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @s5p_mfc_alloc_instance_buffer_v6._entry_ptr.45, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 399, i32 2}
!75 = !{ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 404, i32 3}
!79 = !{ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.47, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr.49, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry.50, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 411, i32 2}
!83 = !{ptr @s5p_mfc_alloc_dev_context_buffer_v6._entry_ptr.51, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 441, i32 2}
!86 = !{ptr @.str.53, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @s5p_mfc_dec_calc_dpb_size_v6._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @s5p_mfc_dec_calc_dpb_size_v6._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 620, i32 2}
!91 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @s5p_mfc_set_enc_stream_buffer_v6._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @s5p_mfc_set_enc_stream_buffer_v6._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 635, i32 2}
!96 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @s5p_mfc_set_enc_frame_buffer_v6._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @s5p_mfc_set_enc_frame_buffer_v6._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 636, i32 2}
!101 = !{ptr @s5p_mfc_set_enc_frame_buffer_v6._entry.58, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @s5p_mfc_set_enc_frame_buffer_v6._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 652, i32 2}
!105 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @s5p_mfc_get_enc_frame_buffer_v6._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @s5p_mfc_get_enc_frame_buffer_v6._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 653, i32 2}
!110 = !{ptr @s5p_mfc_get_enc_frame_buffer_v6._entry.63, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @s5p_mfc_get_enc_frame_buffer_v6._entry_ptr.65, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1963, i32 2}
!114 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @s5p_mfc_try_run_v6._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @s5p_mfc_try_run_v6._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1968, i32 3}
!119 = !{ptr @s5p_mfc_try_run_v6._entry.68, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.70, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1977, i32 4}
!123 = !{ptr @s5p_mfc_try_run_v6._entry.71, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.73, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1981, i32 3}
!127 = !{ptr @s5p_mfc_try_run_v6._entry.74, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.76, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1985, i32 2}
!131 = !{ptr @s5p_mfc_try_run_v6._entry.77, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.79, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1987, i32 2}
!135 = !{ptr @s5p_mfc_try_run_v6._entry.80, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.82, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1989, i32 2}
!139 = !{ptr @s5p_mfc_try_run_v6._entry.83, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.85, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1991, i32 2}
!143 = !{ptr @s5p_mfc_try_run_v6._entry.86, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.88, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.90, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 2030, i32 4}
!147 = !{ptr @s5p_mfc_try_run_v6._entry.89, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.91, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.93, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 2032, i32 4}
!151 = !{ptr @s5p_mfc_try_run_v6._entry.92, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.94, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.96, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 2062, i32 3}
!155 = !{ptr @s5p_mfc_try_run_v6._entry.95, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.97, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @s5p_mfc_try_run_v6._entry.98, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 2069, i32 4}
!159 = !{ptr @s5p_mfc_try_run_v6._entry_ptr.99, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.100, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 498, i32 2}
!162 = !{ptr @s5p_mfc_set_dec_stream_buffer_v6._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @s5p_mfc_set_dec_stream_buffer_v6._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.102, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 499, i32 2}
!166 = !{ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.101, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @s5p_mfc_set_dec_stream_buffer_v6._entry_ptr.103, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @s5p_mfc_set_dec_stream_buffer_v6._entry.104, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 507, i32 2}
!170 = !{ptr @s5p_mfc_set_dec_stream_buffer_v6._entry_ptr.105, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.106, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1694, i32 3}
!173 = !{ptr @.str.107, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @s5p_mfc_decode_one_frame_v6._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @s5p_mfc_decode_one_frame_v6._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.109, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1698, i32 2}
!178 = !{ptr @s5p_mfc_decode_one_frame_v6._entry.108, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @s5p_mfc_decode_one_frame_v6._entry_ptr.110, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.111, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1808, i32 3}
!182 = !{ptr @.str.112, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @s5p_mfc_run_dec_frame._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @s5p_mfc_run_dec_frame._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.114, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1822, i32 3}
!187 = !{ptr @s5p_mfc_run_dec_frame._entry.113, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @s5p_mfc_run_dec_frame._entry_ptr.115, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.116, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1893, i32 2}
!191 = !{ptr @.str.117, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @s5p_mfc_run_init_dec._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @s5p_mfc_run_init_dec._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.119, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1895, i32 2}
!196 = !{ptr @s5p_mfc_run_init_dec._entry.118, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @s5p_mfc_run_init_dec._entry_ptr.120, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.121, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1604, i32 2}
!200 = !{ptr @s5p_mfc_init_decode_v6._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @s5p_mfc_init_decode_v6._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.123, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1605, i32 2}
!204 = !{ptr @s5p_mfc_init_decode_v6._entry.122, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @s5p_mfc_init_decode_v6._entry_ptr.124, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.126, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1607, i32 2}
!208 = !{ptr @s5p_mfc_init_decode_v6._entry.125, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @s5p_mfc_init_decode_v6._entry_ptr.127, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.129, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1627, i32 3}
!212 = !{ptr @s5p_mfc_init_decode_v6._entry.128, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @s5p_mfc_init_decode_v6._entry_ptr.130, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @s5p_mfc_init_decode_v6._entry.131, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1654, i32 2}
!216 = !{ptr @s5p_mfc_init_decode_v6._entry_ptr.132, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.133, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1927, i32 3}
!219 = !{ptr @.str.134, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @s5p_mfc_run_init_dec_buffers._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @s5p_mfc_run_init_dec_buffers._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.136, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1936, i32 3}
!224 = !{ptr @s5p_mfc_run_init_dec_buffers._entry.135, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.137, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.138, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 525, i32 2}
!228 = !{ptr @.str.139, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.141, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 526, i32 2}
!233 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.140, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.142, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.144, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 527, i32 2}
!237 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.143, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.145, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.147, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 556, i32 2}
!241 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.146, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.148, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.150, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 561, i32 3}
!245 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.149, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.151, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.153, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 565, i32 3}
!249 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.152, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.154, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.156, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 580, i32 4}
!253 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.155, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.157, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.159, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 595, i32 2}
!257 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.158, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.160, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.162, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 598, i32 3}
!261 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.161, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.163, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.165, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 606, i32 2}
!265 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry.164, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @s5p_mfc_set_dec_frame_buffer_v6._entry_ptr.166, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.167, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1842, i32 3}
!269 = !{ptr @.str.168, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @s5p_mfc_run_enc_frame._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.170, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1847, i32 3}
!274 = !{ptr @s5p_mfc_run_enc_frame._entry.169, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr.171, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.173, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1865, i32 4}
!278 = !{ptr @s5p_mfc_run_enc_frame._entry.172, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr.174, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.176, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1866, i32 4}
!282 = !{ptr @s5p_mfc_run_enc_frame._entry.175, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr.177, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.178, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1760, i32 2}
!286 = !{ptr @.str.179, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @s5p_mfc_encode_one_frame_v6._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @s5p_mfc_encode_one_frame_v6._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.181, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1777, i32 2}
!291 = !{ptr @s5p_mfc_encode_one_frame_v6._entry.180, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @s5p_mfc_encode_one_frame_v6._entry_ptr.182, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.183, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1718, i32 3}
!295 = !{ptr @.str.184, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @s5p_mfc_init_encode_v6._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @s5p_mfc_init_encode_v6._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.185, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 923, i32 2}
!300 = !{ptr @s5p_mfc_set_enc_params_h264._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @s5p_mfc_set_enc_params_h264._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.187, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1175, i32 4}
!304 = !{ptr @s5p_mfc_set_enc_params_h264._entry.186, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @s5p_mfc_set_enc_params_h264._entry_ptr.188, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @s5p_mfc_set_enc_params_h264._entry.189, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1190, i32 2}
!308 = !{ptr @s5p_mfc_set_enc_params_h264._entry_ptr.190, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.191, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 756, i32 2}
!311 = !{ptr @s5p_mfc_set_enc_params._entry, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @s5p_mfc_set_enc_params._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @s5p_mfc_set_enc_params._entry.192, !314, !"_entry", i1 false, i1 false}
!314 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 909, i32 2}
!315 = !{ptr @s5p_mfc_set_enc_params._entry_ptr.193, !314, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.194, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1203, i32 2}
!318 = !{ptr @s5p_mfc_set_enc_params_mpeg4._entry, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @s5p_mfc_set_enc_params_mpeg4._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @s5p_mfc_set_enc_params_mpeg4._entry.195, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1272, i32 2}
!322 = !{ptr @s5p_mfc_set_enc_params_mpeg4._entry_ptr.196, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.197, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1285, i32 2}
!325 = !{ptr @s5p_mfc_set_enc_params_h263._entry, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @s5p_mfc_set_enc_params_h263._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @s5p_mfc_set_enc_params_h263._entry.198, !328, !"_entry", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1342, i32 2}
!329 = !{ptr @s5p_mfc_set_enc_params_h263._entry_ptr.199, !328, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.200, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1356, i32 2}
!332 = !{ptr @s5p_mfc_set_enc_params_vp8._entry, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @s5p_mfc_set_enc_params_vp8._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @s5p_mfc_set_enc_params_vp8._entry.201, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1435, i32 2}
!336 = !{ptr @s5p_mfc_set_enc_params_vp8._entry_ptr.202, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.203, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1449, i32 2}
!339 = !{ptr @s5p_mfc_set_enc_params_hevc._entry, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @s5p_mfc_set_enc_params_hevc._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @s5p_mfc_set_enc_params_hevc._entry.204, !342, !"_entry", i1 false, i1 false}
!342 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1591, i32 2}
!343 = !{ptr @s5p_mfc_set_enc_params_hevc._entry_ptr.205, !342, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.206, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 1950, i32 3}
!346 = !{ptr @s5p_mfc_run_init_enc_buffers._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @s5p_mfc_run_init_enc_buffers._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.207, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 664, i32 2}
!350 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.208, !353, !"_entry", i1 false, i1 false}
!353 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 669, i32 2}
!354 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.209, !353, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.211, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 712, i32 2}
!357 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.210, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.212, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.213, !360, !"_entry", i1 false, i1 false}
!360 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 715, i32 3}
!361 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.214, !360, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry.215, !363, !"_entry", i1 false, i1 false}
!363 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c", i32 723, i32 2}
!364 = !{ptr @s5p_mfc_set_enc_ref_buffer_v6._entry_ptr.216, !363, !"_entry_ptr", i1 false, i1 false}
!365 = !{i32 1, !"wchar_size", i32 2}
!366 = !{i32 1, !"min_enum_size", i32 4}
!367 = !{i32 8, !"branch-target-enforcement", i32 0}
!368 = !{i32 8, !"sign-return-address", i32 0}
!369 = !{i32 8, !"sign-return-address-all", i32 0}
!370 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!371 = !{i32 7, !"uwtable", i32 1}
!372 = !{i32 7, !"frame-pointer", i32 2}
!373 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!374 = !{!"branch_weights", i32 2000, i32 1}
!375 = !{i64 2156604402, i64 2156604914, i64 2156604439, i64 2156604495, i64 2156604529, i64 2156604553, i64 2156604594, i64 2156604615, i64 2156604643, i64 2156604677}
!376 = !{i64 2156610999}
!377 = !{i64 2156616143}
!378 = !{i64 2156655755}
!379 = !{i64 5853582}
!380 = !{i64 2156656174}
!381 = !{i64 2156658431}
!382 = !{i64 2156658869}
!383 = !{i64 5854000}
!384 = !{i64 2156663174}
!385 = !{i64 2156663768}
!386 = !{i64 2156664310}
!387 = !{i64 2156664860}
!388 = !{i64 2156804445}
!389 = !{i64 2156806508}
!390 = !{i64 2156858620}
!391 = !{i64 2156859017}
!392 = !{i64 2156860268}
!393 = !{i64 2156860850}
!394 = !{i64 2156861392}
!395 = !{i64 2156861934}
!396 = !{i64 2156862492}
!397 = !{i64 2156863052}
!398 = !{i64 2156863604}
!399 = !{i64 2156864150}
!400 = !{i64 2156864676}
!401 = !{i64 2156865247}
!402 = !{i64 2156865813}
!403 = !{i64 2156866343}
!404 = !{i64 2156866869}
!405 = !{i64 2156868563}
!406 = !{i64 2156869607}
!407 = !{i64 2156870133}
!408 = !{i64 2156869077}
!409 = !{i64 2156859686}
!410 = !{i64 2156867447}
!411 = !{i64 2156868025}
!412 = !{i64 2156785575}
!413 = !{i64 2156786101}
!414 = !{i64 2156786627}
!415 = !{i64 2156786868}
!416 = !{i64 2156787462}
!417 = !{i64 2156789917}
!418 = !{i64 2156790326}
!419 = !{i64 2156791667}
!420 = !{i64 2156792134}
!421 = !{i64 2156635651}
!422 = !{i64 2156636119}
!423 = !{i64 2156636585}
!424 = !{i64 2156637049}
!425 = !{i64 2156637502}
!426 = !{i64 2156638036}
!427 = !{i64 2156638514}
!428 = !{i64 2156638985}
!429 = !{i64 2156639421}
!430 = !{i64 2156643506}
!431 = !{i64 2156645837}
!432 = !{i64 2156648356}
!433 = !{i64 2156648797}
!434 = !{i64 2156649238}
!435 = !{i64 2156653404}
!436 = !{i64 2156794560}
!437 = !{i64 2156710657}
!438 = !{i64 2156710876}
!439 = !{i64 2156711280}
!440 = !{i64 2156711967}
!441 = !{i64 2156712185}
!442 = !{i64 2156712582}
!443 = !{i64 2156712981}
!444 = !{i64 2156713387}
!445 = !{i64 2156713798}
!446 = !{i64 2156714206}
!447 = !{i64 2156714635}
!448 = !{i64 2156715118}
!449 = !{i64 2156715550}
!450 = !{i64 2156715970}
!451 = !{i64 2156716449}
!452 = !{i64 2156717204}
!453 = !{i64 2156717425}
!454 = !{i64 2156717836}
!455 = !{i64 2156718254}
!456 = !{i64 2156718957}
!457 = !{i64 2156719178}
!458 = !{i64 2156719874}
!459 = !{i64 2156720095}
!460 = !{i64 2156720791}
!461 = !{i64 2156721012}
!462 = !{i64 2156721415}
!463 = !{i64 2156721818}
!464 = !{i64 2156722514}
!465 = !{i64 2156722735}
!466 = !{i64 2156723138}
!467 = !{i64 2156723541}
!468 = !{i64 2156723944}
!469 = !{i64 2156724347}
!470 = !{i64 2156725043}
!471 = !{i64 2156725264}
!472 = !{i64 2156725668}
!473 = !{i64 2156726073}
!474 = !{i64 2156726770}
!475 = !{i64 2156726991}
!476 = !{i64 2156727687}
!477 = !{i64 2156727908}
!478 = !{i64 2156728604}
!479 = !{i64 2156728825}
!480 = !{i64 2156729521}
!481 = !{i64 2156729742}
!482 = !{i64 2156730149}
!483 = !{i64 2156731101}
!484 = !{i64 2156731607}
!485 = !{i64 2156732307}
!486 = !{i64 2156732528}
!487 = !{i64 2156732946}
!488 = !{i64 2156733416}
!489 = !{i64 2156733956}
!490 = !{i64 2156734484}
!491 = !{i64 2156736794}
!492 = !{i64 2156737302}
!493 = !{i64 2156737803}
!494 = !{i64 2156741712}
!495 = !{i64 2156741931}
!496 = !{i64 2156742335}
!497 = !{i64 2156743022}
!498 = !{i64 2156743240}
!499 = !{i64 2156743637}
!500 = !{i64 2156744036}
!501 = !{i64 2156744442}
!502 = !{i64 2156744853}
!503 = !{i64 2156745261}
!504 = !{i64 2156745685}
!505 = !{i64 2156746153}
!506 = !{i64 2156746586}
!507 = !{i64 2156746994}
!508 = !{i64 2156754675}
!509 = !{i64 2156755362}
!510 = !{i64 2156755580}
!511 = !{i64 2156755977}
!512 = !{i64 2156756376}
!513 = !{i64 2156756782}
!514 = !{i64 2156757193}
!515 = !{i64 2156757601}
!516 = !{i64 2156758025}
!517 = !{i64 2156758493}
!518 = !{i64 2156762420}
!519 = !{i64 2156762639}
!520 = !{i64 2156763043}
!521 = !{i64 2156763730}
!522 = !{i64 2156763948}
!523 = !{i64 2156764349}
!524 = !{i64 2156764750}
!525 = !{i64 2156765154}
!526 = !{i64 2156765565}
!527 = !{i64 2156765971}
!528 = !{i64 2156766393}
!529 = !{i64 2156766861}
!530 = !{i64 2156767292}
!531 = !{i64 2156771189}
!532 = !{i64 2156771408}
!533 = !{i64 2156771812}
!534 = !{i64 2156772218}
!535 = !{i64 2156772628}
!536 = !{i64 2156773050}
!537 = !{i64 2156773475}
!538 = !{i64 2156773887}
!539 = !{i64 2156774320}
!540 = !{i64 2156774840}
!541 = !{i64 2156775612}
!542 = !{i64 2156775830}
!543 = !{i64 2156776227}
!544 = !{i64 2156776630}
!545 = !{i64 2156777033}
!546 = !{i64 2156777439}
!547 = !{i64 2156777850}
!548 = !{i64 2156802343}
!549 = !{i64 2156802817}
!550 = !{i64 2156803273}
!551 = !{i64 2156672091}
!552 = !{i64 2156672532}
!553 = !{i64 2156672974}
!554 = !{i64 2156673414}
!555 = !{i64 2156673855}
!556 = !{i64 2156674297}
!557 = !{i64 2156674738}
!558 = !{i64 2156675191}
!559 = !{i64 2156675660}
!560 = !{i64 2156676085}
!561 = !{i64 2156680251}
!562 = !{i64 2156627018}
!563 = !{i64 2156627451}
!564 = !{i64 2156627885}
!565 = !{i64 2156628337}
!566 = !{i64 2156795235}
!567 = !{i64 2156795718}
!568 = !{i64 2156796199}
!569 = !{i64 2156682511}
!570 = !{i64 2156682966}
!571 = !{i64 2156683437}
!572 = !{i64 2156683897}
!573 = !{i64 2156684306}
!574 = !{i64 2156686326}
!575 = !{i64 2156686773}
!576 = !{i64 2156687230}
!577 = !{i64 2156687693}
!578 = !{i64 2156688145}
!579 = !{i64 2156688551}
!580 = !{i64 2156688951}
!581 = !{i64 2156689352}
!582 = !{i64 2156689753}
!583 = !{i64 2156690166}
!584 = !{i64 2156690901}
!585 = !{i64 2156691121}
!586 = !{i64 2156691812}
!587 = !{i64 2156692032}
!588 = !{i64 2156692846}
!589 = !{i64 2156693066}
!590 = !{i64 2156693466}
!591 = !{i64 2156694279}
!592 = !{i64 2156694499}
!593 = !{i64 2156694899}
!594 = !{i64 2156695712}
!595 = !{i64 2156695932}
!596 = !{i64 2156696332}
!597 = !{i64 2156697022}
!598 = !{i64 2156697242}
!599 = !{i64 2156697644}
!600 = !{i64 2156698047}
!601 = !{i64 2156698447}
!602 = !{i64 2156700743}
!603 = !{i64 2156700963}
!604 = !{i64 2156701646}
!605 = !{i64 2156701864}
!606 = !{i64 2156702271}
!607 = !{i64 2156702681}
!608 = !{i64 2156703087}
!609 = !{i64 2156703496}
!610 = !{i64 2156703902}
!611 = !{i64 2156704304}
!612 = !{i64 2156704705}
!613 = !{i64 2156705111}
!614 = !{i64 2156705519}
!615 = !{i64 2156705924}
!616 = !{i64 2156706336}
!617 = !{i64 2156706755}
