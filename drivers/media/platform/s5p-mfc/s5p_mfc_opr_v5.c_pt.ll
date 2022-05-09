; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_buf_size_v5 = type { i32, i32, i32, i32 }
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
%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@s5p_mfc_ops_v5 = internal global { %struct.s5p_mfc_hw_ops, [36 x i8] } { %struct.s5p_mfc_hw_ops { ptr @s5p_mfc_alloc_dec_temp_buffers_v5, ptr @s5p_mfc_release_dec_desc_buffer_v5, ptr @s5p_mfc_alloc_codec_buffers_v5, ptr @s5p_mfc_release_codec_buffers_v5, ptr @s5p_mfc_alloc_instance_buffer_v5, ptr @s5p_mfc_release_instance_buffer_v5, ptr @s5p_mfc_alloc_dev_context_buffer_v5, ptr @s5p_mfc_release_dev_context_buffer_v5, ptr @s5p_mfc_dec_calc_dpb_size_v5, ptr @s5p_mfc_enc_calc_src_size_v5, ptr @s5p_mfc_set_enc_stream_buffer_v5, ptr @s5p_mfc_set_enc_frame_buffer_v5, ptr @s5p_mfc_get_enc_frame_buffer_v5, ptr @s5p_mfc_try_run_v5, ptr @s5p_mfc_clear_int_flags_v5, ptr @s5p_mfc_get_dspl_y_adr_v5, ptr @s5p_mfc_get_dec_y_adr_v5, ptr @s5p_mfc_get_dspl_status_v5, ptr @s5p_mfc_get_dec_status_v5, ptr @s5p_mfc_get_dec_frame_type_v5, ptr @s5p_mfc_get_disp_frame_type_v5, ptr @s5p_mfc_get_consumed_stream_v5, ptr @s5p_mfc_get_int_reason_v5, ptr @s5p_mfc_get_int_err_v5, ptr @s5p_mfc_err_dec_v5, ptr @s5p_mfc_get_img_width_v5, ptr @s5p_mfc_get_img_height_v5, ptr @s5p_mfc_get_dpb_count_v5, ptr @s5p_mfc_get_mv_count_v5, ptr @s5p_mfc_get_inst_no_v5, ptr @s5p_mfc_get_enc_strm_size_v5, ptr @s5p_mfc_get_enc_slice_type_v5, ptr @s5p_mfc_get_enc_dpb_count_v5, ptr @s5p_mfc_get_pic_type_top_v5, ptr @s5p_mfc_get_pic_type_bot_v5, ptr @s5p_mfc_get_crop_info_h_v5, ptr @s5p_mfc_get_crop_info_v_v5, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_dec_temp_buffers_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Failed to allocate temporary buffer\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s5p_mfc_alloc_dec_temp_buffers_v5\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_dec_temp_buffers_v5._entry_ptr = internal global ptr @s5p_mfc_alloc_dec_temp_buffers_v5._entry, section ".printk_index", align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_alloc_codec_buffers_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s:%d: Luma size:%d Chroma size:%d MV size:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5p_mfc_alloc_codec_buffers_v5\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v5._entry_ptr = internal global ptr @s5p_mfc_alloc_codec_buffers_v5._entry, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v5._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Totals bufs: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v5._entry_ptr.7 = internal global ptr @s5p_mfc_alloc_codec_buffers_v5._entry.5, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v5._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s:%d: recon luma size: %d chroma size: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v5._entry_ptr.10 = internal global ptr @s5p_mfc_alloc_codec_buffers_v5._entry.8, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v5._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s:%d: Failed to allocate Bank1 temporary buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v5._entry_ptr.13 = internal global ptr @s5p_mfc_alloc_codec_buffers_v5._entry.11, section ".printk_index", align 4
@s5p_mfc_alloc_codec_buffers_v5._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s:%d: Failed to allocate Bank2 temporary buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_codec_buffers_v5._entry_ptr.16 = internal global ptr @s5p_mfc_alloc_codec_buffers_v5._entry.14, section ".printk_index", align 4
@s5p_mfc_alloc_instance_buffer_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: Failed to allocate instance buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5p_mfc_alloc_instance_buffer_v5\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_instance_buffer_v5._entry_ptr = internal global ptr @s5p_mfc_alloc_instance_buffer_v5._entry, section ".printk_index", align 4
@s5p_mfc_alloc_instance_buffer_v5._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%d: Failed to allocate shared memory buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_instance_buffer_v5._entry_ptr.21 = internal global ptr @s5p_mfc_alloc_instance_buffer_v5._entry.19, section ".printk_index", align 4
@s5p_mfc_dec_calc_dpb_size_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s:%d: SEQ Done: Movie dimensions %dx%d, buffer dimensions: %dx%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5p_mfc_dec_calc_dpb_size_v5\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_calc_dpb_size_v5._entry_ptr = internal global ptr @s5p_mfc_dec_calc_dpb_size_v5._entry, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s:%d: Entering suspend so do not schedule any jobs\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5p_mfc_try_run_v5\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr = internal global ptr @s5p_mfc_try_run_v5._entry, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: Couldn't lock HW\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.28 = internal global ptr @s5p_mfc_try_run_v5._entry.26, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: Failed to unlock hardware\0A\00", [60 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.31 = internal global ptr @s5p_mfc_try_run_v5._entry.29, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:%d: No ctx is scheduled to be run\0A\00", [56 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.34 = internal global ptr @s5p_mfc_try_run_v5._entry.32, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s:%d: head parsed\0A\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.37 = internal global ptr @s5p_mfc_try_run_v5._entry.35, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s:%d: Finished remaining frames after resolution change\0A\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.40 = internal global ptr @s5p_mfc_try_run_v5._entry.38, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.2, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Will re-init the codec\0A\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.43 = internal global ptr @s5p_mfc_try_run_v5._entry.41, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.2, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s:%d: Invalid context type: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.46 = internal global ptr @s5p_mfc_try_run_v5._entry.44, section ".printk_index", align 4
@s5p_mfc_try_run_v5._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_try_run_v5._entry_ptr.48 = internal global ptr @s5p_mfc_try_run_v5._entry.47, section ".printk_index", align 4
@s5p_mfc_run_dec_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:%d: No src buffers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_mfc_run_dec_frame\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_run_dec_frame._entry_ptr = internal global ptr @s5p_mfc_run_dec_frame._entry, section ".printk_index", align 4
@s5p_mfc_run_dec_frame._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:%d: Setting ctx->state to FINISHING\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_run_dec_frame._entry_ptr.53 = internal global ptr @s5p_mfc_run_dec_frame._entry.51, section ".printk_index", align 4
@s5p_mfc_decode_one_frame_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Decoding a usual frame\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5p_mfc_decode_one_frame_v5\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_decode_one_frame_v5._entry_ptr = internal global ptr @s5p_mfc_decode_one_frame_v5._entry, section ".printk_index", align 4
@s5p_mfc_run_init_dec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s:%d: Preparing to init decoding\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_run_init_dec\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec._entry_ptr = internal global ptr @s5p_mfc_run_init_dec._entry, section ".printk_index", align 4
@s5p_mfc_run_init_dec._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Header size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec._entry_ptr.60 = internal global ptr @s5p_mfc_run_init_dec._entry.58, section ".printk_index", align 4
@s5p_mfc_run_init_dec_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"\013%s:%d: It seems that not all destination buffers were mmapped\0AMFC requires that all destination are mmapped before starting processing\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5p_mfc_run_init_dec_buffers\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec_buffers._entry_ptr = internal global ptr @s5p_mfc_run_init_dec_buffers._entry, section ".printk_index", align 4
@s5p_mfc_run_init_dec_buffers._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s:%d: Header has been deallocated in the middle of initialization\0A\00", [58 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec_buffers._entry_ptr.65 = internal global ptr @s5p_mfc_run_init_dec_buffers._entry.63, section ".printk_index", align 4
@s5p_mfc_run_init_dec_buffers._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.62, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec_buffers._entry_ptr.67 = internal global ptr @s5p_mfc_run_init_dec_buffers._entry.66, section ".printk_index", align 4
@s5p_mfc_run_init_dec_buffers._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: Failed to alloc frame mem\0A\00", [60 x i8] zeroinitializer }, align 32
@s5p_mfc_run_init_dec_buffers._entry_ptr.70 = internal global ptr @s5p_mfc_run_init_dec_buffers._entry.68, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: Unknown codec for decoding (%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s5p_mfc_set_dec_frame_buffer_v5\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s:%d: Frm size: %d ch: %d mv: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.75 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.73, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:%d: Luma %d: %zx\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.78 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.76, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: \09Chroma %d: %zx\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.81 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.79, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:%d: \09Buf2: %zx, size: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.84 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.82, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.72, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%d: Buf1: %zu, buf_size1: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.87 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.85, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.72, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:%d: Buf 1/2 size after: %d/%d (frames %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.90 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.88, section ".printk_index", align 4
@s5p_mfc_set_dec_frame_buffer_v5._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.72, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s:%d: Not enough memory has been allocated\0A\00", [49 x i8] zeroinitializer }, align 32
@s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.93 = internal global ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.91, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:%d: no src buffers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_mfc_run_enc_frame\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr = internal global ptr @s5p_mfc_run_enc_frame._entry, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:%d: no dst buffers\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr.98 = internal global ptr @s5p_mfc_run_enc_frame._entry.96, section ".printk_index", align 4
@s5p_mfc_run_enc_frame._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s:%d: encoding buffer with index=%d state=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_run_enc_frame._entry_ptr.101 = internal global ptr @s5p_mfc_run_enc_frame._entry.99, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s:%d: buf_size1: %zu, buf_size2: %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s5p_mfc_set_enc_ref_buffer_v5\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v5._entry_ptr = internal global ptr @s5p_mfc_set_enc_ref_buffer_v5._entry, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v5._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.105 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.104, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v5._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.107 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.106, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v5._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.109 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.108, section ".printk_index", align 4
@s5p_mfc_set_enc_ref_buffer_v5._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: Unknown codec set for encoding: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.112 = internal global ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.110, section ".printk_index", align 4
@s5p_mfc_init_encode_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: Unknown codec for encoding (%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_init_encode_v5\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_init_encode_v5._entry_ptr = internal global ptr @s5p_mfc_init_encode_v5._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 20, i64 22, i64 23]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 20]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 842091854, i64 842091860]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [11 x i64] [i64 9, i64 32, i64 100, i64 101, i64 102, i64 105, i64 106, i64 108, i64 112, i64 113, i64 114]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 101, i64 105, i64 106, i64 108]
@__sancov_gen_cov_switch_values.121 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 15, i64 32]
@__sancov_gen_cov_switch_values.122 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 842091854, i64 842091860]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 22, i64 23]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 22, i64 23]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 842091854, i64 842091860]
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"s5p_mfc_ops_v5\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1594, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 43, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 70, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 72, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 93, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 174, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 183, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 214, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 227, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 280, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1323, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1329, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1337, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1340, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1374, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1383, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1385, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1412, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1419, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1175, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1187, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1104, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1254, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1257, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1293, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1297, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1301, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1309, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 462, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 469, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 473, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 477, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 482, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 490, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 491, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 494, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1203, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1207, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1242, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 567, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 606, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 637, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 663, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 667, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [51 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1119, i32 3 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @s5p_mfc_alloc_codec_buffers_v5._entry, ptr @s5p_mfc_alloc_codec_buffers_v5._entry.11, ptr @s5p_mfc_alloc_codec_buffers_v5._entry.14, ptr @s5p_mfc_alloc_codec_buffers_v5._entry.5, ptr @s5p_mfc_alloc_codec_buffers_v5._entry.8, ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr, ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.10, ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.13, ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.16, ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.7, ptr @s5p_mfc_alloc_dec_temp_buffers_v5._entry, ptr @s5p_mfc_alloc_dec_temp_buffers_v5._entry_ptr, ptr @s5p_mfc_alloc_instance_buffer_v5._entry, ptr @s5p_mfc_alloc_instance_buffer_v5._entry.19, ptr @s5p_mfc_alloc_instance_buffer_v5._entry_ptr, ptr @s5p_mfc_alloc_instance_buffer_v5._entry_ptr.21, ptr @s5p_mfc_dec_calc_dpb_size_v5._entry, ptr @s5p_mfc_dec_calc_dpb_size_v5._entry_ptr, ptr @s5p_mfc_decode_one_frame_v5._entry, ptr @s5p_mfc_decode_one_frame_v5._entry_ptr, ptr @s5p_mfc_init_encode_v5._entry, ptr @s5p_mfc_init_encode_v5._entry_ptr, ptr @s5p_mfc_run_dec_frame._entry, ptr @s5p_mfc_run_dec_frame._entry.51, ptr @s5p_mfc_run_dec_frame._entry_ptr, ptr @s5p_mfc_run_dec_frame._entry_ptr.53, ptr @s5p_mfc_run_enc_frame._entry, ptr @s5p_mfc_run_enc_frame._entry.96, ptr @s5p_mfc_run_enc_frame._entry.99, ptr @s5p_mfc_run_enc_frame._entry_ptr, ptr @s5p_mfc_run_enc_frame._entry_ptr.101, ptr @s5p_mfc_run_enc_frame._entry_ptr.98, ptr @s5p_mfc_run_init_dec._entry, ptr @s5p_mfc_run_init_dec._entry.58, ptr @s5p_mfc_run_init_dec._entry_ptr, ptr @s5p_mfc_run_init_dec._entry_ptr.60, ptr @s5p_mfc_run_init_dec_buffers._entry, ptr @s5p_mfc_run_init_dec_buffers._entry.63, ptr @s5p_mfc_run_init_dec_buffers._entry.66, ptr @s5p_mfc_run_init_dec_buffers._entry.68, ptr @s5p_mfc_run_init_dec_buffers._entry_ptr, ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.65, ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.67, ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.70, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.73, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.76, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.79, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.82, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.85, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.88, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.91, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.75, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.78, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.81, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.84, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.87, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.90, ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.93, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.104, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.106, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.108, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.110, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.105, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.107, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.109, ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.112, ptr @s5p_mfc_try_run_v5._entry, ptr @s5p_mfc_try_run_v5._entry.26, ptr @s5p_mfc_try_run_v5._entry.29, ptr @s5p_mfc_try_run_v5._entry.32, ptr @s5p_mfc_try_run_v5._entry.35, ptr @s5p_mfc_try_run_v5._entry.38, ptr @s5p_mfc_try_run_v5._entry.41, ptr @s5p_mfc_try_run_v5._entry.44, ptr @s5p_mfc_try_run_v5._entry.47, ptr @s5p_mfc_try_run_v5._entry_ptr, ptr @s5p_mfc_try_run_v5._entry_ptr.28, ptr @s5p_mfc_try_run_v5._entry_ptr.31, ptr @s5p_mfc_try_run_v5._entry_ptr.34, ptr @s5p_mfc_try_run_v5._entry_ptr.37, ptr @s5p_mfc_try_run_v5._entry_ptr.40, ptr @s5p_mfc_try_run_v5._entry_ptr.43, ptr @s5p_mfc_try_run_v5._entry_ptr.46, ptr @s5p_mfc_try_run_v5._entry_ptr.48, ptr @s5p_mfc_ops_v5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.111, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_ops_v5 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_dec_temp_buffers_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v5._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v5._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v5._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_codec_buffers_v5._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_instance_buffer_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_instance_buffer_v5._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_calc_dpb_size_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_try_run_v5._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_dec_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_dec_frame._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_decode_one_frame_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec_buffers._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec_buffers._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_init_dec_buffers._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_run_enc_frame._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_encode_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_ops_v5() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_ops_v5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_dec_temp_buffers_v5(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dsc = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dsc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsc, align 4
  %dsc3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 50
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 50, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %size, align 4
  %call = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %1, i32 noundef 0, ptr noundef %dsc3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43) #9
  br label %cleanup

do.body9:                                         ; preds = %entry
  %dma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 50, i32 2
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  %and = and i32 %12, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.end23, label %do.body15, !prof !196

do.body15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #6, !srcloc !197
  unreachable

do.end23:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %virt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 50, i32 1
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt, align 4
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = call ptr @memset(ptr %14, i32 0, i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_release_dec_desc_buffer_v5(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dsc = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 50
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %1, ptr noundef %dsc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_codec_buffers_v5(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 15
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 2, label %if.then20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %5 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp sgt i32 %5, 1
  br i1 %cmp2, label %do.body7, label %do.body.if.end63_crit_edge

do.body.if.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.body7:                                         ; preds = %do.body
  %luma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %6 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %luma_size, align 4
  %chroma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %8 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chroma_size, align 4
  %mv_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %10 = ptrtoint ptr %mv_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mv_size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 71, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp8 = icmp sgt i32 %.pr, 1
  br i1 %cmp8, label %do.end12, label %do.body7.if.end63_crit_edge

do.body7.if.end63_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %total_dpb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 47
  %12 = ptrtoint ptr %total_dpb_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total_dpb_count, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 72, i32 noundef %13) #9
  br label %if.end63

if.then20:                                        ; preds = %entry
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %14 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %img_width, align 4
  %add = add i32 %15, 127
  %and = and i32 %add, -128
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %16 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %img_height, align 4
  %add21 = add i32 %17, 31
  %and22 = and i32 %add21, -32
  %mul = mul i32 %and22, %and
  %add23 = add i32 %mul, 8191
  %and24 = and i32 %add23, -8192
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %18 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %19)
  %cmp25 = icmp eq i32 %19, 20
  %add39 = add i32 %15, 143
  %and40 = and i32 %add39, -128
  %.sink = select i1 %cmp25, i32 31, i32 35
  %and.sink = select i1 %cmp25, i32 %and, i32 %and40
  %shr = ashr i32 %17, 1
  %add31 = add nsw i32 %shr, %.sink
  %and32 = and i32 %add31, -32
  %mul33 = mul i32 %and32, %and.sink
  %enc_ref_c_size.0.in = add i32 %mul33, 8191
  %enc_ref_c_size.0 = and i32 %enc_ref_c_size.0.in, -8192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %20 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp51 = icmp sgt i32 %20, 1
  br i1 %cmp51, label %do.end55, label %if.then20.if.end63_crit_edge

if.then20.if.end63_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end55:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 94, i32 noundef %and24, i32 noundef %enc_ref_c_size.0) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end55, %if.then20.if.end63_crit_edge, %do.end12, %do.body7.if.end63_crit_edge, %do.body.if.end63_crit_edge
  %enc_ref_c_size.1 = phi i32 [ 0, %do.end12 ], [ 0, %do.body7.if.end63_crit_edge ], [ %enc_ref_c_size.0, %do.end55 ], [ %enc_ref_c_size.0, %if.then20.if.end63_crit_edge ], [ 0, %do.body.if.end63_crit_edge ]
  %enc_ref_y_size.0 = phi i32 [ 0, %do.end12 ], [ 0, %do.body7.if.end63_crit_edge ], [ %and24, %do.end55 ], [ %and24, %if.then20.if.end63_crit_edge ], [ 0, %do.body.if.end63_crit_edge ]
  %codec_mode64 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %21 = ptrtoint ptr %codec_mode64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %codec_mode64, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %22, label %if.end63.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb69
    i32 6, label %if.end63.sw.bb74_crit_edge
    i32 2, label %if.end63.sw.bb74_crit_edge261
    i32 4, label %sw.bb79
    i32 5, label %sw.bb84
    i32 20, label %sw.bb89
    i32 22, label %sw.bb103
    i32 23, label %sw.bb115
  ]

if.end63.sw.bb74_crit_edge261:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb74

if.end63.sw.bb74_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb74

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 49152, ptr %size, align 4
  %total_dpb_count65 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 47
  %25 = ptrtoint ptr %total_dpb_count65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_dpb_count65, align 4
  %mv_size66 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %27 = ptrtoint ptr %mv_size66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mv_size66, align 4
  %mul67 = mul i32 %28, %26
  br label %sw.epilog.sink.split

sw.bb69:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %size71 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %29 = ptrtoint ptr %size71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 327680, ptr %size71, align 4
  br label %sw.epilog.sink.split

sw.bb74:                                          ; preds = %if.end63.sw.bb74_crit_edge, %if.end63.sw.bb74_crit_edge261
  %size76 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %30 = ptrtoint ptr %size76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 270336, ptr %size76, align 4
  br label %sw.epilog.sink.split

sw.bb79:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %size81 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %31 = ptrtoint ptr %size81 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %size81, align 4
  br label %sw.epilog.sink.split

sw.bb84:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %size86 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %32 = ptrtoint ptr %size86 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262144, ptr %size86, align 4
  br label %sw.epilog.sink.split

sw.bb89:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %mul90 = shl i32 %enc_ref_y_size.0, 1
  %add94 = add i32 %mul90, 262144
  %size96 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %33 = ptrtoint ptr %size96 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add94, ptr %size96, align 4
  %mul98 = shl i32 %enc_ref_c_size.1, 2
  %add99 = or i32 %mul98, 16384
  %add100 = add i32 %add99, %mul90
  br label %sw.epilog.sink.split

sw.bb103:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %mul104 = shl i32 %enc_ref_y_size.0, 1
  %add107 = add i32 %mul104, 196608
  %size109 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %34 = ptrtoint ptr %size109 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add107, ptr %size109, align 4
  %mul111 = shl i32 %enc_ref_c_size.1, 2
  %add112 = add i32 %mul104, %mul111
  br label %sw.epilog.sink.split

sw.bb115:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %mul116 = shl i32 %enc_ref_y_size.0, 1
  %add118 = add i32 %mul116, 131072
  %size120 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %35 = ptrtoint ptr %size120 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add118, ptr %size120, align 4
  %mul122 = shl i32 %enc_ref_c_size.1, 2
  %add123 = add i32 %mul116, %mul122
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb115, %sw.bb103, %sw.bb89, %sw.bb84, %sw.bb79, %sw.bb74, %sw.bb69, %sw.bb
  %add123.sink = phi i32 [ %add123, %sw.bb115 ], [ %add112, %sw.bb103 ], [ %add100, %sw.bb89 ], [ 0, %sw.bb84 ], [ 0, %sw.bb79 ], [ 0, %sw.bb74 ], [ 0, %sw.bb69 ], [ %mul67, %sw.bb ]
  %size125 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %36 = ptrtoint ptr %size125 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add123.sink, ptr %size125, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end63.sw.epilog_crit_edge
  %bank1126 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28
  %size127 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %37 = ptrtoint ptr %size127 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp128.not = icmp eq i32 %38, 0
  br i1 %cmp128.not, label %sw.epilog.if.end158_crit_edge, label %if.then129

sw.epilog.if.end158_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

if.then129:                                       ; preds = %sw.epilog
  %call131 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %1, i32 noundef 0, ptr noundef %bank1126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool.not = icmp eq i32 %call131, 0
  br i1 %tobool.not, label %do.body142, label %do.end136

do.end136:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #8
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef 174) #9
  br label %cleanup

do.body142:                                       ; preds = %if.then129
  %dma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 2
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma, align 4
  %and144 = and i32 %40, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body142.if.end158_crit_edge, label %do.body149, !prof !196

do.body142.if.end158_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

do.body149:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #6, !srcloc !199
  unreachable

if.end158:                                        ; preds = %do.body142.if.end158_crit_edge, %sw.epilog.if.end158_crit_edge
  %size160 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %41 = ptrtoint ptr %size160 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp161.not = icmp eq i32 %42, 0
  br i1 %cmp161.not, label %if.end158.cleanup_crit_edge, label %if.then162

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then162:                                       ; preds = %if.end158
  %bank2159 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29
  %call164 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %1, i32 noundef 1, ptr noundef %bank2159) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %do.body178, label %do.end170

do.end170:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef 183) #9
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %44, ptr noundef %bank1126) #6
  br label %cleanup

do.body178:                                       ; preds = %if.then162
  %dma180 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 2
  %45 = ptrtoint ptr %dma180 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma180, align 4
  %and181 = and i32 %46, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %do.body178.cleanup_crit_edge, label %do.body190, !prof !196

do.body178.cleanup_crit_edge:                     ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #6, !srcloc !200
  unreachable

cleanup:                                          ; preds = %do.body178.cleanup_crit_edge, %do.end170, %if.end158.cleanup_crit_edge, %do.end136, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call131, %do.end136 ], [ %call164, %do.end170 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body178.cleanup_crit_edge ], [ 0, %if.end158.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_release_codec_buffers_v5(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bank1 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %1, ptr noundef %bank1) #6
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %bank2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %3, ptr noundef %bank2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_instance_buffer_v5(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %8 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %9, label %if.else [
    i32 0, label %entry.if.end_crit_edge
    i32 20, label %entry.if.end_crit_edge97
  ]

entry.if.end_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %non_h264_ctx = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %7, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge97
  %non_h264_ctx.sink = phi ptr [ %non_h264_ctx, %if.else ], [ %7, %entry.if.end_crit_edge ], [ %7, %entry.if.end_crit_edge97 ]
  %11 = ptrtoint ptr %non_h264_ctx.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %non_h264_ctx.sink, align 4
  %size7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %13 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size7, align 4
  %ctx8 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49
  %call = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %1, i32 noundef 0, ptr noundef %ctx8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 214) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %dma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 2
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma, align 4
  %dma_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_base, align 4
  %sub = sub i32 %15, %17
  %shr = lshr i32 %sub, 11
  %18 = ptrtoint ptr %ctx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %ctx8, align 4
  %virt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 1
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt, align 4
  %size19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %21 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size19, align 4
  %23 = call ptr @memset(ptr %20, i32 0, i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %shm = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shm, align 4
  %shm23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  %size24 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 3
  %26 = ptrtoint ptr %size24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %size24, align 4
  %call26 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %1, i32 noundef 0, ptr noundef %shm23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end38, label %do.end32

do.end32:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 227) #9
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %1, ptr noundef %ctx8) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end14
  %dma40 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 2
  %27 = ptrtoint ptr %dma40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma40, align 4
  %29 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_base, align 4
  %sub43 = sub i32 %28, %30
  %31 = ptrtoint ptr %shm23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub43, ptr %shm23, align 4
  %and = and i32 %sub43, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %do.end61, label %do.body53, !prof !196

do.body53:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #6, !srcloc !202
  unreachable

do.end61:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %virt63 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %32 = ptrtoint ptr %virt63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt63, align 4
  %34 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %shm, align 4
  %36 = call ptr @memset(ptr %33, i32 0, i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %do.end32, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call26, %do.end32 ], [ 0, %do.end61 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_release_instance_buffer_v5(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ctx1 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %1, ptr noundef %ctx1) #6
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %shm = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %3, ptr noundef %shm) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_alloc_dev_context_buffer_v5(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_release_dev_context_buffer_v5(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_dec_calc_dpb_size_v5(ptr nocapture noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %0 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %img_width, align 4
  %add = add i32 %1, 127
  %and = and i32 %add, -128
  %buf_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 20
  %2 = ptrtoint ptr %buf_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %buf_width, align 4
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %3 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %img_height, align 4
  %add1 = add i32 %4, 31
  %and2 = and i32 %add1, -32
  %buf_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 21
  %5 = ptrtoint ptr %buf_height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %buf_height, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %6 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 283, i32 noundef %1, i32 noundef %4, i32 noundef %and, i32 noundef %and2) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %7 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_width, align 4
  %11 = ptrtoint ptr %buf_height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_height, align 4
  %mul = mul i32 %12, %10
  %13 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %img_height, align 4
  %shr = ashr i32 %14, 1
  %add18 = add nsw i32 %shr, 31
  %and19 = and i32 %add18, -32
  %mul20 = mul i32 %and19, %10
  %shr25 = ashr i32 %12, 2
  %add26 = add nsw i32 %shr25, 31
  %and27 = and i32 %add26, -32
  %mul28 = mul i32 %and27, %10
  %add29 = add i32 %mul28, 8191
  %and30 = and i32 %add29, -8192
  br label %if.end57

if.else:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %img_width, align 4
  %add33 = add i32 %16, 151
  %and34 = and i32 %add33, -128
  %17 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %img_height, align 4
  %add37 = add i32 %18, 47
  %and38 = and i32 %add37, -32
  %mul39 = mul i32 %and38, %and34
  %add45 = add i32 %16, 143
  %and46 = and i32 %add45, -128
  %shr48 = ashr i32 %18, 1
  %add50 = add nsw i32 %shr48, 35
  %and51 = and i32 %add50, -32
  %mul52 = mul i32 %and51, %and46
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then11
  %and41.sink.in.in = phi i32 [ %mul, %if.then11 ], [ %mul39, %if.else ]
  %and54.sink.in.in = phi i32 [ %mul20, %if.then11 ], [ %mul52, %if.else ]
  %.sink = phi i32 [ %and30, %if.then11 ], [ 0, %if.else ]
  %and54.sink.in = add i32 %and54.sink.in.in, 8191
  %and54.sink = and i32 %and54.sink.in, -8192
  %and41.sink.in = add i32 %and41.sink.in.in, 8191
  %and41.sink = and i32 %and41.sink.in, -8192
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and41.sink, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and54.sink, ptr %21, align 4
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %23, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_enc_calc_src_size_v5(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_fmt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %3, label %entry.if.end54_crit_edge [
    i32 842091854, label %if.then
    i32 842091860, label %if.then24
  ]

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %5 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %img_width, align 4
  %add = add i32 %6, 15
  %and = and i32 %add, -16
  %buf_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 20
  %7 = ptrtoint ptr %buf_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %buf_width, align 4
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %8 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %img_height, align 4
  %add4 = add i32 %9, 15
  %and5 = and i32 %add4, -16
  %mul = mul i32 %and5, %and
  %luma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %shr = ashr i32 %9, 1
  %add10 = add nsw i32 %shr, 7
  %and11 = and i32 %add10, -8
  %mul12 = mul i32 %and11, %and
  %chroma_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %add14 = add i32 %mul, 2047
  %and15 = and i32 %add14, -2048
  %10 = ptrtoint ptr %luma_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and15, ptr %luma_size, align 4
  %add18 = add i32 %mul12, 2047
  %and19 = and i32 %add18, -2048
  %11 = ptrtoint ptr %chroma_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and19, ptr %chroma_size, align 4
  br label %if.end54

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %img_width25 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %12 = ptrtoint ptr %img_width25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %img_width25, align 4
  %add26 = add i32 %13, 127
  %and27 = and i32 %add26, -128
  %buf_width28 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 20
  %14 = ptrtoint ptr %buf_width28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and27, ptr %buf_width28, align 4
  %img_height32 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %15 = ptrtoint ptr %img_height32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %img_height32, align 4
  %add33 = add i32 %16, 31
  %and34 = and i32 %add33, -32
  %mul35 = mul i32 %and34, %and27
  %luma_size36 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %shr41 = ashr i32 %16, 1
  %add42 = add nsw i32 %shr41, 31
  %and43 = and i32 %add42, -32
  %mul44 = mul i32 %and43, %and27
  %chroma_size45 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %add47 = add i32 %mul35, 8191
  %and48 = and i32 %add47, -8192
  %17 = ptrtoint ptr %luma_size36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and48, ptr %luma_size36, align 4
  %add51 = add i32 %mul44, 8191
  %and52 = and i32 %add51, -8192
  %18 = ptrtoint ptr %chroma_size45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and52, ptr %chroma_size45, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then24, %if.then, %entry.if.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_set_enc_stream_buffer_v5(ptr nocapture noundef readonly %ctx, i32 noundef %addr, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %dma_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_base, align 4
  %sub = sub i32 %addr, %3
  %shr = lshr i32 %sub, 11
  %4 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %size)
  %8 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs_base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %7) #6, !srcloc !205
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_set_enc_frame_buffer_v5(ptr nocapture noundef readonly %ctx, i32 noundef %y_addr, i32 noundef %c_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %y_addr, %3
  %shr = lshr i32 %sub, 11
  %4 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %sub7 = sub i32 %c_addr, %8
  %shr8 = lshr i32 %sub7, 11
  %9 = tail call i32 @llvm.bswap.i32(i32 %shr8)
  %10 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %9) #6, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_get_enc_frame_buffer_v5(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %y_addr, ptr nocapture noundef writeonly %c_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8212
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  %shl = shl i32 %7, 11
  %add = add i32 %shl, %3
  %8 = ptrtoint ptr %y_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %y_addr, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs_base, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 8216
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !209
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  %shl12 = shl i32 %14, 11
  %add13 = add i32 %shl12, %10
  %15 = ptrtoint ptr %c_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add13, ptr %c_addr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_try_run_v5(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enter_suspend = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 33
  %0 = ptrtoint ptr %enter_suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enter_suspend, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1323) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 25
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %hw_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end21, label %do.body10

do.body10:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %3 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %do.end15, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 1329) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %call22 = tail call i32 @s5p_mfc_get_new_ctx(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end49

if.then24:                                        ; preds = %if.end21
  %call26 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %do.body38

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 1337) #9
  br label %cleanup

do.body38:                                        ; preds = %if.then24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %4 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp39 = icmp sgt i32 %4, 0
  br i1 %cmp39, label %do.end43, label %do.body38.cleanup_crit_edge

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef 1340) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end21
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 26, i32 %call22
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call51 = tail call i32 @s5p_mfc_clock_on() #6
  tail call void @s5p_mfc_clean_ctx_int_flags(ptr noundef %6) #6
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %8, label %do.end158 [
    i32 1, label %if.then53
    i32 2, label %if.then119
  ]

if.then53:                                        ; preds = %if.end49
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant.i, align 4
  %buf_size2.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %buf_size2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_size2.i, align 4
  %priv.i = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %dma.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %6, i32 0, i32 50, i32 2
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma.i, align 4
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %11, i32 0, i32 24
  %20 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_base.i, align 4
  %sub.i = sub i32 %19, %21
  %shr.i = lshr i32 %sub.i, 11
  %22 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %11, i32 0, i32 5
  %23 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %dsc6.i = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %17, i32 0, i32 2
  %25 = ptrtoint ptr %dsc6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsc6.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %29, i32 8284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %27) #6, !srcloc !205
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %6, i32 0, i32 16
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %31, label %if.then53.if.then167_crit_edge [
    i32 106, label %sw.bb
    i32 105, label %sw.bb55
    i32 100, label %sw.bb57
    i32 108, label %sw.bb64
    i32 101, label %sw.bb77
    i32 102, label %sw.bb78
    i32 112, label %sw.bb91
    i32 113, label %sw.bb92
    i32 114, label %do.body95
  ]

if.then53.if.then167_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

sw.bb:                                            ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %6, i32 noundef 1)
  br label %cleanup

sw.bb55:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %6, i32 noundef 0)
  br label %if.end165

sw.bb57:                                          ; preds = %if.then53
  %mfc_cmds = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %33 = ptrtoint ptr %mfc_cmds to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mfc_cmds, align 4
  %tobool58.not = icmp eq ptr %34, null
  br i1 %tobool58.not, label %sw.bb57.if.then167_crit_edge, label %land.lhs.true

sw.bb57.if.then167_crit_edge:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

land.lhs.true:                                    ; preds = %sw.bb57
  %open_inst_cmd = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %open_inst_cmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %open_inst_cmd, align 4
  %tobool60.not = icmp eq ptr %36, null
  br i1 %tobool60.not, label %land.lhs.true.if.then167_crit_edge, label %cond.true

land.lhs.true.if.then167_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 %36(ptr noundef %6) #6
  br label %if.end165

sw.bb64:                                          ; preds = %if.then53
  %mfc_cmds65 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %37 = ptrtoint ptr %mfc_cmds65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mfc_cmds65, align 4
  %tobool66.not = icmp eq ptr %38, null
  br i1 %tobool66.not, label %sw.bb64.if.then167_crit_edge, label %land.lhs.true67

sw.bb64.if.then167_crit_edge:                     ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

land.lhs.true67:                                  ; preds = %sw.bb64
  %close_inst_cmd = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %close_inst_cmd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %close_inst_cmd, align 4
  %tobool69.not = icmp eq ptr %40, null
  br i1 %tobool69.not, label %land.lhs.true67.if.then167_crit_edge, label %cond.true70

land.lhs.true67.if.then167_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

cond.true70:                                      ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 %40(ptr noundef %6) #6
  br label %if.end165

sw.bb77:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %6)
  br label %cleanup

sw.bb78:                                          ; preds = %if.then53
  %call79 = tail call fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %41 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp81 = icmp sgt i32 %41, 0
  br i1 %cmp81, label %do.end85, label %sw.bb78.if.end165_crit_edge

sw.bb78.if.end165_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

do.end85:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef 1374) #9
  br label %if.end165

sw.bb91:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @s5p_mfc_run_res_change(ptr noundef %6)
  br label %cleanup

sw.bb92:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %6, i32 noundef 0)
  br label %cleanup

do.body95:                                        ; preds = %if.then53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %42 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp96 = icmp sgt i32 %42, 1
  br i1 %cmp96, label %do.end105, label %do.end105.thread

do.end105.thread:                                 ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %capture_state230 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %6, i32 0, i32 30
  %43 = ptrtoint ptr %capture_state230 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %capture_state230, align 4
  br label %do.end116

do.end105:                                        ; preds = %do.body95
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef 1383) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  %capture_state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %6, i32 0, i32 30
  %44 = ptrtoint ptr %capture_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %capture_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp107 = icmp sgt i32 %.pr, 1
  br i1 %cmp107, label %do.end111, label %do.end105.do.end116_crit_edge

do.end105.do.end116_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

do.end111:                                        ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.25, i32 noundef 1385) #9
  br label %do.end116

do.end116:                                        ; preds = %do.end111, %do.end105.do.end116_crit_edge, %do.end105.thread
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %6)
  br label %cleanup

if.then119:                                       ; preds = %if.end49
  %state120 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %6, i32 0, i32 16
  %45 = ptrtoint ptr %state120 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state120, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %46, label %if.then119.if.then167_crit_edge [
    i32 106, label %if.then119.sw.bb121_crit_edge
    i32 105, label %if.then119.sw.bb121_crit_edge238
    i32 100, label %sw.bb123
    i32 108, label %sw.bb137
    i32 101, label %sw.bb151
  ]

if.then119.sw.bb121_crit_edge238:                 ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb121

if.then119.sw.bb121_crit_edge:                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb121

if.then119.if.then167_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

sw.bb121:                                         ; preds = %if.then119.sw.bb121_crit_edge, %if.then119.sw.bb121_crit_edge238
  %call122 = tail call fastcc i32 @s5p_mfc_run_enc_frame(ptr noundef %6)
  br label %if.end165

sw.bb123:                                         ; preds = %if.then119
  %mfc_cmds124 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %48 = ptrtoint ptr %mfc_cmds124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mfc_cmds124, align 4
  %tobool125.not = icmp eq ptr %49, null
  br i1 %tobool125.not, label %sw.bb123.if.then167_crit_edge, label %land.lhs.true126

sw.bb123.if.then167_crit_edge:                    ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

land.lhs.true126:                                 ; preds = %sw.bb123
  %open_inst_cmd128 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %open_inst_cmd128 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %open_inst_cmd128, align 4
  %tobool129.not = icmp eq ptr %51, null
  br i1 %tobool129.not, label %land.lhs.true126.if.then167_crit_edge, label %cond.true130

land.lhs.true126.if.then167_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

cond.true130:                                     ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  %call133 = tail call i32 %51(ptr noundef %6) #6
  br label %if.end165

sw.bb137:                                         ; preds = %if.then119
  %mfc_cmds138 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %52 = ptrtoint ptr %mfc_cmds138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mfc_cmds138, align 4
  %tobool139.not = icmp eq ptr %53, null
  br i1 %tobool139.not, label %sw.bb137.if.then167_crit_edge, label %land.lhs.true140

sw.bb137.if.then167_crit_edge:                    ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

land.lhs.true140:                                 ; preds = %sw.bb137
  %close_inst_cmd142 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %close_inst_cmd142 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %close_inst_cmd142, align 4
  %tobool143.not = icmp eq ptr %55, null
  br i1 %tobool143.not, label %land.lhs.true140.if.then167_crit_edge, label %cond.true144

land.lhs.true140.if.then167_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

cond.true144:                                     ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 %55(ptr noundef %6) #6
  br label %if.end165

sw.bb151:                                         ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @s5p_mfc_run_init_enc(ptr noundef %6)
  br label %cleanup

do.end158:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.25, i32 noundef 1412, i32 noundef %8) #9
  br label %if.then167

if.end165:                                        ; preds = %cond.true144, %cond.true130, %sw.bb121, %do.end85, %sw.bb78.if.end165_crit_edge, %cond.true70, %cond.true, %sw.bb55
  %ret.0 = phi i32 [ %call79, %do.end85 ], [ %call79, %sw.bb78.if.end165_crit_edge ], [ %call56, %sw.bb55 ], [ %call122, %sw.bb121 ], [ %call63, %cond.true ], [ %call73, %cond.true70 ], [ %call133, %cond.true130 ], [ %call147, %cond.true144 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool166.not = icmp eq i32 %ret.0, 0
  br i1 %tobool166.not, label %if.end165.cleanup_crit_edge, label %if.end165.if.then167_crit_edge

if.end165.if.then167_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then167:                                       ; preds = %if.end165.if.then167_crit_edge, %do.end158, %land.lhs.true140.if.then167_crit_edge, %sw.bb137.if.then167_crit_edge, %land.lhs.true126.if.then167_crit_edge, %sw.bb123.if.then167_crit_edge, %if.then119.if.then167_crit_edge, %land.lhs.true67.if.then167_crit_edge, %sw.bb64.if.then167_crit_edge, %land.lhs.true.if.then167_crit_edge, %sw.bb57.if.then167_crit_edge, %if.then53.if.then167_crit_edge
  %call169 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %do.end175, label %if.then167.if.end180_crit_edge

if.then167.if.end180_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

do.end175:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 1419) #9
  br label %if.end180

if.end180:                                        ; preds = %do.end175, %if.then167.if.end180_crit_edge
  tail call void @s5p_mfc_clock_off() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.end165.cleanup_crit_edge, %sw.bb151, %do.end116, %sw.bb92, %sw.bb91, %sw.bb77, %sw.bb, %do.end43, %do.body38.cleanup_crit_edge, %do.end32, %do.end15, %do.body10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_clear_int_flags_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_base, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_base, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -65536) #6, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_y_adr_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  %shl = shl i32 %3, 11
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_y_adr_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8228
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %shl = shl i32 %3, 11
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_status_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8220
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_status_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8236
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_frame_type_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %and = and i32 %3, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_disp_frame_type_v5(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %shr = lshr i32 %3, 2
  %and = and i32 %shr, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_consumed_stream_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8216
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_reason_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %3 = and i32 %2, -65280
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %4, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 8, label %sw.bb6
    i32 9, label %sw.bb7
    i32 10, label %sw.bb8
    i32 11, label %sw.bb9
    i32 15, label %sw.bb10
    i32 7, label %sw.bb11
    i32 32, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %reason.0 = phi i32 [ 0, %sw.default ], [ 32, %sw.bb12 ], [ 9, %sw.bb11 ], [ 4, %sw.bb10 ], [ 8, %sw.bb9 ], [ 7, %sw.bb8 ], [ 12, %sw.bb7 ], [ 1, %sw.bb6 ], [ 15, %sw.bb5 ], [ 13, %sw.bb4 ], [ 3, %sw.bb3 ], [ 6, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ]
  ret i32 %reason.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_err_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_err_dec_v5(i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %err, 65535
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_width_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8200
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_height_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dpb_count_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8204
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_get_mv_count_v5(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_inst_no_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_strm_size_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_slice_type_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !209
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_get_enc_dpb_count_v5(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_top_v5(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_bot_v5(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_h_v5(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_v_v5(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_priv_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_priv_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_get_new_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clean_ctx_int_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %ctx, i32 noundef %last_frame) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_base.i, align 4
  %sub.i = sub i32 0, %5
  %shr.i = lshr i32 %sub.i, 11
  %6 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %dec_src_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 38
  %9 = ptrtoint ptr %dec_src_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dec_src_buf_size.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %11) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %15, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #6, !srcloc !205
  %virt.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %16 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 24
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %curr_ctx, align 4
  tail call fastcc void @s5p_mfc_decode_one_frame_v5(ptr noundef %ctx, i32 noundef 1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %22 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not = icmp eq ptr %23, %src_queue
  br i1 %cmp.i.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %24 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp5 = icmp sgt i32 %24, 1
  br i1 %cmp5, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1175) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %23, i32 -4
  %flags = getelementptr i8, ptr %23, i32 16
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %flags, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %28, i32 noundef 0) #6
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 4
  %consumed_stream = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 25
  %31 = ptrtoint ptr %consumed_stream to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %consumed_stream, align 4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %34, i32 0, i32 10, i32 0, i32 3
  %35 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytesused, align 4
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %dma_base.i59 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %dma_base.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_base.i59, align 4
  %sub.i60 = sub i32 %30, %40
  %shr.i61 = lshr i32 %sub.i60, 11
  %41 = tail call i32 @llvm.bswap.i32(i32 %shr.i61) #6
  %regs_base.i62 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %38, i32 0, i32 5
  %42 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %43, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %41) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %dec_src_buf_size.i64 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 38
  %44 = ptrtoint ptr %dec_src_buf_size.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dec_src_buf_size.i64, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %47 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr6.i65 = getelementptr i8, ptr %48, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i65, i32 %46) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %50 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr11.i66 = getelementptr i8, ptr %51, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i66, i32 %49) #6, !srcloc !205
  %virt.i.i67 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %52 = ptrtoint ptr %virt.i.i67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %virt.i.i67, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %53, i32 24
  %54 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %32, ptr %add.ptr.i.i68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %num19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %55 = ptrtoint ptr %num19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num19, align 4
  %curr_ctx20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %57 = ptrtoint ptr %curr_ctx20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %curr_ctx20, align 4
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %bytesused25 = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 10, i32 0, i32 3
  %60 = ptrtoint ptr %bytesused25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytesused25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp26 = icmp eq i32 %61, 0
  br i1 %cmp26, label %if.then27, label %if.end12.if.end40_crit_edge

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then27:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %62 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp29 = icmp sgt i32 %62, 1
  br i1 %cmp29, label %do.end33, label %if.then27.do.end38_crit_edge

if.then27.do.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef 1187) #9
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %if.then27.do.end38_crit_edge
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 106, ptr %state, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.end12.if.end40_crit_edge
  %last_frame.addr.0 = phi i32 [ 1, %do.end38 ], [ %last_frame, %if.end12.if.end40_crit_edge ]
  tail call fastcc void @s5p_mfc_decode_one_frame_v5(ptr noundef %ctx, i32 noundef %last_frame.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end40 ], [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_dec(ptr nocapture noundef readonly %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 1254) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %3 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src_queue, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -4
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %variant.i, align 4
  %buf_size2.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %buf_size2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf_size2.i, align 4
  %priv.i = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %dma.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 50, i32 2
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 24
  %15 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_base.i, align 4
  %sub.i = sub i32 %14, %16
  %shr.i = lshr i32 %sub.i, 11
  %17 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 5
  %18 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %dsc6.i = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %dsc6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsc6.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %23 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %24, i32 8284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %22) #6, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %25 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp7 = icmp sgt i32 %25, 1
  br i1 %cmp7, label %do.end11, label %do.end4.do.end16_crit_edge

do.end4.do.end16_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %27, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesused, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 1258, i32 noundef %29) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.end4.do.end16_crit_edge
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %31, i32 noundef 0) #6
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i, align 4
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %bytesused24 = getelementptr inbounds %struct.vb2_buffer, ptr %35, i32 0, i32 10, i32 0, i32 3
  %36 = ptrtoint ptr %bytesused24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytesused24, align 4
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %dma_base.i34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %dma_base.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_base.i34, align 4
  %sub.i35 = sub i32 %33, %41
  %shr.i36 = lshr i32 %sub.i35, 11
  %42 = tail call i32 @llvm.bswap.i32(i32 %shr.i36) #6
  %regs_base.i37 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %39, i32 0, i32 5
  %43 = ptrtoint ptr %regs_base.i37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs_base.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %44, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %42) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %dec_src_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 38
  %45 = ptrtoint ptr %dec_src_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dec_src_buf_size.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %48 = ptrtoint ptr %regs_base.i37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs_base.i37, align 4
  %add.ptr6.i = getelementptr i8, ptr %49, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %47) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %51 = ptrtoint ptr %regs_base.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs_base.i37, align 4
  %add.ptr11.i = getelementptr i8, ptr %52, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %50) #6, !srcloc !205
  %virt.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %53 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 24
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %56 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %58 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %curr_ctx, align 4
  %59 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %shm.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  %61 = ptrtoint ptr %shm.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %shm.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %regs_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %60, i32 0, i32 5
  %64 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %65, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %63) #6, !srcloc !205
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %66 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i = icmp eq i32 %67, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp.i, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %loop_filter_mpeg4.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 41
  %68 = ptrtoint ptr %loop_filter_mpeg4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %loop_filter_mpeg4.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %71 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %72, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %70) #6, !srcloc !205
  br label %s5p_mfc_init_decode_v5.exit

do.body2.i:                                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr6.i41 = getelementptr i8, ptr %74, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i41, i32 0) #6, !srcloc !205
  br label %s5p_mfc_init_decode_v5.exit

s5p_mfc_init_decode_v5.exit:                      ; preds = %do.body2.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void @arm_heavy_mb() #6
  %slice_interface.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 40
  %75 = ptrtoint ptr %slice_interface.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %slice_interface.i, align 4
  %shl.i = shl i32 %76, 31
  %display_delay_enable.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 43
  %77 = ptrtoint ptr %display_delay_enable.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %display_delay_enable.i, align 4
  %shl10.i = shl i32 %78, 30
  %or.i = or i32 %shl10.i, %shl.i
  %display_delay.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 42
  %79 = ptrtoint ptr %display_delay.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %display_delay.i, align 4
  %and11.i = shl i32 %80, 16
  %shl12.i = and i32 %and11.i, 16711680
  %or13.i = or i32 %or.i, %shl12.i
  %81 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #6
  %82 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %83, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %81) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %84 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %inst_no.i, align 4
  %or19.i = or i32 %85, 65536
  %86 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #6
  %87 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %88, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %86) #6, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %capture_state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 30
  %2 = ptrtoint ptr %capture_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1293) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %src_queue
  br i1 %cmp.i.not, label %do.end10, label %if.end15

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 1297) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %6 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp19 = icmp sgt i32 %6, 1
  br i1 %cmp19, label %do.end23, label %if.end15.do.end28_crit_edge

if.end15.do.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %8, i32 0, i32 10, i32 0, i32 3
  %9 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytesused, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.62, i32 noundef 1302, i32 noundef %10) #9
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %if.end15.do.end28_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %12, i32 noundef 0) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %bytesused36 = getelementptr inbounds %struct.vb2_buffer, ptr %16, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %bytesused36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesused36, align 4
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_base.i, align 4
  %sub.i = sub i32 %14, %22
  %shr.i = lshr i32 %sub.i, 11
  %23 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %20, i32 0, i32 5
  %24 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %dec_src_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 38
  %26 = ptrtoint ptr %dec_src_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dec_src_buf_size.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %29 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %30, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %28) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %32 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %33, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %31) #6, !srcloc !205
  %virt.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %34 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 24
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %37 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %39 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %curr_ctx, align 4
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %dma.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 2
  %42 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma.i, align 4
  %size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  %dma3.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 2
  %46 = ptrtoint ptr %dma3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma3.i, align 4
  %size5.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %48 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size5.i, align 4
  %regs_base.i62 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %41, i32 0, i32 5
  %50 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %51, i32 8296
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  %53 = and i32 %52, 65535
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %total_dpb_count.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 47
  %55 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total_dpb_count.i, align 4
  %or.i = or i32 %56, %54
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %58 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr8.i = getelementptr i8, ptr %59, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %57) #6, !srcloc !205
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %shm.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  %62 = ptrtoint ptr %shm.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %shm.i.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %regs_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %61, i32 0, i32 5
  %65 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %66, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 %64) #6, !srcloc !205
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %67 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %codec_mode.i, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %68, label %do.end208.i [
    i32 0, label %do.body9.i
    i32 3, label %do.body27.i
    i32 5, label %do.body83.i
    i32 2, label %do.end28.do.body128.i_crit_edge
    i32 6, label %do.end28.do.body128.i_crit_edge86
    i32 4, label %do.end28.sw.epilog.i_crit_edge
  ]

do.end28.sw.epilog.i_crit_edge:                   ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end28.do.body128.i_crit_edge86:                ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128.i

do.end28.do.body128.i_crit_edge:                  ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128.i

do.body9.i:                                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %dma_base.i65 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %41, i32 0, i32 24
  %70 = ptrtoint ptr %dma_base.i65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_base.i65, align 4
  %sub.i66 = sub i32 %43, %71
  %shr.i67 = lshr i32 %sub.i66, 11
  %72 = tail call i32 @llvm.bswap.i32(i32 %shr.i67) #6
  %73 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr13.i = getelementptr i8, ptr %74, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %72) #6, !srcloc !205
  %add.i = add i32 %43, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %dma_base.i65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_base.i65, align 4
  %sub20.i = sub i32 %add.i, %76
  %shr21.i = lshr i32 %sub20.i, 11
  %77 = tail call i32 @llvm.bswap.i32(i32 %shr21.i) #6
  %78 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr23.i = getelementptr i8, ptr %79, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %77) #6, !srcloc !205
  %add24.i = add i32 %43, 49152
  %sub25.i = add i32 %45, -49152
  br label %sw.epilog.i

do.body27.i:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %dma_base30.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %41, i32 0, i32 24
  %80 = ptrtoint ptr %dma_base30.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_base30.i, align 4
  %sub32.i = sub i32 %43, %81
  %shr33.i = lshr i32 %sub32.i, 11
  %82 = tail call i32 @llvm.bswap.i32(i32 %shr33.i) #6
  %83 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr35.i = getelementptr i8, ptr %84, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %82) #6, !srcloc !205
  %add36.i = add i32 %43, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %dma_base30.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_base30.i, align 4
  %sub43.i = sub i32 %add36.i, %86
  %shr44.i = lshr i32 %sub43.i, 11
  %87 = tail call i32 @llvm.bswap.i32(i32 %shr44.i) #6
  %88 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr46.i = getelementptr i8, ptr %89, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %87) #6, !srcloc !205
  %add47.i = add i32 %43, 86016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %dma_base30.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_base30.i, align 4
  %sub54.i = sub i32 %add47.i, %91
  %shr55.i = lshr i32 %sub54.i, 11
  %92 = tail call i32 @llvm.bswap.i32(i32 %shr55.i) #6
  %93 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr57.i = getelementptr i8, ptr %94, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %92) #6, !srcloc !205
  %add58.i = add i32 %43, 225280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %dma_base30.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_base30.i, align 4
  %sub65.i = sub i32 %add58.i, %96
  %shr66.i = lshr i32 %sub65.i, 11
  %97 = tail call i32 @llvm.bswap.i32(i32 %shr66.i) #6
  %98 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr68.i = getelementptr i8, ptr %99, i32 1704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %97) #6, !srcloc !205
  %add69.i = add i32 %43, 294912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %dma_base30.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_base30.i, align 4
  %sub76.i = sub i32 %add69.i, %101
  %shr77.i = lshr i32 %sub76.i, 11
  %102 = tail call i32 @llvm.bswap.i32(i32 %shr77.i) #6
  %103 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr79.i = getelementptr i8, ptr %104, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %102) #6, !srcloc !205
  %add80.i = add i32 %43, 327680
  %sub81.i = add i32 %45, -327680
  br label %sw.epilog.i

do.body83.i:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  tail call void @arm_heavy_mb() #6
  %dma_base86.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %41, i32 0, i32 24
  %105 = ptrtoint ptr %dma_base86.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_base86.i, align 4
  %sub88.i = sub i32 %43, %106
  %shr89.i = lshr i32 %sub88.i, 11
  %107 = tail call i32 @llvm.bswap.i32(i32 %shr89.i) #6
  %108 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr91.i = getelementptr i8, ptr %109, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %107) #6, !srcloc !205
  %add92.i = add i32 %43, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %dma_base86.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_base86.i, align 4
  %sub99.i = sub i32 %add92.i, %111
  %shr100.i = lshr i32 %sub99.i, 11
  %112 = tail call i32 @llvm.bswap.i32(i32 %shr100.i) #6
  %113 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr102.i = getelementptr i8, ptr %114, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i, i32 %112) #6, !srcloc !205
  %add103.i = add i32 %43, 102400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %115 = ptrtoint ptr %dma_base86.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_base86.i, align 4
  %sub110.i = sub i32 %add103.i, %116
  %shr111.i = lshr i32 %sub110.i, 11
  %117 = tail call i32 @llvm.bswap.i32(i32 %shr111.i) #6
  %118 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr113.i = getelementptr i8, ptr %119, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 %117) #6, !srcloc !205
  %add114.i = add i32 %43, 241664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void @arm_heavy_mb() #6
  %120 = ptrtoint ptr %dma_base86.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_base86.i, align 4
  %sub121.i = sub i32 %add114.i, %121
  %shr122.i = lshr i32 %sub121.i, 11
  %122 = tail call i32 @llvm.bswap.i32(i32 %shr122.i) #6
  %123 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr124.i = getelementptr i8, ptr %124, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %122) #6, !srcloc !205
  %add125.i = add i32 %43, 258048
  %sub126.i = add i32 %45, -258048
  br label %sw.epilog.i

do.body128.i:                                     ; preds = %do.end28.do.body128.i_crit_edge, %do.end28.do.body128.i_crit_edge86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %dma_base131.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %41, i32 0, i32 24
  %125 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_base131.i, align 4
  %sub133.i = sub i32 %43, %126
  %shr134.i = lshr i32 %sub133.i, 11
  %127 = tail call i32 @llvm.bswap.i32(i32 %shr134.i) #6
  %128 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr136.i = getelementptr i8, ptr %129, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136.i, i32 %127) #6, !srcloc !205
  %add137.i = add i32 %43, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  %130 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dma_base131.i, align 4
  %sub144.i = sub i32 %add137.i, %131
  %shr145.i = lshr i32 %sub144.i, 11
  %132 = tail call i32 @llvm.bswap.i32(i32 %shr145.i) #6
  %133 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr147.i = getelementptr i8, ptr %134, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.i, i32 %132) #6, !srcloc !205
  %add148.i = add i32 %43, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  tail call void @arm_heavy_mb() #6
  %135 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dma_base131.i, align 4
  %sub155.i = sub i32 %add148.i, %136
  %shr156.i = lshr i32 %sub155.i, 11
  %137 = tail call i32 @llvm.bswap.i32(i32 %shr156.i) #6
  %138 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr158.i = getelementptr i8, ptr %139, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158.i, i32 %137) #6, !srcloc !205
  %add159.i = add i32 %43, 118784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  tail call void @arm_heavy_mb() #6
  %140 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dma_base131.i, align 4
  %sub166.i = sub i32 %add159.i, %141
  %shr167.i = lshr i32 %sub166.i, 11
  %142 = tail call i32 @llvm.bswap.i32(i32 %shr167.i) #6
  %143 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr169.i = getelementptr i8, ptr %144, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i, i32 %142) #6, !srcloc !205
  %add170.i = add i32 %43, 258048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma_base131.i, align 4
  %sub177.i = sub i32 %add170.i, %146
  %shr178.i = lshr i32 %sub177.i, 11
  %147 = tail call i32 @llvm.bswap.i32(i32 %shr178.i) #6
  %148 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr180.i = getelementptr i8, ptr %149, i32 1692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180.i, i32 %147) #6, !srcloc !205
  %add181.i = add i32 %43, 260096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @arm_heavy_mb() #6
  %150 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dma_base131.i, align 4
  %sub188.i = sub i32 %add181.i, %151
  %shr189.i = lshr i32 %sub188.i, 11
  %152 = tail call i32 @llvm.bswap.i32(i32 %shr189.i) #6
  %153 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr191.i = getelementptr i8, ptr %154, i32 1696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.i, i32 %152) #6, !srcloc !205
  %add192.i = add i32 %43, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %dma_base131.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dma_base131.i, align 4
  %sub199.i = sub i32 %add192.i, %156
  %shr200.i = lshr i32 %sub199.i, 11
  %157 = tail call i32 @llvm.bswap.i32(i32 %shr200.i) #6
  %158 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr202.i = getelementptr i8, ptr %159, i32 1700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202.i, i32 %157) #6, !srcloc !205
  %add203.i = add i32 %43, 264192
  %sub204.i = add i32 %45, -264192
  br label %sw.epilog.i

do.end208.i:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call211.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 463, i32 noundef %68) #9
  br label %do.end44

sw.epilog.i:                                      ; preds = %do.body128.i, %do.body83.i, %do.body27.i, %do.body9.i, %do.end28.sw.epilog.i_crit_edge
  %buf_size1.0.i = phi i32 [ %45, %do.end28.sw.epilog.i_crit_edge ], [ %sub204.i, %do.body128.i ], [ %sub126.i, %do.body83.i ], [ %sub81.i, %do.body27.i ], [ %sub25.i, %do.body9.i ]
  %buf_addr1.0.i = phi i32 [ %43, %do.end28.sw.epilog.i_crit_edge ], [ %add203.i, %do.body128.i ], [ %add125.i, %do.body83.i ], [ %add80.i, %do.body27.i ], [ %add24.i, %do.body9.i ]
  %luma_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %160 = ptrtoint ptr %luma_size.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %luma_size.i, align 4
  %chroma_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %162 = ptrtoint ptr %chroma_size.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %chroma_size.i, align 4
  %mv_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 24
  %164 = ptrtoint ptr %mv_size.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mv_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %166 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp.i68 = icmp sgt i32 %166, 1
  br i1 %cmp.i68, label %do.end217.i, label %sw.epilog.i.do.end221.i_crit_edge

sw.epilog.i.do.end221.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end221.i

do.end217.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %call219.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef 470, i32 noundef %161, i32 noundef %163, i32 noundef %165) #9
  br label %do.end221.i

do.end221.i:                                      ; preds = %do.end217.i, %sw.epilog.i.do.end221.i_crit_edge
  %167 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %total_dpb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp223526.not.i = icmp eq i32 %168, 0
  br i1 %cmp223526.not.i, label %do.end221.i.do.body307.i_crit_edge, label %do.body224.lr.ph.i

do.end221.i.do.body307.i_crit_edge:               ; preds = %do.end221.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307.i

do.body224.lr.ph.i:                               ; preds = %do.end221.i
  %dma_base243.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %41, i32 0, i32 24
  %arrayidx244.i = getelementptr %struct.s5p_mfc_dev, ptr %41, i32 0, i32 24, i32 1
  br label %do.body224.i

do.body224.i:                                     ; preds = %for.inc.i.do.body224.i_crit_edge, %do.body224.lr.ph.i
  %i.0529.i = phi i32 [ 0, %do.body224.lr.ph.i ], [ %inc.i, %for.inc.i.do.body224.i_crit_edge ]
  %buf_addr2.0528.i = phi i32 [ %47, %do.body224.lr.ph.i ], [ %buf_addr2.1.i, %for.inc.i.do.body224.i_crit_edge ]
  %buf_size2.0527.i = phi i32 [ %49, %do.body224.lr.ph.i ], [ %buf_size2.1.i, %for.inc.i.do.body224.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %169 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %169)
  %cmp225.i = icmp sgt i32 %169, 1
  br i1 %cmp225.i, label %do.end229.i, label %do.body224.i.do.body236.i_crit_edge

do.body224.i.do.body236.i_crit_edge:              ; preds = %do.body224.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body236.i

do.end229.i:                                      ; preds = %do.body224.i
  call void @__sanitizer_cov_trace_pc() #8
  %cookie.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 34, i32 %i.0529.i, i32 2
  %170 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cookie.i, align 4
  %call232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, i32 noundef 474, i32 noundef %i.0529.i, i32 noundef %171) #9
  br label %do.body236.i

do.body236.i:                                     ; preds = %do.end229.i, %do.body224.i.do.body236.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void @arm_heavy_mb() #6
  %cookie241.i = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 34, i32 %i.0529.i, i32 2
  %172 = ptrtoint ptr %cookie241.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cookie241.i, align 4
  %174 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx244.i, align 4
  %sub245.i = sub i32 %173, %175
  %shr246.i = lshr i32 %sub245.i, 11
  %176 = tail call i32 @llvm.bswap.i32(i32 %shr246.i) #6
  %177 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs_base.i62, align 4
  %mul.i = shl i32 %i.0529.i, 2
  %add248.i = add i32 %mul.i, 1792
  %add.ptr249.i = getelementptr i8, ptr %178, i32 %add248.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249.i, i32 %176) #6, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %179 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp251.i = icmp sgt i32 %179, 1
  br i1 %cmp251.i, label %do.end255.i, label %do.body236.i.do.body264.i_crit_edge

do.body236.i.do.body264.i_crit_edge:              ; preds = %do.body236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body264.i

do.end255.i:                                      ; preds = %do.body236.i
  call void @__sanitizer_cov_trace_pc() #8
  %chroma.i = getelementptr inbounds %struct.anon.115, ptr %cookie241.i, i32 0, i32 1
  %180 = ptrtoint ptr %chroma.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %chroma.i, align 4
  %call260.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.72, i32 noundef 478, i32 noundef %i.0529.i, i32 noundef %181) #9
  br label %do.body264.i

do.body264.i:                                     ; preds = %do.end255.i, %do.body236.i.do.body264.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %chroma270.i = getelementptr inbounds %struct.anon.115, ptr %cookie241.i, i32 0, i32 1
  %182 = ptrtoint ptr %chroma270.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %chroma270.i, align 4
  %184 = ptrtoint ptr %dma_base243.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dma_base243.i, align 4
  %sub273.i = sub i32 %183, %185
  %shr274.i = lshr i32 %sub273.i, 11
  %186 = tail call i32 @llvm.bswap.i32(i32 %shr274.i) #6
  %187 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs_base.i62, align 4
  %add277.i = add i32 %mul.i, 1536
  %add.ptr278.i = getelementptr i8, ptr %188, i32 %add277.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr278.i, i32 %186) #6, !srcloc !205
  %189 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp280.i = icmp eq i32 %190, 0
  br i1 %cmp280.i, label %do.body282.i, label %do.body264.i.for.inc.i_crit_edge

do.body264.i.for.inc.i_crit_edge:                 ; preds = %do.body264.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body282.i:                                     ; preds = %do.body264.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %191 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp283.i = icmp sgt i32 %191, 1
  br i1 %cmp283.i, label %do.end287.i, label %do.body282.i.do.body293.i_crit_edge

do.body282.i.do.body293.i_crit_edge:              ; preds = %do.body282.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body293.i

do.end287.i:                                      ; preds = %do.body282.i
  call void @__sanitizer_cov_trace_pc() #8
  %call289.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.72, i32 noundef 483, i32 noundef %buf_addr2.0528.i, i32 noundef %buf_size2.0527.i) #9
  br label %do.body293.i

do.body293.i:                                     ; preds = %do.end287.i, %do.body282.i.do.body293.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  tail call void @arm_heavy_mb() #6
  %192 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx244.i, align 4
  %sub298.i = sub i32 %buf_addr2.0528.i, %193
  %shr299.i = lshr i32 %sub298.i, 11
  %194 = tail call i32 @llvm.bswap.i32(i32 %shr299.i) #6
  %195 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs_base.i62, align 4
  %add302.i = add i32 %mul.i, 1920
  %add.ptr303.i = getelementptr i8, ptr %196, i32 %add302.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303.i, i32 %194) #6, !srcloc !205
  %add304.i = add i32 %buf_addr2.0528.i, %165
  %sub305.i = sub i32 %buf_size2.0527.i, %165
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body293.i, %do.body264.i.for.inc.i_crit_edge
  %buf_size2.1.i = phi i32 [ %sub305.i, %do.body293.i ], [ %buf_size2.0527.i, %do.body264.i.for.inc.i_crit_edge ]
  %buf_addr2.1.i = phi i32 [ %add304.i, %do.body293.i ], [ %buf_addr2.0528.i, %do.body264.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.0529.i, 1
  %197 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %total_dpb_count.i, align 4
  %cmp223.i = icmp ult i32 %inc.i, %198
  br i1 %cmp223.i, label %for.inc.i.do.body224.i_crit_edge, label %for.inc.i.do.body307.i_crit_edge

for.inc.i.do.body307.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307.i

for.inc.i.do.body224.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body224.i

do.body307.i:                                     ; preds = %for.inc.i.do.body307.i_crit_edge, %do.end221.i.do.body307.i_crit_edge
  %buf_size2.0.lcssa.i = phi i32 [ %49, %do.end221.i.do.body307.i_crit_edge ], [ %buf_size2.1.i, %for.inc.i.do.body307.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %199 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp308.i = icmp sgt i32 %199, 1
  br i1 %cmp308.i, label %do.body318.i, label %do.body307.i.do.end329.i_crit_edge

do.body307.i.do.end329.i_crit_edge:               ; preds = %do.body307.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end329.i

do.body318.i:                                     ; preds = %do.body307.i
  %call314.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.72, i32 noundef 490, i32 noundef %buf_addr1.0.i, i32 noundef %buf_size1.0.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr.i = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp319.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp319.i, label %do.end323.i, label %do.body318.i.do.end329.i_crit_edge

do.body318.i.do.end329.i_crit_edge:               ; preds = %do.body318.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end329.i

do.end323.i:                                      ; preds = %do.body318.i
  call void @__sanitizer_cov_trace_pc() #8
  %200 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %total_dpb_count.i, align 4
  %call326.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.72, i32 noundef 492, i32 noundef %buf_size1.0.i, i32 noundef %buf_size2.0.lcssa.i, i32 noundef %201) #9
  br label %do.end329.i

do.end329.i:                                      ; preds = %do.end323.i, %do.body318.i.do.end329.i_crit_edge, %do.body307.i.do.end329.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size1.0.i)
  %cmp330.i = icmp slt i32 %buf_size1.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size2.0.lcssa.i)
  %cmp331.i = icmp slt i32 %buf_size2.0.lcssa.i, 0
  %or.cond.i = select i1 %cmp330.i, i1 true, i1 %cmp331.i
  br i1 %or.cond.i, label %do.body333.i, label %if.end344.i

do.body333.i:                                     ; preds = %do.end329.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %202 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp334.i = icmp sgt i32 %202, 1
  br i1 %cmp334.i, label %do.end338.i, label %do.body333.i.do.end44_crit_edge

do.body333.i.do.end44_crit_edge:                  ; preds = %do.body333.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end338.i:                                      ; preds = %do.body333.i
  call void @__sanitizer_cov_trace_pc() #8
  %call340.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.72, i32 noundef 494) #9
  br label %do.end44

if.end344.i:                                      ; preds = %do.end329.i
  %203 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i507.i = getelementptr i8, ptr %204, i32 100
  %205 = ptrtoint ptr %add.ptr.i507.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %161, ptr %add.ptr.i507.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %206 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i509.i = getelementptr i8, ptr %207, i32 104
  %208 = ptrtoint ptr %add.ptr.i509.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %163, ptr %add.ptr.i509.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %209 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp346.i = icmp eq i32 %210, 0
  br i1 %cmp346.i, label %if.then347.i, label %if.end344.i.s5p_mfc_set_dec_frame_buffer_v5.exit_crit_edge

if.end344.i.s5p_mfc_set_dec_frame_buffer_v5.exit_crit_edge: ; preds = %if.end344.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_dec_frame_buffer_v5.exit

if.then347.i:                                     ; preds = %if.end344.i
  call void @__sanitizer_cov_trace_pc() #8
  %211 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i511.i = getelementptr i8, ptr %212, i32 108
  %213 = ptrtoint ptr %add.ptr.i511.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %165, ptr %add.ptr.i511.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  br label %s5p_mfc_set_dec_frame_buffer_v5.exit

s5p_mfc_set_dec_frame_buffer_v5.exit:             ; preds = %if.then347.i, %if.end344.i.s5p_mfc_set_dec_frame_buffer_v5.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  tail call void @arm_heavy_mb() #6
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %214 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %inst_no.i, align 4
  %or352.i = or i32 %215, 262144
  %216 = tail call i32 @llvm.bswap.i32(i32 %or352.i) #6
  %217 = ptrtoint ptr %regs_base.i62 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs_base.i62, align 4
  %add.ptr354.i = getelementptr i8, ptr %218, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354.i, i32 %216) #6, !srcloc !205
  br label %cleanup

do.end44:                                         ; preds = %do.end338.i, %do.body333.i.do.end44_crit_edge, %do.end208.i
  %retval.0.i.ph = phi i32 [ -12, %do.body333.i.do.end44_crit_edge ], [ -12, %do.end338.i ], [ -22, %do.end208.i ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.62, i32 noundef 1309) #9
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %219 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 109, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %s5p_mfc_set_dec_frame_buffer_v5.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -5, %do.end10 ], [ %retval.0.i.ph, %do.end44 ], [ 0, %s5p_mfc_set_dec_frame_buffer_v5.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_res_change(ptr nocapture noundef readonly %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_base.i, align 4
  %sub.i = sub i32 0, %3
  %shr.i = lshr i32 %sub.i, 11
  %4 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %dec_src_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 38
  %7 = ptrtoint ptr %dec_src_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dec_src_buf_size.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %9) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %13, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #6, !srcloc !205
  %virt.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %14 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 24
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %add.ptr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %curr_ctx, align 4
  tail call fastcc void @s5p_mfc_decode_one_frame_v5(ptr noundef %ctx, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_enc_frame(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %src_queue
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %5)
  %cmp.not = icmp eq i32 %5, 106
  br i1 %cmp.not, label %land.lhs.true.if.end8_crit_edge, label %do.body

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %6 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2 = icmp sgt i32 %6, 1
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef 1203) #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %7 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i117.not = icmp eq ptr %8, %dst_queue
  br i1 %cmp.i117.not, label %do.body12, label %if.end23

do.body12:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp13 = icmp sgt i32 %9, 1
  br i1 %cmp13, label %do.end17, label %do.body12.cleanup_crit_edge

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95, i32 noundef 1207) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i119.not = icmp eq ptr %11, %src_queue
  br i1 %cmp.i119.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %sub.i = sub i32 %13, %15
  %shr.i = lshr i32 %sub.i, 11
  %16 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %sub7.i = sub i32 %13, %20
  %shr8.i = lshr i32 %sub7.i, 11
  %21 = tail call i32 @llvm.bswap.i32(i32 %shr8.i) #6
  %22 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %23, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %21) #6, !srcloc !205
  br label %if.end53

if.else:                                          ; preds = %if.end23
  %add.ptr = getelementptr i8, ptr %11, i32 -4
  %flags = getelementptr i8, ptr %11, i32 16
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 1
  store i32 %or, ptr %flags, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %27, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp33 = icmp eq i32 %29, 0
  br i1 %cmp33, label %if.then34, label %if.else40

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx36 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %arrayidx.i121 = getelementptr %struct.s5p_mfc_dev, ptr %33, i32 0, i32 24, i32 1
  %34 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i121, align 4
  %sub.i122 = sub i32 %31, %35
  %shr.i123 = lshr i32 %sub.i122, 11
  %36 = tail call i32 @llvm.bswap.i32(i32 %shr.i123) #6
  %regs_base.i124 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %33, i32 0, i32 5
  %37 = ptrtoint ptr %regs_base.i124 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs_base.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %38, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %36) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i121, align 4
  %sub7.i126 = sub i32 %31, %40
  %shr8.i127 = lshr i32 %sub7.i126, 11
  %41 = tail call i32 @llvm.bswap.i32(i32 %shr8.i127) #6
  %42 = ptrtoint ptr %regs_base.i124 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs_base.i124, align 4
  %add.ptr10.i128 = getelementptr i8, ptr %43, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i128, i32 %41) #6, !srcloc !205
  %state39 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %44 = ptrtoint ptr %state39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 106, ptr %state39, align 4
  br label %if.end53

if.else40:                                        ; preds = %if.else
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %27, i32 noundef 0) #6
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i, align 4
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %call.i129 = tail call ptr @vb2_plane_cookie(ptr noundef %48, i32 noundef 1) #6
  %49 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i129, align 4
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %arrayidx.i130 = getelementptr %struct.s5p_mfc_dev, ptr %52, i32 0, i32 24, i32 1
  %53 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i130, align 4
  %sub.i131 = sub i32 %46, %54
  %shr.i132 = lshr i32 %sub.i131, 11
  %55 = tail call i32 @llvm.bswap.i32(i32 %shr.i132) #6
  %regs_base.i133 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %52, i32 0, i32 5
  %56 = ptrtoint ptr %regs_base.i133 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs_base.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %57, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %55) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i130, align 4
  %sub7.i135 = sub i32 %50, %59
  %shr8.i136 = lshr i32 %sub7.i135, 11
  %60 = tail call i32 @llvm.bswap.i32(i32 %shr8.i136) #6
  %61 = ptrtoint ptr %regs_base.i133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs_base.i133, align 4
  %add.ptr10.i137 = getelementptr i8, ptr %62, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i137, i32 %60) #6, !srcloc !205
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.else40.if.end53_crit_edge, label %if.then49

if.else40.if.end53_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then49:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %state50 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %65 = ptrtoint ptr %state50 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 106, ptr %state50, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.else40.if.end53_crit_edge, %if.then34, %if.then27
  %src_mb.0 = phi ptr [ null, %if.then27 ], [ %add.ptr, %if.then34 ], [ %add.ptr, %if.then49 ], [ %add.ptr, %if.else40.if.end53_crit_edge ]
  %66 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dst_queue, align 4
  %add.ptr58 = getelementptr i8, ptr %67, i32 -4
  %flags59 = getelementptr i8, ptr %67, i32 16
  %68 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags59, align 4
  %or60 = or i32 %69, 1
  store i32 %or60, ptr %flags59, align 4
  %70 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr58, align 4
  %call.i138 = tail call ptr @vb2_plane_cookie(ptr noundef %71, i32 noundef 0) #6
  %72 = ptrtoint ptr %call.i138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call.i138, align 4
  %74 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr58, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.not.i = icmp eq i32 %77, 0
  br i1 %cmp.not.i, label %if.end53.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end53.vb2_plane_size.exit_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %75, i32 0, i32 10, i32 0, i32 4
  %78 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end53.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %79, %if.then.i ], [ 0, %if.end53.vb2_plane_size.exit_crit_edge ]
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %81, i32 0, i32 24
  %82 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_base.i, align 4
  %sub.i139 = sub i32 %73, %83
  %shr.i140 = lshr i32 %sub.i139, 11
  %84 = tail call i32 @llvm.bswap.i32(i32 %shr.i140) #6
  %regs_base.i141 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %81, i32 0, i32 5
  %85 = ptrtoint ptr %regs_base.i141 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs_base.i141, align 4
  %add.ptr.i142 = getelementptr i8, ptr %86, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %84) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %87 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %88 = ptrtoint ptr %regs_base.i141 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs_base.i141, align 4
  %add.ptr6.i = getelementptr i8, ptr %89, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %87) #6, !srcloc !205
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %90 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %92 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %curr_ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %93 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp69 = icmp sgt i32 %93, 1
  br i1 %cmp69, label %do.end73, label %vb2_plane_size.exit.do.end82_crit_edge

vb2_plane_size.exit.do.end82_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

do.end73:                                         ; preds = %vb2_plane_size.exit
  %tobool75.not = icmp eq ptr %src_mb.0, null
  br i1 %tobool75.not, label %do.end73.cond.end_crit_edge, label %cond.true

do.end73.cond.end_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %src_mb.0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %src_mb.0, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end73.cond.end_crit_edge
  %cond = phi i32 [ %97, %cond.true ], [ -1, %do.end73.cond.end_crit_edge ]
  %state78 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %98 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state78, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95, i32 noundef 1243, i32 noundef %cond, i32 noundef %99) #9
  br label %do.end82

do.end82:                                         ; preds = %cond.end, %vb2_plane_size.exit.do.end82_crit_edge
  %100 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx, align 4
  %src_fmt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 7
  %102 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %src_fmt.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %105, label %do.end82.s5p_mfc_encode_one_frame_v5.exit_crit_edge [
    i32 842091854, label %do.body.i
    i32 842091860, label %do.body6.i
  ]

do.end82.s5p_mfc_encode_one_frame_v5.exit_crit_edge: ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_encode_one_frame_v5.exit

do.body.i:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  tail call void @arm_heavy_mb() #6
  %regs_base.i143 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %101, i32 0, i32 5
  %107 = ptrtoint ptr %regs_base.i143 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs_base.i143, align 4
  %add.ptr.i144 = getelementptr i8, ptr %108, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 0) #6, !srcloc !205
  br label %s5p_mfc_encode_one_frame_v5.exit

do.body6.i:                                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %regs_base9.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %101, i32 0, i32 5
  %109 = ptrtoint ptr %regs_base9.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs_base9.i, align 4
  %add.ptr10.i145 = getelementptr i8, ptr %110, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i145, i32 50331648) #6, !srcloc !205
  br label %s5p_mfc_encode_one_frame_v5.exit

s5p_mfc_encode_one_frame_v5.exit:                 ; preds = %do.body6.i, %do.body.i, %do.end82.s5p_mfc_encode_one_frame_v5.exit_crit_edge
  %111 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %shm.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  %113 = ptrtoint ptr %shm.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %shm.i.i, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #6
  %regs_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %112, i32 0, i32 5
  %116 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %115) #6, !srcloc !205
  %state.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %118 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %119)
  %cmp12.i = icmp eq i32 %119, 106
  %..i = select i1 %cmp12.i, i32 196608, i32 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  tail call void @arm_heavy_mb() #6
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %120 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %inst_no.i, align 4
  %or.i = or i32 %121, %..i
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %regs_base19.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %101, i32 0, i32 5
  %123 = ptrtoint ptr %regs_base19.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs_base19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %124, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %122) #6, !srcloc !205
  br label %cleanup

cleanup:                                          ; preds = %s5p_mfc_encode_one_frame_v5.exit, %do.end17, %do.body12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %s5p_mfc_encode_one_frame_v5.exit ], [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ], [ -11, %do.end17 ], [ -11, %do.body12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_enc(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dma.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 2
  %2 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma.i, align 4
  %size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %dma3.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 2
  %6 = ptrtoint ptr %dma3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma3.i, align 4
  %size5.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 29, i32 3
  %8 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size5.i, align 4
  %img_width.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %10 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %img_width.i, align 4
  %add.i = add i32 %11, 127
  %and.i = and i32 %add.i, -128
  %img_height.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %12 = ptrtoint ptr %img_height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %img_height.i, align 4
  %add6.i = add i32 %13, 31
  %and7.i = and i32 %add6.i, -32
  %mul.i = mul i32 %and7.i, %and.i
  %add8.i = add i32 %mul.i, 8191
  %and9.i = and i32 %add8.i, -8192
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %14 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %15)
  %cmp.i = icmp eq i32 %15, 20
  %add21.i = add i32 %11, 143
  %and22.i = and i32 %add21.i, -128
  %.sink.i = select i1 %cmp.i, i32 31, i32 35
  %and.sink.i = select i1 %cmp.i, i32 %and.i, i32 %and22.i
  %shr.i = ashr i32 %13, 1
  %add14.i = add nsw i32 %.sink.i, %shr.i
  %and15.i = and i32 %add14.i, -32
  %mul16.i = mul i32 %and15.i, %and.sink.i
  %enc_ref_c_size.0.in.i = add i32 %mul16.i, 8191
  %enc_ref_c_size.0.i = and i32 %enc_ref_c_size.0.in.i, -8192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %16 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp31.i = icmp sgt i32 %16, 1
  br i1 %cmp31.i, label %do.end.i, label %entry.do.end36.i_crit_edge

entry.do.end36.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 567, i32 noundef %5, i32 noundef %9) #9
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end.i, %entry.do.end36.i_crit_edge
  %17 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %codec_mode.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %18, label %do.end329.i [
    i32 20, label %for.cond.preheader.i
    i32 22, label %for.cond146.preheader.i
    i32 23, label %for.cond242.preheader.i
  ]

for.cond242.preheader.i:                          ; preds = %do.end36.i
  %dma_base248.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %regs_base252.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %arrayidx262.i = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %dma_base248.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_base248.i, align 4
  %sub250.i = sub i32 %3, %21
  %shr251.i = lshr i32 %sub250.i, 11
  %22 = tail call i32 @llvm.bswap.i32(i32 %shr251.i) #6
  %23 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr255.i = getelementptr i8, ptr %24, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255.i, i32 %22) #6, !srcloc !205
  %add256.i = add i32 %and9.i, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx262.i, align 4
  %sub263.i = sub i32 %7, %26
  %shr264.i = lshr i32 %sub263.i, 11
  %27 = tail call i32 @llvm.bswap.i32(i32 %shr264.i) #6
  %28 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr268.i = getelementptr i8, ptr %29, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268.i, i32 %27) #6, !srcloc !205
  %add269.i = add i32 %and9.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %dma_base248.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_base248.i, align 4
  %sub250.1.i = sub i32 %add256.i, %31
  %shr251.1.i = lshr i32 %sub250.1.i, 11
  %32 = tail call i32 @llvm.bswap.i32(i32 %shr251.1.i) #6
  %33 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr255.1.i = getelementptr i8, ptr %34, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255.1.i, i32 %32) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx262.i, align 4
  %sub263.1.i = sub i32 %add269.i, %36
  %shr264.1.i = lshr i32 %sub263.1.i, 11
  %37 = tail call i32 @llvm.bswap.i32(i32 %shr264.1.i) #6
  %38 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr268.1.i = getelementptr i8, ptr %39, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268.1.i, i32 %37) #6, !srcloc !205
  %add269.1.i = add i32 %add269.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx262.i, align 4
  %sub282.i = sub i32 %add269.1.i, %41
  %shr283.i = lshr i32 %sub282.i, 11
  %42 = tail call i32 @llvm.bswap.i32(i32 %shr283.i) #6
  %43 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr287.i = getelementptr i8, ptr %44, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287.i, i32 %42) #6, !srcloc !205
  %add288.i = add i32 %enc_ref_c_size.0.i, %add269.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx262.i, align 4
  %sub282.1.i = sub i32 %add288.i, %46
  %shr283.1.i = lshr i32 %sub282.1.i, 11
  %47 = tail call i32 @llvm.bswap.i32(i32 %shr283.1.i) #6
  %48 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr287.1.i = getelementptr i8, ptr %49, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287.1.i, i32 %47) #6, !srcloc !205
  %add288.1.i = add i32 %add288.i, %enc_ref_c_size.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx262.i, align 4
  %sub282.2.i = sub i32 %add288.1.i, %51
  %shr283.2.i = lshr i32 %sub282.2.i, 11
  %52 = tail call i32 @llvm.bswap.i32(i32 %shr283.2.i) #6
  %53 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr287.2.i = getelementptr i8, ptr %54, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287.2.i, i32 %52) #6, !srcloc !205
  %add288.2.i = add i32 %add288.1.i, %enc_ref_c_size.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx262.i, align 4
  %sub282.3.i = sub i32 %add288.2.i, %56
  %shr283.3.i = lshr i32 %sub282.3.i, 11
  %57 = tail call i32 @llvm.bswap.i32(i32 %shr283.3.i) #6
  %58 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr287.3.i = getelementptr i8, ptr %59, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287.3.i, i32 %57) #6, !srcloc !205
  %add256.1.i = add i32 %add256.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !269
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %dma_base248.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_base248.i, align 4
  %sub298.i = sub i32 %add256.1.i, %61
  %shr299.i = lshr i32 %sub298.i, 11
  %62 = tail call i32 @llvm.bswap.i32(i32 %shr299.i) #6
  %63 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr301.i = getelementptr i8, ptr %64, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr301.i, i32 %62) #6, !srcloc !205
  %add302.i = add i32 %add256.1.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %dma_base248.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_base248.i, align 4
  %sub309.i = sub i32 %add302.i, %66
  %shr310.i = lshr i32 %sub309.i, 11
  %67 = tail call i32 @llvm.bswap.i32(i32 %shr310.i) #6
  %68 = ptrtoint ptr %regs_base252.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs_base252.i, align 4
  %add.ptr312.i = getelementptr i8, ptr %69, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312.i, i32 %67) #6, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %70 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp316.i = icmp sgt i32 %70, 1
  br i1 %cmp316.i, label %do.end320.i, label %for.cond242.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge

for.cond242.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge: ; preds = %for.cond242.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

for.cond146.preheader.i:                          ; preds = %do.end36.i
  %dma_base152.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %regs_base156.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %arrayidx166.i = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %dma_base152.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_base152.i, align 4
  %sub154.i = sub i32 %3, %72
  %shr155.i = lshr i32 %sub154.i, 11
  %73 = tail call i32 @llvm.bswap.i32(i32 %shr155.i) #6
  %74 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr159.i = getelementptr i8, ptr %75, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159.i, i32 %73) #6, !srcloc !205
  %add160.i = add i32 %and9.i, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !272
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx166.i, align 4
  %sub167.i = sub i32 %7, %77
  %shr168.i = lshr i32 %sub167.i, 11
  %78 = tail call i32 @llvm.bswap.i32(i32 %shr168.i) #6
  %79 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr172.i = getelementptr i8, ptr %80, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172.i, i32 %78) #6, !srcloc !205
  %add173.i = add i32 %and9.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %dma_base152.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_base152.i, align 4
  %sub154.1.i = sub i32 %add160.i, %82
  %shr155.1.i = lshr i32 %sub154.1.i, 11
  %83 = tail call i32 @llvm.bswap.i32(i32 %shr155.1.i) #6
  %84 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr159.1.i = getelementptr i8, ptr %85, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159.1.i, i32 %83) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !272
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx166.i, align 4
  %sub167.1.i = sub i32 %add173.i, %87
  %shr168.1.i = lshr i32 %sub167.1.i, 11
  %88 = tail call i32 @llvm.bswap.i32(i32 %shr168.1.i) #6
  %89 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr172.1.i = getelementptr i8, ptr %90, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172.1.i, i32 %88) #6, !srcloc !205
  %add173.1.i = add i32 %add173.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx166.i, align 4
  %sub186.i = sub i32 %add173.1.i, %92
  %shr187.i = lshr i32 %sub186.i, 11
  %93 = tail call i32 @llvm.bswap.i32(i32 %shr187.i) #6
  %94 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr191.i = getelementptr i8, ptr %95, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.i, i32 %93) #6, !srcloc !205
  %add192.i = add i32 %enc_ref_c_size.0.i, %add173.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx166.i, align 4
  %sub186.1.i = sub i32 %add192.i, %97
  %shr187.1.i = lshr i32 %sub186.1.i, 11
  %98 = tail call i32 @llvm.bswap.i32(i32 %shr187.1.i) #6
  %99 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr191.1.i = getelementptr i8, ptr %100, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.1.i, i32 %98) #6, !srcloc !205
  %add192.1.i = add i32 %add192.i, %enc_ref_c_size.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  %101 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx166.i, align 4
  %sub186.2.i = sub i32 %add192.1.i, %102
  %shr187.2.i = lshr i32 %sub186.2.i, 11
  %103 = tail call i32 @llvm.bswap.i32(i32 %shr187.2.i) #6
  %104 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr191.2.i = getelementptr i8, ptr %105, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.2.i, i32 %103) #6, !srcloc !205
  %add192.2.i = add i32 %add192.1.i, %enc_ref_c_size.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx166.i, align 4
  %sub186.3.i = sub i32 %add192.2.i, %107
  %shr187.3.i = lshr i32 %sub186.3.i, 11
  %108 = tail call i32 @llvm.bswap.i32(i32 %shr187.3.i) #6
  %109 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr191.3.i = getelementptr i8, ptr %110, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.3.i, i32 %108) #6, !srcloc !205
  %add160.1.i = add i32 %add160.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %dma_base152.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_base152.i, align 4
  %sub202.i = sub i32 %add160.1.i, %112
  %shr203.i = lshr i32 %sub202.i, 11
  %113 = tail call i32 @llvm.bswap.i32(i32 %shr203.i) #6
  %114 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr205.i = getelementptr i8, ptr %115, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205.i, i32 %113) #6, !srcloc !205
  %add206.i = add i32 %add160.1.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %dma_base152.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_base152.i, align 4
  %sub213.i = sub i32 %add206.i, %117
  %shr214.i = lshr i32 %sub213.i, 11
  %118 = tail call i32 @llvm.bswap.i32(i32 %shr214.i) #6
  %119 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr216.i = getelementptr i8, ptr %120, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr216.i, i32 %118) #6, !srcloc !205
  %add217.i = add i32 %add160.1.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !276
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %dma_base152.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dma_base152.i, align 4
  %sub224.i = sub i32 %add217.i, %122
  %shr225.i = lshr i32 %sub224.i, 11
  %123 = tail call i32 @llvm.bswap.i32(i32 %shr225.i) #6
  %124 = ptrtoint ptr %regs_base156.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs_base156.i, align 4
  %add.ptr227.i = getelementptr i8, ptr %125, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227.i, i32 %123) #6, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %126 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp231.i = icmp sgt i32 %126, 1
  br i1 %cmp231.i, label %do.end235.i, label %for.cond146.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge

for.cond146.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge: ; preds = %for.cond146.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

for.cond.preheader.i:                             ; preds = %do.end36.i
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %arrayidx51.i = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 24, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !277
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma_base.i, align 4
  %sub.i = sub i32 %3, %128
  %shr42.i = lshr i32 %sub.i, 11
  %129 = tail call i32 @llvm.bswap.i32(i32 %shr42.i) #6
  %130 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %131, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %129) #6, !srcloc !205
  %add45.i = add i32 %and9.i, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @arm_heavy_mb() #6
  %132 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx51.i, align 4
  %sub52.i = sub i32 %7, %133
  %shr53.i = lshr i32 %sub52.i, 11
  %134 = tail call i32 @llvm.bswap.i32(i32 %shr53.i) #6
  %135 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs_base.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %136, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %134) #6, !srcloc !205
  %add58.i = add i32 %and9.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !277
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dma_base.i, align 4
  %sub.1.i = sub i32 %add45.i, %138
  %shr42.1.i = lshr i32 %sub.1.i, 11
  %139 = tail call i32 @llvm.bswap.i32(i32 %shr42.1.i) #6
  %140 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %141, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %139) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx51.i, align 4
  %sub52.1.i = sub i32 %add58.i, %143
  %shr53.1.i = lshr i32 %sub52.1.i, 11
  %144 = tail call i32 @llvm.bswap.i32(i32 %shr53.1.i) #6
  %145 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs_base.i, align 4
  %add.ptr57.1.i = getelementptr i8, ptr %146, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.1.i, i32 %144) #6, !srcloc !205
  %add58.1.i = add i32 %add58.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  %147 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx51.i, align 4
  %sub68.i = sub i32 %add58.1.i, %148
  %shr69.i = lshr i32 %sub68.i, 11
  %149 = tail call i32 @llvm.bswap.i32(i32 %shr69.i) #6
  %150 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs_base.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %151, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %149) #6, !srcloc !205
  %add74.i = add i32 %enc_ref_c_size.0.i, %add58.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  %152 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx51.i, align 4
  %sub68.1.i = sub i32 %add74.i, %153
  %shr69.1.i = lshr i32 %sub68.1.i, 11
  %154 = tail call i32 @llvm.bswap.i32(i32 %shr69.1.i) #6
  %155 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs_base.i, align 4
  %add.ptr73.1.i = getelementptr i8, ptr %156, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.1.i, i32 %154) #6, !srcloc !205
  %add74.1.i = add i32 %add74.i, %enc_ref_c_size.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  %157 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx51.i, align 4
  %sub68.2.i = sub i32 %add74.1.i, %158
  %shr69.2.i = lshr i32 %sub68.2.i, 11
  %159 = tail call i32 @llvm.bswap.i32(i32 %shr69.2.i) #6
  %160 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs_base.i, align 4
  %add.ptr73.2.i = getelementptr i8, ptr %161, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.2.i, i32 %159) #6, !srcloc !205
  %add74.2.i = add i32 %add74.1.i, %enc_ref_c_size.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  %162 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx51.i, align 4
  %sub68.3.i = sub i32 %add74.2.i, %163
  %shr69.3.i = lshr i32 %sub68.3.i, 11
  %164 = tail call i32 @llvm.bswap.i32(i32 %shr69.3.i) #6
  %165 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs_base.i, align 4
  %add.ptr73.3.i = getelementptr i8, ptr %166, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.3.i, i32 %164) #6, !srcloc !205
  %add74.3.i = add i32 %add74.2.i, %enc_ref_c_size.0.i
  %add45.1.i = add i32 %add45.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  tail call void @arm_heavy_mb() #6
  %167 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dma_base.i, align 4
  %sub84.i = sub i32 %add45.1.i, %168
  %shr85.i = lshr i32 %sub84.i, 11
  %169 = tail call i32 @llvm.bswap.i32(i32 %shr85.i) #6
  %170 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs_base.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %171, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %169) #6, !srcloc !205
  %add88.i = add i32 %add45.1.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !281
  tail call void @arm_heavy_mb() #6
  %172 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dma_base.i, align 4
  %sub95.i = sub i32 %add88.i, %173
  %shr96.i = lshr i32 %sub95.i, 11
  %174 = tail call i32 @llvm.bswap.i32(i32 %shr96.i) #6
  %175 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs_base.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %176, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %174) #6, !srcloc !205
  %add99.i = add i32 %add45.1.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !282
  tail call void @arm_heavy_mb() #6
  %177 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dma_base.i, align 4
  %sub106.i = sub i32 %add99.i, %178
  %shr107.i = lshr i32 %sub106.i, 11
  %179 = tail call i32 @llvm.bswap.i32(i32 %shr107.i) #6
  %180 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs_base.i, align 4
  %add.ptr109.i = getelementptr i8, ptr %181, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 %179) #6, !srcloc !205
  %add110.i = add i32 %add45.1.i, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %182 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx51.i, align 4
  %sub117.i = sub i32 %add74.3.i, %183
  %shr118.i = lshr i32 %sub117.i, 11
  %184 = tail call i32 @llvm.bswap.i32(i32 %shr118.i) #6
  %185 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs_base.i, align 4
  %add.ptr120.i = getelementptr i8, ptr %186, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 %184) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !284
  tail call void @arm_heavy_mb() #6
  %187 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dma_base.i, align 4
  %sub128.i = sub i32 %add110.i, %188
  %shr129.i = lshr i32 %sub128.i, 11
  %189 = tail call i32 @llvm.bswap.i32(i32 %shr129.i) #6
  %190 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs_base.i, align 4
  %add.ptr131.i = getelementptr i8, ptr %191, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131.i, i32 %189) #6, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %192 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp135.i = icmp sgt i32 %192, 1
  br i1 %cmp135.i, label %do.end139.i, label %for.cond.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge

for.cond.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

do.end139.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %193 = shl i32 %add8.i, 1
  %194 = and i32 %193, -16384
  %reass.add33.i.neg = mul i32 %enc_ref_c_size.0.i, -4
  %195 = add i32 %5, -262144
  %sub133.i = sub i32 %195, %194
  %.neg38 = add i32 %9, -16384
  %sub75.3.i = sub i32 %.neg38, %194
  %sub122.i = add i32 %sub75.3.i, %reass.add33.i.neg
  %call141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 607, i32 noundef %sub133.i, i32 noundef %sub122.i) #9
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

do.end235.i:                                      ; preds = %for.cond146.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %196 = shl i32 %add8.i, 1
  %197 = and i32 %196, -16384
  %reass.add31.i.neg = mul i32 %enc_ref_c_size.0.i, -4
  %.neg32 = sub i32 %9, %197
  %sub193.3.i = add i32 %.neg32, %reass.add31.i.neg
  %198 = add i32 %5, -196608
  %sub229.i = sub i32 %198, %197
  %call237.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 638, i32 noundef %sub229.i, i32 noundef %sub193.3.i) #9
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

do.end320.i:                                      ; preds = %for.cond242.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %199 = shl i32 %add8.i, 1
  %200 = and i32 %199, -16384
  %reass.add.i.neg = mul i32 %enc_ref_c_size.0.i, -4
  %.neg27 = sub i32 %9, %200
  %sub289.3.i = add i32 %.neg27, %reass.add.i.neg
  %201 = add i32 %5, -131072
  %sub314.i = sub i32 %201, %200
  %call322.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 664, i32 noundef %sub314.i, i32 noundef %sub289.3.i) #9
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

do.end329.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %call332.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.103, i32 noundef 668, i32 noundef %18) #9
  br label %s5p_mfc_set_enc_ref_buffer_v5.exit

s5p_mfc_set_enc_ref_buffer_v5.exit:               ; preds = %do.end329.i, %do.end320.i, %do.end235.i, %do.end139.i, %for.cond.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge, %for.cond146.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge, %for.cond242.preheader.i.s5p_mfc_set_enc_ref_buffer_v5.exit_crit_edge
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %202 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dst_queue, align 4
  %add.ptr = getelementptr i8, ptr %203, i32 -4
  %204 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %add.ptr, align 4
  %call.i14 = tail call ptr @vb2_plane_cookie(ptr noundef %205, i32 noundef 0) #6
  %206 = ptrtoint ptr %call.i14 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %call.i14, align 4
  %208 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp.not.i = icmp eq i32 %211, 0
  br i1 %cmp.not.i, label %s5p_mfc_set_enc_ref_buffer_v5.exit.vb2_plane_size.exit_crit_edge, label %if.then.i

s5p_mfc_set_enc_ref_buffer_v5.exit.vb2_plane_size.exit_crit_edge: ; preds = %s5p_mfc_set_enc_ref_buffer_v5.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %s5p_mfc_set_enc_ref_buffer_v5.exit
  call void @__sanitizer_cov_trace_pc() #8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %209, i32 0, i32 10, i32 0, i32 4
  %212 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %s5p_mfc_set_enc_ref_buffer_v5.exit.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %213, %if.then.i ], [ 0, %s5p_mfc_set_enc_ref_buffer_v5.exit.vb2_plane_size.exit_crit_edge ]
  %214 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %dma_base.i15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %215, i32 0, i32 24
  %216 = ptrtoint ptr %dma_base.i15 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %dma_base.i15, align 4
  %sub.i16 = sub i32 %207, %217
  %shr.i17 = lshr i32 %sub.i16, 11
  %218 = tail call i32 @llvm.bswap.i32(i32 %shr.i17) #6
  %regs_base.i18 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %215, i32 0, i32 5
  %219 = ptrtoint ptr %regs_base.i18 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs_base.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %220, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %218) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %221 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %222 = ptrtoint ptr %regs_base.i18 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs_base.i18, align 4
  %add.ptr6.i = getelementptr i8, ptr %223, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %221) #6, !srcloc !205
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %224 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %226 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %curr_ctx, align 4
  %227 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ctx, align 4
  %229 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %codec_mode.i, align 4
  %231 = zext i32 %230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %231, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %230, label %do.end.i22 [
    i32 20, label %if.then.i21
    i32 22, label %if.then4.i
    i32 23, label %if.then9.i
  ]

if.then.i21:                                      ; preds = %vb2_plane_size.exit
  %codec.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #6
  %regs_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %228, i32 0, i32 5
  %232 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %233, i32 50436
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !285
  %235 = and i32 %234, -769
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #6
  %num_b_frame.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 22
  %237 = ptrtoint ptr %num_b_frame.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %num_b_frame.i.i, align 4
  %conv.i.i = zext i8 %238 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %or.i.i = or i32 %shl.i.i, %236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  tail call void @arm_heavy_mb() #6
  %239 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %240 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %241, i32 50436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %239) #6, !srcloc !205
  %242 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %243, i32 2096
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !287
  %level.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 24
  %245 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %level.i.i, align 4
  %shl14.i.i = shl i32 %246, 8
  %247 = and i32 %244, -1073676289
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #6
  %and16.i.i = or i32 %shl14.i.i, %248
  %249 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %codec.i.i, align 4
  %or17.i.i = or i32 %and16.i.i, %250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !288
  tail call void @arm_heavy_mb() #6
  %251 = tail call i32 @llvm.bswap.i32(i32 %or17.i.i) #6
  %252 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %253, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 %251) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !289
  tail call void @arm_heavy_mb() #6
  %interlace.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 26
  %254 = ptrtoint ptr %interlace.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %interlace.i.i, align 4
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #6
  %257 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %258, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.i, i32 %256) #6, !srcloc !205
  %259 = ptrtoint ptr %interlace.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %interlace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i.i = icmp eq i32 %260, 0
  br i1 %tobool.not.i.i, label %if.then.i21.do.body34.i.i_crit_edge, label %do.body29.i.i

if.then.i21.do.body34.i.i_crit_edge:              ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34.i.i

do.body29.i.i:                                    ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !290
  tail call void @arm_heavy_mb() #6
  %261 = ptrtoint ptr %img_height.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %img_height.i, align 4
  %shr.i.i = ashr i32 %262, 1
  %263 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #6
  %264 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %265, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %263) #6, !srcloc !205
  br label %do.body34.i.i

do.body34.i.i:                                    ; preds = %do.body29.i.i, %if.then.i21.do.body34.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !291
  tail call void @arm_heavy_mb() #6
  %loop_filter_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 1
  %266 = ptrtoint ptr %loop_filter_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %loop_filter_mode.i.i, align 4
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #6
  %269 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %270, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 %268) #6, !srcloc !205
  %loop_filter_alpha.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 2
  %271 = ptrtoint ptr %loop_filter_alpha.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %loop_filter_alpha.i.i, align 4
  %conv39.i.i = sext i8 %272 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %cmp.i.i = icmp slt i8 %272, 0
  %add.i.i = sub nsw i32 256, %conv39.i.i
  %or44.i.i = or i32 %add.i.i, 16
  %and47.i.i = and i32 %conv39.i.i, 15
  %reg.0.i.i = select i1 %cmp.i.i, i32 %or44.i.i, i32 %and47.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  tail call void @arm_heavy_mb() #6
  %273 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #6
  %274 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr54.i.i = getelementptr i8, ptr %275, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i.i, i32 %273) #6, !srcloc !205
  %loop_filter_beta.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 3
  %276 = ptrtoint ptr %loop_filter_beta.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %loop_filter_beta.i.i, align 1
  %conv55.i.i = sext i8 %277 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %cmp56.i.i = icmp slt i8 %277, 0
  %add62.i.i = sub nsw i32 256, %conv55.i.i
  %or63.i.i = or i32 %add62.i.i, 16
  %and67.i.i = and i32 %conv55.i.i, 15
  %reg.1.i.i = select i1 %cmp56.i.i, i32 %or63.i.i, i32 %and67.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !293
  tail call void @arm_heavy_mb() #6
  %278 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i.i) #6
  %279 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr74.i.i = getelementptr i8, ptr %280, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i, i32 %278) #6, !srcloc !205
  %entropy_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 4
  %281 = ptrtoint ptr %entropy_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %entropy_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %282)
  %cmp75.i.i = icmp eq i32 %282, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %283 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %284, i32 53252
  br i1 %cmp75.i.i, label %do.body78.i.i, label %do.body84.i.i

do.body78.i.i:                                    ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 16777216) #6, !srcloc !205
  br label %if.end89.i.i

do.body84.i.i:                                    ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 0) #6, !srcloc !205
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %do.body84.i.i, %do.body78.i.i
  %285 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr93.i.i = getelementptr i8, ptr %286, i32 53264
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !294
  %num_ref_pic_4p.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 6
  %288 = ptrtoint ptr %num_ref_pic_4p.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %num_ref_pic_4p.i.i, align 1
  %conv98.i.i = zext i8 %289 to i32
  %shl99.i.i = shl nuw nsw i32 %conv98.i.i, 5
  %290 = and i32 %287, -2130706433
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #6
  %and101.i.i = or i32 %shl99.i.i, %291
  %max_ref_pic.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 5
  %292 = ptrtoint ptr %max_ref_pic.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %max_ref_pic.i.i, align 4
  %conv102.i.i = zext i8 %293 to i32
  %or103.i.i = or i32 %and101.i.i, %conv102.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !295
  tail call void @arm_heavy_mb() #6
  %294 = tail call i32 @llvm.bswap.i32(i32 %or103.i.i) #6
  %295 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr108.i.i = getelementptr i8, ptr %296, i32 53264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108.i.i, i32 %294) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !296
  tail call void @arm_heavy_mb() #6
  %_8x8_transform.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 7
  %297 = ptrtoint ptr %_8x8_transform.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %_8x8_transform.i.i, align 4
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #6
  %300 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr113.i.i = getelementptr i8, ptr %301, i32 53300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i.i, i32 %299) #6, !srcloc !205
  %302 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr117.i.i = getelementptr i8, ptr %303, i32 50592
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !297
  %rc_mb.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 14
  %305 = ptrtoint ptr %rc_mb.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %rc_mb.i.i, align 4
  %shl122.i.i = shl i32 %306, 8
  %307 = and i32 %304, -1057030145
  %308 = tail call i32 @llvm.bswap.i32(i32 %307) #6
  %and124.i.i = or i32 %shl122.i.i, %308
  %rc_frame_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 18
  %309 = ptrtoint ptr %rc_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %rc_frame_qp.i.i, align 2
  %conv125.i.i = zext i8 %310 to i32
  %or126.i.i = or i32 %and124.i.i, %conv125.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  tail call void @arm_heavy_mb() #6
  %311 = tail call i32 @llvm.bswap.i32(i32 %or126.i.i) #6
  %312 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr131.i.i = getelementptr i8, ptr %313, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131.i.i, i32 %311) #6, !srcloc !205
  %rc_frame.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %314 = ptrtoint ptr %rc_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %rc_frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %tobool132.not.i.i = icmp eq i32 %315, 0
  br i1 %tobool132.not.i.i, label %if.end89.i.i.do.body142.i.i_crit_edge, label %land.lhs.true.i.i

if.end89.i.i.do.body142.i.i_crit_edge:            ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body142.i.i

land.lhs.true.i.i:                                ; preds = %if.end89.i.i
  %rc_framerate_denom.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %316 = ptrtoint ptr %rc_framerate_denom.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %rc_framerate_denom.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool133.not.i.i = icmp eq i32 %317, 0
  br i1 %tobool133.not.i.i, label %land.lhs.true.i.i.do.body142.i.i_crit_edge, label %do.body135.i.i

land.lhs.true.i.i.do.body142.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body142.i.i

do.body135.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !299
  tail call void @arm_heavy_mb() #6
  %rc_framerate_num.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %318 = ptrtoint ptr %rc_framerate_num.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %rc_framerate_num.i.i, align 4
  %mul.i.i = mul i32 %319, 1000
  %320 = ptrtoint ptr %rc_framerate_denom.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %rc_framerate_denom.i.i, align 4
  %div.i.i = udiv i32 %mul.i.i, %321
  %322 = tail call i32 @llvm.bswap.i32(i32 %div.i.i) #6
  %323 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr140.i.i = getelementptr i8, ptr %324, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i.i, i32 %322) #6, !srcloc !205
  br label %if.end147.i.i

do.body142.i.i:                                   ; preds = %land.lhs.true.i.i.do.body142.i.i_crit_edge, %if.end89.i.i.do.body142.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !300
  tail call void @arm_heavy_mb() #6
  %325 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr146.i.i = getelementptr i8, ptr %326, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146.i.i, i32 0) #6, !srcloc !205
  br label %if.end147.i.i

if.end147.i.i:                                    ; preds = %do.body142.i.i, %do.body135.i.i
  %327 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr151.i.i = getelementptr i8, ptr %328, i32 50604
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !301
  %rc_max_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 20
  %330 = ptrtoint ptr %rc_max_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %rc_max_qp.i.i, align 4
  %conv156.i.i = zext i8 %331 to i32
  %shl157.i.i = shl nuw nsw i32 %conv156.i.i, 8
  %332 = and i32 %329, -1061093377
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #6
  %and159.i.i = or i32 %shl157.i.i, %333
  %rc_min_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 19
  %334 = ptrtoint ptr %rc_min_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %rc_min_qp.i.i, align 1
  %conv160.i.i = zext i8 %335 to i32
  %or161.i.i = or i32 %and159.i.i, %conv160.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !302
  tail call void @arm_heavy_mb() #6
  %336 = tail call i32 @llvm.bswap.i32(i32 %or161.i.i) #6
  %337 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr166.i.i = getelementptr i8, ptr %338, i32 50604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166.i.i, i32 %336) #6, !srcloc !205
  %339 = ptrtoint ptr %rc_mb.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %rc_mb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool168.not.i.i = icmp eq i32 %340, 0
  br i1 %tobool168.not.i.i, label %if.end147.i.i.if.end193.i.i_crit_edge, label %if.then169.i.i

if.end147.i.i.if.end193.i.i_crit_edge:            ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193.i.i

if.then169.i.i:                                   ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %341 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr173.i.i = getelementptr i8, ptr %342, i32 50612
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !303
  %rc_mb_dark.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 8
  %344 = ptrtoint ptr %rc_mb_dark.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rc_mb_dark.i.i, align 4
  %shl178.i.i = shl i32 %345, 3
  %rc_mb_smooth.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 9
  %346 = ptrtoint ptr %rc_mb_smooth.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %rc_mb_smooth.i.i, align 4
  %shl181.i.i = shl i32 %347, 2
  %rc_mb_static.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 10
  %348 = ptrtoint ptr %rc_mb_static.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %rc_mb_static.i.i, align 4
  %shl184.i.i = shl i32 %349, 1
  %350 = and i32 %343, -251658241
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #6
  %and180.masked.masked.i.i = or i32 %shl178.i.i, %351
  %and183.masked.i.i = or i32 %and180.masked.masked.i.i, %shl181.i.i
  %and186.i.i = or i32 %and183.masked.i.i, %shl184.i.i
  %rc_mb_activity.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 11
  %352 = ptrtoint ptr %rc_mb_activity.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %rc_mb_activity.i.i, align 4
  %or187.i.i = or i32 %and186.i.i, %353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !304
  tail call void @arm_heavy_mb() #6
  %354 = tail call i32 @llvm.bswap.i32(i32 %or187.i.i) #6
  %355 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %regs_base.i.i, align 4
  %add.ptr192.i.i = getelementptr i8, ptr %356, i32 50612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192.i.i, i32 %354) #6, !srcloc !205
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.then169.i.i, %if.end147.i.i.if.end193.i.i_crit_edge
  %357 = ptrtoint ptr %rc_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %rc_frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool195.not.i.i = icmp eq i32 %358, 0
  br i1 %tobool195.not.i.i, label %land.lhs.true196.i.i, label %if.end193.i.i.if.end209.i.i_crit_edge

if.end193.i.i.if.end209.i.i_crit_edge:            ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209.i.i

land.lhs.true196.i.i:                             ; preds = %if.end193.i.i
  %359 = ptrtoint ptr %rc_mb.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %rc_mb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool198.not.i.i = icmp eq i32 %360, 0
  br i1 %tobool198.not.i.i, label %if.then199.i.i, label %land.lhs.true196.i.i.if.end209.i.i_crit_edge

land.lhs.true196.i.i.if.end209.i.i_crit_edge:     ; preds = %land.lhs.true196.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209.i.i

if.then199.i.i:                                   ; preds = %land.lhs.true196.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %361 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %virt.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %362, i32 112
  %363 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %add.ptr.i.i.i, align 4
  %and201.i.i = and i32 %364, -4096
  %rc_b_frame_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 22
  %365 = ptrtoint ptr %rc_b_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %rc_b_frame_qp.i.i, align 2
  %367 = and i8 %366, 63
  %and203.i.i = zext i8 %367 to i32
  %shl204.i.i = shl nuw nsw i32 %and203.i.i, 6
  %or205.i.i = or i32 %shl204.i.i, %and201.i.i
  %rc_p_frame_qp.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 21
  %368 = ptrtoint ptr %rc_p_frame_qp.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %rc_p_frame_qp.i.i, align 1
  %370 = and i8 %369, 63
  %and207.i.i = zext i8 %370 to i32
  %or208.i.i = or i32 %or205.i.i, %and207.i.i
  store i32 %or208.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  br label %if.end209.i.i

if.end209.i.i:                                    ; preds = %if.then199.i.i, %land.lhs.true196.i.i.if.end209.i.i_crit_edge, %if.end193.i.i.if.end209.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i3.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %371 = ptrtoint ptr %virt.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %virt.i3.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %372, i32 40
  %373 = ptrtoint ptr %add.ptr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %add.ptr.i4.i.i, align 4
  %and211.i.i = and i32 %374, -32769
  %vui_sar.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 12
  %375 = ptrtoint ptr %vui_sar.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %vui_sar.i.i, align 4
  %shl212.i.i = shl i32 %376, 1
  %or213.i.i = or i32 %shl212.i.i, %and211.i.i
  store i32 %or213.i.i, ptr %add.ptr.i4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %377 = ptrtoint ptr %vui_sar.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %vui_sar.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool215.not.i.i = icmp eq i32 %378, 0
  br i1 %tobool215.not.i.i, label %if.end209.i.i.if.end234.i.i_crit_edge, label %if.then216.i.i

if.end209.i.i.if.end234.i.i_crit_edge:            ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234.i.i

if.then216.i.i:                                   ; preds = %if.end209.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %379 = ptrtoint ptr %virt.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %virt.i3.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %380, i32 116
  %381 = ptrtoint ptr %add.ptr.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %add.ptr.i8.i.i, align 4
  %and218.i.i = and i32 %382, -256
  %vui_sar_idc.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 13
  %383 = ptrtoint ptr %vui_sar_idc.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %vui_sar_idc.i.i, align 4
  %conv219.i.i = zext i8 %384 to i32
  %or220.i.i = or i32 %and218.i.i, %conv219.i.i
  store i32 %or220.i.i, ptr %add.ptr.i8.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %385 = ptrtoint ptr %vui_sar_idc.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %vui_sar_idc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %386)
  %cmp223.i.i = icmp eq i8 %386, -1
  br i1 %cmp223.i.i, label %if.then225.i.i, label %if.then216.i.i.if.end234.i.i_crit_edge

if.then216.i.i.if.end234.i.i_crit_edge:           ; preds = %if.then216.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234.i.i

if.then225.i.i:                                   ; preds = %if.then216.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %387 = ptrtoint ptr %virt.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %virt.i3.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %388, i32 120
  %vui_ext_sar_width.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 14
  %389 = ptrtoint ptr %vui_ext_sar_width.i.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %vui_ext_sar_width.i.i, align 2
  %conv228.i.i = zext i16 %390 to i32
  %shl229.i.i = shl nuw i32 %conv228.i.i, 16
  %vui_ext_sar_height.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 15
  %391 = ptrtoint ptr %vui_ext_sar_height.i.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %vui_ext_sar_height.i.i, align 4
  %conv231.i.i = zext i16 %392 to i32
  %or232.i.i = or i32 %shl229.i.i, %conv231.i.i
  %393 = ptrtoint ptr %add.ptr.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %or232.i.i, ptr %add.ptr.i12.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  br label %if.end234.i.i

if.end234.i.i:                                    ; preds = %if.then225.i.i, %if.then216.i.i.if.end234.i.i_crit_edge, %if.end209.i.i.if.end234.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %394 = ptrtoint ptr %virt.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %virt.i3.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %395, i32 156
  %396 = ptrtoint ptr %add.ptr.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %add.ptr.i16.i.i, align 4
  %and236.i.i = and i32 %397, -65537
  %open_gop.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 16
  %398 = ptrtoint ptr %open_gop.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %open_gop.i.i, align 4
  %shl237.i.i = shl i32 %399, 16
  %or238.i.i = or i32 %shl237.i.i, %and236.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool240.not.i.i = icmp eq i32 %399, 0
  br i1 %tobool240.not.i.i, label %if.end234.i.i.if.end245.i.i_crit_edge, label %if.then241.i.i

if.end234.i.i.if.end245.i.i_crit_edge:            ; preds = %if.end234.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end245.i.i

if.then241.i.i:                                   ; preds = %if.end234.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and242.i.i = and i32 %or238.i.i, -65536
  %open_gop_size.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 17
  %400 = ptrtoint ptr %open_gop_size.i.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %open_gop_size.i.i, align 4
  %conv243.i.i = zext i16 %401 to i32
  %or244.i.i = or i32 %and242.i.i, %conv243.i.i
  br label %if.end245.i.i

if.end245.i.i:                                    ; preds = %if.then241.i.i, %if.end234.i.i.if.end245.i.i_crit_edge
  %shm.0.i.i = phi i32 [ %or244.i.i, %if.then241.i.i ], [ %or238.i.i, %if.end234.i.i.if.end245.i.i_crit_edge ]
  %402 = ptrtoint ptr %add.ptr.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %shm.0.i.i, ptr %add.ptr.i16.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %403 = ptrtoint ptr %virt.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %virt.i3.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %404, i32 40
  %405 = ptrtoint ptr %add.ptr.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %add.ptr.i20.i.i, align 4
  %frame_skip_mode.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %407 = ptrtoint ptr %frame_skip_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %frame_skip_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %408)
  %cmp247.i.i = icmp eq i32 %408, 2
  br i1 %cmp247.i.i, label %if.then249.i.i, label %if.end245.i.i.s5p_mfc_set_enc_params_h264.exit.i_crit_edge

if.end245.i.i.s5p_mfc_set_enc_params_h264.exit.i_crit_edge: ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_enc_params_h264.exit.i

if.then249.i.i:                                   ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and250.i.i = and i32 %406, 65535
  %cpb_size.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 0, i32 25
  %409 = ptrtoint ptr %cpb_size.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %cpb_size.i.i, align 4
  %conv251.i.i = zext i16 %410 to i32
  %shl252.i.i = shl nuw i32 %conv251.i.i, 16
  %or253.i.i = or i32 %shl252.i.i, %and250.i.i
  br label %s5p_mfc_set_enc_params_h264.exit.i

s5p_mfc_set_enc_params_h264.exit.i:               ; preds = %if.then249.i.i, %if.end245.i.i.s5p_mfc_set_enc_params_h264.exit.i_crit_edge
  %shm.1.i.i = phi i32 [ %or253.i.i, %if.then249.i.i ], [ %406, %if.end245.i.i.s5p_mfc_set_enc_params_h264.exit.i_crit_edge ]
  %411 = ptrtoint ptr %add.ptr.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %shm.1.i.i, ptr %add.ptr.i20.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  br label %if.end18.i

if.then4.i:                                       ; preds = %vb2_plane_size.exit
  %mpeg4.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #6
  %regs_base.i1.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %228, i32 0, i32 5
  %412 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %413, i32 50436
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !305
  %415 = and i32 %414, -769
  %416 = tail call i32 @llvm.bswap.i32(i32 %415) #6
  %num_b_frame.i3.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 22
  %417 = ptrtoint ptr %num_b_frame.i3.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %num_b_frame.i3.i, align 4
  %conv.i4.i = zext i8 %418 to i32
  %shl.i5.i = shl nuw nsw i32 %conv.i4.i, 16
  %or.i6.i = or i32 %shl.i5.i, %416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !306
  tail call void @arm_heavy_mb() #6
  %419 = tail call i32 @llvm.bswap.i32(i32 %or.i6.i) #6
  %420 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr5.i7.i = getelementptr i8, ptr %421, i32 50436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i7.i, i32 %419) #6, !srcloc !205
  %422 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr9.i8.i = getelementptr i8, ptr %423, i32 2096
  %424 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i8.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !307
  %level.i9.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 10
  %425 = ptrtoint ptr %level.i9.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %level.i9.i, align 4
  %shl14.i10.i = shl i32 %426, 8
  %427 = and i32 %424, -1073676289
  %428 = tail call i32 @llvm.bswap.i32(i32 %427) #6
  %and16.i11.i = or i32 %shl14.i10.i, %428
  %429 = ptrtoint ptr %mpeg4.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %mpeg4.i.i, align 4
  %or17.i12.i = or i32 %and16.i11.i, %430
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !308
  tail call void @arm_heavy_mb() #6
  %431 = tail call i32 @llvm.bswap.i32(i32 %or17.i12.i) #6
  %432 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr22.i13.i = getelementptr i8, ptr %433, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i13.i, i32 %431) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  tail call void @arm_heavy_mb() #6
  %quarter_pixel.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 1
  %434 = ptrtoint ptr %quarter_pixel.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %quarter_pixel.i.i, align 4
  %436 = tail call i32 @llvm.bswap.i32(i32 %435) #6
  %437 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr27.i14.i = getelementptr i8, ptr %438, i32 57352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i14.i, i32 %436) #6, !srcloc !205
  %rc_frame.i15.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %439 = ptrtoint ptr %rc_frame.i15.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %rc_frame.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %440)
  %tobool.not.i16.i = icmp eq i32 %440, 0
  br i1 %tobool.not.i16.i, label %if.end.i.i, label %if.then4.i.if.then39.i.i_crit_edge

if.then4.i.if.then39.i.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i.i

if.end.i.i:                                       ; preds = %if.then4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i.i17.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %441 = ptrtoint ptr %virt.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %virt.i.i17.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %442, i32 112
  %443 = ptrtoint ptr %add.ptr.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %add.ptr.i.i18.i, align 4
  %and29.i.i = and i32 %444, -4096
  %rc_b_frame_qp.i19.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 8
  %445 = ptrtoint ptr %rc_b_frame_qp.i19.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %rc_b_frame_qp.i19.i, align 4
  %447 = and i8 %446, 63
  %and31.i.i = zext i8 %447 to i32
  %shl32.i.i = shl nuw nsw i32 %and31.i.i, 6
  %or33.i.i = or i32 %shl32.i.i, %and29.i.i
  %rc_p_frame_qp.i20.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 7
  %448 = ptrtoint ptr %rc_p_frame_qp.i20.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %rc_p_frame_qp.i20.i, align 1
  %450 = and i8 %449, 63
  %and35.i.i = zext i8 %450 to i32
  %or36.i.i = or i32 %or33.i.i, %and35.i.i
  store i32 %or36.i.i, ptr %add.ptr.i.i18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %451 = ptrtoint ptr %rc_frame.i15.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %.pr.i.i = load i32, ptr %rc_frame.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool38.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool38.not.i.i, label %do.body59.i.i, label %if.end.i.i.if.then39.i.i_crit_edge

if.end.i.i.if.then39.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i.i

if.then39.i.i:                                    ; preds = %if.end.i.i.if.then39.i.i_crit_edge, %if.then4.i.if.then39.i.i_crit_edge
  %rc_framerate_denom.i21.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %452 = ptrtoint ptr %rc_framerate_denom.i21.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %rc_framerate_denom.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %453)
  %cmp.not.i.i = icmp eq i32 %453, 0
  br i1 %cmp.not.i.i, label %if.then39.i.i.if.end64.i.i_crit_edge, label %if.then41.i.i

if.then39.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

if.then41.i.i:                                    ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rc_framerate_num.i22.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %454 = ptrtoint ptr %rc_framerate_num.i22.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %rc_framerate_num.i22.i, align 4
  %mul.i23.i = mul i32 %455, 1000
  %div.i24.i = udiv i32 %mul.i23.i, %453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !310
  tail call void @arm_heavy_mb() #6
  %456 = tail call i32 @llvm.bswap.i32(i32 %div.i24.i) #6
  %457 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %458, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i.i, i32 %456) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i3.i25.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %459 = ptrtoint ptr %virt.i3.i25.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %virt.i3.i25.i, align 4
  %add.ptr.i4.i26.i = getelementptr i8, ptr %460, i32 48
  %461 = ptrtoint ptr %rc_framerate_num.i22.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %rc_framerate_num.i22.i, align 4
  %and52.i.i = shl i32 %462, 16
  %463 = ptrtoint ptr %rc_framerate_denom.i21.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %rc_framerate_denom.i21.i, align 4
  %and56.i.i = and i32 %464, 65535
  %or54.i.i = or i32 %and56.i.i, %and52.i.i
  %or57.i.i = or i32 %or54.i.i, -2147483648
  %465 = ptrtoint ptr %add.ptr.i4.i26.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %or57.i.i, ptr %add.ptr.i4.i26.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  br label %if.end64.i.i

do.body59.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !311
  tail call void @arm_heavy_mb() #6
  %466 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr63.i.i = getelementptr i8, ptr %467, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i.i, i32 0) #6, !srcloc !205
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %do.body59.i.i, %if.then41.i.i, %if.then39.i.i.if.end64.i.i_crit_edge
  %468 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr68.i.i = getelementptr i8, ptr %469, i32 50592
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  %471 = and i32 %470, -1056964609
  %472 = tail call i32 @llvm.bswap.i32(i32 %471) #6
  %rc_frame_qp.i27.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 4
  %473 = ptrtoint ptr %rc_frame_qp.i27.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %rc_frame_qp.i27.i, align 4
  %conv73.i.i = zext i8 %474 to i32
  %or74.i.i = or i32 %472, %conv73.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void @arm_heavy_mb() #6
  %475 = tail call i32 @llvm.bswap.i32(i32 %or74.i.i) #6
  %476 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr79.i.i = getelementptr i8, ptr %477, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i.i, i32 %475) #6, !srcloc !205
  %478 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr83.i.i = getelementptr i8, ptr %479, i32 50604
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  %rc_max_qp.i28.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 6
  %481 = ptrtoint ptr %rc_max_qp.i28.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %rc_max_qp.i28.i, align 2
  %conv88.i.i = zext i8 %482 to i32
  %shl89.i.i = shl nuw nsw i32 %conv88.i.i, 8
  %483 = and i32 %480, -1061093377
  %484 = tail call i32 @llvm.bswap.i32(i32 %483) #6
  %and91.i.i = or i32 %shl89.i.i, %484
  %rc_min_qp.i29.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 5
  %485 = ptrtoint ptr %rc_min_qp.i29.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %rc_min_qp.i29.i, align 1
  %conv92.i.i = zext i8 %486 to i32
  %or93.i.i = or i32 %and91.i.i, %conv92.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  tail call void @arm_heavy_mb() #6
  %487 = tail call i32 @llvm.bswap.i32(i32 %or93.i.i) #6
  %488 = ptrtoint ptr %regs_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %regs_base.i1.i, align 4
  %add.ptr98.i.i = getelementptr i8, ptr %489, i32 50604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.i, i32 %487) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i7.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %490 = ptrtoint ptr %virt.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %virt.i7.i.i, align 4
  %add.ptr.i8.i30.i = getelementptr i8, ptr %491, i32 40
  %492 = ptrtoint ptr %add.ptr.i8.i30.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %add.ptr.i8.i30.i, align 4
  %frame_skip_mode.i31.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %494 = ptrtoint ptr %frame_skip_mode.i31.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %frame_skip_mode.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %495)
  %cmp100.i.i = icmp eq i32 %495, 2
  br i1 %cmp100.i.i, label %if.then102.i.i, label %if.end64.i.i.s5p_mfc_set_enc_params_mpeg4.exit.i_crit_edge

if.end64.i.i.s5p_mfc_set_enc_params_mpeg4.exit.i_crit_edge: ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_enc_params_mpeg4.exit.i

if.then102.i.i:                                   ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and103.i.i = and i32 %493, 65535
  %vbv_size.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 17
  %496 = ptrtoint ptr %vbv_size.i.i to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %vbv_size.i.i, align 2
  %conv104.i.i = zext i16 %497 to i32
  %shl105.i.i = shl nuw i32 %conv104.i.i, 16
  %or106.i.i = or i32 %shl105.i.i, %and103.i.i
  br label %s5p_mfc_set_enc_params_mpeg4.exit.i

s5p_mfc_set_enc_params_mpeg4.exit.i:              ; preds = %if.then102.i.i, %if.end64.i.i.s5p_mfc_set_enc_params_mpeg4.exit.i_crit_edge
  %shm.0.i32.i = phi i32 [ %or106.i.i, %if.then102.i.i ], [ %493, %if.end64.i.i.s5p_mfc_set_enc_params_mpeg4.exit.i_crit_edge ]
  %498 = ptrtoint ptr %add.ptr.i8.i30.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %shm.0.i32.i, ptr %add.ptr.i8.i30.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  br label %if.end18.i

if.then9.i:                                       ; preds = %vb2_plane_size.exit
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %ctx) #6
  %rc_frame.i33.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %499 = ptrtoint ptr %rc_frame.i33.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %rc_frame.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %500)
  %tobool.not.i34.i = icmp eq i32 %500, 0
  br i1 %tobool.not.i34.i, label %if.end.i40.i, label %if.then9.i.land.lhs.true.i42.i_crit_edge

if.then9.i.land.lhs.true.i42.i_crit_edge:         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i42.i

if.end.i40.i:                                     ; preds = %if.then9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i.i35.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %501 = ptrtoint ptr %virt.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %virt.i.i35.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %502, i32 112
  %503 = ptrtoint ptr %add.ptr.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %add.ptr.i.i36.i, align 4
  %and.i.i = and i32 %504, -4096
  %rc_p_frame_qp.i37.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 7
  %505 = ptrtoint ptr %rc_p_frame_qp.i37.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %rc_p_frame_qp.i37.i, align 1
  %507 = and i8 %506, 63
  %and3.i.i = zext i8 %507 to i32
  %or.i38.i = or i32 %and.i.i, %and3.i.i
  store i32 %or.i38.i, ptr %add.ptr.i.i36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %508 = ptrtoint ptr %rc_frame.i33.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %.pr.i39.i = load i32, ptr %rc_frame.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i39.i)
  %tobool5.not.i.i = icmp eq i32 %.pr.i39.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i40.i.do.body9.i.i_crit_edge, label %if.end.i40.i.land.lhs.true.i42.i_crit_edge

if.end.i40.i.land.lhs.true.i42.i_crit_edge:       ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i42.i

if.end.i40.i.do.body9.i.i_crit_edge:              ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i.i

land.lhs.true.i42.i:                              ; preds = %if.end.i40.i.land.lhs.true.i42.i_crit_edge, %if.then9.i.land.lhs.true.i42.i_crit_edge
  %rc_framerate_denom.i41.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 24
  %509 = ptrtoint ptr %rc_framerate_denom.i41.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %rc_framerate_denom.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %510)
  %tobool6.not.i.i = icmp eq i32 %510, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i42.i.do.body9.i.i_crit_edge, label %do.body.i.i

land.lhs.true.i42.i.do.body9.i.i_crit_edge:       ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  tail call void @arm_heavy_mb() #6
  %rc_framerate_num.i43.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 23
  %511 = ptrtoint ptr %rc_framerate_num.i43.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %rc_framerate_num.i43.i, align 4
  %mul.i44.i = mul i32 %512, 1000
  %513 = ptrtoint ptr %rc_framerate_denom.i41.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %rc_framerate_denom.i41.i, align 4
  %div.i45.i = udiv i32 %mul.i44.i, %514
  %515 = tail call i32 @llvm.bswap.i32(i32 %div.i45.i) #6
  %regs_base.i46.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %228, i32 0, i32 5
  %516 = ptrtoint ptr %regs_base.i46.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %regs_base.i46.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %517, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %515) #6, !srcloc !205
  br label %if.end14.i.i

do.body9.i.i:                                     ; preds = %land.lhs.true.i42.i.do.body9.i.i_crit_edge, %if.end.i40.i.do.body9.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !317
  tail call void @arm_heavy_mb() #6
  %regs_base12.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %228, i32 0, i32 5
  %518 = ptrtoint ptr %regs_base12.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %regs_base12.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %519, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #6, !srcloc !205
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.body9.i.i, %do.body.i.i
  %regs_base15.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %228, i32 0, i32 5
  %520 = ptrtoint ptr %regs_base15.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %regs_base15.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %521, i32 50592
  %522 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !318
  %523 = and i32 %522, -1056964609
  %524 = tail call i32 @llvm.bswap.i32(i32 %523) #6
  %rc_frame_qp.i48.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 4
  %525 = ptrtoint ptr %rc_frame_qp.i48.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %rc_frame_qp.i48.i, align 4
  %conv20.i.i = zext i8 %526 to i32
  %or21.i.i = or i32 %524, %conv20.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !319
  tail call void @arm_heavy_mb() #6
  %527 = tail call i32 @llvm.bswap.i32(i32 %or21.i.i) #6
  %528 = ptrtoint ptr %regs_base15.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %regs_base15.i.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %529, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %527) #6, !srcloc !205
  %530 = ptrtoint ptr %regs_base15.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %regs_base15.i.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %531, i32 50604
  %532 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i.i) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  %rc_max_qp.i49.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 6
  %533 = ptrtoint ptr %rc_max_qp.i49.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %rc_max_qp.i49.i, align 2
  %conv35.i.i = zext i8 %534 to i32
  %shl.i50.i = shl nuw nsw i32 %conv35.i.i, 8
  %535 = and i32 %532, -1061093377
  %536 = tail call i32 @llvm.bswap.i32(i32 %535) #6
  %and37.i.i = or i32 %shl.i50.i, %536
  %rc_min_qp.i51.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 25, i32 1, i32 5
  %537 = ptrtoint ptr %rc_min_qp.i51.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %rc_min_qp.i51.i, align 1
  %conv38.i.i = zext i8 %538 to i32
  %or39.i.i = or i32 %and37.i.i, %conv38.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void @arm_heavy_mb() #6
  %539 = tail call i32 @llvm.bswap.i32(i32 %or39.i.i) #6
  %540 = ptrtoint ptr %regs_base15.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %regs_base15.i.i, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %541, i32 50604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i, i32 %539) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i3.i52.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %542 = ptrtoint ptr %virt.i3.i52.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %virt.i3.i52.i, align 4
  %add.ptr.i4.i53.i = getelementptr i8, ptr %543, i32 40
  %544 = ptrtoint ptr %add.ptr.i4.i53.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %add.ptr.i4.i53.i, align 4
  %frame_skip_mode.i54.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %546 = ptrtoint ptr %frame_skip_mode.i54.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %frame_skip_mode.i54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %547)
  %cmp.i55.i = icmp eq i32 %547, 2
  br i1 %cmp.i55.i, label %if.then47.i.i, label %if.end14.i.i.s5p_mfc_set_enc_params_h263.exit.i_crit_edge

if.end14.i.i.s5p_mfc_set_enc_params_h263.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5p_mfc_set_enc_params_h263.exit.i

if.then47.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and48.i.i = and i32 %545, 65535
  %vbv_size.i56.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 17
  %548 = ptrtoint ptr %vbv_size.i56.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %vbv_size.i56.i, align 2
  %conv49.i.i = zext i16 %549 to i32
  %shl50.i.i = shl nuw i32 %conv49.i.i, 16
  %or51.i.i = or i32 %shl50.i.i, %and48.i.i
  br label %s5p_mfc_set_enc_params_h263.exit.i

s5p_mfc_set_enc_params_h263.exit.i:               ; preds = %if.then47.i.i, %if.end14.i.i.s5p_mfc_set_enc_params_h263.exit.i_crit_edge
  %shm.0.i57.i = phi i32 [ %or51.i.i, %if.then47.i.i ], [ %545, %if.end14.i.i.s5p_mfc_set_enc_params_h263.exit.i_crit_edge ]
  %550 = ptrtoint ptr %add.ptr.i4.i53.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %shm.0.i57.i, ptr %add.ptr.i4.i53.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  br label %if.end18.i

do.end.i22:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 1120, i32 noundef %230) #9
  br label %s5p_mfc_init_encode_v5.exit

if.end18.i:                                       ; preds = %s5p_mfc_set_enc_params_h263.exit.i, %s5p_mfc_set_enc_params_mpeg4.exit.i, %s5p_mfc_set_enc_params_h264.exit.i
  tail call void @arm_heavy_mb() #6
  %551 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %shm.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  %553 = ptrtoint ptr %shm.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %shm.i.i, align 4
  %555 = tail call i32 @llvm.bswap.i32(i32 %554) #6
  %regs_base.i58.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %552, i32 0, i32 5
  %556 = ptrtoint ptr %regs_base.i58.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %regs_base.i58.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %557, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %555) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %inst_no.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %558 = ptrtoint ptr %inst_no.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %inst_no.i, align 4
  %or.i = or i32 %559, 65536
  %560 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %regs_base.i23 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %228, i32 0, i32 5
  %561 = ptrtoint ptr %regs_base.i23 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %regs_base.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %562, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %560) #6, !srcloc !205
  br label %s5p_mfc_init_encode_v5.exit

s5p_mfc_init_encode_v5.exit:                      ; preds = %if.end18.i, %do.end.i22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_decode_one_frame_v5(ptr nocapture noundef readonly %ctx, i32 noundef %last_frame) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  tail call void @arm_heavy_mb() #6
  %dec_dst_flag = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 37
  %2 = ptrtoint ptr %dec_dst_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dec_dst_flag, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !205
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %shm.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51
  %9 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shm.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %8, i32 0, i32 5
  %12 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !205
  %dpb_flush_flag = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 26
  %14 = ptrtoint ptr %dpb_flush_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dpb_flush_flag, align 4
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %regs_base5.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %regs_base5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_base5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %19, i32 8296
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %21 = and i32 %20, -4194305
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 4194304
  %.sink.i = or i32 %21, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !324
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %regs_base5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_base5.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %23, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %.sink.i) #6, !srcloc !205
  %24 = zext i32 %last_frame to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %last_frame, label %entry.do.body23_crit_edge [
    i32 0, label %do.body2
    i32 1, label %do.body8
    i32 2, label %do.body16
  ]

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !325
  tail call void @arm_heavy_mb() #6
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %25 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inst_no, align 4
  %or = or i32 %26, 131072
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base, align 4
  %add.ptr6 = getelementptr i8, ptr %29, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %27) #6, !srcloc !205
  br label %do.body23

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !326
  tail call void @arm_heavy_mb() #6
  %inst_no11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %30 = ptrtoint ptr %inst_no11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inst_no11, align 4
  %or12 = or i32 %31, 196608
  %32 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %33 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs_base, align 4
  %add.ptr14 = getelementptr i8, ptr %34, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %32) #6, !srcloc !205
  br label %do.body23

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !327
  tail call void @arm_heavy_mb() #6
  %inst_no19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %35 = ptrtoint ptr %inst_no19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inst_no19, align 4
  %or20 = or i32 %36, 327680
  %37 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %38 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs_base, align 4
  %add.ptr22 = getelementptr i8, ptr %39, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %37) #6, !srcloc !205
  br label %do.body23

do.body23:                                        ; preds = %do.body16, %do.body8, %do.body2, %entry.do.body23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %40 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp = icmp sgt i32 %40, 1
  br i1 %cmp, label %do.end26, label %do.body23.do.end28_crit_edge

do.body23.do.end28_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end26:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 1104) #9
  br label %do.end28

do.end28:                                         ; preds = %do.end26, %do.body23.do.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_enc_params(ptr noundef readonly %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !328
  tail call void @arm_heavy_mb() #6
  %img_width = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 18
  %2 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %img_width, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !329
  tail call void @arm_heavy_mb() #6
  %img_height = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 19
  %7 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %img_height, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_base, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #6, !srcloc !205
  %12 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 50436
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !330
  %15 = and i32 %14, 64511
  %16 = or i32 %15, 1024
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %gop_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 4
  %18 = ptrtoint ptr %gop_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gop_size, align 4
  %conv = zext i16 %19 to i32
  %or10 = or i32 %17, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %21 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs_base, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 50436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %20) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 50440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !333
  tail call void @arm_heavy_mb() #6
  %slice_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 5
  %25 = ptrtoint ptr %slice_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slice_mode, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base, align 4
  %add.ptr25 = getelementptr i8, ptr %29, i32 50444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %27) #6, !srcloc !205
  %30 = ptrtoint ptr %slice_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slice_mode, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %31, label %do.body44 [
    i32 1, label %do.body28
    i32 2, label %do.body38
  ]

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !334
  tail call void @arm_heavy_mb() #6
  %slice_mb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 6
  %33 = ptrtoint ptr %slice_mb to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %slice_mb, align 4
  %conv31 = zext i16 %34 to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv31)
  %36 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs_base, align 4
  %add.ptr33 = getelementptr i8, ptr %37, i32 50448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %35) #6, !srcloc !205
  br label %do.body55

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !335
  tail call void @arm_heavy_mb() #6
  %slice_bit = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 7
  %38 = ptrtoint ptr %slice_bit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slice_bit, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs_base, align 4
  %add.ptr42 = getelementptr i8, ptr %42, i32 50452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %40) #6, !srcloc !205
  br label %do.body55

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !336
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs_base, align 4
  %add.ptr48 = getelementptr i8, ptr %44, i32 50448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !337
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs_base, align 4
  %add.ptr53 = getelementptr i8, ptr %46, i32 50452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 0) #6, !srcloc !205
  br label %do.body55

do.body55:                                        ; preds = %do.body44, %do.body38, %do.body28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !338
  tail call void @arm_heavy_mb() #6
  %intra_refresh_mb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 8
  %47 = ptrtoint ptr %intra_refresh_mb to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %intra_refresh_mb, align 4
  %conv58 = zext i16 %48 to i32
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv58)
  %50 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs_base, align 4
  %add.ptr60 = getelementptr i8, ptr %51, i32 50456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %49) #6, !srcloc !205
  %src_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 7
  %52 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %src_fmt, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %55, label %do.body55.if.end81_crit_edge [
    i32 842091854, label %do.body64
    i32 842091860, label %do.body75
  ]

do.body55.if.end81_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.body64:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !339
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs_base, align 4
  %add.ptr68 = getelementptr i8, ptr %58, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #6, !srcloc !205
  br label %if.end81

do.body75:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !340
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs_base, align 4
  %add.ptr79 = getelementptr i8, ptr %60, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 50331648) #6, !srcloc !205
  br label %if.end81

if.end81:                                         ; preds = %do.body75, %do.body64, %do.body55.if.end81_crit_edge
  %61 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs_base, align 4
  %add.ptr85 = getelementptr i8, ptr %62, i32 50464
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !341
  %pad = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 9
  %64 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not = icmp eq i32 %65, 0
  br i1 %tobool.not, label %if.end81.do.body103_crit_edge, label %if.then89

if.end81.do.body103_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body103

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %pad_cr = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 12
  %66 = ptrtoint ptr %pad_cr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pad_cr, align 2
  %conv92 = zext i8 %67 to i32
  %shl = shl nuw nsw i32 %conv92, 16
  %68 = shl i32 %63, 24
  %pad_cb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 11
  %69 = ptrtoint ptr %pad_cb to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pad_cb, align 1
  %conv95 = zext i8 %70 to i32
  %shl96 = shl nuw nsw i32 %conv95, 8
  %71 = or i32 %shl, %68
  %and94.masked = or i32 %71, %shl96
  %pad_luma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 10
  %72 = ptrtoint ptr %pad_luma to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pad_luma, align 4
  %conv99 = zext i8 %73 to i32
  %and98 = or i32 %and94.masked, %conv99
  %or100 = or i32 %and98, -2147483648
  br label %do.body103

do.body103:                                       ; preds = %if.then89, %if.end81.do.body103_crit_edge
  %reg.0 = phi i32 [ %or100, %if.then89 ], [ 0, %if.end81.do.body103_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !342
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %75 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs_base, align 4
  %add.ptr107 = getelementptr i8, ptr %76, i32 50464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %74) #6, !srcloc !205
  %77 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs_base, align 4
  %add.ptr111 = getelementptr i8, ptr %78, i32 50592
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !343
  %80 = and i32 %79, -131073
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %rc_frame = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 13
  %82 = ptrtoint ptr %rc_frame to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rc_frame, align 4
  %shl116 = shl i32 %83, 9
  %or117 = or i32 %shl116, %81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !344
  tail call void @arm_heavy_mb() #6
  %84 = tail call i32 @llvm.bswap.i32(i32 %or117)
  %85 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs_base, align 4
  %add.ptr122 = getelementptr i8, ptr %86, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %84) #6, !srcloc !205
  %87 = ptrtoint ptr %rc_frame to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rc_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool124.not = icmp eq i32 %88, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool124.not, label %do.body132, label %do.body126

do.body126:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  %rc_bitrate = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 15
  %89 = ptrtoint ptr %rc_bitrate to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rc_bitrate, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs_base, align 4
  %add.ptr130 = getelementptr i8, ptr %93, i32 50600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %91) #6, !srcloc !205
  br label %if.end137

do.body132:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs_base, align 4
  %add.ptr136 = getelementptr i8, ptr %95, i32 50600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 0) #6, !srcloc !205
  br label %if.end137

if.end137:                                        ; preds = %do.body132, %do.body126
  %96 = ptrtoint ptr %rc_frame to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rc_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool139.not = icmp eq i32 %97, 0
  br i1 %tobool139.not, label %if.end137.if.end147_crit_edge, label %do.body141

if.end137.if.end147_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.body141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !345
  tail call void @arm_heavy_mb() #6
  %rc_reaction_coeff = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 16
  %98 = ptrtoint ptr %rc_reaction_coeff to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %rc_reaction_coeff, align 4
  %conv144 = zext i16 %99 to i32
  %100 = tail call i32 @llvm.bswap.i32(i32 %conv144)
  %101 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs_base, align 4
  %add.ptr146 = getelementptr i8, ptr %102, i32 50608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %100) #6, !srcloc !205
  br label %if.end147

if.end147:                                        ; preds = %do.body141, %if.end137.if.end147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %virt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 51, i32 1
  %103 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %104, i32 40
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i, align 4
  %and149 = and i32 %106, -15
  %seq_hdr_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 19
  %107 = ptrtoint ptr %seq_hdr_mode to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %seq_hdr_mode, align 4
  %shl150 = shl i32 %108, 3
  %or151 = or i32 %shl150, %and149
  %frame_skip_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 20
  %109 = ptrtoint ptr %frame_skip_mode to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %frame_skip_mode, align 4
  %shl153 = shl i32 %110, 1
  %or154 = or i32 %or151, %shl153
  store i32 %or154, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %fixed_target_bit = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 21
  %111 = ptrtoint ptr %fixed_target_bit to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fixed_target_bit, align 4
  %113 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %virt.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %114, i32 160
  %115 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %add.ptr.i4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @s5p_mfc_ops_v5, !1, !"s5p_mfc_ops_v5", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1594, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 43, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @s5p_mfc_alloc_dec_temp_buffers_v5._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @s5p_mfc_alloc_dec_temp_buffers_v5._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 70, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 72, i32 3}
!15 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 93, i32 3}
!19 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 174, i32 4}
!23 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 183, i32 4}
!27 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @s5p_mfc_alloc_codec_buffers_v5._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 214, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s5p_mfc_alloc_instance_buffer_v5._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @s5p_mfc_alloc_instance_buffer_v5._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 227, i32 3}
!36 = !{ptr @s5p_mfc_alloc_instance_buffer_v5._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s5p_mfc_alloc_instance_buffer_v5._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 280, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @s5p_mfc_dec_calc_dpb_size_v5._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @s5p_mfc_dec_calc_dpb_size_v5._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1323, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @s5p_mfc_try_run_v5._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @s5p_mfc_try_run_v5._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1329, i32 3}
!50 = !{ptr @s5p_mfc_try_run_v5._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1337, i32 4}
!54 = !{ptr @s5p_mfc_try_run_v5._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1340, i32 3}
!58 = !{ptr @s5p_mfc_try_run_v5._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1374, i32 4}
!62 = !{ptr @s5p_mfc_try_run_v5._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1383, i32 4}
!66 = !{ptr @s5p_mfc_try_run_v5._entry.38, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1385, i32 4}
!70 = !{ptr @s5p_mfc_try_run_v5._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1412, i32 3}
!74 = !{ptr @s5p_mfc_try_run_v5._entry.44, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @s5p_mfc_try_run_v5._entry.47, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1419, i32 4}
!78 = !{ptr @s5p_mfc_try_run_v5._entry_ptr.48, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1175, i32 3}
!81 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @s5p_mfc_run_dec_frame._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @s5p_mfc_run_dec_frame._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1187, i32 3}
!86 = !{ptr @s5p_mfc_run_dec_frame._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @s5p_mfc_run_dec_frame._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1104, i32 2}
!90 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @s5p_mfc_decode_one_frame_v5._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @s5p_mfc_decode_one_frame_v5._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1254, i32 2}
!95 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @s5p_mfc_run_init_dec._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @s5p_mfc_run_init_dec._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1257, i32 2}
!100 = !{ptr @s5p_mfc_run_init_dec._entry.58, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @s5p_mfc_run_init_dec._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1293, i32 3}
!104 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @s5p_mfc_run_init_dec_buffers._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @s5p_mfc_run_init_dec_buffers._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1297, i32 3}
!109 = !{ptr @s5p_mfc_run_init_dec_buffers._entry.63, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.65, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @s5p_mfc_run_init_dec_buffers._entry.66, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1301, i32 2}
!113 = !{ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1309, i32 3}
!116 = !{ptr @s5p_mfc_run_init_dec_buffers._entry.68, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @s5p_mfc_run_init_dec_buffers._entry_ptr.70, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.71, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 462, i32 3}
!120 = !{ptr @.str.72, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.74, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 469, i32 2}
!125 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.73, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.75, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 473, i32 3}
!129 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.76, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.78, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 477, i32 3}
!133 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.79, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.81, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.83, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 482, i32 4}
!137 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.82, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.84, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 490, i32 2}
!141 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.85, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.87, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.89, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 491, i32 2}
!145 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.88, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.90, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.92, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 494, i32 3}
!149 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry.91, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @s5p_mfc_set_dec_frame_buffer_v5._entry_ptr.93, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1203, i32 3}
!153 = !{ptr @.str.95, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @s5p_mfc_run_enc_frame._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1207, i32 3}
!158 = !{ptr @s5p_mfc_run_enc_frame._entry.96, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr.98, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.100, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1242, i32 2}
!162 = !{ptr @s5p_mfc_run_enc_frame._entry.99, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @s5p_mfc_run_enc_frame._entry_ptr.101, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.102, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 567, i32 2}
!166 = !{ptr @.str.103, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.104, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 606, i32 3}
!171 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.105, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.106, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 637, i32 3}
!174 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.107, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.108, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 663, i32 3}
!177 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.109, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.111, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 667, i32 3}
!180 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry.110, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @s5p_mfc_set_enc_ref_buffer_v5._entry_ptr.112, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.113, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c", i32 1119, i32 3}
!184 = !{ptr @.str.114, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @s5p_mfc_init_encode_v5._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @s5p_mfc_init_encode_v5._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = !{i64 2156539709, i64 2156540220, i64 2156539746, i64 2156539802, i64 2156539836, i64 2156539860, i64 2156539901, i64 2156539922, i64 2156539950, i64 2156539984}
!198 = !{i64 2156541128}
!199 = !{i64 2156554158, i64 2156554670, i64 2156554195, i64 2156554251, i64 2156554285, i64 2156554309, i64 2156554350, i64 2156554371, i64 2156554399, i64 2156554433}
!200 = !{i64 2156557664, i64 2156558176, i64 2156557701, i64 2156557757, i64 2156557791, i64 2156557815, i64 2156557856, i64 2156557877, i64 2156557905, i64 2156557939}
!201 = !{i64 2156560911}
!202 = !{i64 2156563129, i64 2156563641, i64 2156563166, i64 2156563222, i64 2156563256, i64 2156563280, i64 2156563321, i64 2156563342, i64 2156563370, i64 2156563404}
!203 = !{i64 2156564549}
!204 = !{i64 2156616943}
!205 = !{i64 7425081}
!206 = !{i64 2156617577}
!207 = !{i64 2156618247}
!208 = !{i64 2156619031}
!209 = !{i64 7425499}
!210 = !{i64 2156619939}
!211 = !{i64 2156620525}
!212 = !{i64 2156577747}
!213 = !{i64 2156578423}
!214 = !{i64 2156745135}
!215 = !{i64 2156745646}
!216 = !{i64 2156746167}
!217 = !{i64 2156746965}
!218 = !{i64 2156747549}
!219 = !{i64 2156748133}
!220 = !{i64 2156748714}
!221 = !{i64 2156749295}
!222 = !{i64 2156564788}
!223 = !{i64 2156749882}
!224 = !{i64 2156750463}
!225 = !{i64 2156751110}
!226 = !{i64 2156751700}
!227 = !{i64 2156752281}
!228 = !{i64 2156752862}
!229 = !{i64 2156753443}
!230 = !{i64 2156754024}
!231 = !{i64 2156754605}
!232 = !{i64 2156579692}
!233 = !{i64 2156580372}
!234 = !{i64 2156580957}
!235 = !{i64 2156564697}
!236 = !{i64 2156578992}
!237 = !{i64 2156687956}
!238 = !{i64 2156688886}
!239 = !{i64 2156581761}
!240 = !{i64 2156582127}
!241 = !{i64 2156582926}
!242 = !{i64 2156583814}
!243 = !{i64 2156584704}
!244 = !{i64 2156585592}
!245 = !{i64 2156586480}
!246 = !{i64 2156587370}
!247 = !{i64 2156588258}
!248 = !{i64 2156589148}
!249 = !{i64 2156590036}
!250 = !{i64 2156590924}
!251 = !{i64 2156591814}
!252 = !{i64 2156592706}
!253 = !{i64 2156593594}
!254 = !{i64 2156594482}
!255 = !{i64 2156595370}
!256 = !{i64 2156596260}
!257 = !{i64 2156597146}
!258 = !{i64 2156598032}
!259 = !{i64 2156604401}
!260 = !{i64 2156607195}
!261 = !{i64 2156609910}
!262 = !{i64 2156616171}
!263 = !{i64 2156698184}
!264 = !{i64 2156698818}
!265 = !{i64 2156699416}
!266 = !{i64 2156645603}
!267 = !{i64 2156646497}
!268 = !{i64 2156647372}
!269 = !{i64 2156648221}
!270 = !{i64 2156649095}
!271 = !{i64 2156638509}
!272 = !{i64 2156639403}
!273 = !{i64 2156640278}
!274 = !{i64 2156641127}
!275 = !{i64 2156642001}
!276 = !{i64 2156642881}
!277 = !{i64 2156625596}
!278 = !{i64 2156626490}
!279 = !{i64 2156627365}
!280 = !{i64 2156628214}
!281 = !{i64 2156629088}
!282 = !{i64 2156629968}
!283 = !{i64 2156630848}
!284 = !{i64 2156631726}
!285 = !{i64 2156664905}
!286 = !{i64 2156665218}
!287 = !{i64 2156666007}
!288 = !{i64 2156666320}
!289 = !{i64 2156666867}
!290 = !{i64 2156667461}
!291 = !{i64 2156668073}
!292 = !{i64 2156668654}
!293 = !{i64 2156669175}
!294 = !{i64 2156670986}
!295 = !{i64 2156671299}
!296 = !{i64 2156671856}
!297 = !{i64 2156672699}
!298 = !{i64 2156673012}
!299 = !{i64 2156673633}
!300 = !{i64 2156674300}
!301 = !{i64 2156675083}
!302 = !{i64 2156675396}
!303 = !{i64 2156676185}
!304 = !{i64 2156676498}
!305 = !{i64 2156677287}
!306 = !{i64 2156677600}
!307 = !{i64 2156678389}
!308 = !{i64 2156678702}
!309 = !{i64 2156679261}
!310 = !{i64 2156679851}
!311 = !{i64 2156680386}
!312 = !{i64 2156681169}
!313 = !{i64 2156681482}
!314 = !{i64 2156682271}
!315 = !{i64 2156682584}
!316 = !{i64 2156683205}
!317 = !{i64 2156683872}
!318 = !{i64 2156684655}
!319 = !{i64 2156684968}
!320 = !{i64 2156685757}
!321 = !{i64 2156686070}
!322 = !{i64 2156697430}
!323 = !{i64 2156691236}
!324 = !{i64 2156690687}
!325 = !{i64 2156691870}
!326 = !{i64 2156692558}
!327 = !{i64 2156693246}
!328 = !{i64 2156653408}
!329 = !{i64 2156653986}
!330 = !{i64 2156654811}
!331 = !{i64 2156655124}
!332 = !{i64 2156655641}
!333 = !{i64 2156656176}
!334 = !{i64 2156656743}
!335 = !{i64 2156657306}
!336 = !{i64 2156657850}
!337 = !{i64 2156658361}
!338 = !{i64 2156658908}
!339 = !{i64 2156659596}
!340 = !{i64 2156660230}
!341 = !{i64 2156661013}
!342 = !{i64 2156661326}
!343 = !{i64 2156662115}
!344 = !{i64 2156662428}
!345 = !{i64 2156664065}
