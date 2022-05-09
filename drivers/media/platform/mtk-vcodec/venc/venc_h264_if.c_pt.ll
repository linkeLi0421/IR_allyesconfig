; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.venc_common_if = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venc_h264_inst = type { ptr, [9 x %struct.mtk_vcodec_mem], %struct.mtk_vcodec_mem, i8, i32, i32, i32, %struct.venc_vpu_inst, ptr, ptr }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.venc_vpu_inst = type { %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.venc_done_result = type { i32, i8 }
%struct.venc_enc_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venc_h264_vpu_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venc_frame_info = type { i32, i32, i32 }
%struct.venc_h264_vsi = type { %struct.venc_h264_vpu_config, [9 x %struct.venc_h264_vpu_buf] }
%struct.venc_h264_vpu_buf = type { i32, i32, i32 }

@venc_h264_if = dso_local constant { %struct.venc_common_if, [16 x i8] } { %struct.venc_common_if { ptr @h264_enc_init, ptr @h264_enc_encode, ptr @h264_enc_set_param, ptr @h264_enc_deinit }, [16 x i8] zeroinitializer }, align 32
@h264_enc_init.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_enc\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"h264_enc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@h264_enc_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: -\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: -\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@h264_enc_encode.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h264_enc_encode\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[MTK_VCODEC][%d]: opt %d ->\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(),%d: [MTK_VCODEC][%d]: opt %d ->\0A\00", [58 x i8] zeroinitializer }, align 32
@h264_enc_encode.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[MTK_VCODEC][%d]: h264_encode_frame prepend SPS/PPS\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s(),%d: [MTK_VCODEC][%d]: h264_encode_frame prepend SPS/PPS\0A\00", [34 x i8] zeroinitializer }, align 32
@h264_enc_encode.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.12, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[MTK_VCODEC][%d]: hdr %d filler %d frame %d bs %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(),%d: [MTK_VCODEC][%d]: hdr %d filler %d frame %d bs %d\0A\00", [36 x i8] zeroinitializer }, align 32
@h264_enc_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: venc_start_opt %d not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@h264_enc_encode._entry_ptr = internal global ptr @h264_enc_encode._entry, section ".printk_index", align 4
@h264_enc_encode.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.15, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[MTK_VCODEC][%d]: opt %d <-\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(),%d: [MTK_VCODEC][%d]: opt %d <-\0A\00", [58 x i8] zeroinitializer }, align 32
@h264_encode_sps.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h264_encode_sps\00", [16 x i8] zeroinitializer }, align 32
@h264_encode_sps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.17, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: expect irq status %d\0A\00", [38 x i8] zeroinitializer }, align 32
@h264_encode_sps._entry_ptr = internal global ptr @h264_encode_sps._entry, section ".printk_index", align 4
@h264_encode_sps.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[MTK_VCODEC][%d]: bs size %d <-\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(),%d: [MTK_VCODEC][%d]: bs size %d <-\0A\00", [54 x i8] zeroinitializer }, align 32
@h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"h264_enc_wait_venc_done\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[MTK_VCODEC][%d]: irq_status %x <-\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: [MTK_VCODEC][%d]: irq_status %x <-\0A\00", [51 x i8] zeroinitializer }, align 32
@h264_encode_pps.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.3, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h264_encode_pps\00", [16 x i8] zeroinitializer }, align 32
@h264_encode_pps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.24, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@h264_encode_pps._entry_ptr = internal global ptr @h264_encode_pps._entry, section ".printk_index", align 4
@h264_encode_pps.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.19, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@h264_encode_frame.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.3, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"h264_encode_frame\00", [46 x i8] zeroinitializer }, align 32
@h264_encode_frame.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[MTK_VCODEC][%d]: frm_cnt = %d\0A \0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(),%d: [MTK_VCODEC][%d]: frm_cnt = %d\0A \0A\00", [53 x i8] zeroinitializer }, align 32
@h264_encode_frame.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[MTK_VCODEC][%d]: frm_count = %d,skip_frm_count =%d,frm_type=%d.\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s(),%d: [MTK_VCODEC][%d]: frm_count = %d,skip_frm_count =%d,frm_type=%d.\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@h264_encode_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: irq_status=%d failed\0A\00", [38 x i8] zeroinitializer }, align 32
@h264_encode_frame._entry_ptr = internal global ptr @h264_encode_frame._entry, section ".printk_index", align 4
@h264_encode_frame.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.31, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[MTK_VCODEC][%d]: frm %d bs_size %d key_frm %d <-\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(),%d: [MTK_VCODEC][%d]: frm %d bs_size %d key_frm %d <-\0A\00", [36 x i8] zeroinitializer }, align 32
@h264_encode_filler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: filler size too small %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"h264_encode_filler\00", [45 x i8] zeroinitializer }, align 32
@h264_encode_filler._entry_ptr = internal global ptr @h264_encode_filler._entry, section ".printk_index", align 4
@h264_filler_marker = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\00\01\0C", [27 x i8] zeroinitializer }, align 32
@h264_enc_set_param.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"h264_enc_set_param\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[MTK_VCODEC][%d]: ->type=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(),%d: [MTK_VCODEC][%d]: ->type=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@h264_enc_set_param.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[MTK_VCODEC][%d]: set prepend header mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [MTK_VCODEC][%d]: set prepend header mode\0A\00", [44 x i8] zeroinitializer }, align 32
@h264_enc_set_param.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.5, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@h264_get_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: unsupported CONSTRAINED_BASELINE\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"h264_get_profile\00", [47 x i8] zeroinitializer }, align 32
@h264_get_profile._entry_ptr = internal global ptr @h264_get_profile._entry, section ".printk_index", align 4
@h264_get_profile._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: unsupported EXTENDED\0A\00", [38 x i8] zeroinitializer }, align 32
@h264_get_profile._entry_ptr.44 = internal global ptr @h264_get_profile._entry.42, section ".printk_index", align 4
@h264_get_profile.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.45, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: unsupported profile %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: unsupported profile %d\0A\00", [45 x i8] zeroinitializer }, align 32
@h264_get_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: unsupported 1B\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"h264_get_level\00", [17 x i8] zeroinitializer }, align 32
@h264_get_level._entry_ptr = internal global ptr @h264_get_level._entry, section ".printk_index", align 4
@h264_get_level.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[MTK_VCODEC][%d]: unsupported level %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(),%d: [MTK_VCODEC][%d]: unsupported level %d\0A\00", [47 x i8] zeroinitializer }, align 32
@h264_enc_free_work_buf.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.3, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"h264_enc_free_work_buf\00", [41 x i8] zeroinitializer }, align 32
@h264_enc_free_work_buf.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.5, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"h264_enc_alloc_work_buf\00", [40 x i8] zeroinitializer }, align 32
@h264_enc_alloc_work_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.52, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: cannot allocate buf %d\0A\00", [36 x i8] zeroinitializer }, align 32
@h264_enc_alloc_work_buf._entry_ptr = internal global ptr @h264_enc_alloc_work_buf._entry, section ".printk_index", align 4
@h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[MTK_VCODEC][%d]: work_buf[%d] va=0x%p iova=%pad size=%zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s(),%d: [MTK_VCODEC][%d]: work_buf[%d] va=0x%p iova=%pad size=%zu\0A\00", [60 x i8] zeroinitializer }, align 32
@h264_enc_alloc_work_buf._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: cannot allocate pps_buf\0A\00", [35 x i8] zeroinitializer }, align 32
@h264_enc_alloc_work_buf._entry_ptr.58 = internal global ptr @h264_enc_alloc_work_buf._entry.56, section ".printk_index", align 4
@h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.5, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@h264_enc_deinit.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.3, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"h264_enc_deinit\00", [16 x i8] zeroinitializer }, align 32
@h264_enc_deinit.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.5, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"venc_h264_if\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 703, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 516, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 522, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 542, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 577, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 604, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 614, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 622, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 368, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 376, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 382, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 340, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 394, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 402, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 444, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 445, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 449, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 472, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 479, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 491, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"h264_filler_marker\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 22, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 634, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 667, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 174, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 177, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 180, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 190, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 223, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 232, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 253, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 284, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 307, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 318, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [57 x i8] c"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 690, i32 2 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @h264_enc_alloc_work_buf._entry, ptr @h264_enc_alloc_work_buf._entry.56, ptr @h264_enc_alloc_work_buf._entry_ptr, ptr @h264_enc_alloc_work_buf._entry_ptr.58, ptr @h264_enc_encode._entry, ptr @h264_enc_encode._entry_ptr, ptr @h264_encode_filler._entry, ptr @h264_encode_filler._entry_ptr, ptr @h264_encode_frame._entry, ptr @h264_encode_frame._entry_ptr, ptr @h264_encode_pps._entry, ptr @h264_encode_pps._entry_ptr, ptr @h264_encode_sps._entry, ptr @h264_encode_sps._entry_ptr, ptr @h264_get_level._entry, ptr @h264_get_level._entry_ptr, ptr @h264_get_profile._entry, ptr @h264_get_profile._entry.42, ptr @h264_get_profile._entry_ptr, ptr @h264_get_profile._entry_ptr.44, ptr @venc_h264_if, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @h264_filler_marker, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_h264_if to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_enc_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_encode_sps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_encode_pps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_encode_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_encode_filler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_filler_marker to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_get_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_get_profile._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_get_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_enc_alloc_work_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_enc_alloc_work_buf._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h264_enc_init(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 236) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx2 = getelementptr inbounds %struct.venc_h264_inst, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx2, align 8
  %vpu_inst = getelementptr inbounds %struct.venc_h264_inst, ptr %call7.i.i, i32 0, i32 7
  %ctx3 = getelementptr inbounds %struct.venc_h264_inst, ptr %call7.i.i, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %ctx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %ctx3, align 8
  %id = getelementptr inbounds %struct.venc_h264_inst, ptr %call7.i.i, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %id, align 4
  %call7 = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %ctx, i32 noundef 12) #6
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_init.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_init, %if.then13)) #6
          to label %do.end [label %if.then13], !srcloc !153

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx2, align 8
  %id15 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id15, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_init.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 516, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end
  %call18 = tail call i32 @vpu_enc_init(ptr noundef %vpu_inst) #6
  %vsi = getelementptr inbounds %struct.venc_h264_inst, ptr %call7.i.i, i32 0, i32 7, i32 7
  %9 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi, align 8
  %vsi20 = getelementptr inbounds %struct.venc_h264_inst, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %vsi20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %vsi20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_init, %if.then33)) #6
          to label %do.end38 [label %if.then33], !srcloc !153

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx2, align 8
  %id35 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %id35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id35, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_init.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 522, i32 noundef %15) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool39.not = icmp eq i32 %call18, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.else:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %16 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %drv_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call18, %if.then40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h264_enc_encode(ptr noundef %handle, i32 noundef %opt, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr nocapture noundef %result) #0 align 64 {
entry:
  %bs_size_sps.i192 = alloca i32, align 4
  %bs_size_pps.i193 = alloca i32, align 4
  %bs_size_sps.i = alloca i32, align 4
  %bs_size_pps.i = alloca i32, align 4
  %tmp_bs_buf = alloca %struct.mtk_vcodec_mem, align 4
  %bs_size_frm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_encode.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_encode, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_encode.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 542, i32 noundef %5, i32 noundef %opt) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %enc_irq = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %enc_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enc_irq, align 4
  tail call void @enable_irq(i32 noundef %9) #6
  %10 = zext i32 %opt to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opt, label %do.end103 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bs_size_sps.i) #6
  %11 = ptrtoint ptr %bs_size_sps.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %bs_size_sps.i, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bs_size_pps.i) #6
  %12 = ptrtoint ptr %bs_size_pps.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bs_size_pps.i, align 4, !annotation !154
  %call.i = call fastcc i32 @h264_encode_sps(ptr noundef %handle, ptr noundef %bs_buf, ptr noundef nonnull %bs_size_sps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.h264_encode_header.exit.thread_crit_edge

sw.bb.h264_encode_header.exit.thread_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_encode_header.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %pps_buf.i = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 2
  %call1.i = call fastcc i32 @h264_encode_pps(ptr noundef %handle, ptr noundef %pps_buf.i, ptr noundef nonnull %bs_size_pps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.end.i.h264_encode_header.exit.thread_crit_edge

if.end.i.h264_encode_header.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_encode_header.exit.thread

h264_encode_header.exit.thread:                   ; preds = %if.end.i.h264_encode_header.exit.thread_crit_edge, %sw.bb.h264_encode_header.exit.thread_crit_edge
  %retval.0.i191.ph = phi i32 [ %call1.i, %if.end.i.h264_encode_header.exit.thread_crit_edge ], [ %call.i, %sw.bb.h264_encode_header.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_pps.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_sps.i) #6
  br label %encode_err

if.end8:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %va.i = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 1
  %13 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va.i, align 4
  %15 = ptrtoint ptr %bs_size_sps.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bs_size_sps.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %va6.i = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %va6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %va6.i, align 4
  %19 = ptrtoint ptr %bs_size_pps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bs_size_pps.i, align 4
  %21 = call ptr @memcpy(ptr %add.ptr.i, ptr %18, i32 %20)
  %add.i = add i32 %20, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_pps.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_sps.i) #6
  %22 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %result, align 4
  %is_key_frm = getelementptr inbounds %struct.venc_done_result, ptr %result, i32 0, i32 1
  %23 = ptrtoint ptr %is_key_frm to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %is_key_frm, align 4
  br label %encode_err

sw.bb9:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp_bs_buf) #6
  %24 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %tmp_bs_buf, i32 0, i32 1
  %25 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %tmp_bs_buf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bs_size_frm) #6
  %26 = ptrtoint ptr %bs_size_frm to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %bs_size_frm, align 4, !annotation !154
  %prepend_hdr = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 6
  %27 = ptrtoint ptr %prepend_hdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prepend_hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool11.not = icmp eq i32 %28, 0
  br i1 %tobool11.not, label %if.then12, label %do.body23

if.then12:                                        ; preds = %sw.bb9
  %call14 = tail call fastcc i32 @h264_encode_frame(ptr noundef %handle, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr noundef %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then12.cleanup93_crit_edge

if.then12.cleanup93_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup93

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %is_key_frm18 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %is_key_frm18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %is_key_frm18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19 = icmp ne i32 %30, 0
  %is_key_frm20 = getelementptr inbounds %struct.venc_done_result, ptr %result, i32 0, i32 1
  %frombool21 = zext i1 %tobool19 to i8
  %31 = ptrtoint ptr %is_key_frm20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool21, ptr %is_key_frm20, align 4
  br label %cleanup93

do.body23:                                        ; preds = %sw.bb9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_encode.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_encode, %if.then35)) #6
          to label %do.end40 [label %if.then35], !srcloc !153

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx1, align 4
  %id37 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %id37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id37, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_encode.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef 577, i32 noundef %35) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bs_size_sps.i192) #6
  %36 = ptrtoint ptr %bs_size_sps.i192 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %bs_size_sps.i192, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bs_size_pps.i193) #6
  %37 = ptrtoint ptr %bs_size_pps.i193 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %bs_size_pps.i193, align 4, !annotation !154
  %call.i194 = call fastcc i32 @h264_encode_sps(ptr noundef %handle, ptr noundef %bs_buf, ptr noundef nonnull %bs_size_sps.i192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %if.end.i199, label %do.end40.h264_encode_header.exit206.thread_crit_edge

do.end40.h264_encode_header.exit206.thread_crit_edge: ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_encode_header.exit206.thread

if.end.i199:                                      ; preds = %do.end40
  %pps_buf.i196 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 2
  %call1.i197 = call fastcc i32 @h264_encode_pps(ptr noundef %handle, ptr noundef %pps_buf.i196, ptr noundef nonnull %bs_size_pps.i193) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i197)
  %tobool2.not.i198 = icmp eq i32 %call1.i197, 0
  br i1 %tobool2.not.i198, label %if.end44, label %if.end.i199.h264_encode_header.exit206.thread_crit_edge

if.end.i199.h264_encode_header.exit206.thread_crit_edge: ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_encode_header.exit206.thread

h264_encode_header.exit206.thread:                ; preds = %if.end.i199.h264_encode_header.exit206.thread_crit_edge, %do.end40.h264_encode_header.exit206.thread_crit_edge
  %retval.0.i205.ph = phi i32 [ %call1.i197, %if.end.i199.h264_encode_header.exit206.thread_crit_edge ], [ %call.i194, %do.end40.h264_encode_header.exit206.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_pps.i193) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_sps.i192) #6
  br label %cleanup93

if.end44:                                         ; preds = %if.end.i199
  %va.i200 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 1
  %38 = ptrtoint ptr %va.i200 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %va.i200, align 4
  %40 = ptrtoint ptr %bs_size_sps.i192 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bs_size_sps.i192, align 4
  %add.ptr.i201 = getelementptr i8, ptr %39, i32 %41
  %va6.i202 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %va6.i202 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %va6.i202, align 4
  %44 = ptrtoint ptr %bs_size_pps.i193 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bs_size_pps.i193, align 4
  %46 = call ptr @memcpy(ptr %add.ptr.i201, ptr %43, i32 %45)
  %add.i203 = add i32 %45, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_pps.i193) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_sps.i192) #6
  %and = and i32 %add.i203, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.end44.if.end50_crit_edge, label %if.then46

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %and)
  %cmp = icmp ugt i32 %and, 123
  %spec.select = select i1 %cmp, i32 256, i32 128
  %filler_sz.0 = sub nuw nsw i32 %spec.select, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %filler_sz.0)
  %cmp.i = icmp ult i32 %filler_sz.0, 5
  br i1 %cmp.i, label %do.end.i, label %if.end.i209

do.end.i:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx1, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i, align 4
  %call.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 491, i32 noundef %50, i32 noundef %filler_sz.0) #10
  br label %if.end50

if.end.i209:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %va.i200 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %va.i200, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 %add.i203
  %53 = call ptr @memcpy(ptr %add.ptr, ptr @h264_filler_marker, i32 5)
  %sub.i = add nsw i32 %filler_sz.0, -5
  %add.ptr.i208 = getelementptr i8, ptr %add.ptr, i32 5
  %54 = call ptr @memset(ptr %add.ptr.i208, i32 255, i32 %sub.i)
  br label %if.end50

if.end50:                                         ; preds = %if.end.i209, %do.end.i, %if.end44.if.end50_crit_edge
  %filler_sz.1 = phi i32 [ 0, %if.end44.if.end50_crit_edge ], [ %filler_sz.0, %do.end.i ], [ %filler_sz.0, %if.end.i209 ]
  %55 = ptrtoint ptr %va.i200 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %va.i200, align 4
  %add.ptr52 = getelementptr i8, ptr %56, i32 %add.i203
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 %filler_sz.1
  %57 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr53, ptr %24, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 2
  %58 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_addr, align 4
  %add55 = add i32 %filler_sz.1, %add.i203
  %add56 = add i32 %add55, %59
  %60 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add56, ptr %25, align 4
  %61 = ptrtoint ptr %bs_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bs_buf, align 4
  %sub59 = sub i32 %62, %add55
  %63 = ptrtoint ptr %tmp_bs_buf to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub59, ptr %tmp_bs_buf, align 4
  %call61 = call fastcc i32 @h264_encode_frame(ptr noundef %handle, ptr noundef %frm_buf, ptr noundef nonnull %tmp_bs_buf, ptr noundef nonnull %bs_size_frm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end50.cleanup93_crit_edge

if.end50.cleanup93_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup93

if.end64:                                         ; preds = %if.end50
  %64 = ptrtoint ptr %bs_size_frm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bs_size_frm, align 4
  %add66 = add i32 %65, %add55
  %66 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add66, ptr %result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_encode.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_encode, %if.then80)) #6
          to label %do.end86 [label %if.then80], !srcloc !153

if.then80:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx1, align 4
  %id82 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %id82 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id82, align 4
  %71 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %result, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_encode.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, i32 noundef 606, i32 noundef %70, i32 noundef %add.i203, i32 noundef %filler_sz.1, i32 noundef %65, i32 noundef %72) #6
  br label %do.end86

do.end86:                                         ; preds = %if.then80, %if.end64
  %73 = ptrtoint ptr %prepend_hdr to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %prepend_hdr, align 4
  %is_key_frm89 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %is_key_frm89 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %is_key_frm89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool90 = icmp ne i32 %75, 0
  %is_key_frm91 = getelementptr inbounds %struct.venc_done_result, ptr %result, i32 0, i32 1
  %frombool92 = zext i1 %tobool90 to i8
  %76 = ptrtoint ptr %is_key_frm91 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool92, ptr %is_key_frm91, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %do.end86, %if.end50.cleanup93_crit_edge, %h264_encode_header.exit206.thread, %if.end17, %if.then12.cleanup93_crit_edge
  %ret.0 = phi i32 [ 0, %do.end86 ], [ 0, %if.end17 ], [ %call14, %if.then12.cleanup93_crit_edge ], [ %call61, %if.end50.cleanup93_crit_edge ], [ %retval.0.i205.ph, %h264_encode_header.exit206.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs_size_frm) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp_bs_buf) #6
  br label %encode_err

do.end103:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx1, align 4
  %id106 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %id106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id106, align 4
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 614, i32 noundef %80, i32 noundef %opt) #10
  br label %encode_err

encode_err:                                       ; preds = %do.end103, %cleanup93, %if.end8, %h264_encode_header.exit.thread
  %ret.1 = phi i32 [ -22, %do.end103 ], [ %ret.0, %cleanup93 ], [ 0, %if.end8 ], [ %retval.0.i191.ph, %h264_encode_header.exit.thread ]
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %enc_irq109 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %82, i32 0, i32 22
  %83 = ptrtoint ptr %enc_irq109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %enc_irq109, align 4
  call void @disable_irq(i32 noundef %84) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_encode.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_encode, %if.then122)) #6
          to label %cleanup128 [label %if.then122], !srcloc !153

if.then122:                                       ; preds = %encode_err
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctx1, align 4
  %id124 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %id124 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id124, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_encode.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef 622, i32 noundef %88, i32 noundef %opt) #6
  br label %cleanup128

cleanup128:                                       ; preds = %if.then122, %encode_err
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h264_enc_set_param(ptr noundef %handle, i32 noundef %type, ptr noundef %enc_prm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_set_param.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_set_param, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_set_param.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 634, i32 noundef %3, i32 noundef %type) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %type, label %do.end.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb43
    i32 1, label %do.end.sw.bb62_crit_edge
    i32 4, label %do.end.sw.bb62_crit_edge143
    i32 5, label %do.end.sw.bb62_crit_edge144
  ]

do.end.sw.bb62_crit_edge144:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

do.end.sw.bb62_crit_edge143:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

do.end.sw.bb62_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

do.end.sw.default_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %do.end
  %5 = ptrtoint ptr %enc_prm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enc_prm, align 4
  %vsi = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 8
  %7 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %8, align 4
  %bitrate = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 9
  %10 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bitrate, align 4
  %12 = load ptr, ptr %vsi, align 4
  %bitrate5 = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bitrate5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %bitrate5, align 4
  %width = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 3
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %16 = load ptr, ptr %vsi, align 4
  %pic_w = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pic_w to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %pic_w, align 4
  %height = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = load ptr, ptr %vsi, align 4
  %pic_h = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %pic_h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %pic_h, align 4
  %buf_width = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 5
  %22 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_width, align 4
  %24 = load ptr, ptr %vsi, align 4
  %buf_w = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %buf_w to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %buf_w, align 4
  %buf_height = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 6
  %26 = ptrtoint ptr %buf_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_height, align 4
  %28 = load ptr, ptr %vsi, align 4
  %buf_h = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %buf_h to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %buf_h, align 4
  %gop_size = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 10
  %30 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gop_size, align 4
  %32 = load ptr, ptr %vsi, align 4
  %gop_size16 = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %gop_size16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %gop_size16, align 4
  %frm_rate = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 7
  %34 = ptrtoint ptr %frm_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frm_rate, align 4
  %36 = load ptr, ptr %vsi, align 4
  %framerate = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %framerate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %framerate, align 4
  %intra_period = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 8
  %38 = ptrtoint ptr %intra_period to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intra_period, align 4
  %40 = load ptr, ptr %vsi, align 4
  %intra_period21 = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %intra_period21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %intra_period21, align 4
  %h264_profile = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 1
  %42 = ptrtoint ptr %h264_profile to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %h264_profile, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %43, label %do.body11.i [
    i32 0, label %sw.bb.h264_get_profile.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 1, label %do.end.i
    i32 3, label %do.end6.i
  ]

sw.bb.h264_get_profile.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_profile.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_profile.exit

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_profile.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ctx.i = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %45 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 174, i32 noundef %48) #10
  br label %h264_get_profile.exit

do.end6.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ctx8.i = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %49 = ptrtoint ptr %ctx8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx8.i, align 4
  %id9.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id9.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 177, i32 noundef %52) #10
  br label %h264_get_profile.exit

do.body11.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_get_profile.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_set_param, %if.then.i)) #6
          to label %h264_get_profile.exit [label %if.then.i], !srcloc !153

if.then.i:                                        ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %ctx16.i = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %53 = ptrtoint ptr %ctx16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx16.i, align 4
  %id17.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id17.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_get_profile.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i32 noundef 180, i32 noundef %56, i32 noundef %43) #6
  br label %h264_get_profile.exit

h264_get_profile.exit:                            ; preds = %if.then.i, %do.body11.i, %do.end6.i, %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.h264_get_profile.exit_crit_edge
  %retval.0.i132 = phi i32 [ 0, %do.end6.i ], [ 0, %do.end.i ], [ 100, %sw.bb2.i ], [ 77, %sw.bb1.i ], [ 66, %sw.bb.h264_get_profile.exit_crit_edge ], [ 100, %if.then.i ], [ 100, %do.body11.i ]
  %57 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vsi, align 4
  %profile = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i132, ptr %profile, align 4
  %h264_level = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 2
  %60 = ptrtoint ptr %h264_level to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %h264_level, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %61, label %do.body16.i [
    i32 1, label %do.end.i136
    i32 0, label %h264_get_profile.exit.h264_get_level.exit_crit_edge
    i32 2, label %sw.bb2.i137
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb5.i
    i32 6, label %sw.bb6.i
    i32 7, label %sw.bb7.i
    i32 8, label %sw.bb8.i
    i32 9, label %sw.bb9.i
    i32 10, label %sw.bb10.i
    i32 11, label %sw.bb11.i
    i32 12, label %sw.bb12.i
    i32 13, label %sw.bb13.i
    i32 14, label %sw.bb14.i
    i32 15, label %sw.bb15.i
  ]

h264_get_profile.exit.h264_get_level.exit_crit_edge: ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

do.end.i136:                                      ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ctx.i133 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %63 = ptrtoint ptr %ctx.i133 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx.i133, align 4
  %id.i134 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %id.i134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id.i134, align 4
  %call.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 190, i32 noundef %66) #10
  br label %h264_get_level.exit

sw.bb2.i137:                                      ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb3.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb4.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb5.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb6.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb7.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb8.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb9.i:                                         ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb10.i:                                        ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb11.i:                                        ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb12.i:                                        ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb13.i:                                        ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb14.i:                                        ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

sw.bb15.i:                                        ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_get_level.exit

do.body16.i:                                      ; preds = %h264_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_get_level.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_set_param, %if.then.i138)) #6
          to label %h264_get_level.exit [label %if.then.i138], !srcloc !153

if.then.i138:                                     ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  %ctx21.i = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %67 = ptrtoint ptr %ctx21.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx21.i, align 4
  %id22.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %id22.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id22.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_get_level.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 223, i32 noundef %70, i32 noundef %61) #6
  br label %h264_get_level.exit

h264_get_level.exit:                              ; preds = %if.then.i138, %do.body16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i137, %do.end.i136, %h264_get_profile.exit.h264_get_level.exit_crit_edge
  %retval.0.i139 = phi i32 [ 51, %sw.bb15.i ], [ 50, %sw.bb14.i ], [ 42, %sw.bb13.i ], [ 41, %sw.bb12.i ], [ 40, %sw.bb11.i ], [ 32, %sw.bb10.i ], [ 31, %sw.bb9.i ], [ 30, %sw.bb8.i ], [ 22, %sw.bb7.i ], [ 21, %sw.bb6.i ], [ 20, %sw.bb5.i ], [ 13, %sw.bb4.i ], [ 12, %sw.bb3.i ], [ 11, %sw.bb2.i137 ], [ 0, %do.end.i136 ], [ 10, %h264_get_profile.exit.h264_get_level.exit_crit_edge ], [ 31, %if.then.i138 ], [ 31, %do.body16.i ]
  %71 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vsi, align 4
  %level = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i139, ptr %level, align 4
  %74 = load ptr, ptr %vsi, align 4
  %wfd = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %wfd to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %wfd, align 4
  %vpu_inst = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 7
  %call30 = tail call i32 @vpu_enc_set_param(ptr noundef %vpu_inst, i32 noundef 0, ptr noundef %enc_prm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %h264_get_level.exit.do.body65_crit_edge

h264_get_level.exit.do.body65_crit_edge:          ; preds = %h264_get_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

if.end33:                                         ; preds = %h264_get_level.exit
  %work_buf_allocated = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 3
  %76 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %work_buf_allocated, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool34.not = icmp eq i8 %77, 0
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @h264_enc_free_work_buf(ptr noundef %handle)
  %78 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %work_buf_allocated, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %call38 = tail call fastcc i32 @h264_enc_alloc_work_buf(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.do.body65_crit_edge

if.end37.do.body65_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %work_buf_allocated, align 4
  br label %do.body65

sw.bb43:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %prepend_hdr = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 6
  %80 = ptrtoint ptr %prepend_hdr to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %prepend_hdr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_set_param.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_set_param, %if.then56)) #6
          to label %do.body65 [label %if.then56], !srcloc !153

if.then56:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  %ctx57 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %81 = ptrtoint ptr %ctx57 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctx57, align 4
  %id58 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %id58 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id58, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_set_param.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef 667, i32 noundef %84) #6
  br label %do.body65

sw.bb62:                                          ; preds = %do.end.sw.bb62_crit_edge, %do.end.sw.bb62_crit_edge143, %do.end.sw.bb62_crit_edge144
  %frm_cnt = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 4
  %85 = ptrtoint ptr %frm_cnt to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %frm_cnt, align 4
  %skip_frm_cnt = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 5
  %86 = ptrtoint ptr %skip_frm_cnt to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %skip_frm_cnt, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb62, %do.end.sw.default_crit_edge
  %vpu_inst63 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 7
  %call64 = tail call i32 @vpu_enc_set_param(ptr noundef %vpu_inst63, i32 noundef %type, ptr noundef %enc_prm) #6
  br label %do.body65

do.body65:                                        ; preds = %sw.default, %if.then56, %sw.bb43, %if.end41, %if.end37.do.body65_crit_edge, %h264_get_level.exit.do.body65_crit_edge
  %ret.0 = phi i32 [ %call64, %sw.default ], [ 0, %if.then56 ], [ %call30, %h264_get_level.exit.do.body65_crit_edge ], [ %call38, %if.end37.do.body65_crit_edge ], [ 0, %if.end41 ], [ 0, %sw.bb43 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_set_param.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_set_param, %if.then77)) #6
          to label %do.end82 [label %if.then77], !srcloc !153

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %ctx78 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %87 = ptrtoint ptr %ctx78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx78, align 4
  %id79 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %id79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id79, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_set_param.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.35, i32 noundef 680, i32 noundef %90) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.body65
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h264_enc_deinit(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_deinit.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_deinit, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_deinit.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.59, i32 noundef 690, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu_inst = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 7
  %call3 = tail call i32 @vpu_enc_deinit(ptr noundef %vpu_inst) #6
  %work_buf_allocated = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 3
  %4 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %work_buf_allocated, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.end.do.body7_crit_edge, label %if.then5

do.end.do.body7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @h264_enc_free_work_buf(ptr noundef %handle)
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.end.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_deinit.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_deinit, %if.then19)) #6
          to label %do.end24 [label %if.then19], !srcloc !153

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %ctx20 = getelementptr inbounds %struct.venc_h264_inst, ptr %handle, i32 0, i32 9
  %6 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx20, align 4
  %id21 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_deinit.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.59, i32 noundef 697, i32 noundef %9) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body7
  tail call void @kfree(ptr noundef %handle) #6
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_get_reg_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @h264_encode_frame(ptr noundef %inst, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr nocapture noundef %bs_size) unnamed_addr #0 align 64 {
entry:
  %frame_info = alloca %struct.venc_frame_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %frame_info) #6
  %0 = getelementptr inbounds %struct.venc_frame_info, ptr %frame_info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.venc_frame_info, ptr %frame_info, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_frame.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_frame, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_frame.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, i32 noundef 444, i32 noundef %5) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_frame.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_frame, %if.then15)) #6
          to label %do.end20 [label %if.then15], !srcloc !153

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %ctx16 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %6 = ptrtoint ptr %ctx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx16, align 4
  %id17 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id17, align 4
  %frm_cnt = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 4
  %10 = ptrtoint ptr %frm_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frm_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_frame.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 445, i32 noundef %9, i32 noundef %11) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body3
  %frm_cnt21 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 4
  %12 = ptrtoint ptr %frm_cnt21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frm_cnt21, align 4
  %14 = ptrtoint ptr %frame_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %frame_info, align 4
  %skip_frm_cnt = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 5
  %15 = ptrtoint ptr %skip_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %skip_frm_cnt, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  %vsi.i = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 8
  %18 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsi.i, align 4
  %gop_size.i = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %gop_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gop_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end20
  %rem.i = urem i32 %13, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.i, label %land.lhs.true.i.h264_frame_type.exit_crit_edge, label %if.else.i

land.lhs.true.i.h264_frame_type.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_frame_type.exit

lor.lhs.false.i:                                  ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.i = icmp eq i32 %13, 0
  br i1 %cmp6.i, label %lor.lhs.false.i.h264_frame_type.exit_crit_edge, label %if.else.thread.i

lor.lhs.false.i.h264_frame_type.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_frame_type.exit

if.else.i:                                        ; preds = %land.lhs.true.i
  %intra_period.i = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %intra_period.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intra_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp14.not.i = icmp eq i32 %23, 0
  br i1 %cmp14.not.i, label %if.else.i.if.else31.i_crit_edge, label %if.else.i.land.lhs.true15.i_crit_edge

if.else.i.land.lhs.true15.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15.i

if.else.i.if.else31.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else31.i

if.else.thread.i:                                 ; preds = %lor.lhs.false.i
  %intra_period48.i = getelementptr inbounds %struct.venc_h264_vpu_config, ptr %19, i32 0, i32 7
  %24 = ptrtoint ptr %intra_period48.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intra_period48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14.not49.i = icmp eq i32 %25, 0
  br i1 %cmp14.not49.i, label %if.else.thread.i.if.else31.i_crit_edge, label %if.else.thread.i.land.lhs.true15.i_crit_edge

if.else.thread.i.land.lhs.true15.i_crit_edge:     ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true15.i

if.else.thread.i.if.else31.i_crit_edge:           ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else31.i

land.lhs.true15.i:                                ; preds = %if.else.thread.i.land.lhs.true15.i_crit_edge, %if.else.i.land.lhs.true15.i_crit_edge
  %26 = phi i32 [ %25, %if.else.thread.i.land.lhs.true15.i_crit_edge ], [ %23, %if.else.i.land.lhs.true15.i_crit_edge ]
  %rem20.i = urem i32 %13, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20.i)
  %cmp21.i = icmp eq i32 %rem20.i, 0
  br i1 %cmp21.i, label %land.lhs.true15.i.h264_frame_type.exit_crit_edge, label %land.lhs.true15.i.if.else31.i_crit_edge

land.lhs.true15.i.if.else31.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else31.i

land.lhs.true15.i.h264_frame_type.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %h264_frame_type.exit

if.else31.i:                                      ; preds = %land.lhs.true15.i.if.else31.i_crit_edge, %if.else.thread.i.if.else31.i_crit_edge, %if.else.i.if.else31.i_crit_edge
  br label %h264_frame_type.exit

h264_frame_type.exit:                             ; preds = %if.else31.i, %land.lhs.true15.i.h264_frame_type.exit_crit_edge, %lor.lhs.false.i.h264_frame_type.exit_crit_edge, %land.lhs.true.i.h264_frame_type.exit_crit_edge
  %retval.0.i129 = phi i32 [ 2, %if.else31.i ], [ 0, %land.lhs.true.i.h264_frame_type.exit_crit_edge ], [ 1, %land.lhs.true15.i.h264_frame_type.exit_crit_edge ], [ 0, %lor.lhs.false.i.h264_frame_type.exit_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i129, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_frame.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_frame, %if.then35)) #6
          to label %do.end43 [label %if.then35], !srcloc !153

if.then35:                                        ; preds = %h264_frame_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ctx36 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %28 = ptrtoint ptr %ctx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx36, align 4
  %id37 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %id37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id37, align 4
  %32 = ptrtoint ptr %frame_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame_info, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %0, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_frame.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef 451, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %h264_frame_type.exit
  %vpu_inst = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7
  %call44 = call i32 @vpu_enc_encode(ptr noundef %vpu_inst, i32 noundef 2, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr noundef nonnull %frame_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %do.end43.cleanup_crit_edge

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %do.end43
  %state = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp = icmp eq i32 %39, 2
  br i1 %cmp, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %bs_size51 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7, i32 4
  %40 = ptrtoint ptr %bs_size51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bs_size51, align 4
  %42 = ptrtoint ptr %bs_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bs_size, align 4
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 1
  %43 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %va, align 4
  %va52 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 8, i32 1
  %45 = ptrtoint ptr %va52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %va52, align 4
  %47 = call ptr @memcpy(ptr %44, ptr %46, i32 %41)
  %48 = ptrtoint ptr %frm_cnt21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frm_cnt21, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %frm_cnt21, align 4
  %50 = ptrtoint ptr %skip_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %skip_frm_cnt, align 4
  %inc55 = add i32 %51, 1
  store i32 %inc55, ptr %skip_frm_cnt, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %ctx1.i = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %52 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx1.i, align 4
  %call.i = call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %53, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end56.do.end62_crit_edge

if.end56.do.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.then.i:                                        ; preds = %if.end56
  %irq_status2.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %irq_status2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_status2.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_frame, %if.then7.i)) #6
          to label %h264_enc_wait_venc_done.exit [label %if.then7.i], !srcloc !153

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx1.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 340, i32 noundef %59, i32 noundef %55) #6
  br label %h264_enc_wait_venc_done.exit

h264_enc_wait_venc_done.exit:                     ; preds = %if.then7.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp58.not = icmp eq i32 %55, 4
  br i1 %cmp58.not, label %if.end67, label %h264_enc_wait_venc_done.exit.do.end62_crit_edge

h264_enc_wait_venc_done.exit.do.end62_crit_edge:  ; preds = %h264_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

do.end62:                                         ; preds = %h264_enc_wait_venc_done.exit.do.end62_crit_edge, %if.end56.do.end62_crit_edge
  %irq_status.0.i135 = phi i32 [ %55, %h264_enc_wait_venc_done.exit.do.end62_crit_edge ], [ 0, %if.end56.do.end62_crit_edge ]
  %60 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx1.i, align 4
  %id65 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %id65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id65, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 472, i32 noundef %63, i32 noundef %irq_status.0.i135) #10
  br label %cleanup

if.end67:                                         ; preds = %h264_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %inst, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 152
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !156
  %67 = call i32 @llvm.bswap.i32(i32 %66) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %68 = ptrtoint ptr %bs_size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %bs_size, align 4
  %69 = ptrtoint ptr %frm_cnt21 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %frm_cnt21, align 4
  %inc70 = add i32 %70, 1
  store i32 %inc70, ptr %frm_cnt21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_frame.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_frame, %if.then83)) #6
          to label %cleanup [label %if.then83], !srcloc !153

if.then83:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx1.i, align 4
  %id85 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %id85 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id85, align 4
  %75 = ptrtoint ptr %frm_cnt21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %frm_cnt21, align 4
  %77 = ptrtoint ptr %bs_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bs_size, align 4
  %is_key_frm = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7, i32 5
  %79 = ptrtoint ptr %is_key_frm to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %is_key_frm, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_frame.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, i32 noundef 480, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.end67, %do.end62, %if.then49, %do.end43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then49 ], [ -5, %do.end62 ], [ %call44, %do.end43.cleanup_crit_edge ], [ 0, %if.then83 ], [ 0, %if.end67 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %frame_info) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @h264_encode_sps(ptr noundef %inst, ptr noundef %bs_buf, ptr nocapture noundef %bs_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_sps.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_sps, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_sps.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef 368, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu_inst = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7
  %call3 = tail call i32 @vpu_enc_encode(ptr noundef %vpu_inst, i32 noundef 0, ptr noundef null, ptr noundef %bs_buf, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %ctx1.i = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1.i, align 4
  %call.i = tail call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %5, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.do.end11_crit_edge

if.end6.do.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then.i:                                        ; preds = %if.end6
  %irq_status2.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %irq_status2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_status2.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_sps, %if.then7.i)) #6
          to label %h264_enc_wait_venc_done.exit [label %if.then7.i], !srcloc !153

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx1.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 340, i32 noundef %11, i32 noundef %7) #6
  br label %h264_enc_wait_venc_done.exit

h264_enc_wait_venc_done.exit:                     ; preds = %if.then7.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end16, label %h264_enc_wait_venc_done.exit.do.end11_crit_edge

h264_enc_wait_venc_done.exit.do.end11_crit_edge:  ; preds = %h264_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end11:                                         ; preds = %h264_enc_wait_venc_done.exit.do.end11_crit_edge, %if.end6.do.end11_crit_edge
  %12 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1.i, align 4
  %id14 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 377, i32 noundef %15, i32 noundef 1) #10
  br label %cleanup

if.end16:                                         ; preds = %h264_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inst, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 152
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !156
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %20 = ptrtoint ptr %bs_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bs_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_sps.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_sps, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !153

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx1.i, align 4
  %id32 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id32, align 4
  %25 = ptrtoint ptr %bs_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bs_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_sps.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef 382, i32 noundef %24, i32 noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end16, %do.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %call3, %do.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @h264_encode_pps(ptr noundef %inst, ptr noundef %bs_buf, ptr nocapture noundef %bs_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_pps.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_pps, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_pps.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef 394, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu_inst = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7
  %call3 = tail call i32 @vpu_enc_encode(ptr noundef %vpu_inst, i32 noundef 1, ptr noundef null, ptr noundef %bs_buf, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %ctx1.i = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1.i, align 4
  %call.i = tail call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %5, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.do.end11_crit_edge

if.end6.do.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then.i:                                        ; preds = %if.end6
  %irq_status2.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %irq_status2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_status2.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_pps, %if.then7.i)) #6
          to label %h264_enc_wait_venc_done.exit [label %if.then7.i], !srcloc !153

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx1.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 340, i32 noundef %11, i32 noundef %7) #6
  br label %h264_enc_wait_venc_done.exit

h264_enc_wait_venc_done.exit:                     ; preds = %if.then7.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end16, label %h264_enc_wait_venc_done.exit.do.end11_crit_edge

h264_enc_wait_venc_done.exit.do.end11_crit_edge:  ; preds = %h264_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end11:                                         ; preds = %h264_enc_wait_venc_done.exit.do.end11_crit_edge, %if.end6.do.end11_crit_edge
  %12 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1.i, align 4
  %id14 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, i32 noundef 403, i32 noundef %15, i32 noundef 2) #10
  br label %cleanup

if.end16:                                         ; preds = %h264_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inst, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 152
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !156
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %20 = ptrtoint ptr %bs_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bs_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_encode_pps.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_encode_pps, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !153

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx1.i, align 4
  %id32 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id32, align 4
  %25 = ptrtoint ptr %bs_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bs_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_encode_pps.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.24, i32 noundef 408, i32 noundef %24, i32 noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end16, %do.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %call3, %do.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_set_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @h264_enc_free_work_buf(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_free_work_buf.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_free_work_buf, %if.then)) #6
          to label %for.inc.8 [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_free_work_buf.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.51, i32 noundef 232, i32 noundef %3) #6
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then, %entry
  %ctx5 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %4 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx5, align 4
  %arrayidx = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 0
  tail call void @mtk_vcodec_mem_free(ptr noundef %5, ptr noundef %arrayidx) #6
  %6 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx5, align 4
  %arrayidx.1 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %7, ptr noundef %arrayidx.1) #6
  %8 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx5, align 4
  %arrayidx.2 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 2
  tail call void @mtk_vcodec_mem_free(ptr noundef %9, ptr noundef %arrayidx.2) #6
  %10 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx5, align 4
  %arrayidx.3 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 3
  tail call void @mtk_vcodec_mem_free(ptr noundef %11, ptr noundef %arrayidx.3) #6
  %12 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx5, align 4
  %arrayidx.4 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %13, ptr noundef %arrayidx.4) #6
  %14 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx5, align 4
  %arrayidx.5 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 5
  tail call void @mtk_vcodec_mem_free(ptr noundef %15, ptr noundef %arrayidx.5) #6
  %16 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx5, align 4
  %arrayidx.6 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 6
  tail call void @mtk_vcodec_mem_free(ptr noundef %17, ptr noundef %arrayidx.6) #6
  %18 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx5, align 4
  %arrayidx.7 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 7
  tail call void @mtk_vcodec_mem_free(ptr noundef %19, ptr noundef %arrayidx.7) #6
  %20 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx5, align 4
  %pps_buf = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 2
  tail call void @mtk_vcodec_mem_free(ptr noundef %21, ptr noundef %pps_buf) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_free_work_buf.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_free_work_buf, %if.then20)) #6
          to label %do.end25 [label %if.then20], !srcloc !153

if.then20:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ctx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx5, align 4
  %id22 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %id22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id22, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_free_work_buf.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.51, i32 noundef 244, i32 noundef %25) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %for.inc.8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @h264_enc_alloc_work_buf(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 8
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %work_bufs = getelementptr inbounds %struct.venc_h264_vsi, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_alloc_work_buf, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 253, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx15 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 9
  %ctx33 = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 7, i32 9
  %vpua37 = getelementptr %struct.venc_h264_vsi, ptr %1, i32 0, i32 1, i32 1, i32 1
  %va41 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 1, i32 1
  %vpua = getelementptr %struct.venc_h264_vsi, ptr %1, i32 0, i32 1, i32 8, i32 1
  %va = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 8, i32 1
  %dma_addr = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 8, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0168 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venc_h264_vpu_buf, ptr %work_bufs, i32 %i.0168
  %size = getelementptr %struct.venc_h264_vpu_buf, ptr %work_bufs, i32 %i.0168, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %arrayidx4 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 %i.0168
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0168)
  %cmp6 = icmp eq i32 %i.0168, 8
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx33, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_handler, align 8
  %15 = ptrtoint ptr %vpua to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vpua, align 4
  %call10 = tail call ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef %14, i32 noundef %16) #6
  %17 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %va, align 4
  %18 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_addr, align 4
  br label %if.end45

if.else:                                          ; preds = %for.body
  %19 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx15, align 4
  %call18 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %20, ptr noundef %arrayidx4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end23

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx15, align 4
  %id26 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id26, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef 285, i32 noundef %24, i32 noundef %i.0168) #10
  br label %err_alloc

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0168)
  %cmp29 = icmp eq i32 %i.0168, 1
  br i1 %cmp29, label %if.then30, label %if.end28.if.end45_crit_edge

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx33, align 4
  %dev34 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev34, align 4
  %fw_handler35 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %fw_handler35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw_handler35, align 8
  %31 = ptrtoint ptr %vpua37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vpua37, align 4
  %call38 = tail call ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef %30, i32 noundef %32) #6
  %33 = ptrtoint ptr %va41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va41, align 4
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %37 = call ptr @memcpy(ptr %34, ptr %call38, i32 %36)
  br label %if.end45

if.end45:                                         ; preds = %if.then30, %if.end28.if.end45_crit_edge, %if.then7
  %dma_addr48 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 %i.0168, i32 2
  %38 = ptrtoint ptr %dma_addr48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr48, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_alloc_work_buf, %if.then62)) #6
          to label %for.inc [label %if.then62], !srcloc !153

if.then62:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx15, align 4
  %id64 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %id64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id64, align 4
  %va67 = getelementptr %struct.venc_h264_inst, ptr %inst, i32 0, i32 1, i32 %i.0168, i32 1
  %45 = ptrtoint ptr %va67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %va67, align 4
  %47 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.52, i32 noundef 311, i32 noundef %44, i32 noundef %i.0168, ptr noundef %46, ptr noundef %dma_addr48, i32 noundef %48) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %if.end45
  %inc = add nuw nsw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pps_buf = getelementptr inbounds %struct.venc_h264_inst, ptr %inst, i32 0, i32 2
  %49 = ptrtoint ptr %pps_buf to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 128, ptr %pps_buf, align 4
  %50 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx15, align 4
  %call80 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %51, ptr noundef %pps_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body91, label %do.end85

do.end85:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx15, align 4
  %id88 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %id88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id88, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52, i32 noundef 318, i32 noundef %55) #10
  br label %err_alloc

do.body91:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h264_enc_alloc_work_buf, %if.then103)) #6
          to label %cleanup [label %if.then103], !srcloc !153

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx15, align 4
  %id105 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %id105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id105, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.52, i32 noundef 322, i32 noundef %59) #6
  br label %cleanup

err_alloc:                                        ; preds = %do.end85, %do.end23
  %ret.0 = phi i32 [ %call18, %do.end23 ], [ %call80, %do.end85 ]
  tail call fastcc void @h264_enc_free_work_buf(ptr noundef %inst)
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.then103, %do.body91
  %retval.0 = phi i32 [ %ret.0, %err_alloc ], [ 0, %if.then103 ], [ 0, %do.body91 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_mem_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @venc_h264_if, !1, !"venc_h264_if", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 703, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 516, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @h264_enc_init.__UNIQUE_ID_ddebug314, !3, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 522, i32 2}
!11 = !{ptr @h264_enc_init.__UNIQUE_ID_ddebug315, !10, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 542, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @h264_enc_encode.__UNIQUE_ID_ddebug316, !14, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 577, i32 3}
!20 = !{ptr @h264_enc_encode.__UNIQUE_ID_ddebug317, !19, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 604, i32 3}
!24 = !{ptr @h264_enc_encode.__UNIQUE_ID_ddebug318, !23, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 614, i32 3}
!28 = !{ptr @h264_enc_encode._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @h264_enc_encode._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 622, i32 2}
!32 = !{ptr @h264_enc_encode.__UNIQUE_ID_ddebug319, !31, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 368, i32 2}
!36 = !{ptr @h264_encode_sps.__UNIQUE_ID_ddebug306, !35, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 376, i32 3}
!39 = !{ptr @h264_encode_sps._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @h264_encode_sps._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 382, i32 2}
!43 = !{ptr @h264_encode_sps.__UNIQUE_ID_ddebug307, !42, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 340, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @h264_enc_wait_venc_done.__UNIQUE_ID_ddebug305, !46, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!49 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 394, i32 2}
!52 = !{ptr @h264_encode_pps.__UNIQUE_ID_ddebug308, !51, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!53 = !{ptr @h264_encode_pps._entry, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 402, i32 3}
!55 = !{ptr @h264_encode_pps._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @h264_encode_pps.__UNIQUE_ID_ddebug309, !57, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 408, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 444, i32 2}
!60 = !{ptr @h264_encode_frame.__UNIQUE_ID_ddebug310, !59, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 445, i32 2}
!63 = !{ptr @h264_encode_frame.__UNIQUE_ID_ddebug311, !62, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 449, i32 2}
!67 = !{ptr @h264_encode_frame.__UNIQUE_ID_ddebug312, !66, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!68 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 472, i32 3}
!71 = !{ptr @h264_encode_frame._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @h264_encode_frame._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 479, i32 2}
!75 = !{ptr @h264_encode_frame.__UNIQUE_ID_ddebug313, !74, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!76 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 491, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @h264_encode_filler._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @h264_encode_filler._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @h264_filler_marker, !83, !"h264_filler_marker", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 22, i32 19}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 634, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @h264_enc_set_param.__UNIQUE_ID_ddebug320, !85, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!88 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 667, i32 3}
!91 = !{ptr @h264_enc_set_param.__UNIQUE_ID_ddebug321, !90, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!92 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @h264_enc_set_param.__UNIQUE_ID_ddebug322, !94, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 680, i32 2}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 174, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @h264_get_profile._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @h264_get_profile._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 177, i32 3}
!102 = !{ptr @h264_get_profile._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @h264_get_profile._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 180, i32 3}
!106 = !{ptr @h264_get_profile.__UNIQUE_ID_ddebug298, !105, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!107 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 190, i32 3}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @h264_get_level._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @h264_get_level._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 223, i32 3}
!115 = !{ptr @h264_get_level.__UNIQUE_ID_ddebug299, !114, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!116 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 232, i32 2}
!119 = !{ptr @h264_enc_free_work_buf.__UNIQUE_ID_ddebug300, !118, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!120 = !{ptr @h264_enc_free_work_buf.__UNIQUE_ID_ddebug301, !121, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 244, i32 2}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 253, i32 2}
!124 = !{ptr @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug302, !123, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 284, i32 5}
!127 = !{ptr @h264_enc_alloc_work_buf._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @h264_enc_alloc_work_buf._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 307, i32 3}
!131 = !{ptr @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug303, !130, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!132 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 318, i32 3}
!135 = !{ptr @h264_enc_alloc_work_buf._entry.56, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @h264_enc_alloc_work_buf._entry_ptr.58, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @h264_enc_alloc_work_buf.__UNIQUE_ID_ddebug304, !138, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 322, i32 2}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 690, i32 2}
!141 = !{ptr @h264_enc_deinit.__UNIQUE_ID_ddebug323, !140, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!142 = !{ptr @h264_enc_deinit.__UNIQUE_ID_ddebug324, !143, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_h264_if.c", i32 697, i32 2}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148734658, i64 2148734663, i64 2148734676, i64 2148734720, i64 2148734754, i64 2148734775}
!154 = !{!"auto-init"}
!155 = !{i8 0, i8 2}
!156 = !{i64 4215884}
!157 = !{i64 2156519080}
