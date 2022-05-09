; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_video_fmt = type { i32, i32, i32, i32 }
%struct.mtk_codec_framesizes = type { i32, %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.mtk_vcodec_dec_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.mtk_video_dec_buf = type { %struct.v4l2_m2m_buffer, i8, i8, i8, i8, %union.anon.121 }
%union.anon.121 = type { %struct.vdec_fb }
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }

@mtk_vdec_frame_vb2_ops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vb2ops_vdec_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @vb2ops_vdec_buf_init, ptr @vb2ops_vdec_buf_prepare, ptr @vb2ops_vdec_buf_finish, ptr null, ptr @vb2ops_vdec_start_streaming, ptr @vb2ops_vdec_stop_streaming, ptr @vb2ops_vdec_stateful_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@mtk_video_formats = internal constant { [4 x %struct.mtk_video_fmt], [32 x i8] } { [4 x %struct.mtk_video_fmt] [%struct.mtk_video_fmt { i32 875967048, i32 0, i32 1, i32 8 }, %struct.mtk_video_fmt { i32 808996950, i32 0, i32 1, i32 8 }, %struct.mtk_video_fmt { i32 809062486, i32 0, i32 1, i32 8 }, %struct.mtk_video_fmt { i32 825381965, i32 2, i32 2, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mtk_vdec_framesizes = internal constant { [3 x %struct.mtk_codec_framesizes], [44 x i8] } { [3 x %struct.mtk_codec_framesizes] [%struct.mtk_codec_framesizes { i32 875967048, %struct.v4l2_frmsize_stepwise { i32 64, i32 2048, i32 16, i32 64, i32 1088, i32 16 } }, %struct.mtk_codec_framesizes { i32 808996950, %struct.v4l2_frmsize_stepwise { i32 64, i32 2048, i32 16, i32 64, i32 1088, i32 16 } }, %struct.mtk_codec_framesizes { i32 809062486, %struct.v4l2_frmsize_stepwise { i32 64, i32 2048, i32 16, i32 64, i32 1088, i32 16 } }], [44 x i8] zeroinitializer }, align 32
@mtk_vdec_8173_pdata = dso_local constant { %struct.mtk_vcodec_dec_pdata, [44 x i8] } { %struct.mtk_vcodec_dec_pdata { ptr @mtk_init_vdec_params, ptr @mtk_vcodec_dec_ctrls_setup, ptr @mtk_vdec_worker, ptr @mtk_vdec_flush_decoder, ptr @mtk_vdec_frame_vb2_ops, ptr @mtk_video_formats, i32 4, ptr @mtk_video_formats, ptr getelementptr (i8, ptr @mtk_video_formats, i64 48), ptr @mtk_vdec_framesizes, i32 3, i32 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mtk_vcodec_dec_stateful:571:(&ctx->ctrl_hdl)->_lock\00", [44 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @mtk_vdec_g_v_ctrl, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Adding control failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_vcodec_dec_ctrls_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c\00", [36 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._entry_ptr = internal global ptr @mtk_vcodec_dec_ctrls_setup._entry, section ".printk_index", align 4
@mtk_vdec_g_v_ctrl.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_vdec_g_v_ctrl\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Seqinfo not ready\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(),%d: Seqinfo not ready\00", [37 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_vdec_worker\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%d] src_buf empty!!\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [%d] src_buf empty!!\00", [34 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.3, ptr @.str.11, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%d] dst_buf empty!!\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [%d] dst_buf empty!!\00", [34 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.3, ptr @.str.13, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"===>[%d] vdec_if_decode() ===>\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(),%d: ===>[%d] vdec_if_decode() ===>\00", [56 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.3, ptr @.str.15, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"id=%d Framebuf  pfb=%p VA=%p Y_DMA=%pad C_DMA=%pad Size=%zx\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s(),%d: id=%d Framebuf  pfb=%p VA=%p Y_DMA=%pad C_DMA=%pad Size=%zx\00", [59 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.3, ptr @.str.17, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Got empty flush input buffer.\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(),%d: Got empty flush input buffer.\00", [57 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] id=%d src_addr is NULL!!\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry_ptr = internal global ptr @mtk_vdec_worker._entry, section ".printk_index", align 4
@mtk_vdec_worker.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.3, ptr @.str.20, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%d] Bitstream VA=%p DMA=%pad Size=%zx vb=%p\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [%d] Bitstream VA=%p DMA=%pad Size=%zx vb=%p\00", [42 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR]  <===[%d], src_buf[%d] sz=0x%zx pts=%llu dst_buf[%d] vdec_if_decode() ret=%d res_chg=%d===>\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry_ptr.24 = internal global ptr @mtk_vdec_worker._entry.22, section ".printk_index", align 4
@get_display_buffer.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_display_buffer\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%d]\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(),%d: [%d]\00", [18 x i8] zeroinitializer }, align 32
@get_display_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d]Cannot get param : GET_PARAM_DISP_FRAME_BUFFER\0A\00", [47 x i8] zeroinitializer }, align 32
@get_display_buffer._entry_ptr = internal global ptr @get_display_buffer._entry, section ".printk_index", align 4
@get_display_buffer.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.29, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No display frame buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(),%d: No display frame buffer\00", [63 x i8] zeroinitializer }, align 32
@get_display_buffer.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.31, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%d]status=%x queue id=%d to done_list %d\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [%d]status=%x queue id=%d to done_list %d\00", [45 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@get_free_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] Error!! Cannot get param\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_free_buffer\00", [16 x i8] zeroinitializer }, align 32
@get_free_buffer._entry_ptr = internal global ptr @get_free_buffer._entry, section ".printk_index", align 4
@get_free_buffer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" No free frame buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(),%d:  No free frame buffer\00", [33 x i8] zeroinitializer }, align 32
@get_free_buffer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%d] tmp_frame_addr = 0x%p\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(),%d: [%d] tmp_frame_addr = 0x%p\00", [60 x i8] zeroinitializer }, align 32
@get_free_buffer.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.3, ptr @.str.40, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%d]status=%x queue id=%d to rdy_queue %d\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [%d]status=%x queue id=%d to rdy_queue %d\00", [45 x i8] zeroinitializer }, align 32
@get_free_buffer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.3, ptr @.str.42, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%d]status=%x queue id=%d to rdy_queue\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(),%d: [%d]status=%x queue id=%d to rdy_queue\00", [48 x i8] zeroinitializer }, align 32
@get_free_buffer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.3, ptr @.str.44, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d]status=%x err queue id=%d %d %d\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: [%d]status=%x err queue id=%d %d %d\00", [51 x i8] zeroinitializer }, align 32
@mtk_vdec_pic_info_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d]Error!! Cannot get param : GET_PARAM_PICTURE_INFO ERR\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_vdec_pic_info_update\00", [39 x i8] zeroinitializer }, align 32
@mtk_vdec_pic_info_update._entry_ptr = internal global ptr @mtk_vdec_pic_info_update._entry, section ".printk_index", align 4
@mtk_vdec_pic_info_update._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Cannot get correct pic info\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_vdec_pic_info_update._entry_ptr.50 = internal global ptr @mtk_vdec_pic_info_update._entry.48, section ".printk_index", align 4
@mtk_vdec_pic_info_update.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.47, ptr @.str.3, ptr @.str.51, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%d]-> new(%d,%d), old(%d,%d), real(%d,%d)\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [%d]-> new(%d,%d), old(%d,%d), real(%d,%d)\00", [44 x i8] zeroinitializer }, align 32
@mtk_vdec_pic_info_update._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.3, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Incorrect dpb size, ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_vdec_pic_info_update._entry_ptr.55 = internal global ptr @mtk_vdec_pic_info_update._entry.53, section ".printk_index", align 4
@mtk_vdec_update_fmt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_vdec_update_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Update cap fourcc(%d -> %d)\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(),%d: Update cap fourcc(%d -> %d)\00", [59 x i8] zeroinitializer }, align 32
@mtk_vdec_update_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Cannot get fourcc(%d), using init value\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk_vdec_update_fmt._entry_ptr = internal global ptr @mtk_vdec_update_fmt._entry, section ".printk_index", align 4
@mtk_vdec_queue_res_chg_event.ev_src_ch = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mtk_vdec_queue_res_chg_event.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.60, ptr @.str.3, ptr @.str.26, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_vdec_queue_res_chg_event\00", [35 x i8] zeroinitializer }, align 32
@mtk_vdec_flush_decoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] DecodeFinal failed, ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_vdec_flush_decoder\00", [41 x i8] zeroinitializer }, align 32
@mtk_vdec_flush_decoder._entry_ptr = internal global ptr @mtk_vdec_flush_decoder._entry, section ".printk_index", align 4
@vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vb2ops_vdec_stateful_buf_queue\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%d] (%d) id=%d, vb=%p\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(),%d: [%d] (%d) id=%d, vb=%p\00", [32 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.66, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%d] already init driver %d\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(),%d: [%d] already init driver %d\00", [59 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] No src buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry_ptr = internal global ptr @vb2ops_vdec_stateful_buf_queue._entry, section ".printk_index", align 4
@vb2ops_vdec_stateful_buf_queue._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.63, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Invalid flush buffer.\0A\00", [44 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry_ptr.71 = internal global ptr @vb2ops_vdec_stateful_buf_queue._entry.69, section ".printk_index", align 4
@vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.72, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%d] buf id=%d va=%p dma=%pad size=%zx\00", [57 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(),%d: [%d] buf id=%d va=%p dma=%pad size=%zx\00", [48 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.63, ptr @.str.3, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] Unrecoverable error in vdec_if_decode.\0A\00", [54 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry_ptr.76 = internal global ptr @vb2ops_vdec_stateful_buf_queue._entry.74, section ".printk_index", align 4
@vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.77, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%d] vdec_if_decode() src_buf=%d, size=%zu, fail=%d, res_chg=%d\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s(),%d: [%d] vdec_if_decode() src_buf=%d, size=%zu, fail=%d, res_chg=%d\00", [55 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.63, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry_ptr.80 = internal global ptr @vb2ops_vdec_stateful_buf_queue._entry.79, section ".printk_index", align 4
@vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.81, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[%d] vdec_if_init() OK wxh=%dx%d pic wxh=%dx%d sz[0]=0x%x sz[1]=0x%x\00", [59 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s(),%d: [%d] vdec_if_init() OK wxh=%dx%d pic wxh=%dx%d sz[0]=0x%x sz[1]=0x%x\00", [50 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.63, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] GET_PARAM_DPB_SIZE fail=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateful_buf_queue._entry_ptr.85 = internal global ptr @vb2ops_vdec_stateful_buf_queue._entry.83, section ".printk_index", align 4
@vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.86, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%d] dpbsize=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(),%d: [%d] dpbsize=%d\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 808996950, i64 809062486, i64 825381965, i64 875967048]
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"mtk_vdec_frame_vb2_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 602, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"mtk_video_formats\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 14, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"mtk_vdec_framesizes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 44, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"mtk_vdec_8173_pdata\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 615, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 571, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"mtk_vcodec_dec_ctrl_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 563, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 590, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 553, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 308, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 315, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 333, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 335, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 341, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 370, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 374, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 386, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 76, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 79, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 84, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 98, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1163, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 125, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 129, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 133, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 151, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 166, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 181, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 258, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 266, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 278, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 286, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 241, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 248, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [10 x i8] c"ev_src_ch\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 206, i32 33 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 211, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 222, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 441, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 468, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 475, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 481, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 489, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 504, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 510, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 517, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 528, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 534, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [63 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 538, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @get_display_buffer._entry, ptr @get_display_buffer._entry_ptr, ptr @get_free_buffer._entry, ptr @get_free_buffer._entry_ptr, ptr @mtk_vcodec_dec_ctrls_setup._entry, ptr @mtk_vcodec_dec_ctrls_setup._entry_ptr, ptr @mtk_vdec_flush_decoder._entry, ptr @mtk_vdec_flush_decoder._entry_ptr, ptr @mtk_vdec_pic_info_update._entry, ptr @mtk_vdec_pic_info_update._entry.48, ptr @mtk_vdec_pic_info_update._entry.53, ptr @mtk_vdec_pic_info_update._entry_ptr, ptr @mtk_vdec_pic_info_update._entry_ptr.50, ptr @mtk_vdec_pic_info_update._entry_ptr.55, ptr @mtk_vdec_update_fmt._entry, ptr @mtk_vdec_update_fmt._entry_ptr, ptr @mtk_vdec_worker._entry, ptr @mtk_vdec_worker._entry.22, ptr @mtk_vdec_worker._entry_ptr, ptr @mtk_vdec_worker._entry_ptr.24, ptr @vb2ops_vdec_stateful_buf_queue._entry, ptr @vb2ops_vdec_stateful_buf_queue._entry.69, ptr @vb2ops_vdec_stateful_buf_queue._entry.74, ptr @vb2ops_vdec_stateful_buf_queue._entry.79, ptr @vb2ops_vdec_stateful_buf_queue._entry.83, ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr, ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.71, ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.76, ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.80, ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.85, ptr @mtk_vdec_frame_vb2_ops, ptr @mtk_video_formats, ptr @mtk_vdec_framesizes, ptr @mtk_vdec_8173_pdata, ptr @mtk_vcodec_dec_ctrls_setup._key, ptr @.str, ptr @mtk_vcodec_dec_ctrl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @mtk_vdec_queue_res_chg_event.ev_src_ch, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_frame_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_video_formats to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_framesizes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_8173_pdata to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_worker._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_display_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_free_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_pic_info_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_pic_info_update._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_pic_info_update._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_update_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_queue_res_chg_event.ev_src_ch to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_flush_decoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_stateful_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_stateful_buf_queue._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_stateful_buf_queue._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_stateful_buf_queue._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_stateful_buf_queue._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_init_vdec_params(ptr nocapture noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_dec_ctrls_setup(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl, i32 noundef 1, ptr noundef nonnull @mtk_vcodec_dec_ctrls_setup._key, ptr noundef nonnull @.str) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_dec_ctrl_ops, i32 noundef 9963815, i64 noundef 0, i64 noundef 32, i64 noundef 1, i64 noundef 1) #5
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2, i32 0, i32 20
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %flags, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_dec_ctrl_ops, i32 noundef 10029824, i8 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 0) #5
  %call6 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_dec_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 4, i64 noundef 9, i8 noundef zeroext 2) #5
  %error = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19, i32 9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 590, i32 noundef %3) #8
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vdec_worker(ptr noundef %work) #1 align 64 {
entry:
  %res_chg.i = alloca i8, align 1
  %buf = alloca %struct.mtk_vcodec_mem, align 4
  %res_chg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -692
  %dev1 = getelementptr i8, ptr %work, i32 -688
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4, !annotation !192
  %3 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !192
  %5 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %buf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res_chg) #5
  %6 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %res_chg, align 1
  %m2m_ctx = getelementptr i8, ptr %work, i32 -484
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_dev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_dev_dec, align 4
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %10, ptr noundef %12) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !193

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr i8, ptr %work, i32 -384
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 308, i32 noundef %14) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 7
  %call.i336 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #5
  %tobool12.not = icmp eq ptr %call.i336, null
  br i1 %tobool12.not, label %if.then13, label %if.end33

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_dev_dec14 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %m2m_dev_dec14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_dev_dec14, align 4
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %18, ptr noundef %20) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then28)) #5
          to label %cleanup [label %if.then28], !srcloc !193

if.then28:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %id29 = getelementptr i8, ptr %work, i32 -384
  %21 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 315, i32 noundef %22) #5
  br label %cleanup

if.end33:                                         ; preds = %if.end9
  %23 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5
  %call37 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i336, i32 noundef 0) #5
  %va = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call37, ptr %va, align 4
  %call.i337 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i336, i32 noundef 0) #5
  %25 = ptrtoint ptr %call.i337 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i337, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dma_addr, align 4
  %fb_sz = getelementptr i8, ptr %work, i32 -292
  %28 = ptrtoint ptr %fb_sz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fb_sz, align 8
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %23, align 4
  %call43 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i336, i32 noundef 1) #5
  %base_c = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5, i32 0, i32 1
  %va44 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %va44 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call43, ptr %va44, align 4
  %call.i338 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i336, i32 noundef 1) #5
  %32 = ptrtoint ptr %call.i338 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i338, align 4
  %dma_addr48 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %dma_addr48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dma_addr48, align 4
  %arrayidx51 = getelementptr i8, ptr %work, i32 -288
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx51, align 4
  %37 = ptrtoint ptr %base_c to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %base_c, align 4
  %status = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 5, i32 0, i32 2
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then66)) #5
          to label %do.body71 [label %if.then66], !srcloc !193

if.then66:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %id67 = getelementptr i8, ptr %work, i32 -384
  %39 = ptrtoint ptr %id67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id67, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 333, i32 noundef %40) #5
  br label %do.body71

do.body71:                                        ; preds = %if.then66, %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then83)) #5
          to label %do.end95 [label %if.then83], !srcloc !193

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %call.i336, i32 0, i32 1
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 4
  %43 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %va, align 4
  %45 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 338, i32 noundef %42, ptr noundef %23, ptr noundef %44, ptr noundef %dma_addr, ptr noundef %dma_addr48, i32 noundef %46) #5
  br label %do.end95

do.end95:                                         ; preds = %if.then83, %do.body71
  %empty_flush_buf = getelementptr i8, ptr %work, i32 148
  %cmp = icmp eq ptr %call.i, %empty_flush_buf
  br i1 %cmp, label %do.body97, label %if.end127

do.body97:                                        ; preds = %do.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then109)) #5
          to label %do.end112 [label %if.then109], !srcloc !193

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 341) #5
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.body97
  %47 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i339 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %48, i32 0, i32 8
  %call.i340 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i339) #5
  %49 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i341 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %50, i32 0, i32 7
  %call.i342 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i341) #5
  %lock = getelementptr i8, ptr %work, i32 920
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %used = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 1
  %51 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %used, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call118 = call i32 @vdec_if_decode(ptr noundef %add.ptr, ptr noundef null, ptr noundef null, ptr noundef nonnull %res_chg) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.end112
  %call.i343 = call fastcc ptr @get_display_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i = icmp eq ptr %call.i343, null
  br i1 %tobool.not.i, label %clean_display_buffer.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

clean_display_buffer.exit:                        ; preds = %while.cond.i
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i342, i32 0, i32 4
  %52 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.not = icmp eq i32 %53, 0
  br i1 %cmp.i.not, label %clean_display_buffer.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

clean_display_buffer.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %clean_display_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %clean_display_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %call.i342, i32 0, i32 10, i32 0, i32 3
  %54 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %clean_display_buffer.exit.vb2_set_plane_payload.exit_crit_edge
  %fmt = getelementptr i8, ptr %work, i32 -388
  %55 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp121 = icmp eq i32 %58, 2
  br i1 %cmp121, label %if.then122, label %vb2_set_plane_payload.exit.if.end124_crit_edge

vb2_set_plane_payload.exit.if.end124_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then122:                                       ; preds = %vb2_set_plane_payload.exit
  %59 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i345 = icmp ugt i32 %60, 1
  br i1 %cmp.i345, label %if.then.i347, label %if.then122.if.end124_crit_edge

if.then122.if.end124_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then.i347:                                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i348 = getelementptr %struct.vb2_buffer, ptr %call.i342, i32 0, i32 10, i32 1, i32 3
  %61 = ptrtoint ptr %bytesused.i348 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %bytesused.i348, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then.i347, %if.then122.if.end124_crit_edge, %vb2_set_plane_payload.exit.if.end124_crit_edge
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i342, i32 0, i32 1
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 8
  %or = or i32 %63, 1048576
  store i32 %or, ptr %flags, align 8
  call void @vb2_buffer_done(ptr noundef %call.i342, i32 noundef 5) #5
  br label %while.cond.i352

while.cond.i352:                                  ; preds = %while.cond.i352.while.cond.i352_crit_edge, %if.end124
  %call.i350 = call fastcc ptr @get_free_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i351 = icmp eq ptr %call.i350, null
  br i1 %tobool.not.i351, label %clean_free_buffer.exit, label %while.cond.i352.while.cond.i352_crit_edge

while.cond.i352.while.cond.i352_crit_edge:        ; preds = %while.cond.i352
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i352

clean_free_buffer.exit:                           ; preds = %while.cond.i352
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_dev_dec125 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %m2m_dev_dec125 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %m2m_dev_dec125, align 4
  %66 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %m2m_ctx, align 8
  call void @v4l2_m2m_job_finish(ptr noundef %65, ptr noundef %67) #5
  br label %cleanup

if.end127:                                        ; preds = %do.end95
  %call132 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call132, ptr %3, align 4
  %call.i353 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %69 = ptrtoint ptr %call.i353 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call.i353, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %5, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %72 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bytesused, align 4
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %buf, align 4
  %tobool141.not = icmp eq ptr %call132, null
  br i1 %tobool141.not, label %if.then142, label %do.body154

if.then142:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_dev_dec143 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %m2m_dev_dec143 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %m2m_dev_dec143, align 4
  %77 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %76, ptr noundef %78) #5
  %id149 = getelementptr i8, ptr %work, i32 -384
  %79 = ptrtoint ptr %id149 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id149, align 4
  %index151 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %index151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index151, align 4
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 371, i32 noundef %80, i32 noundef %82) #8
  br label %cleanup

do.body154:                                       ; preds = %if.end127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then166)) #5
          to label %do.end173 [label %if.then166], !srcloc !193

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #7
  %id167 = getelementptr i8, ptr %work, i32 -384
  %83 = ptrtoint ptr %id167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id167, align 4
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 375, i32 noundef %84, ptr noundef %86, ptr noundef %5, i32 noundef %88, ptr noundef nonnull %call.i) #5
  br label %do.end173

do.end173:                                        ; preds = %if.then166, %do.body154
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %89 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %timestamp, align 8
  %timestamp176 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i336, i32 0, i32 5
  %91 = ptrtoint ptr %timestamp176 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %timestamp176, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i336, i32 0, i32 3
  %timecode177 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %92 = call ptr @memcpy(ptr %timecode, ptr %timecode177, i32 16)
  %lock178 = getelementptr i8, ptr %work, i32 920
  call void @mutex_lock_nested(ptr noundef %lock178, i32 noundef 0) #5
  %used179 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i336, i32 0, i32 1
  %93 = ptrtoint ptr %used179 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %used179, align 8
  call void @mutex_unlock(ptr noundef %lock178) #5
  %used181 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i, i32 0, i32 1
  %94 = ptrtoint ptr %used181 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %used181, align 8
  %call182 = call i32 @vdec_if_decode(ptr noundef %add.ptr, ptr noundef nonnull %buf, ptr noundef %23, ptr noundef nonnull %res_chg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.else, label %do.end187

do.end187:                                        ; preds = %do.end173
  %id189 = getelementptr i8, ptr %work, i32 -384
  %95 = ptrtoint ptr %id189 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %id189, align 4
  %index191 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %97 = ptrtoint ptr %index191 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index191, align 4
  %99 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buf, align 4
  %101 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %timestamp, align 8
  %index196 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i336, i32 0, i32 1
  %103 = ptrtoint ptr %index196 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index196, align 4
  %105 = ptrtoint ptr %res_chg to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %res_chg, align 1, !range !194
  %107 = zext i8 %106 to i32
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8, i32 noundef 388, i32 noundef %96, i32 noundef %98, i32 noundef %100, i64 noundef %102, i32 noundef %104, i32 noundef %call182, i32 noundef %107) #8
  %108 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i354 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %109, i32 0, i32 8
  %call.i355 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i354) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call182)
  %cmp201 = icmp eq i32 %call182, -5
  br i1 %cmp201, label %if.then203, label %do.end187.if.end206_crit_edge

do.end187.if.end206_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

if.then203:                                       ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_lock_nested(ptr noundef %lock178, i32 noundef 0) #5
  %error = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i, i32 0, i32 4
  %110 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %error, align 1
  call void @mutex_unlock(ptr noundef %lock178) #5
  br label %if.end206

if.end206:                                        ; preds = %if.then203, %do.end187.if.end206_crit_edge
  call void @vb2_buffer_done(ptr noundef %call.i355, i32 noundef 6) #5
  %111 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i356 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %112, i32 0, i32 7
  %call.i357 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i356) #5
  br label %while.cond.i360

while.cond.i360:                                  ; preds = %while.cond.i360.while.cond.i360_crit_edge, %if.end206
  %call.i358 = call fastcc ptr @get_display_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i359 = icmp eq ptr %call.i358, null
  br i1 %tobool.not.i359, label %while.cond.i360.while.cond.i364_crit_edge, label %while.cond.i360.while.cond.i360_crit_edge

while.cond.i360.while.cond.i360_crit_edge:        ; preds = %while.cond.i360
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i360

while.cond.i360.while.cond.i364_crit_edge:        ; preds = %while.cond.i360
  br label %while.cond.i364

while.cond.i364:                                  ; preds = %while.cond.i364.while.cond.i364_crit_edge, %while.cond.i360.while.cond.i364_crit_edge
  %call.i362 = call fastcc ptr @get_free_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i363 = icmp eq ptr %call.i362, null
  br i1 %tobool.not.i363, label %while.cond.i364.if.end221_crit_edge, label %while.cond.i364.while.cond.i364_crit_edge

while.cond.i364.while.cond.i364_crit_edge:        ; preds = %while.cond.i364
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i364

while.cond.i364.if.end221_crit_edge:              ; preds = %while.cond.i364
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

if.else:                                          ; preds = %do.end173
  %113 = ptrtoint ptr %res_chg to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %res_chg, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool207.not = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %m2m_ctx, align 8
  br i1 %tobool207.not, label %if.then208, label %land.lhs.true.critedge

if.then208:                                       ; preds = %if.else
  %out_q_ctx.i366 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %116, i32 0, i32 8
  %call.i367 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i366) #5
  call void @vb2_buffer_done(ptr noundef %call.i367, i32 noundef 5) #5
  %117 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i368 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %118, i32 0, i32 7
  %call.i369 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i368) #5
  br label %while.cond.i372

while.cond.i372:                                  ; preds = %while.cond.i372.while.cond.i372_crit_edge, %if.then208
  %call.i370 = call fastcc ptr @get_display_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i371 = icmp eq ptr %call.i370, null
  br i1 %tobool.not.i371, label %while.cond.i372.while.cond.i376_crit_edge, label %while.cond.i372.while.cond.i372_crit_edge

while.cond.i372.while.cond.i372_crit_edge:        ; preds = %while.cond.i372
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i372

while.cond.i372.while.cond.i376_crit_edge:        ; preds = %while.cond.i372
  br label %while.cond.i376

while.cond.i376:                                  ; preds = %while.cond.i376.while.cond.i376_crit_edge, %while.cond.i372.while.cond.i376_crit_edge
  %call.i374 = call fastcc ptr @get_free_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i375 = icmp eq ptr %call.i374, null
  br i1 %tobool.not.i375, label %while.cond.i376.land.lhs.true_crit_edge, label %while.cond.i376.while.cond.i376_crit_edge

while.cond.i376.while.cond.i376_crit_edge:        ; preds = %while.cond.i376
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i376

while.cond.i376.land.lhs.true_crit_edge:          ; preds = %while.cond.i376
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true.critedge:                           ; preds = %if.else
  %cap_q_ctx.i378 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %116, i32 0, i32 7
  %call.i379 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i378) #5
  br label %while.cond.i382

while.cond.i382:                                  ; preds = %while.cond.i382.while.cond.i382_crit_edge, %land.lhs.true.critedge
  %call.i380 = call fastcc ptr @get_display_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i381 = icmp eq ptr %call.i380, null
  br i1 %tobool.not.i381, label %while.cond.i382.while.cond.i386_crit_edge, label %while.cond.i382.while.cond.i382_crit_edge

while.cond.i382.while.cond.i382_crit_edge:        ; preds = %while.cond.i382
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i382

while.cond.i382.while.cond.i386_crit_edge:        ; preds = %while.cond.i382
  br label %while.cond.i386

while.cond.i386:                                  ; preds = %while.cond.i386.while.cond.i386_crit_edge, %while.cond.i382.while.cond.i386_crit_edge
  %call.i384 = call fastcc ptr @get_free_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i385 = icmp eq ptr %call.i384, null
  br i1 %tobool.not.i385, label %while.cond.i386.land.lhs.true_crit_edge, label %while.cond.i386.while.cond.i386_crit_edge

while.cond.i386.while.cond.i386_crit_edge:        ; preds = %while.cond.i386
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i386

while.cond.i386.land.lhs.true_crit_edge:          ; preds = %while.cond.i386
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond.i386.land.lhs.true_crit_edge, %while.cond.i376.land.lhs.true_crit_edge
  %119 = ptrtoint ptr %res_chg to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %res_chg, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool216.not = icmp eq i8 %120, 0
  br i1 %tobool216.not, label %land.lhs.true.if.end221_crit_edge, label %if.then218

land.lhs.true.if.end221_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

if.then218:                                       ; preds = %land.lhs.true
  call fastcc void @mtk_vdec_pic_info_update(ptr noundef %add.ptr)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res_chg.i) #5
  %121 = ptrtoint ptr %res_chg.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -1, ptr %res_chg.i, align 1, !annotation !192
  %call.i388 = call i32 @vdec_if_decode(ptr noundef %add.ptr, ptr noundef null, ptr noundef null, ptr noundef nonnull %res_chg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool.not.i389 = icmp eq i32 %call.i388, 0
  br i1 %tobool.not.i389, label %if.then218.while.cond.i.i.preheader_crit_edge, label %do.end.i

if.then218.while.cond.i.i.preheader_crit_edge:    ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i.preheader

do.end.i:                                         ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 222, i32 noundef %call.i388) #8
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %do.end.i, %if.then218.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %call.i.i = call fastcc ptr @get_display_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.cond.i7.i_crit_edge, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

while.cond.i.i.while.cond.i7.i_crit_edge:         ; preds = %while.cond.i.i
  br label %while.cond.i7.i

while.cond.i7.i:                                  ; preds = %while.cond.i7.i.while.cond.i7.i_crit_edge, %while.cond.i.i.while.cond.i7.i_crit_edge
  %call.i5.i = call fastcc ptr @get_free_buffer(ptr noundef %add.ptr) #5
  %tobool.not.i6.i = icmp eq ptr %call.i5.i, null
  br i1 %tobool.not.i6.i, label %mtk_vdec_flush_decoder.exit, label %while.cond.i7.i.while.cond.i7.i_crit_edge

while.cond.i7.i.while.cond.i7.i_crit_edge:        ; preds = %while.cond.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i7.i

mtk_vdec_flush_decoder.exit:                      ; preds = %while.cond.i7.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res_chg.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_queue_res_chg_event.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then.i390)) #5
          to label %mtk_vdec_queue_res_chg_event.exit [label %if.then.i390], !srcloc !193

if.then.i390:                                     ; preds = %mtk_vdec_flush_decoder.exit
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr i8, ptr %work, i32 -384
  %122 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_queue_res_chg_event.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.60, i32 noundef 211, i32 noundef %123) #5
  br label %mtk_vdec_queue_res_chg_event.exit

mtk_vdec_queue_res_chg_event.exit:                ; preds = %if.then.i390, %mtk_vdec_flush_decoder.exit
  %fh.i = getelementptr i8, ptr %work, i32 -676
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull @mtk_vdec_queue_res_chg_event.ev_src_ch) #5
  br label %if.end221

if.end221:                                        ; preds = %mtk_vdec_queue_res_chg_event.exit, %land.lhs.true.if.end221_crit_edge, %while.cond.i364.if.end221_crit_edge
  %m2m_dev_dec222 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %124 = ptrtoint ptr %m2m_dev_dec222 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %m2m_dev_dec222, align 4
  %126 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %m2m_ctx, align 8
  call void @v4l2_m2m_job_finish(ptr noundef %125, ptr noundef %127) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end221, %if.then142, %clean_free_buffer.exit, %if.then28, %if.then13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res_chg) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vdec_flush_decoder(ptr noundef %ctx) #1 align 64 {
entry:
  %res_chg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res_chg) #5
  %0 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %res_chg, align 1, !annotation !192
  %call = call i32 @vdec_if_decode(ptr noundef %ctx, ptr noundef null, ptr noundef null, ptr noundef nonnull %res_chg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.while.cond.i.preheader_crit_edge, label %do.end

entry.while.cond.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 222, i32 noundef %call) #8
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.end, %entry.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %call.i = call fastcc ptr @get_display_buffer(ptr noundef %ctx) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i7_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.cond.i.while.cond.i7_crit_edge:             ; preds = %while.cond.i
  br label %while.cond.i7

while.cond.i7:                                    ; preds = %while.cond.i7.while.cond.i7_crit_edge, %while.cond.i.while.cond.i7_crit_edge
  %call.i5 = call fastcc ptr @get_free_buffer(ptr noundef %ctx) #5
  %tobool.not.i6 = icmp eq ptr %call.i5, null
  br i1 %tobool.not.i6, label %clean_free_buffer.exit, label %while.cond.i7.while.cond.i7_crit_edge

while.cond.i7.while.cond.i7_crit_edge:            ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i7

clean_free_buffer.exit:                           ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res_chg) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vdec_g_v_ctrl(ptr nocapture noundef %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963815, i32 %3)
  %cond = icmp eq i32 %3, 9963815
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %state = getelementptr i8, ptr %1, i32 -196
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dpb_size = getelementptr i8, ptr %1, i32 -68
  %6 = ptrtoint ptr %dpb_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dpb_size, align 8
  br label %sw.epilog.sink.split

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_g_v_ctrl.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_g_v_ctrl, %if.then4)) #5
          to label %sw.epilog.sink.split [label %if.then4], !srcloc !193

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_g_v_ctrl.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 553) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then4, %do.body, %if.then
  %.sink = phi i32 [ %7, %if.then ], [ 0, %do.body ], [ 0, %if.then4 ]
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdec_if_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_vdec_pic_info_update(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  %dpbsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpbsize) #5
  %0 = ptrtoint ptr %dpbsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dpbsize, align 4
  %last_decoded_picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 22
  %call = tail call i32 @vdec_if_get_param(ptr noundef %ctx, i32 noundef 2, ptr noundef %last_decoded_picinfo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 258, i32 noundef %2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_decoded_picinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.do.end14_crit_edge, label %lor.lhs.false

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.end
  %pic_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pic_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %lor.lhs.false.do.end14_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %buf_w = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 22, i32 2
  %7 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %lor.lhs.false5.do.end14_crit_edge, label %lor.lhs.false8

lor.lhs.false5.do.end14_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %buf_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 22, i32 3
  %9 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %lor.lhs.false8.do.end14_crit_edge, label %if.end17

lor.lhs.false8.do.end14_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false8.do.end14_crit_edge, %lor.lhs.false5.do.end14_crit_edge, %lor.lhs.false.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 266) #8
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false8
  %cap_fourcc = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %cap_fourcc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_fourcc, align 4
  %picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 13
  %cap_fourcc19 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 13, i32 5
  %13 = ptrtoint ptr %cap_fourcc19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap_fourcc19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp20.not = icmp eq i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23.not = icmp eq i32 %14, 0
  %or.cond = or i1 %cmp20.not, %cmp23.not
  br i1 %or.cond, label %if.end17.if.end27_crit_edge, label %if.then24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %for.cond.3.i [
    i32 875967048, label %if.then24.do.body.i_crit_edge
    i32 808996950, label %do.body.fold.split.i
    i32 809062486, label %do.body.fold.split26.i
    i32 825381965, label %do.body.fold.split27.i
  ]

if.then24.do.body.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

for.cond.3.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.56, i32 noundef 248, i32 noundef %14) #8
  br label %if.end27

do.body.fold.split.i:                             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.fold.split26.i:                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.fold.split27.i:                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.fold.split27.i, %do.body.fold.split26.i, %do.body.fold.split.i, %if.then24.do.body.i_crit_edge
  %arrayidx1.lcssa.i = phi ptr [ @mtk_video_formats, %if.then24.do.body.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.mtk_video_fmt], ptr @mtk_video_formats, i32 0, i32 1), %do.body.fold.split.i ], [ getelementptr inbounds ([4 x %struct.mtk_video_fmt], ptr @mtk_video_formats, i32 0, i32 2), %do.body.fold.split26.i ], [ getelementptr inbounds ([4 x %struct.mtk_video_fmt], ptr @mtk_video_formats, i32 0, i32 3), %do.body.fold.split27.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_update_fmt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_pic_info_update, %if.then5.i)) #5
          to label %do.end.i [label %if.then5.i], !srcloc !193

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %fmt6.i = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 7
  %16 = ptrtoint ptr %fmt6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt6.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_update_fmt.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef 242, i32 noundef %19, i32 noundef %14) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %fmt8.i = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 7
  %20 = ptrtoint ptr %fmt8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx1.lcssa.i, ptr %fmt8.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %do.end.i, %for.cond.3.i, %if.end17.if.end27_crit_edge
  %21 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_decoded_picinfo, align 4
  %23 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %picinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp32 = icmp eq i32 %22, %24
  br i1 %cmp32, label %if.end27.cleanup_crit_edge, label %lor.lhs.false33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false33:                                  ; preds = %if.end27
  %25 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pic_h, align 4
  %pic_h37 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %pic_h37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pic_h37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp38 = icmp eq i32 %26, %28
  br i1 %cmp38, label %lor.lhs.false33.cleanup_crit_edge, label %do.body41

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body41:                                        ; preds = %lor.lhs.false33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_pic_info_update.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_pic_info_update, %if.then47)) #5
          to label %do.end63 [label %if.then47], !srcloc !193

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %id48 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %29 = ptrtoint ptr %id48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id48, align 4
  %31 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_decoded_picinfo, align 4
  %33 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pic_h, align 4
  %35 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %picinfo, align 8
  %37 = ptrtoint ptr %pic_h37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pic_h37, align 4
  %39 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_w, align 4
  %41 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_pic_info_update.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47, i32 noundef 282, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #5
  br label %do.end63

do.end63:                                         ; preds = %if.then47, %do.body41
  %call64 = call i32 @vdec_if_get_param(ptr noundef %ctx, i32 noundef 4, ptr noundef nonnull %dpbsize) #5
  %43 = ptrtoint ptr %dpbsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dpbsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp65 = icmp eq i32 %44, 0
  br i1 %cmp65, label %do.end69, label %do.end63.if.end72_crit_edge

do.end63.if.end72_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end69:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.47, i32 noundef 286, i32 noundef %call64) #8
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %do.end63.if.end72_crit_edge
  %45 = ptrtoint ptr %dpbsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dpbsize, align 4
  %dpb_size = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 14
  %47 = ptrtoint ptr %dpb_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %dpb_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %lor.lhs.false33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpbsize) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_display_buffer(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  %disp_frame_buffer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disp_frame_buffer) #5
  %0 = ptrtoint ptr %disp_frame_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %disp_frame_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_display_buffer.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_display_buffer, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_display_buffer.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 76, i32 noundef %2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @vdec_if_get_param(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %disp_frame_buffer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %id10 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %3 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id10, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 79, i32 noundef %4) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %5 = ptrtoint ptr %disp_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disp_frame_buffer, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %do.body15, label %if.end31

do.body15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_display_buffer.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_display_buffer, %if.then27)) #5
          to label %cleanup [label %if.then27], !srcloc !193

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_display_buffer.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 84) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %6, i32 -748
  %lock = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %used = getelementptr i8, ptr %6, i32 -4
  %7 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %used, align 8, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool34.not = icmp eq i8 %8, 0
  br i1 %tobool34.not, label %if.end31.if.end62_crit_edge, label %if.then35

if.end31.if.end62_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then35:                                        ; preds = %if.end31
  %num_planes.i = getelementptr i8, ptr %6, i32 -732
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %if.then35.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then35.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then35
  %fb_sz = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 13, i32 4
  %11 = ptrtoint ptr %fb_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fb_sz, align 8
  %length.i = getelementptr i8, ptr %6, i32 -660
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp1.i = icmp ult i32 %14, %12
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !195

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %16, %if.then38.i ], [ %12, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %6, i32 -664
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then35.vb2_set_plane_payload.exit_crit_edge
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 7
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.then37, label %vb2_set_plane_payload.exit.do.body43_crit_edge

vb2_set_plane_payload.exit.do.body43_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

if.then37:                                        ; preds = %vb2_set_plane_payload.exit
  %22 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i89 = icmp ugt i32 %23, 1
  br i1 %cmp.i89, label %if.then.i92, label %if.then37.do.body43_crit_edge

if.then37.do.body43_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

if.then.i92:                                      ; preds = %if.then37
  %arrayidx41 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 13, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx41, align 4
  %length.i90 = getelementptr i8, ptr %6, i32 -628
  %26 = ptrtoint ptr %length.i90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i90, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp1.i91 = icmp ult i32 %27, %25
  br i1 %cmp1.i91, label %land.rhs.i94, label %if.then.i92.if.end42.i99_crit_edge

if.then.i92.if.end42.i99_crit_edge:               ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i99

land.rhs.i94:                                     ; preds = %if.then.i92
  %.b55.i93 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i93, label %land.rhs.i94.if.then38.i96_crit_edge, label %if.then8.i95, !prof !195

land.rhs.i94.if.then38.i96_crit_edge:             ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i96

if.then8.i95:                                     ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i96

if.then38.i96:                                    ; preds = %if.then8.i95, %land.rhs.i94.if.then38.i96_crit_edge
  %28 = ptrtoint ptr %length.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i90, align 8
  br label %if.end42.i99

if.end42.i99:                                     ; preds = %if.then38.i96, %if.then.i92.if.end42.i99_crit_edge
  %size.addr.0.i97 = phi i32 [ %29, %if.then38.i96 ], [ %25, %if.then.i92.if.end42.i99_crit_edge ]
  %bytesused.i98 = getelementptr i8, ptr %6, i32 -632
  %30 = ptrtoint ptr %bytesused.i98 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size.addr.0.i97, ptr %bytesused.i98, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.end42.i99, %if.then37.do.body43_crit_edge, %vb2_set_plane_payload.exit.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_display_buffer.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_display_buffer, %if.then55)) #5
          to label %do.end61 [label %if.then55], !srcloc !193

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %id56 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %31 = ptrtoint ptr %id56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id56, align 4
  %33 = ptrtoint ptr %disp_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disp_frame_buffer, align 4
  %status = getelementptr inbounds %struct.vdec_fb, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  %index = getelementptr i8, ptr %6, i32 -744
  %37 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index, align 4
  %queued_in_vb2 = getelementptr i8, ptr %6, i32 -3
  %39 = ptrtoint ptr %queued_in_vb2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %queued_in_vb2, align 1, !range !194
  %41 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_display_buffer.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, i32 noundef 100, i32 noundef %32, i32 noundef %36, i32 noundef %38, i32 noundef %41) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %do.body43
  call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #5
  %decoded_frame_cnt = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 30
  %42 = ptrtoint ptr %decoded_frame_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %decoded_frame_cnt, align 8
  %inc = add i32 %43, 1
  store i32 %inc, ptr %decoded_frame_cnt, align 8
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %if.end31.if.end62_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then27, %do.body15, %do.end8
  %retval.0 = phi ptr [ null, %do.end8 ], [ %add.ptr, %if.end62 ], [ null, %if.then27 ], [ null, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disp_frame_buffer) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdec_if_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_free_buffer(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  %free_frame_buffer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %free_frame_buffer) #5
  %0 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %free_frame_buffer, align 4
  %call = call i32 @vdec_if_get_param(ptr noundef %ctx, i32 noundef 1, ptr noundef nonnull %free_frame_buffer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 125, i32 noundef %2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free_frame_buffer, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %do.body4, label %do.body15

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_buffer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_buffer, %if.then10)) #5
          to label %cleanup [label %if.then10], !srcloc !193

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_buffer.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 129) #5
  br label %cleanup

do.body15:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_buffer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_buffer, %if.then27)) #5
          to label %do.end31 [label %if.then27], !srcloc !193

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id28, align 4
  %7 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_frame_buffer, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_buffer.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef 134, i32 noundef %6, ptr noundef %8) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %9 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free_frame_buffer, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 -748
  %lock = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %used = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %used, align 8, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not = icmp eq i8 %12, 0
  br i1 %tobool34.not, label %do.end31.if.end119_crit_edge, label %if.then35

do.end31.if.end119_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then35:                                        ; preds = %do.end31
  %queued_in_vb2 = getelementptr i8, ptr %10, i32 -3
  %13 = ptrtoint ptr %queued_in_vb2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %queued_in_vb2, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool36.not = icmp eq i8 %14, 0
  %queued_in_v4l263 = getelementptr i8, ptr %10, i32 -2
  %15 = ptrtoint ptr %queued_in_v4l263 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %queued_in_v4l263, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool64.not = icmp eq i8 %16, 0
  br i1 %tobool36.not, label %land.lhs.true62, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then35
  br i1 %tobool64.not, label %land.lhs.true.do.body90_crit_edge, label %land.lhs.true38

land.lhs.true.do.body90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

land.lhs.true38:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free_frame_buffer, align 4
  %status = getelementptr inbounds %struct.vdec_fb, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %do.body40, label %land.lhs.true38.do.body90_crit_edge

land.lhs.true38.do.body90_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

do.body40:                                        ; preds = %land.lhs.true38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_buffer.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_buffer, %if.then52)) #5
          to label %do.end59 [label %if.then52], !srcloc !193

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %id53 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id53, align 4
  %23 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_frame_buffer, align 4
  %status54 = getelementptr inbounds %struct.vdec_fb, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %status54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status54, align 4
  %index = getelementptr i8, ptr %10, i32 -744
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 4
  %29 = ptrtoint ptr %queued_in_vb2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %queued_in_vb2, align 1, !range !194
  %31 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_buffer.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35, i32 noundef 153, i32 noundef %22, i32 noundef %26, i32 noundef %28, i32 noundef %31) #5
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %do.body40
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 4
  %32 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m2m_ctx, align 8
  call void @v4l2_m2m_buf_queue(ptr noundef %33, ptr noundef %add.ptr) #5
  br label %if.end117

land.lhs.true62:                                  ; preds = %if.then35
  br i1 %tobool64.not, label %land.lhs.true62.do.body90_crit_edge, label %do.body67

land.lhs.true62.do.body90_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

do.body67:                                        ; preds = %land.lhs.true62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_buffer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_buffer, %if.then79)) #5
          to label %do.end86 [label %if.then79], !srcloc !193

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  %id80 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %34 = ptrtoint ptr %id80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id80, align 4
  %36 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_frame_buffer, align 4
  %status81 = getelementptr inbounds %struct.vdec_fb, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %status81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status81, align 4
  %index83 = getelementptr i8, ptr %10, i32 -744
  %40 = ptrtoint ptr %index83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index83, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_buffer.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.35, i32 noundef 169, i32 noundef %35, i32 noundef %39, i32 noundef %41) #5
  br label %do.end86

do.end86:                                         ; preds = %if.then79, %do.body67
  %m2m_ctx87 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 4
  %42 = ptrtoint ptr %m2m_ctx87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m2m_ctx87, align 8
  call void @v4l2_m2m_buf_queue(ptr noundef %43, ptr noundef %add.ptr) #5
  %44 = ptrtoint ptr %queued_in_vb2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %queued_in_vb2, align 1
  br label %if.end117

do.body90:                                        ; preds = %land.lhs.true62.do.body90_crit_edge, %land.lhs.true38.do.body90_crit_edge, %land.lhs.true.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_buffer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_buffer, %if.then102)) #5
          to label %if.end117 [label %if.then102], !srcloc !193

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  %id103 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %45 = ptrtoint ptr %id103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id103, align 4
  %47 = ptrtoint ptr %free_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_frame_buffer, align 4
  %status104 = getelementptr inbounds %struct.vdec_fb, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %status104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status104, align 4
  %index106 = getelementptr i8, ptr %10, i32 -744
  %51 = ptrtoint ptr %index106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index106, align 4
  %53 = ptrtoint ptr %queued_in_vb2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %queued_in_vb2, align 1, !range !194
  %55 = zext i8 %54 to i32
  %queued_in_v4l2110 = getelementptr i8, ptr %10, i32 -2
  %56 = ptrtoint ptr %queued_in_v4l2110 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %queued_in_v4l2110, align 2, !range !194
  %58 = zext i8 %57 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_buffer.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.35, i32 noundef 184, i32 noundef %46, i32 noundef %50, i32 noundef %52, i32 noundef %55, i32 noundef %58) #5
  br label %if.end117

if.end117:                                        ; preds = %if.then102, %do.body90, %do.end86, %do.end59
  %59 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %used, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.end117, %do.end31.if.end119_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.then10, %do.body4, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %if.end119 ], [ null, %if.then10 ], [ null, %do.body4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %free_frame_buffer) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_queue_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_buf_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_buf_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2ops_vdec_buf_finish(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_start_streaming(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2ops_vdec_stop_streaming(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2ops_vdec_stateful_buf_queue(ptr noundef %vb) #1 align 64 {
entry:
  %src_mem = alloca %struct.mtk_vcodec_mem, align 4
  %res_chg = alloca i8, align 1
  %dpbsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %src_mem) #5
  %0 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %src_mem, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %src_mem, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res_chg) #5
  %2 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %res_chg, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpbsize) #5
  %3 = ptrtoint ptr %dpbsize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %dpbsize, align 4
  %4 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vb, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 442, i32 noundef %9, i32 noundef %13, i32 noundef %15, ptr noundef %vb) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %16 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vb, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %cmp.not = icmp eq i32 %19, 10
  br i1 %cmp.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %used = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 1
  %20 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %used, align 8, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not = icmp eq i8 %21, 0
  br i1 %tobool12.not, label %if.then13, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_buf_queue(ptr noundef %23, ptr noundef %vb) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then7.if.end16_crit_edge
  %.sink = phi i8 [ 1, %if.then13 ], [ 0, %if.then7.if.end16_crit_edge ]
  %24 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %24, align 1
  %26 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %26, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %m2m_ctx19 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %m2m_ctx19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m2m_ctx19, align 8
  tail call void @v4l2_m2m_buf_queue(ptr noundef %29, ptr noundef %vb) #5
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 7
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp23.not = icmp eq i32 %31, 1
  br i1 %cmp23.not, label %if.end43, label %do.body25

do.body25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then37)) #5
          to label %cleanup [label %if.then37], !srcloc !193

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %id38 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %32 = ptrtoint ptr %id38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id38, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.63, i32 noundef 469, i32 noundef %33, i32 noundef %35) #5
  br label %cleanup

if.end43:                                         ; preds = %if.end18
  %36 = ptrtoint ptr %m2m_ctx19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m2m_ctx19, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %37, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #5
  %tobool46.not = icmp eq ptr %call.i, null
  br i1 %tobool46.not, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef 475) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %empty_flush_buf = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 23
  %cmp55 = icmp eq ptr %call.i, %empty_flush_buf
  br i1 %cmp55, label %do.end59, label %if.end64

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.63, i32 noundef 481) #8
  %38 = ptrtoint ptr %m2m_ctx19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %m2m_ctx19, align 8
  %out_q_ctx.i294 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %39, i32 0, i32 8
  %call.i295 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i294) #5
  br label %cleanup

if.end64:                                         ; preds = %if.end53
  %call65 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call65, ptr %0, align 4
  %call.i296 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %41 = ptrtoint ptr %call.i296 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i296, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %1, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %44 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytesused, align 4
  %46 = ptrtoint ptr %src_mem to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %src_mem, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then81)) #5
          to label %do.end90 [label %if.then81], !srcloc !193

if.then81:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %id82 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %47 = ptrtoint ptr %id82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id82, align 4
  %index84 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %index84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index84, align 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %0, align 4
  %53 = ptrtoint ptr %src_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_mem, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.63, i32 noundef 491, i32 noundef %48, i32 noundef %50, ptr noundef %52, ptr noundef %1, i32 noundef %54) #5
  br label %do.end90

do.end90:                                         ; preds = %if.then81, %if.end64
  %call91 = call i32 @vdec_if_decode(ptr noundef %7, ptr noundef nonnull %src_mem, ptr noundef null, ptr noundef nonnull %res_chg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %lor.lhs.false, label %do.end90.if.then94_crit_edge

do.end90.if.then94_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94

lor.lhs.false:                                    ; preds = %do.end90
  %55 = ptrtoint ptr %res_chg to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %res_chg, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool93.not = icmp eq i8 %56, 0
  br i1 %tobool93.not, label %lor.lhs.false.if.then94_crit_edge, label %if.end129

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %do.end90.if.then94_crit_edge
  %57 = ptrtoint ptr %m2m_ctx19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_ctx19, align 8
  %out_q_ctx.i297 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %58, i32 0, i32 8
  %call.i298 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i297) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call91)
  %cmp97 = icmp eq i32 %call91, -5
  br i1 %cmp97, label %do.end101, label %if.then94.do.body108_crit_edge

if.then94.do.body108_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body108

do.end101:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  %id103 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %59 = ptrtoint ptr %id103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id103, align 4
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.63, i32 noundef 504, i32 noundef %60) #8
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %state, align 8
  br label %do.body108

do.body108:                                       ; preds = %do.end101, %if.then94.do.body108_crit_edge
  %.sink308 = phi i32 [ 6, %do.end101 ], [ 5, %if.then94.do.body108_crit_edge ]
  call void @vb2_buffer_done(ptr noundef %call.i298, i32 noundef %.sink308) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then120)) #5
          to label %cleanup [label %if.then120], !srcloc !193

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %id121 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %62 = ptrtoint ptr %id121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id121, align 4
  %index123 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i298, i32 0, i32 1
  %64 = ptrtoint ptr %index123 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index123, align 4
  %66 = ptrtoint ptr %src_mem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %src_mem, align 4
  %68 = ptrtoint ptr %res_chg to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %res_chg, align 1, !range !194
  %70 = zext i8 %69 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.63, i32 noundef 512, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %call91, i32 noundef %70) #5
  br label %cleanup

if.end129:                                        ; preds = %lor.lhs.false
  %picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 13
  %call130 = call i32 @vdec_if_get_param(ptr noundef %7, i32 noundef 2, ptr noundef %picinfo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end139, label %do.end135

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %id137 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %71 = ptrtoint ptr %id137 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id137, align 4
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.63, i32 noundef 517, i32 noundef %72) #8
  br label %cleanup

if.end139:                                        ; preds = %if.end129
  %last_decoded_picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 22
  %73 = call ptr @memcpy(ptr %last_decoded_picinfo, ptr %picinfo, i32 56)
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 5, i32 1, i32 7
  %74 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fmt, align 4
  %num_planes305 = getelementptr inbounds %struct.mtk_video_fmt, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %num_planes305 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_planes305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp142306.not = icmp eq i32 %77, 0
  br i1 %cmp142306.not, label %if.end139.do.body149_crit_edge, label %for.body.lr.ph

if.end139.do.body149_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body149

for.body.lr.ph:                                   ; preds = %if.end139
  %buf_w = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 13, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0307 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx145 = getelementptr %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 13, i32 4, i32 %i.0307
  %78 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx145, align 4
  %arrayidx146 = getelementptr %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 5, i32 1, i32 6, i32 %i.0307
  %80 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx146, align 4
  %81 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf_w, align 8
  %arrayidx148 = getelementptr %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 5, i32 1, i32 5, i32 %i.0307
  %83 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx148, align 4
  %inc = add nuw i32 %i.0307, 1
  %84 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_planes, align 4
  %cmp142 = icmp ult i32 %inc, %87
  br i1 %cmp142, label %for.body.for.body_crit_edge, label %for.body.do.body149_crit_edge

for.body.do.body149_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body149

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body149:                                       ; preds = %for.body.do.body149_crit_edge, %if.end139.do.body149_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then161)) #5
          to label %do.end174 [label %if.then161], !srcloc !193

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #7
  %id162 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %88 = ptrtoint ptr %id162 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id162, align 4
  %buf_w164 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 13, i32 2
  %90 = ptrtoint ptr %buf_w164 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf_w164, align 8
  %buf_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 13, i32 3
  %92 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buf_h, align 4
  %94 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %picinfo, align 8
  %pic_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 13, i32 1
  %96 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pic_h, align 4
  %sizeimage168 = getelementptr %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 5, i32 1, i32 6
  %98 = ptrtoint ptr %sizeimage168 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sizeimage168, align 4
  %arrayidx171 = getelementptr %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 5, i32 1, i32 6, i32 1
  %100 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx171, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.63, i32 noundef 530, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101) #5
  br label %do.end174

do.end174:                                        ; preds = %if.then161, %do.body149
  %call175 = call i32 @vdec_if_get_param(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %dpbsize) #5
  %102 = ptrtoint ptr %dpbsize to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dpbsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp176 = icmp eq i32 %103, 0
  br i1 %cmp176, label %do.end181, label %do.end174.if.end185_crit_edge

do.end174.if.end185_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185

do.end181:                                        ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #7
  %id183 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %104 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %id183, align 4
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.63, i32 noundef 534, i32 noundef %105, i32 noundef %call175) #8
  br label %if.end185

if.end185:                                        ; preds = %do.end181, %do.end174.if.end185_crit_edge
  %106 = ptrtoint ptr %dpbsize to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dpbsize, align 4
  %dpb_size = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 14
  %108 = ptrtoint ptr %dpb_size to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %dpb_size, align 8
  %109 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then199)) #5
          to label %do.end204 [label %if.then199], !srcloc !193

if.then199:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  %id200 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %110 = ptrtoint ptr %id200 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %id200, align 4
  %112 = ptrtoint ptr %dpb_size to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dpb_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.63, i32 noundef 538, i32 noundef %111, i32 noundef %113) #5
  br label %do.end204

do.end204:                                        ; preds = %if.then199, %if.end185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_queue_res_chg_event.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateful_buf_queue, %if.then.i)) #5
          to label %mtk_vdec_queue_res_chg_event.exit [label %if.then.i], !srcloc !193

if.then.i:                                        ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %114 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_queue_res_chg_event.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.60, i32 noundef 211, i32 noundef %115) #5
  br label %mtk_vdec_queue_res_chg_event.exit

mtk_vdec_queue_res_chg_event.exit:                ; preds = %if.then.i, %do.end204
  %fh.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 3
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull @mtk_vdec_queue_res_chg_event.ev_src_ch) #5
  br label %cleanup

cleanup:                                          ; preds = %mtk_vdec_queue_res_chg_event.exit, %do.end135, %if.then120, %do.body108, %do.end59, %do.end50, %if.then37, %do.body25, %if.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpbsize) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res_chg) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %src_mem) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !128, !130, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @mtk_vdec_8173_pdata, !1, !"mtk_vdec_8173_pdata", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 615, i32 35}
!2 = !{ptr @mtk_vcodec_dec_ctrls_setup._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 571, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 590, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mtk_vcodec_dec_ctrls_setup._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mtk_vcodec_dec_ctrls_setup._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @mtk_vcodec_dec_ctrl_ops, !12, !"mtk_vcodec_dec_ctrl_ops", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 563, i32 35}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 553, i32 4}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mtk_vdec_g_v_ctrl.__UNIQUE_ID_ddebug321, !14, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 308, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug309, !20, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!23 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 315, i32 3}
!26 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug310, !25, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 333, i32 2}
!30 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug311, !29, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!31 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 335, i32 2}
!34 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug312, !33, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 341, i32 3}
!38 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug313, !37, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 370, i32 3}
!42 = !{ptr @mtk_vdec_worker._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_vdec_worker._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 374, i32 2}
!46 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug314, !45, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 386, i32 3}
!50 = !{ptr @mtk_vdec_worker._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtk_vdec_worker._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 76, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @get_display_buffer.__UNIQUE_ID_ddebug298, !53, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 79, i32 3}
!59 = !{ptr @get_display_buffer._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @get_display_buffer._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 84, i32 3}
!63 = !{ptr @get_display_buffer.__UNIQUE_ID_ddebug299, !62, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!64 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 98, i32 3}
!67 = !{ptr @get_display_buffer.__UNIQUE_ID_ddebug300, !66, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!68 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 125, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @get_free_buffer._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @get_free_buffer._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 129, i32 3}
!79 = !{ptr @get_free_buffer.__UNIQUE_ID_ddebug301, !78, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!80 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 133, i32 2}
!83 = !{ptr @get_free_buffer.__UNIQUE_ID_ddebug302, !82, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!84 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 151, i32 4}
!87 = !{ptr @get_free_buffer.__UNIQUE_ID_ddebug303, !86, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!88 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 166, i32 4}
!91 = !{ptr @get_free_buffer.__UNIQUE_ID_ddebug304, !90, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!92 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 181, i32 4}
!95 = !{ptr @get_free_buffer.__UNIQUE_ID_ddebug305, !94, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!96 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 258, i32 3}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mtk_vdec_pic_info_update._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @mtk_vdec_pic_info_update._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 266, i32 3}
!104 = !{ptr @mtk_vdec_pic_info_update._entry.48, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mtk_vdec_pic_info_update._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 278, i32 2}
!108 = !{ptr @mtk_vdec_pic_info_update.__UNIQUE_ID_ddebug308, !107, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!109 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 286, i32 3}
!112 = !{ptr @mtk_vdec_pic_info_update._entry.53, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtk_vdec_pic_info_update._entry_ptr.55, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 241, i32 4}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mtk_vdec_update_fmt.__UNIQUE_ID_ddebug307, !115, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!118 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 248, i32 2}
!121 = !{ptr @mtk_vdec_update_fmt._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mtk_vdec_update_fmt._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @mtk_vdec_queue_res_chg_event.ev_src_ch, !124, !"ev_src_ch", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 206, i32 33}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 211, i32 2}
!127 = !{ptr @mtk_vdec_queue_res_chg_event.__UNIQUE_ID_ddebug306, !126, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 222, i32 3}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mtk_vdec_flush_decoder._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mtk_vdec_flush_decoder._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @mtk_vdec_frame_vb2_ops, !134, !"mtk_vdec_frame_vb2_ops", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 602, i32 23}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 441, i32 2}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug315, !136, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!139 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 468, i32 3}
!142 = !{ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug316, !141, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!143 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 475, i32 3}
!146 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 481, i32 3}
!150 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 489, i32 2}
!154 = !{ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug317, !153, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!155 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 504, i32 4}
!158 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry.74, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.76, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 510, i32 3}
!162 = !{ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug318, !161, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!163 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry.79, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 517, i32 3}
!166 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.80, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 528, i32 2}
!169 = !{ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug319, !168, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!170 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 534, i32 3}
!173 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry.83, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @vb2ops_vdec_stateful_buf_queue._entry_ptr.85, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 538, i32 2}
!177 = !{ptr @vb2ops_vdec_stateful_buf_queue.__UNIQUE_ID_ddebug320, !176, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!178 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mtk_video_formats, !180, !"mtk_video_formats", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 14, i32 35}
!181 = !{ptr @mtk_vdec_framesizes, !182, !"mtk_vdec_framesizes", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateful.c", i32 44, i32 42}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{!"auto-init"}
!193 = !{i64 2148780699, i64 2148780704, i64 2148780717, i64 2148780761, i64 2148780795, i64 2148780816}
!194 = !{i8 0, i8 2}
!195 = !{!"branch_weights", i32 2000, i32 1}
