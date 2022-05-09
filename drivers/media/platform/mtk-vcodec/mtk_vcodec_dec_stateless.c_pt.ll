; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_video_fmt = type { i32, i32, i32, i32 }
%struct.mtk_codec_framesizes = type { i32, %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.mtk_vcodec_dec_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_stateless_control = type { %struct.v4l2_ctrl_config, i32 }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
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
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }

@mtk_vcodec_media_ops = dso_local constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @fops_media_request_validate, ptr @v4l2_m2m_request_queue }, [44 x i8] zeroinitializer }, align 32
@mtk_vdec_request_vb2_ops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vb2ops_vdec_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @vb2ops_vdec_out_buf_validate, ptr @vb2ops_vdec_buf_init, ptr @vb2ops_vdec_buf_prepare, ptr @vb2ops_vdec_buf_finish, ptr null, ptr @vb2ops_vdec_start_streaming, ptr @vb2ops_vdec_stop_streaming, ptr @vb2ops_vdec_stateless_buf_queue, ptr @vb2ops_vdec_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@mtk_video_formats = internal constant { [2 x %struct.mtk_video_fmt], [32 x i8] } { [2 x %struct.mtk_video_fmt] [%struct.mtk_video_fmt { i32 875967059, i32 0, i32 1, i32 0 }, %struct.mtk_video_fmt { i32 825380173, i32 2, i32 2, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mtk_vdec_framesizes = internal constant { [1 x %struct.mtk_codec_framesizes], [36 x i8] } { [1 x %struct.mtk_codec_framesizes] [%struct.mtk_codec_framesizes { i32 875967059, %struct.v4l2_frmsize_stepwise { i32 64, i32 2048, i32 16, i32 64, i32 1088, i32 16 } }], [36 x i8] zeroinitializer }, align 32
@mtk_vdec_8183_pdata = dso_local constant { %struct.mtk_vcodec_dec_pdata, [44 x i8] } { %struct.mtk_vcodec_dec_pdata { ptr @mtk_init_vdec_params, ptr @mtk_vcodec_dec_ctrls_setup, ptr @mtk_vdec_worker, ptr @mtk_vdec_flush_decoder, ptr @mtk_vdec_request_vb2_ops, ptr @mtk_video_formats, i32 2, ptr @mtk_video_formats, ptr getelementptr (i8, ptr @mtk_video_formats, i64 16), ptr @mtk_vdec_framesizes, i32 1, i32 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@fops_media_request_validate.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fops_media_request_validate\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No buffer provided with the request\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: No buffer provided with the request\00", [51 x i8] zeroinitializer }, align 32
@fops_media_request_validate.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Too many buffers (%d) provided with the request\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s(),%d: Too many buffers (%d) provided with the request\00", [39 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mtk_vcodec_dec_stateless:264:(&ctx->ctrl_hdl)->_lock\00", [43 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] v4l2_ctrl_handler_init failed\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_vcodec_dec_ctrls_setup\00", [37 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._entry_ptr = internal global ptr @mtk_vcodec_dec_ctrls_setup._entry, section ".printk_index", align 4
@mtk_stateless_controls = internal constant { [7 x %struct.mtk_stateless_control], [216 x i8] } { [7 x %struct.mtk_stateless_control] [%struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750210, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 875967059 }, %struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750211, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 875967059 }, %struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750212, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 875967059 }, %struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750215, ptr null, i32 0, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 875967059 }, %struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10029675, ptr null, i32 0, i64 0, i64 4, i64 0, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 9, ptr null, ptr null, i8 0 }, i32 875967059 }, %struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750208, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 875967059 }, %struct.mtk_stateless_control { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10750209, ptr null, i32 0, i64 1, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, i32 875967059 }], [216 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Adding control %d failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_ctrls_setup._entry_ptr.12 = internal global ptr @mtk_vcodec_dec_ctrls_setup._entry.10, section ".printk_index", align 4
@mtk_vdec_worker.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_vdec_worker\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%d] no available source buffer\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(),%d: [%d] no available source buffer\00", [55 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%d] no available destination buffer\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(),%d: [%d] no available destination buffer\00", [50 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%d] (%d) id=%d, vb=%p\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(),%d: [%d] (%d) id=%d, vb=%p\00", [32 x i8] zeroinitializer }, align 32
@mtk_vdec_worker.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.20, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%d] Bitstream VA=%p DMA=%pad Size=%zx vb=%p\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [%d] Bitstream VA=%p DMA=%pad Size=%zx vb=%p\00", [42 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] vb2 buffer media request is NULL\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry_ptr = internal global ptr @mtk_vdec_worker._entry, section ".printk_index", align 4
@mtk_vdec_worker._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR]  <===[%d], src_buf[%d] sz=0x%zx pts=%llu vdec_if_decode() ret=%d res_chg=%d===>\0A\00", [50 x i8] zeroinitializer }, align 32
@mtk_vdec_worker._entry_ptr.25 = internal global ptr @mtk_vdec_worker._entry.23, section ".printk_index", align 4
@vdec_get_cap_buffer.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdec_get_cap_buffer\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"id=%d Framebuf  pfb=%p VA=%p Y_DMA=%pad C_DMA=%pad Size=%zx frame_count = %d\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s(),%d: id=%d Framebuf  pfb=%p VA=%p Y_DMA=%pad C_DMA=%pad Size=%zx frame_count = %d\00", [42 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.18, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vb2ops_vdec_stateless_buf_queue\00", [32 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Init driver from init to header.\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(),%d: Init driver from init to header.\00", [54 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%d] already init driver %d\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(),%d: [%d] already init driver %d\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"mtk_vcodec_media_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 305, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"mtk_vdec_request_vb2_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 330, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"mtk_video_formats\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 84, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"mtk_vdec_framesizes\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 101, i32 42 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"mtk_vdec_8183_pdata\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 345, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 294, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 297, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 264, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 266, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"mtk_stateless_controls\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 26, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 275, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 177, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 184, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 193, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 200, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 207, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 213, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 146, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1163, i32 7 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 236, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 247, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [64 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 249, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @mtk_vcodec_dec_ctrls_setup._entry, ptr @mtk_vcodec_dec_ctrls_setup._entry.10, ptr @mtk_vcodec_dec_ctrls_setup._entry_ptr, ptr @mtk_vcodec_dec_ctrls_setup._entry_ptr.12, ptr @mtk_vdec_worker._entry, ptr @mtk_vdec_worker._entry.23, ptr @mtk_vdec_worker._entry_ptr, ptr @mtk_vdec_worker._entry_ptr.25, ptr @mtk_vcodec_media_ops, ptr @mtk_vdec_request_vb2_ops, ptr @mtk_video_formats, ptr @mtk_vdec_framesizes, ptr @mtk_vdec_8183_pdata, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mtk_vcodec_dec_ctrls_setup._key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mtk_stateless_controls, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_request_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_video_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_framesizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_8183_pdata to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_stateless_controls to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_ctrls_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_worker._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_media_request_validate(ptr noundef %mreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_request_buffer_cnt(ptr noundef %mreq) #5
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.body4 [
    i32 1, label %sw.epilog
    i32 0, label %do.body
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_media_request_validate.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_media_request_validate, %if.then)) #5
          to label %cleanup [label %if.then], !srcloc !88

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_media_request_validate.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 294) #5
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_media_request_validate.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_media_request_validate, %if.then16)) #5
          to label %cleanup [label %if.then16], !srcloc !88

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_media_request_validate.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 298, i32 noundef %call) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @vb2_request_validate(ptr noundef %mreq) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then16, %do.body4, %if.then, %do.body
  %retval.0 = phi i32 [ %call20, %sw.epilog ], [ -2, %if.then ], [ -22, %if.then16 ], [ -2, %do.body ], [ -22, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_request_queue(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_init_vdec_params(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 8
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 10) #5
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.set3 = or i16 %bf.load, 1536
  store i16 %bf.set3, ptr %supports_requests, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vcodec_dec_ctrls_setup(ptr noundef %ctx) #0 align 64 {
entry:
  %cfg = alloca %struct.v4l2_ctrl_config, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl, i32 noundef 7, ptr noundef nonnull @mtk_vcodec_dec_ctrls_setup._key, ptr noundef nonnull @.str.7) #5
  %error = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %2 = call ptr @memcpy(ptr %cfg, ptr @mtk_stateless_controls, i32 112)
  %call8 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 266) #8
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  br label %cleanup25

cleanup:                                          ; preds = %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  %i.039.lcssa = phi i32 [ 0, %for.body.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ]
  %.lcssa = phi i32 [ %4, %for.body.preheader.cleanup_crit_edge ], [ %11, %for.inc.cleanup_crit_edge ], [ %14, %for.inc.1.cleanup_crit_edge ], [ %17, %for.inc.2.cleanup_crit_edge ], [ %20, %for.inc.3.cleanup_crit_edge ], [ %23, %for.inc.4.cleanup_crit_edge ], [ %26, %for.inc.5.cleanup_crit_edge ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 275, i32 noundef %i.039.lcssa, i32 noundef %.lcssa) #8
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  br label %cleanup25

for.inc:                                          ; preds = %for.body.preheader
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %9 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds ([7 x %struct.mtk_stateless_control], ptr @mtk_stateless_controls, i32 0, i32 1), i32 112)
  %call8.1 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not.1 = icmp eq i32 %11, 0
  br i1 %tobool11.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %12 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds ([7 x %struct.mtk_stateless_control], ptr @mtk_stateless_controls, i32 0, i32 2), i32 112)
  %call8.2 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not.2 = icmp eq i32 %14, 0
  br i1 %tobool11.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %15 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds ([7 x %struct.mtk_stateless_control], ptr @mtk_stateless_controls, i32 0, i32 3), i32 112)
  %call8.3 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not.3 = icmp eq i32 %17, 0
  br i1 %tobool11.not.3, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %18 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds ([7 x %struct.mtk_stateless_control], ptr @mtk_stateless_controls, i32 0, i32 4), i32 112)
  %call8.4 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %19 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.4 = icmp eq i32 %20, 0
  br i1 %tobool11.not.4, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %21 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds ([7 x %struct.mtk_stateless_control], ptr @mtk_stateless_controls, i32 0, i32 5), i32 112)
  %call8.5 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not.5 = icmp eq i32 %23, 0
  br i1 %tobool11.not.5, label %for.inc.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #5
  %24 = call ptr @memcpy(ptr %cfg, ptr getelementptr inbounds ([7 x %struct.mtk_stateless_control], ptr @mtk_stateless_controls, i32 0, i32 6), i32 112)
  %call8.6 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %cfg, ptr noundef null) #5
  %25 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not.6 = icmp eq i32 %26, 0
  br i1 %tobool11.not.6, label %for.inc.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #5
  %call24 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl) #5
  br label %cleanup25

cleanup25:                                        ; preds = %for.inc.6, %cleanup, %do.end
  %retval.2 = phi i32 [ %6, %do.end ], [ %8, %cleanup ], [ 0, %for.inc.6 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vdec_worker(ptr noundef %work) #0 align 64 {
entry:
  %res_chg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -692
  %dev1 = getelementptr i8, ptr %work, i32 -688
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res_chg) #5
  %2 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %res_chg, align 1
  %m2m_ctx = getelementptr i8, ptr %work, i32 -484
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_dev_dec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %m2m_dev_dec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_dev_dec, align 4
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %6, ptr noundef %8) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !88

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr i8, ptr %work, i32 -384
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef %10) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  %call.i171 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #5
  %tobool12.not = icmp eq ptr %call.i171, null
  br i1 %tobool12.not, label %if.then13, label %if.end33

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %m2m_dev_dec14 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %m2m_dev_dec14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_dev_dec14, align 4
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %14, ptr noundef %16) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then28)) #5
          to label %cleanup [label %if.then28], !srcloc !88

if.then28:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %id29 = getelementptr i8, ptr %work, i32 -384
  %17 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef 184, i32 noundef %18) #5
  br label %cleanup

if.end33:                                         ; preds = %if.end9
  %19 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then49)) #5
          to label %do.end53 [label %if.then49], !srcloc !88

if.then49:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %id50 = getelementptr i8, ptr %work, i32 -384
  %20 = ptrtoint ptr %id50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id50, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13, i32 noundef 194, i32 noundef %21, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %call.i) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %if.end33
  %va = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va, align 4
  %call.i172 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %29 = ptrtoint ptr %call.i172 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i172, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dma_addr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytesused, align 4
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vdec_worker, %if.then67)) #5
          to label %do.end74 [label %if.then67], !srcloc !88

if.then67:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #7
  %id68 = getelementptr i8, ptr %work, i32 -384
  %35 = ptrtoint ptr %id68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id68, align 4
  %37 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %va, align 4
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vdec_worker.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, i32 noundef 201, i32 noundef %36, ptr noundef %38, ptr noundef %dma_addr, i32 noundef %40, ptr noundef nonnull %call.i) #5
  br label %do.end74

do.end74:                                         ; preds = %if.then67, %do.end53
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req, align 4
  %tobool75.not = icmp eq ptr %42, null
  br i1 %tobool75.not, label %do.end80, label %if.then76

if.then76:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl_hdl = getelementptr i8, ptr %work, i32 -184
  %call77 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef nonnull %42, ptr noundef %ctrl_hdl) #5
  br label %if.end83

do.end80:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13, i32 noundef 207) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end80, %if.then76
  %call84 = tail call fastcc ptr @vdec_get_cap_buffer(ptr noundef %add.ptr, ptr noundef nonnull %call.i171)
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i171, i1 noundef zeroext true) #5
  %call85 = call i32 @vdec_if_decode(ptr noundef %add.ptr, ptr noundef %19, ptr noundef %call84, ptr noundef nonnull %res_chg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.if.end101_crit_edge, label %do.end90

if.end83.if.end101_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

do.end90:                                         ; preds = %if.end83
  %id92 = getelementptr i8, ptr %work, i32 -384
  %43 = ptrtoint ptr %id92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id92, align 4
  %index93 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %index93 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index93, align 4
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %19, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %timestamp, align 8
  %51 = ptrtoint ptr %res_chg to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %res_chg, align 1, !range !89
  %53 = zext i8 %52 to i32
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13, i32 noundef 215, i32 noundef %44, i32 noundef %46, i32 noundef %48, i64 noundef %50, i32 noundef %call85, i32 noundef %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call85)
  %cmp = icmp eq i32 %call85, -5
  br i1 %cmp, label %if.then98, label %do.end90.if.end101_crit_edge

do.end90.if.end101_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then98:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr i8, ptr %work, i32 920
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %error = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %error, align 1
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %do.end90.if.end101_crit_edge, %if.end83.if.end101_crit_edge
  %cond = phi i32 [ 6, %do.end90.if.end101_crit_edge ], [ 6, %if.then98 ], [ 5, %if.end83.if.end101_crit_edge ]
  %num_planes.i.i = getelementptr i8, ptr %call84, i32 -732
  %55 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.not.i = icmp eq i32 %56, 0
  br i1 %cmp.i.not.i, label %if.end101.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.end101.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.end101
  %sizeimage.i = getelementptr i8, ptr %work, i32 -400
  %57 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sizeimage.i, align 4
  %length.i.i = getelementptr i8, ptr %call84, i32 -660
  %59 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp1.i.i = icmp ult i32 %60, %58
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b55.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !90

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %61 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %62, %if.then38.i.i ], [ %58, %if.then.i.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr i8, ptr %call84, i32 -664
  %63 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %if.end101.vb2_set_plane_payload.exit.i_crit_edge
  %fmt.i = getelementptr i8, ptr %work, i32 -388
  %64 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fmt.i, align 4
  %num_planes.i = getelementptr inbounds %struct.mtk_video_fmt, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp.i = icmp eq i32 %67, 2
  br i1 %cmp.i, label %if.then.i, label %vb2_set_plane_payload.exit.i.mtk_vdec_stateless_set_dst_payload.exit_crit_edge

vb2_set_plane_payload.exit.i.mtk_vdec_stateless_set_dst_payload.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_vdec_stateless_set_dst_payload.exit

if.then.i:                                        ; preds = %vb2_set_plane_payload.exit.i
  %68 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.i14.i = icmp ugt i32 %69, 1
  br i1 %cmp.i14.i, label %if.then.i17.i, label %if.then.i.mtk_vdec_stateless_set_dst_payload.exit_crit_edge

if.then.i.mtk_vdec_stateless_set_dst_payload.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_vdec_stateless_set_dst_payload.exit

if.then.i17.i:                                    ; preds = %if.then.i
  %arrayidx8.i = getelementptr i8, ptr %work, i32 -396
  %70 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx8.i, align 4
  %length.i15.i = getelementptr i8, ptr %call84, i32 -628
  %72 = ptrtoint ptr %length.i15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i15.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp1.i16.i = icmp ult i32 %73, %71
  br i1 %cmp1.i16.i, label %land.rhs.i19.i, label %if.then.i17.i.if.end42.i24.i_crit_edge

if.then.i17.i.if.end42.i24.i_crit_edge:           ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i24.i

land.rhs.i19.i:                                   ; preds = %if.then.i17.i
  %.b55.i18.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i18.i, label %land.rhs.i19.i.if.then38.i21.i_crit_edge, label %if.then8.i20.i, !prof !90

land.rhs.i19.i.if.then38.i21.i_crit_edge:         ; preds = %land.rhs.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i21.i

if.then8.i20.i:                                   ; preds = %land.rhs.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i21.i

if.then38.i21.i:                                  ; preds = %if.then8.i20.i, %land.rhs.i19.i.if.then38.i21.i_crit_edge
  %74 = ptrtoint ptr %length.i15.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length.i15.i, align 8
  br label %if.end42.i24.i

if.end42.i24.i:                                   ; preds = %if.then38.i21.i, %if.then.i17.i.if.end42.i24.i_crit_edge
  %size.addr.0.i22.i = phi i32 [ %75, %if.then38.i21.i ], [ %71, %if.then.i17.i.if.end42.i24.i_crit_edge ]
  %bytesused.i23.i = getelementptr i8, ptr %call84, i32 -632
  %76 = ptrtoint ptr %bytesused.i23.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %size.addr.0.i22.i, ptr %bytesused.i23.i, align 4
  br label %mtk_vdec_stateless_set_dst_payload.exit

mtk_vdec_stateless_set_dst_payload.exit:          ; preds = %if.end42.i24.i, %if.then.i.mtk_vdec_stateless_set_dst_payload.exit_crit_edge, %vb2_set_plane_payload.exit.i.mtk_vdec_stateless_set_dst_payload.exit_crit_edge
  %m2m_dev_dec102 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %m2m_dev_dec102 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %m2m_dev_dec102, align 4
  %79 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %m2m_ctx, align 8
  call void @v4l2_m2m_buf_done_and_job_finish(ptr noundef %78, ptr noundef %80, i32 noundef %cond) #5
  %ctrl_hdl105 = getelementptr i8, ptr %work, i32 -184
  call void @v4l2_ctrl_request_complete(ptr noundef %42, ptr noundef %ctrl_hdl105) #5
  br label %cleanup

cleanup:                                          ; preds = %mtk_vdec_stateless_set_dst_payload.exit, %if.then28, %if.then13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res_chg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_vdec_flush_decoder(ptr noundef %ctx) #0 align 64 {
entry:
  %res_chg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %res_chg) #5
  %0 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %res_chg, align 1, !annotation !91
  %call = call i32 @vdec_if_decode(ptr noundef %ctx, ptr noundef null, ptr noundef null, ptr noundef nonnull %res_chg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %res_chg) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_buffer_cnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vdec_get_cap_buffer(ptr nocapture noundef readonly %ctx, ptr noundef %vb2_v4l2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5
  %va = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %va, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb2_v4l2, i32 noundef 0) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dma_addr, align 4
  %sizeimage = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 6
  %5 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizeimage, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 7
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base_c = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5, i32 0, i32 1
  %va6 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %va6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va6, align 4
  %call.i47 = tail call ptr @vb2_plane_cookie(ptr noundef %vb2_v4l2, i32 noundef 1) #5
  %13 = ptrtoint ptr %call.i47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i47, align 4
  %dma_addr9 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %dma_addr9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dma_addr9, align 4
  %arrayidx13 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %18 = ptrtoint ptr %base_c to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %base_c, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_get_cap_buffer.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_get_cap_buffer, %if.then20)) #5
          to label %do.end [label %if.then20], !srcloc !88

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb2_v4l2, i32 0, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %21 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %va, align 4
  %dma_addr26 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb2_v4l2, i32 0, i32 5, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %decoded_frame_cnt = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 30
  %25 = ptrtoint ptr %decoded_frame_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %decoded_frame_cnt, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_get_cap_buffer.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %20, ptr noundef %0, ptr noundef %22, ptr noundef %dma_addr, ptr noundef %dma_addr26, i32 noundef %24, i32 noundef %26) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdec_if_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_done_and_job_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_queue_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vb2ops_vdec_out_buf_validate(ptr nocapture noundef writeonly %vb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_buf_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_buf_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2ops_vdec_buf_finish(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2ops_vdec_start_streaming(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2ops_vdec_stop_streaming(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2ops_vdec_stateless_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateless_buf_queue, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vb, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, i32 noundef 236, i32 noundef %5, i32 noundef %9, i32 noundef %11, ptr noundef %vb) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_buf_queue(ptr noundef %13, ptr noundef %vb) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %14 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vb, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp.not = icmp eq i32 %17, 10
  br i1 %cmp.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp11 = icmp eq i32 %19, 1
  br i1 %cmp11, label %if.then12, label %do.body30

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateless_buf_queue, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !88

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 247) #5
  br label %cleanup

do.body30:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stateless_buf_queue, %if.then42)) #5
          to label %cleanup [label %if.then42], !srcloc !88

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %id43 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %id43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id43, align 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef 249, i32 noundef %22, i32 noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %if.then26, %if.then12, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2ops_vdec_buf_request_complete(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 19
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_hdl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @mtk_vcodec_media_ops, !1, !"mtk_vcodec_media_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 305, i32 31}
!2 = !{ptr @mtk_vdec_8183_pdata, !3, !"mtk_vdec_8183_pdata", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 345, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 294, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fops_media_request_validate.__UNIQUE_ID_ddebug306, !5, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 297, i32 3}
!13 = !{ptr @fops_media_request_validate.__UNIQUE_ID_ddebug307, !12, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mtk_vcodec_dec_ctrls_setup._key, !16, !"_key", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 264, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 266, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mtk_vcodec_dec_ctrls_setup._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mtk_vcodec_dec_ctrls_setup._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 275, i32 4}
!25 = !{ptr @mtk_vcodec_dec_ctrls_setup._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mtk_vcodec_dec_ctrls_setup._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mtk_stateless_controls, !28, !"mtk_stateless_controls", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 26, i32 43}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 177, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug299, !30, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 184, i32 3}
!36 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug300, !35, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 193, i32 2}
!40 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug301, !39, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!41 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 200, i32 2}
!44 = !{ptr @mtk_vdec_worker.__UNIQUE_ID_ddebug302, !43, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 207, i32 3}
!48 = !{ptr @mtk_vdec_worker._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mtk_vdec_worker._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 213, i32 3}
!52 = !{ptr @mtk_vdec_worker._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtk_vdec_worker._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 146, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vdec_get_cap_buffer.__UNIQUE_ID_ddebug298, !55, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!58 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mtk_vdec_request_vb2_ops, !63, !"mtk_vdec_request_vb2_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 330, i32 23}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 236, i32 2}
!66 = !{ptr @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug303, !65, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 247, i32 3}
!69 = !{ptr @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug304, !68, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!70 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 249, i32 3}
!73 = !{ptr @vb2ops_vdec_stateless_buf_queue.__UNIQUE_ID_ddebug305, !72, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!74 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mtk_video_formats, !76, !"mtk_video_formats", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 84, i32 35}
!77 = !{ptr @mtk_vdec_framesizes, !78, !"mtk_vdec_framesizes", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_stateless.c", i32 101, i32 42}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148780252, i64 2148780257, i64 2148780270, i64 2148780314, i64 2148780348, i64 2148780369}
!89 = !{i8 0, i8 2}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{!"auto-init"}
