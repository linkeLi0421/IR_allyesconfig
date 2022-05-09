; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdec_common_if = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vdec_h264_slice_inst = type { i32, ptr, %struct.mtk_vcodec_mem, [32 x %struct.mtk_vcodec_mem], %struct.vdec_vpu_inst, %struct.vdec_h264_vsi, %struct.mtk_h264_dec_slice_param, [16 x %struct.v4l2_h264_dpb_entry] }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.vdec_vpu_inst = type { i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vdec_h264_vsi = type { i64, [32 x i64], %struct.vdec_h264_dec_info, %struct.vdec_pic_info, %struct.v4l2_rect, %struct.mtk_h264_dec_slice_param }
%struct.vdec_h264_dec_info = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mtk_h264_dec_slice_param = type { %struct.mtk_h264_sps_param, %struct.mtk_h264_pps_param, %struct.slice_api_h264_scaling_matrix, %struct.slice_api_h264_decode_param, [16 x %struct.mtk_h264_dpb_info] }
%struct.mtk_h264_sps_param = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i8, i8, i8, i8, i8, [3 x i8] }
%struct.mtk_h264_pps_param = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.slice_api_h264_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]] }
%struct.slice_api_h264_decode_param = type { [16 x %struct.slice_h264_dpb_entry], i16, i16, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32 }
%struct.slice_h264_dpb_entry = type { i64, i16, i16, i32, i32, i32 }
%struct.mtk_h264_dpb_info = type { i32, i32, i32, i32 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_h264_reflist_builder = type { [16 x %struct.anon.121], i32, [16 x i8], i8 }
%struct.anon.121 = type { i32, i32, i32, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_h264_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_ctrl_h264_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]] }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mtk_video_fmt = type { i32, i32, i32, i32 }

@vdec_h264_slice_if = dso_local constant { %struct.vdec_common_if, [16 x i8] } { %struct.vdec_common_if { ptr @vdec_h264_slice_init, ptr @vdec_h264_slice_decode, ptr @vdec_h264_slice_get_param, ptr @vdec_h264_slice_deinit }, [16 x i8] zeroinitializer }, align 32
@vdec_h264_slice_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vdec_h264 init err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vdec_h264_slice_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c\00", [38 x i8] zeroinitializer }, align 32
@vdec_h264_slice_init._entry_ptr = internal global ptr @vdec_h264_slice_init._entry, section ".printk_index", align 4
@vdec_h264_slice_init.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[MTK_VCODEC][%d]: struct size = %zu,%zu,%zu,%zu\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s(),%d: [MTK_VCODEC][%d]: struct size = %zu,%zu,%zu,%zu\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@vdec_h264_slice_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[MTK_VCODEC][%d]: H264 Instance >> %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(),%d: [MTK_VCODEC][%d]: H264 Instance >> %p\0A\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@allocate_predication_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: failed to allocate ppl buf\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allocate_predication_buf\00", [39 x i8] zeroinitializer }, align 32
@allocate_predication_buf._entry_ptr = internal global ptr @allocate_predication_buf._entry, section ".printk_index", align 4
@vdec_h264_slice_decode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdec_h264_slice_decode\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[MTK_VCODEC][%d]: + [%d] FB y_dma=%llx c_dma=%llx va=%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(),%d: [MTK_VCODEC][%d]: + [%d] FB y_dma=%llx c_dma=%llx va=%p\0A\00", [62 x i8] zeroinitializer }, align 32
@vdec_h264_slice_decode.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: - resolution changed -\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - resolution changed -\0A\00", [45 x i8] zeroinitializer }, align 32
@vdec_h264_slice_decode.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[MTK_VCODEC][%d]: \0A - NALU[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(),%d: [MTK_VCODEC][%d]: \0A - NALU[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@vdec_h264_slice_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: \0A - NALU[%d] err=%d -\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@vdec_h264_slice_decode._entry_ptr = internal global ptr @vdec_h264_slice_decode._entry, section ".printk_index", align 4
@get_h264_dpb_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Reference invalid: dpb_index(%lld) reference_ts(%lld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_h264_dpb_list\00", [46 x i8] zeroinitializer }, align 32
@get_h264_dpb_list._entry_ptr = internal global ptr @get_h264_dpb_list._entry, section ".printk_index", align 4
@alloc_mv_buf.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alloc_mv_buf\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"size = 0x%x\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(),%d: size = 0x%x\00", [43 x i8] zeroinitializer }, align 32
@alloc_mv_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: failed to allocate mv buf\0A\00", [33 x i8] zeroinitializer }, align 32
@alloc_mv_buf._entry_ptr = internal global ptr @alloc_mv_buf._entry, section ".printk_index", align 4
@vdec_h264_slice_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: invalid get parameter type=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vdec_h264_slice_get_param\00", [38 x i8] zeroinitializer }, align 32
@vdec_h264_slice_get_param._entry_ptr = internal global ptr @vdec_h264_slice_get_param._entry, section ".printk_index", align 4
@get_pic_info.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_pic_info\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[MTK_VCODEC][%d]: Y/C(%d, %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(),%d: [MTK_VCODEC][%d]: Y/C(%d, %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ResChg: (%d %d) : old(%d, %d) -> new(%d, %d)\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: ResChg: (%d %d) : old(%d, %d) -> new(%d, %d)\00", [42 x i8] zeroinitializer }, align 32
@get_dpb_size.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_dpb_size\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[MTK_VCODEC][%d]: sz=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(),%d: [MTK_VCODEC][%d]: sz=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@get_crop_info.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_crop_info\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: l=%d, t=%d, w=%d, h=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: l=%d, t=%d, w=%d, h=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@vdec_h264_slice_deinit.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdec_h264_slice_deinit\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@free_predication_buf.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.2, ptr @.str.40, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"free_predication_buf\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"vdec_h264_slice_if\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 769, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 628, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 640, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 646, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 503, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 691, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 712, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 736, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 740, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 244, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 530, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 538, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 762, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 573, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 576, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 586, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 609, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 602, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 663, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [61 x i8] c"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 515, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @alloc_mv_buf._entry, ptr @alloc_mv_buf._entry_ptr, ptr @allocate_predication_buf._entry, ptr @allocate_predication_buf._entry_ptr, ptr @get_h264_dpb_list._entry, ptr @get_h264_dpb_list._entry_ptr, ptr @vdec_h264_slice_decode._entry, ptr @vdec_h264_slice_decode._entry_ptr, ptr @vdec_h264_slice_get_param._entry, ptr @vdec_h264_slice_get_param._entry_ptr, ptr @vdec_h264_slice_init._entry, ptr @vdec_h264_slice_init._entry_ptr, ptr @vdec_h264_slice_if, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_slice_if to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_slice_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_predication_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_slice_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_h264_dpb_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_mv_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_slice_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_h264_slice_init(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3936) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx1, align 4
  %vpu = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %vpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vpu, align 4
  %ctx3 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %ctx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %ctx3, align 8
  %call5 = tail call i32 @vpu_dec_init(ptr noundef %vpu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 4
  %id9 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 628, i32 noundef %7, i32 noundef %call5) #9
  br label %error_free_inst

if.end11:                                         ; preds = %if.end
  %vsi_ctx = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 5
  %vsi = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi, align 8
  %10 = call ptr @memcpy(ptr %vsi_ctx, ptr %9, i32 1656)
  %resolution_changed = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 1
  %11 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %resolution_changed, align 4
  %realloc_mv_buf = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2
  %12 = ptrtoint ptr %realloc_mv_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %realloc_mv_buf, align 8
  %pred_buf.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %pred_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262144, ptr %pred_buf.i, align 8
  %14 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx1, align 4
  %call.i = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %15, ptr noundef %pred_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body20, label %error_deinit

do.body20:                                        ; preds = %if.end11
  %dma_addr.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %call7.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.i, align 8
  %conv.i = zext i32 %17 to i64
  %18 = ptrtoint ptr %vsi_ctx to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv.i, ptr %vsi_ctx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_slice_init.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_init, %if.then26)) #5
          to label %do.body32 [label %if.then26], !srcloc !98

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx1, align 4
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_slice_init.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 644, i32 noundef %22, i32 noundef 24, i32 noundef 16, i32 noundef 1272, i32 noundef 16) #5
  br label %do.body32

do.body32:                                        ; preds = %if.then26, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_slice_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_init, %if.then44)) #5
          to label %do.end49 [label %if.then44], !srcloc !98

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx1, align 4
  %id46 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id46, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_slice_init.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 646, i32 noundef %26, ptr noundef nonnull %call7.i.i) #5
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %27 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %drv_handle, align 4
  br label %cleanup

error_deinit:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx1, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 503, i32 noundef %31) #9
  %call51 = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #5
  br label %error_free_inst

error_free_inst:                                  ; preds = %error_deinit, %do.end
  %err.0 = phi i32 [ %call5, %do.end ], [ %call.i, %error_deinit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %error_free_inst, %do.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error_free_inst ], [ 0, %do.end49 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_h264_slice_decode(ptr noundef %h_vdec, ptr noundef readonly %bs, ptr noundef %fb, ptr nocapture noundef writeonly %res_chg) #0 align 64 {
entry:
  %new.i.i = alloca [1 x i32], align 4
  %in_use.i.i = alloca [1 x i32], align 4
  %used.i.i = alloca [1 x i32], align 4
  %reflist_builder.i = alloca %struct.v4l2_h264_reflist_builder, align 4
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ctrl_hdl.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 19
  %call.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750215) #5
  %p_cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i, i32 0, i32 26
  %2 = ptrtoint ptr %p_cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_cur.i, align 4
  %vpu1 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data, align 4, !annotation !99
  %5 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !99
  %tobool.not = icmp eq ptr %bs, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @vpu_dec_reset(ptr noundef %vpu1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %fb, null
  br i1 %tobool3.not, label %if.end.cond.end9_crit_edge, label %cond.true5

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end9

cond.true5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %fb, i32 0, i32 2
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %8 to i64
  %dma_addr6 = getelementptr inbounds %struct.vdec_fb, ptr %fb, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %dma_addr6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr6, align 4
  %conv7 = zext i32 %10 to i64
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %if.end.cond.end9_crit_edge
  %cond167 = phi i64 [ %conv, %cond.true5 ], [ 0, %if.end.cond.end9_crit_edge ]
  %cond10 = phi i64 [ %conv7, %cond.true5 ], [ 0, %if.end.cond.end9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_slice_decode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_decode, %if.then15)) #5
          to label %do.end [label %if.then15], !srcloc !98

if.then15:                                        ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %15 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_vdec, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %h_vdec, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_slice_decode.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 692, i32 noundef %14, i32 noundef %inc, i64 noundef %cond167, i64 noundef %cond10, ptr noundef %fb) #5
  br label %do.end

do.end:                                           ; preds = %if.then15, %cond.end9
  %dma_addr18 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 2
  %17 = ptrtoint ptr %dma_addr18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr18, align 4
  %conv19 = zext i32 %18 to i64
  %bs_dma = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2, i32 4
  %19 = ptrtoint ptr %bs_dma to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv19, ptr %bs_dma, align 8
  %y_fb_dma22 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2, i32 5
  %20 = ptrtoint ptr %y_fb_dma22 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond167, ptr %y_fb_dma22, align 8
  %c_fb_dma25 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2, i32 6
  %21 = ptrtoint ptr %c_fb_dma25 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %cond10, ptr %c_fb_dma25, align 8
  %22 = ptrtoint ptr %fb to i32
  %conv26 = zext i32 %22 to i64
  %vdec_fb_va = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2, i32 7
  %23 = ptrtoint ptr %vdec_fb_va to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv26, ptr %vdec_fb_va, align 8
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %ctrl_hdl.i.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %25, i32 0, i32 19
  %call.i.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i.i, i32 noundef 10750215) #5
  %p_cur.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i.i, i32 0, i32 26
  %26 = ptrtoint ptr %p_cur.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_cur.i.i, align 4
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %ctrl_hdl.i47.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 19
  %call.i48.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i47.i, i32 noundef 10750210) #5
  %p_cur.i49.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i48.i, i32 0, i32 26
  %30 = ptrtoint ptr %p_cur.i49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_cur.i49.i, align 4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %ctrl_hdl.i50.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %33, i32 0, i32 19
  %call.i51.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i50.i, i32 noundef 10750211) #5
  %p_cur.i52.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i51.i, i32 0, i32 26
  %34 = ptrtoint ptr %p_cur.i52.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p_cur.i52.i, align 4
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %ctrl_hdl.i53.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %37, i32 0, i32 19
  %call.i54.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i53.i, i32 noundef 10750212) #5
  %p_cur.i55.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i54.i, i32 0, i32 26
  %38 = ptrtoint ptr %p_cur.i55.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_cur.i55.i, align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %reflist_builder.i) #5
  %40 = call ptr @memset(ptr %reflist_builder.i, i32 255, i32 280)
  %dpb.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i.i) #5
  %41 = ptrtoint ptr %new.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %new.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_use.i.i) #5
  %42 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %in_use.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used.i.i) #5
  %43 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %used.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.end
  %i.0124.i.i = phi i32 [ 0, %do.end ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.0124.i.i, i32 7
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %i.0124.i.i, ptr noundef nonnull %in_use.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i, align 4
  %and3.i.i = and i32 %47, -3
  store i32 %and3.i.i, ptr %flags.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0124.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.body6.i.preheader.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body6.i.preheader.i:                          ; preds = %if.end.i.i
  %vsi_ctx = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %cleanup32.i.i.for.body6.i.i_crit_edge, %for.body6.i.preheader.i
  %i.1130.i.i = phi i32 [ %inc35.i.i, %cleanup32.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body6.i.preheader.i ]
  %arrayidx8.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %27, i32 0, i32 %i.1130.i.i
  %flags9.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %27, i32 0, i32 %i.1130.i.i, i32 7
  %48 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags9.i.i, align 4
  %and10.i.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %for.body6.i.i.cleanup32.i.i_crit_edge, label %if.end13.i.i

for.body6.i.i.cleanup32.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32.i.i

if.end13.i.i:                                     ; preds = %for.body6.i.i
  %call.i56.i = call i32 @_find_next_bit_be(ptr noundef nonnull %in_use.i.i, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i56.i)
  %cmp16127.i.i = icmp ult i32 %call.i56.i, 16
  br i1 %cmp16127.i.i, label %for.body17.lr.ph.i.i, label %if.end13.i.i.for.end27.i.i_crit_edge

if.end13.i.i.for.end27.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end27.i.i

for.body17.lr.ph.i.i:                             ; preds = %if.end13.i.i
  %top_field_order_cnt1.i.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %27, i32 0, i32 %i.1130.i.i, i32 5
  %bottom_field_order_cnt2.i.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %27, i32 0, i32 %i.1130.i.i, i32 6
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.inc24.i.i.for.body17.i.i_crit_edge, %for.body17.lr.ph.i.i
  %j.0128.i.i = phi i32 [ %call.i56.i, %for.body17.lr.ph.i.i ], [ %call26.i.i, %for.inc24.i.i.for.body17.i.i_crit_edge ]
  %top_field_order_cnt.i.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %j.0128.i.i, i32 5
  %50 = ptrtoint ptr %top_field_order_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %top_field_order_cnt.i.i.i, align 4
  %52 = ptrtoint ptr %top_field_order_cnt1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %top_field_order_cnt1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.i.i.i = icmp eq i32 %51, %53
  br i1 %cmp.i.i.i, label %dpb_entry_match.exit.i.i, label %for.body17.i.i.for.inc24.i.i_crit_edge

for.body17.i.i.for.inc24.i.i_crit_edge:           ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.i.i

dpb_entry_match.exit.i.i:                         ; preds = %for.body17.i.i
  %bottom_field_order_cnt.i.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %j.0128.i.i, i32 6
  %54 = ptrtoint ptr %bottom_field_order_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bottom_field_order_cnt.i.i.i, align 8
  %56 = ptrtoint ptr %bottom_field_order_cnt2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bottom_field_order_cnt2.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp3.i.i.i = icmp eq i32 %55, %57
  br i1 %cmp3.i.i.i, label %for.end27.thread.i.i, label %dpb_entry_match.exit.i.i.for.inc24.i.i_crit_edge

dpb_entry_match.exit.i.i.for.inc24.i.i_crit_edge: ; preds = %dpb_entry_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.i.i

for.end27.thread.i.i:                             ; preds = %dpb_entry_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18.le.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %j.0128.i.i
  %58 = call ptr @memcpy(ptr %arrayidx18.le.i.i, ptr %arrayidx8.i.i, i32 32)
  call void @_set_bit(i32 noundef %j.0128.i.i, ptr noundef nonnull %used.i.i) #5
  call void @_clear_bit(i32 noundef %j.0128.i.i, ptr noundef nonnull %in_use.i.i) #5
  br label %cleanup32.i.i

for.inc24.i.i:                                    ; preds = %dpb_entry_match.exit.i.i.for.inc24.i.i_crit_edge, %for.body17.i.i.for.inc24.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %j.0128.i.i, 1
  %call26.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %in_use.i.i, i32 noundef 16, i32 noundef %add.i.i) #5
  %cmp16.i.i = icmp ult i32 %call26.i.i, 16
  br i1 %cmp16.i.i, label %for.inc24.i.i.for.body17.i.i_crit_edge, label %for.inc24.i.i.for.end27.i.i_crit_edge

for.inc24.i.i.for.end27.i.i_crit_edge:            ; preds = %for.inc24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end27.i.i

for.inc24.i.i.for.body17.i.i_crit_edge:           ; preds = %for.inc24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.i.i

for.end27.i.i:                                    ; preds = %for.inc24.i.i.for.end27.i.i_crit_edge, %if.end13.i.i.for.end27.i.i_crit_edge
  %j.0.lcssa.i.i = phi i32 [ %call.i56.i, %if.end13.i.i.for.end27.i.i_crit_edge ], [ %call26.i.i, %for.inc24.i.i.for.end27.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.0.lcssa.i.i)
  %cmp28.i.i = icmp eq i32 %j.0.lcssa.i.i, 16
  br i1 %cmp28.i.i, label %if.then29.i.i, label %for.end27.i.i.cleanup32.i.i_crit_edge

for.end27.i.i.cleanup32.i.i_crit_edge:            ; preds = %for.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32.i.i

if.then29.i.i:                                    ; preds = %for.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %i.1130.i.i, ptr noundef nonnull %new.i.i) #5
  br label %cleanup32.i.i

cleanup32.i.i:                                    ; preds = %if.then29.i.i, %for.end27.i.i.cleanup32.i.i_crit_edge, %for.end27.thread.i.i, %for.body6.i.i.cleanup32.i.i_crit_edge
  %inc35.i.i = add nuw nsw i32 %i.1130.i.i, 1
  %exitcond136.not.i.i = icmp eq i32 %inc35.i.i, 16
  br i1 %exitcond136.not.i.i, label %for.end36.i.i, label %cleanup32.i.i.for.body6.i.i_crit_edge

cleanup32.i.i.for.body6.i.i_crit_edge:            ; preds = %cleanup32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i.i

for.end36.i.i:                                    ; preds = %cleanup32.i.i
  %h264_slice_param.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6
  %decode_params.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3
  %call38.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %new.i.i, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call38.i.i)
  %cmp40133.i.i = icmp ult i32 %call38.i.i, 16
  br i1 %cmp40133.i.i, label %for.end36.i.i.for.body41.i.i_crit_edge, label %for.end36.i.i.update_dpb.exit.i_crit_edge

for.end36.i.i.update_dpb.exit.i_crit_edge:        ; preds = %for.end36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_dpb.exit.i

for.end36.i.i.for.body41.i.i_crit_edge:           ; preds = %for.end36.i.i
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %if.end72.i.i.for.body41.i.i_crit_edge, %for.end36.i.i.for.body41.i.i_crit_edge
  %i.2134.i.i = phi i32 [ %call82.i.i, %if.end72.i.i.for.body41.i.i_crit_edge ], [ %call38.i.i, %for.end36.i.i.for.body41.i.i_crit_edge ]
  %call47.i.i = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %used.i.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call47.i.i)
  %cmp48.i.i = icmp ugt i32 %call47.i.i, 15
  br i1 %cmp48.i.i, label %do.end.i.i, label %if.end72.i.i, !prof !100

do.end.i.i:                                       ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 433, i32 noundef 9, ptr noundef null) #5
  br label %update_dpb.exit.i

if.end72.i.i:                                     ; preds = %for.body41.i.i
  %arrayidx44.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %27, i32 0, i32 %i.2134.i.i
  %arrayidx73.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %call47.i.i
  %59 = call ptr @memcpy(ptr %arrayidx73.i.i, ptr %arrayidx44.i.i, i32 32)
  call void @_set_bit(i32 noundef %call47.i.i, ptr noundef nonnull %used.i.i) #5
  %add81.i.i = add nuw nsw i32 %i.2134.i.i, 1
  %call82.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %new.i.i, i32 noundef 16, i32 noundef %add81.i.i) #5
  %cmp40.i.i = icmp ult i32 %call82.i.i, 16
  br i1 %cmp40.i.i, label %if.end72.i.i.for.body41.i.i_crit_edge, label %if.end72.i.i.update_dpb.exit.i_crit_edge

if.end72.i.i.update_dpb.exit.i_crit_edge:         ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_dpb.exit.i

if.end72.i.i.for.body41.i.i_crit_edge:            ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i.i

update_dpb.exit.i:                                ; preds = %if.end72.i.i.update_dpb.exit.i_crit_edge, %do.end.i.i, %for.end36.i.i.update_dpb.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_use.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i.i) #5
  %chroma_format_idc.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 4
  %60 = ptrtoint ptr %chroma_format_idc.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chroma_format_idc.i.i, align 4
  %62 = ptrtoint ptr %h264_slice_param.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %h264_slice_param.i, align 4
  %bit_depth_luma_minus8.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 5
  %63 = ptrtoint ptr %bit_depth_luma_minus8.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bit_depth_luma_minus8.i.i, align 1
  %bit_depth_luma_minus82.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 1
  %65 = ptrtoint ptr %bit_depth_luma_minus82.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %bit_depth_luma_minus82.i.i, align 1
  %bit_depth_chroma_minus8.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 6
  %66 = ptrtoint ptr %bit_depth_chroma_minus8.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bit_depth_chroma_minus8.i.i, align 2
  %bit_depth_chroma_minus83.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 2
  %68 = ptrtoint ptr %bit_depth_chroma_minus83.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %bit_depth_chroma_minus83.i.i, align 2
  %log2_max_frame_num_minus4.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 7
  %69 = ptrtoint ptr %log2_max_frame_num_minus4.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %log2_max_frame_num_minus4.i.i, align 1
  %log2_max_frame_num_minus44.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 3
  %71 = ptrtoint ptr %log2_max_frame_num_minus44.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %log2_max_frame_num_minus44.i.i, align 1
  %pic_order_cnt_type.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 8
  %72 = ptrtoint ptr %pic_order_cnt_type.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pic_order_cnt_type.i.i, align 4
  %pic_order_cnt_type5.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 4
  %74 = ptrtoint ptr %pic_order_cnt_type5.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %pic_order_cnt_type5.i.i, align 4
  %log2_max_pic_order_cnt_lsb_minus4.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 9
  %75 = ptrtoint ptr %log2_max_pic_order_cnt_lsb_minus4.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %log2_max_pic_order_cnt_lsb_minus4.i.i, align 1
  %log2_max_pic_order_cnt_lsb_minus46.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 5
  %77 = ptrtoint ptr %log2_max_pic_order_cnt_lsb_minus46.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %log2_max_pic_order_cnt_lsb_minus46.i.i, align 1
  %max_num_ref_frames.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 10
  %78 = ptrtoint ptr %max_num_ref_frames.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %max_num_ref_frames.i.i, align 2
  %max_num_ref_frames7.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 6
  %80 = ptrtoint ptr %max_num_ref_frames7.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %max_num_ref_frames7.i.i, align 2
  %pic_width_in_mbs_minus1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 15
  %81 = ptrtoint ptr %pic_width_in_mbs_minus1.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pic_width_in_mbs_minus1.i.i, align 4
  %pic_width_in_mbs_minus18.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 8
  %83 = ptrtoint ptr %pic_width_in_mbs_minus18.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %pic_width_in_mbs_minus18.i.i, align 4
  %pic_height_in_map_units_minus1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 16
  %84 = ptrtoint ptr %pic_height_in_map_units_minus1.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pic_height_in_map_units_minus1.i.i, align 2
  %pic_height_in_map_units_minus19.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 9
  %86 = ptrtoint ptr %pic_height_in_map_units_minus19.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %pic_height_in_map_units_minus19.i.i, align 2
  %flags.i57.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %31, i32 0, i32 17
  %87 = ptrtoint ptr %flags.i57.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i57.i, align 4
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %separate_colour_plane_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 7
  %91 = ptrtoint ptr %separate_colour_plane_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %separate_colour_plane_flag.i.i, align 1
  %92 = load i32, ptr %flags.i57.i, align 4
  %93 = trunc i32 %92 to i8
  %94 = lshr i8 %93, 1
  %95 = and i8 %94, 1
  %qpprime_y_zero_transform_bypass_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 11
  %96 = ptrtoint ptr %qpprime_y_zero_transform_bypass_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %qpprime_y_zero_transform_bypass_flag.i.i, align 4
  %97 = load i32, ptr %flags.i57.i, align 4
  %98 = trunc i32 %97 to i8
  %99 = lshr i8 %98, 2
  %100 = and i8 %99, 1
  %delta_pic_order_always_zero_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 12
  %101 = ptrtoint ptr %delta_pic_order_always_zero_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %delta_pic_order_always_zero_flag.i.i, align 1
  %102 = load i32, ptr %flags.i57.i, align 4
  %103 = trunc i32 %102 to i8
  %104 = lshr i8 %103, 4
  %105 = and i8 %104, 1
  %frame_mbs_only_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 13
  %106 = ptrtoint ptr %frame_mbs_only_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %frame_mbs_only_flag.i.i, align 2
  %107 = load i32, ptr %flags.i57.i, align 4
  %108 = trunc i32 %107 to i8
  %109 = lshr i8 %108, 5
  %110 = and i8 %109, 1
  %mb_adaptive_frame_field_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 14
  %111 = ptrtoint ptr %mb_adaptive_frame_field_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %mb_adaptive_frame_field_flag.i.i, align 1
  %112 = load i32, ptr %flags.i57.i, align 4
  %113 = trunc i32 %112 to i8
  %114 = lshr i8 %113, 6
  %115 = and i8 %114, 1
  %direct_8x8_inference_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 0, i32 15
  %116 = ptrtoint ptr %direct_8x8_inference_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %direct_8x8_inference_flag.i.i, align 4
  %pps13.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1
  %num_ref_idx_l0_default_active_minus1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 3
  %117 = ptrtoint ptr %num_ref_idx_l0_default_active_minus1.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %num_ref_idx_l0_default_active_minus1.i.i, align 1
  %119 = ptrtoint ptr %pps13.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %pps13.i, align 1
  %num_ref_idx_l1_default_active_minus1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 4
  %120 = ptrtoint ptr %num_ref_idx_l1_default_active_minus1.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %num_ref_idx_l1_default_active_minus1.i.i, align 2
  %num_ref_idx_l1_default_active_minus12.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 1
  %122 = ptrtoint ptr %num_ref_idx_l1_default_active_minus12.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %num_ref_idx_l1_default_active_minus12.i.i, align 1
  %weighted_bipred_idc.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 5
  %123 = ptrtoint ptr %weighted_bipred_idc.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %weighted_bipred_idc.i.i, align 1
  %weighted_bipred_idc3.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 2
  %125 = ptrtoint ptr %weighted_bipred_idc3.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %weighted_bipred_idc3.i.i, align 1
  %pic_init_qp_minus26.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 6
  %126 = ptrtoint ptr %pic_init_qp_minus26.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pic_init_qp_minus26.i.i, align 2
  %pic_init_qp_minus264.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 3
  %128 = ptrtoint ptr %pic_init_qp_minus264.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %pic_init_qp_minus264.i.i, align 1
  %chroma_qp_index_offset.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 8
  %129 = ptrtoint ptr %chroma_qp_index_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %chroma_qp_index_offset.i.i, align 2
  %chroma_qp_index_offset5.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 4
  %131 = ptrtoint ptr %chroma_qp_index_offset5.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %chroma_qp_index_offset5.i.i, align 1
  %second_chroma_qp_index_offset.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 9
  %132 = ptrtoint ptr %second_chroma_qp_index_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %second_chroma_qp_index_offset.i.i, align 1
  %second_chroma_qp_index_offset6.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 5
  %134 = ptrtoint ptr %second_chroma_qp_index_offset6.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %second_chroma_qp_index_offset6.i.i, align 1
  %flags.i58.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %35, i32 0, i32 10
  %135 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %flags.i58.i, align 2
  %137 = trunc i16 %136 to i8
  %138 = and i8 %137, 1
  %entropy_coding_mode_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 6
  %139 = ptrtoint ptr %entropy_coding_mode_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %entropy_coding_mode_flag.i.i, align 1
  %140 = load i16, ptr %flags.i58.i, align 2
  %141 = trunc i16 %140 to i8
  %142 = lshr i8 %141, 1
  %143 = and i8 %142, 1
  %pic_order_present_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 7
  %144 = ptrtoint ptr %pic_order_present_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %pic_order_present_flag.i.i, align 1
  %145 = load i16, ptr %flags.i58.i, align 2
  %146 = trunc i16 %145 to i8
  %147 = lshr i8 %146, 2
  %148 = and i8 %147, 1
  %weighted_pred_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 10
  %149 = ptrtoint ptr %weighted_pred_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %weighted_pred_flag.i.i, align 1
  %150 = load i16, ptr %flags.i58.i, align 2
  %151 = trunc i16 %150 to i8
  %152 = lshr i8 %151, 3
  %153 = and i8 %152, 1
  %deblocking_filter_control_present_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 8
  %154 = ptrtoint ptr %deblocking_filter_control_present_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %deblocking_filter_control_present_flag.i.i, align 1
  %155 = load i16, ptr %flags.i58.i, align 2
  %156 = trunc i16 %155 to i8
  %157 = lshr i8 %156, 4
  %158 = and i8 %157, 1
  %constrained_intra_pred_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 9
  %159 = ptrtoint ptr %constrained_intra_pred_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %constrained_intra_pred_flag.i.i, align 1
  %160 = load i16, ptr %flags.i58.i, align 2
  %161 = trunc i16 %160 to i8
  %162 = lshr i8 %161, 5
  %163 = and i8 %162, 1
  %redundant_pic_cnt_present_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 11
  %164 = ptrtoint ptr %redundant_pic_cnt_present_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %redundant_pic_cnt_present_flag.i.i, align 1
  %165 = load i16, ptr %flags.i58.i, align 2
  %166 = trunc i16 %165 to i8
  %167 = lshr i8 %166, 6
  %168 = and i8 %167, 1
  %transform_8x8_mode_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 12
  %169 = ptrtoint ptr %transform_8x8_mode_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %transform_8x8_mode_flag.i.i, align 1
  %170 = load i16, ptr %flags.i58.i, align 2
  %171 = trunc i16 %170 to i8
  %172 = lshr i8 %171, 7
  %scaling_matrix_present_flag.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 1, i32 13
  %173 = ptrtoint ptr %scaling_matrix_present_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %scaling_matrix_present_flag.i.i, align 1
  %scaling_matrix14.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 2
  %174 = call ptr @memcpy(ptr %scaling_matrix14.i, ptr %39, i32 96)
  %scaling_list_8x8.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 2, i32 1
  %scaling_list_8x84.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_scaling_matrix, ptr %39, i32 0, i32 1
  %175 = call ptr @memcpy(ptr %scaling_list_8x8.i.i, ptr %scaling_list_8x84.i.i, i32 384)
  br label %for.body.i62.i

for.body.i62.i:                                   ; preds = %for.body.i62.i.for.body.i62.i_crit_edge, %update_dpb.exit.i
  %i.037.i.i = phi i32 [ 0, %update_dpb.exit.i ], [ %inc.i60.i, %for.body.i62.i.for.body.i62.i_crit_edge ]
  %arrayidx.i.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %i.037.i.i
  %arrayidx2.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.037.i.i
  %176 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %arrayidx2.i.i, align 8
  %178 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %177, ptr %arrayidx.i.i, align 8
  %frame_num.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.037.i.i, i32 2
  %179 = ptrtoint ptr %frame_num.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %frame_num.i.i, align 4
  %frame_num4.i.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %i.037.i.i, i32 1
  %181 = ptrtoint ptr %frame_num4.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %frame_num4.i.i, align 8
  %pic_num.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.037.i.i, i32 1
  %182 = ptrtoint ptr %pic_num.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pic_num.i.i, align 8
  %conv.i.i = trunc i32 %183 to i16
  %pic_num5.i.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %i.037.i.i, i32 2
  %184 = ptrtoint ptr %pic_num5.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i.i, ptr %pic_num5.i.i, align 2
  %top_field_order_cnt.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.037.i.i, i32 5
  %185 = ptrtoint ptr %top_field_order_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %top_field_order_cnt.i.i, align 4
  %top_field_order_cnt6.i.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %i.037.i.i, i32 3
  %187 = ptrtoint ptr %top_field_order_cnt6.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %top_field_order_cnt6.i.i, align 4
  %bottom_field_order_cnt.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.037.i.i, i32 6
  %188 = ptrtoint ptr %bottom_field_order_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bottom_field_order_cnt.i.i, align 8
  %bottom_field_order_cnt7.i.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %i.037.i.i, i32 4
  %190 = ptrtoint ptr %bottom_field_order_cnt7.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %bottom_field_order_cnt7.i.i, align 8
  %flags.i59.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.037.i.i, i32 7
  %191 = ptrtoint ptr %flags.i59.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags.i59.i, align 4
  %flags8.i.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %i.037.i.i, i32 5
  %193 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %flags8.i.i, align 4
  %inc.i60.i = add nuw nsw i32 %i.037.i.i, 1
  %exitcond.not.i61.i = icmp eq i32 %inc.i60.i, 16
  br i1 %exitcond.not.i61.i, label %get_h264_decode_parameters.exit.i, label %for.body.i62.i.for.body.i62.i_crit_edge

for.body.i62.i.for.body.i62.i_crit_edge:          ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i62.i

get_h264_decode_parameters.exit.i:                ; preds = %for.body.i62.i
  %num_slices.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 1
  %194 = ptrtoint ptr %num_slices.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %num_slices.i.i, align 8
  %nal_ref_idc.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %27, i32 0, i32 1
  %195 = ptrtoint ptr %nal_ref_idc.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %nal_ref_idc.i.i, align 8
  %nal_ref_idc9.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 2
  %197 = ptrtoint ptr %nal_ref_idc9.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %nal_ref_idc9.i.i, align 2
  %top_field_order_cnt10.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %27, i32 0, i32 3
  %198 = ptrtoint ptr %top_field_order_cnt10.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %top_field_order_cnt10.i.i, align 4
  %top_field_order_cnt11.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 6
  %200 = ptrtoint ptr %top_field_order_cnt11.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %top_field_order_cnt11.i.i, align 4
  %bottom_field_order_cnt12.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %27, i32 0, i32 4
  %201 = ptrtoint ptr %bottom_field_order_cnt12.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bottom_field_order_cnt12.i.i, align 8
  %bottom_field_order_cnt13.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 7
  %203 = ptrtoint ptr %bottom_field_order_cnt13.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %bottom_field_order_cnt13.i.i, align 8
  %flags14.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %27, i32 0, i32 14
  %204 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flags14.i.i, align 4
  %flags15.i.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 8
  %206 = ptrtoint ptr %flags15.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %flags15.i.i, align 4
  %207 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ctx, align 4
  %m2m_ctx.i.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %m2m_ctx.i.i, align 8
  %call.i63.i = call ptr @v4l2_m2m_get_vq(ptr noundef %210, i32 noundef 9) #5
  br label %for.body.i68.i

for.body.i68.i:                                   ; preds = %cleanup.i.i.for.body.i68.i_crit_edge, %get_h264_decode_parameters.exit.i
  %index.069.i.i = phi i64 [ 0, %get_h264_decode_parameters.exit.i ], [ %inc.i72.i, %cleanup.i.i.for.body.i68.i_crit_edge ]
  %idxprom.i.i = trunc i64 %index.069.i.i to i32
  %arrayidx.i64.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %idxprom.i.i
  %flags.i65.i = getelementptr [16 x %struct.slice_h264_dpb_entry], ptr %decode_params.i, i32 0, i32 %idxprom.i.i, i32 5
  %211 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %flags.i65.i, align 4
  %and.i66.i = and i32 %212, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66.i)
  %tobool.not.i67.i = icmp eq i32 %and.i66.i, 0
  br i1 %tobool.not.i67.i, label %if.then.i69.i, label %if.end.i70.i

if.then.i69.i:                                    ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %reference_flag.i.i = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 4, i32 %idxprom.i.i, i32 2
  %213 = ptrtoint ptr %reference_flag.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %reference_flag.i.i, align 8
  br label %cleanup.i.i

if.end.i70.i:                                     ; preds = %for.body.i68.i
  %214 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %arrayidx.i64.i, align 8
  %call4.i.i = call i32 @vb2_find_timestamp(ptr noundef %call.i63.i, i64 noundef %215, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i71.i, label %if.end10.i.i

do.end.i71.i:                                     ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  %216 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ctx, align 4
  %id.i.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %217, i32 0, i32 6
  %218 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %id.i.i, align 4
  %220 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %arrayidx.i64.i, align 8
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 245, i32 noundef %219, i64 noundef %index.069.i.i, i64 noundef %221) #9
  br label %cleanup.i.i

if.end10.i.i:                                     ; preds = %if.end.i70.i
  %222 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %flags.i65.i, align 4
  %and12.i.i = and i32 %223, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %spec.select.i.i = select i1 %tobool13.not.i.i, i32 1, i32 2
  %224 = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 4, i32 %idxprom.i.i, i32 2
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %spec.select.i.i, ptr %224, align 8
  %arrayidx24.i.i = getelementptr %struct.vb2_queue, ptr %call.i63.i, i32 0, i32 20, i32 %call4.i.i
  %226 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx24.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %field.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 4, i32 %idxprom.i.i
  %field29.i.i = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 4, i32 %idxprom.i.i, i32 3
  %230 = ptrtoint ptr %field29.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %field29.i.i, align 4
  %call.i.i.i = call ptr @vb2_plane_cookie(ptr noundef %227, i32 noundef 0) #5
  %231 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %call.i.i.i, align 4
  %233 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %arrayidx28.i.i, align 8
  %234 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ctx, align 4
  %fmt.i.i = getelementptr %struct.mtk_vcodec_ctx, ptr %235, i32 0, i32 5, i32 1, i32 7
  %236 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %fmt.i.i, align 4
  %num_planes.i.i = getelementptr inbounds %struct.mtk_video_fmt, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %num_planes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %239)
  %cmp36.i.i = icmp eq i32 %239, 2
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end10.i.i.cleanup.i.i_crit_edge

if.end10.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

if.then37.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i68.i.i = call ptr @vb2_plane_cookie(ptr noundef %227, i32 noundef 1) #5
  %240 = ptrtoint ptr %call.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %call.i68.i.i, align 4
  %c_dma_addr.i.i = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 4, i32 %idxprom.i.i, i32 1
  %242 = ptrtoint ptr %c_dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %c_dma_addr.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then37.i.i, %if.end10.i.i.cleanup.i.i_crit_edge, %do.end.i71.i, %if.then.i69.i
  %inc.i72.i = add nuw nsw i64 %index.069.i.i, 1
  %cmp.i.i = icmp ult i64 %index.069.i.i, 15
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i68.i_crit_edge, label %get_vdec_decode_parameters.exit

cleanup.i.i.for.body.i68.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i68.i

get_vdec_decode_parameters.exit:                  ; preds = %cleanup.i.i
  %ref_pic_list_b1.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 5
  %ref_pic_list_b0.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 4
  %ref_pic_list_p0.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 6, i32 3, i32 3
  call void @v4l2_h264_init_reflist_builder(ptr noundef nonnull %reflist_builder.i, ptr noundef %27, ptr noundef %31, ptr noundef %dpb.i) #5
  call void @v4l2_h264_build_p_ref_list(ptr noundef nonnull %reflist_builder.i, ptr noundef %ref_pic_list_p0.i) #5
  call void @v4l2_h264_build_b_ref_lists(ptr noundef nonnull %reflist_builder.i, ptr noundef %ref_pic_list_b0.i, ptr noundef %ref_pic_list_b1.i) #5
  %num_valid.i = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %reflist_builder.i, i32 0, i32 3
  %243 = ptrtoint ptr %num_valid.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %num_valid.i, align 4
  %conv.i = zext i8 %244 to i32
  %arrayidx.i73.i = getelementptr i8, ptr %ref_pic_list_p0.i, i32 %conv.i
  %sub.i.i = sub nsw i32 32, %conv.i
  %245 = call ptr @memset(ptr %arrayidx.i73.i, i32 32, i32 %sub.i.i)
  %arrayidx.i74.i = getelementptr i8, ptr %ref_pic_list_b0.i, i32 %conv.i
  %246 = call ptr @memset(ptr %arrayidx.i74.i, i32 32, i32 %sub.i.i)
  %arrayidx.i76.i = getelementptr i8, ptr %ref_pic_list_b1.i, i32 %conv.i
  %247 = call ptr @memset(ptr %arrayidx.i76.i, i32 32, i32 %sub.i.i)
  %h264_slice_params.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 5
  %248 = call ptr @memcpy(ptr %h264_slice_params.i, ptr %h264_slice_param.i, i32 1272)
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %reflist_builder.i) #5
  %249 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %bs, align 4
  %251 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %data, align 4
  %nal_ref_idc = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %3, i32 0, i32 1
  %252 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %nal_ref_idc, align 8
  %conv29 = zext i16 %253 to i32
  %shl = shl nuw nsw i32 %conv29, 5
  %flags = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %3, i32 0, i32 14
  %254 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %flags, align 4
  %and = and i32 %255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %cond31 = select i1 %tobool30.not, i32 1, i32 5
  %or = or i32 %cond31, %shl
  %256 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %or, ptr %5, align 4
  %resolution_changed = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2, i32 1
  %257 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %resolution_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool35 = icmp ne i32 %258, 0
  %frombool36 = zext i1 %tobool35 to i8
  %259 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %frombool36, ptr %res_chg, align 1
  br i1 %tobool35, label %do.body39, label %get_vdec_decode_parameters.exit.if.end70_crit_edge

get_vdec_decode_parameters.exit.if.end70_crit_edge: ; preds = %get_vdec_decode_parameters.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.body39:                                        ; preds = %get_vdec_decode_parameters.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_slice_decode.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_decode, %if.then51)) #5
          to label %do.end56 [label %if.then51], !srcloc !98

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %260 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ctx, align 4
  %id53 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %261, i32 0, i32 6
  %262 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %id53, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_slice_decode.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 712, i32 noundef %263) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.body39
  %realloc_mv_buf = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2, i32 2
  %264 = ptrtoint ptr %realloc_mv_buf to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %realloc_mv_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool59.not = icmp eq i32 %265, 0
  br i1 %tobool59.not, label %do.end56.if.end69_crit_edge, label %if.then60

do.end56.if.end69_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then60:                                        ; preds = %do.end56
  %266 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ctx, align 4
  %picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %267, i32 0, i32 13
  %call62 = call fastcc i32 @alloc_mv_buf(ptr noundef %h_vdec, ptr noundef %picinfo)
  %268 = ptrtoint ptr %realloc_mv_buf to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 0, ptr %realloc_mv_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool66.not = icmp eq i32 %call62, 0
  br i1 %tobool66.not, label %if.then60.if.end69_crit_edge, label %if.then60.do.end107_crit_edge

if.then60.do.end107_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end107

if.then60.if.end69_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end69:                                         ; preds = %if.then60.if.end69_crit_edge, %do.end56.if.end69_crit_edge
  %269 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %res_chg, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %get_vdec_decode_parameters.exit.if.end70_crit_edge
  %vsi = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 4, i32 1
  %270 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %vsi, align 4
  %272 = call ptr @memcpy(ptr %271, ptr %vsi_ctx, i32 1656)
  %call73 = call i32 @vpu_dec_start(ptr noundef %vpu1, ptr noundef nonnull %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end70.do.end107_crit_edge

if.end70.do.end107_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end107

if.end76:                                         ; preds = %if.end70
  %273 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ctx, align 4
  %call78 = call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %274, i32 noundef 1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end76.do.end107_crit_edge

if.end76.do.end107_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end107

if.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = call i32 @vpu_dec_end(ptr noundef %vpu1) #5
  %275 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %vsi, align 4
  %277 = call ptr @memcpy(ptr %vsi_ctx, ptr %276, i32 1656)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_slice_decode.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_decode, %if.then98)) #5
          to label %cleanup [label %if.then98], !srcloc !98

if.then98:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %278 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ctx, align 4
  %id100 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %279, i32 0, i32 6
  %280 = ptrtoint ptr %id100 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %id100, align 4
  %282 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %h_vdec, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_slice_decode.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 736, i32 noundef %281, i32 noundef %283) #5
  br label %cleanup

do.end107:                                        ; preds = %if.end76.do.end107_crit_edge, %if.end70.do.end107_crit_edge, %if.then60.do.end107_crit_edge
  %err.0 = phi i32 [ %call62, %if.then60.do.end107_crit_edge ], [ %call73, %if.end70.do.end107_crit_edge ], [ %call78, %if.end76.do.end107_crit_edge ]
  %284 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ctx, align 4
  %id110 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %285, i32 0, i32 6
  %286 = ptrtoint ptr %id110 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %id110, align 4
  %288 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %h_vdec, align 8
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, i32 noundef 740, i32 noundef %287, i32 noundef %289, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %if.then98, %if.end81, %if.then
  %retval.0 = phi i32 [ %err.0, %do.end107 ], [ %call2, %if.then ], [ 0, %if.then98 ], [ 0, %if.end81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_h264_slice_get_param(ptr nocapture noundef %h_vdec, i32 noundef %type, ptr nocapture noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @get_pic_info(ptr noundef %h_vdec, ptr noundef %out)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 2
  %1 = ptrtoint ptr %dec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dec.i, align 8
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %out, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dpb_size.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_get_param, %if.then.i)) #5
          to label %cleanup [label %if.then.i], !srcloc !98

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dpb_size.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 609, i32 noundef %7, i32 noundef %9) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %crop.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %crop.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crop.i, align 8
  %12 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %out, align 4
  %top.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 4, i32 1
  %13 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top.i, align 4
  %top4.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 1
  %15 = ptrtoint ptr %top4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %top4.i, align 4
  %width.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 4, i32 2
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i, align 8
  %width7.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 2
  %18 = ptrtoint ptr %width7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %width7.i, align 4
  %height.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 4, i32 3
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %height10.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 3
  %21 = ptrtoint ptr %height10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height10.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_crop_info.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_get_param, %if.then.i11)) #5
          to label %cleanup [label %if.then.i11], !srcloc !98

if.then.i11:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i9 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %22 = ptrtoint ptr %ctx.i9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i9, align 4
  %id.i10 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i10, align 4
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out, align 4
  %28 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top4.i, align 4
  %30 = ptrtoint ptr %width7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width7.i, align 4
  %32 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height10.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_crop_info.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 603, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 762, i32 noundef %37, i32 noundef %type) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i11, %sw.bb2, %if.then.i, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb ], [ 0, %sw.bb1 ], [ 0, %if.then.i ], [ 0, %sw.bb2 ], [ 0, %if.then.i11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_h264_slice_deinit(ptr noundef %h_vdec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_slice_deinit.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_deinit, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_slice_deinit.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 663, i32 noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 4
  %call3 = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #5
  %pred_buf.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_predication_buf.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_slice_deinit, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !98

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @free_predication_buf.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 515, i32 noundef %7) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %vsi_ctx.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5
  %8 = ptrtoint ptr %vsi_ctx.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %vsi_ctx.i, align 8
  %va.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %do.end.i.free_predication_buf.exit_crit_edge, label %if.then4.i

do.end.i.free_predication_buf.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_predication_buf.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx5.i = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  %11 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx5.i, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %12, ptr noundef %pred_buf.i) #5
  br label %free_predication_buf.exit

free_predication_buf.exit:                        ; preds = %if.then4.i, %do.end.i.free_predication_buf.exit_crit_edge
  %ctx.i8 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %free_predication_buf.exit
  %i.08.i = phi i32 [ 0, %free_predication_buf.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 5, i32 1, i32 %i.08.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %arrayidx.i, align 8
  %va.i9 = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.08.i, i32 1
  %14 = ptrtoint ptr %va.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va.i9, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i10

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i10:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i = getelementptr %struct.vdec_h264_slice_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.08.i
  %16 = ptrtoint ptr %ctx.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i8, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %17, ptr noundef %arrayidx1.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i10, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %free_mv_buf.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

free_mv_buf.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %h_vdec) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_mem_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_mv_buf(ptr noundef %inst, ptr nocapture noundef readonly %pic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_w = getelementptr inbounds %struct.vdec_pic_info, ptr %pic, i32 0, i32 2
  %0 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_w, align 4
  %buf_h = getelementptr inbounds %struct.vdec_pic_info, ptr %pic, i32 0, i32 3
  %2 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_h, align 4
  %div14.i = lshr i32 %3, 4
  %4 = shl i32 %1, 2
  %mul.i = and i32 %4, -64
  %add.i = mul i32 %mul.i, %div14.i
  %mul2.i = add i32 %add.i, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_mv_buf.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_mv_buf, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_mv_buf.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 530, i32 noundef %mul2.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %do.end
  %i.037 = phi i32 [ 0, %do.end ], [ %inc, %if.end17.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 3, i32 %i.037
  %va = getelementptr %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 3, i32 %i.037, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.body.if.end6_crit_edge, label %if.then5

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %8, ptr noundef %arrayidx) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul2.i, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %call8 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %11, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef 538, i32 noundef %15) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %dma_addr = getelementptr %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 3, i32 %i.037, i32 2
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %17 to i64
  %arrayidx18 = getelementptr %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 5, i32 1, i32 %i.037
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %arrayidx18, align 8
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end17.cleanup_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %do.end13
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_init_reflist_builder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_build_p_ref_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_build_b_ref_lists(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_pic_info(ptr nocapture noundef %inst, ptr nocapture noundef writeonly %pic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %picinfo, align 8
  %add = add i32 %3, 63
  %and = and i32 %add, -64
  %buf_w = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %buf_w to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %buf_w, align 8
  %pic_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pic_h, align 4
  %add4 = add i32 %6, 63
  %and5 = and i32 %add4, -64
  %buf_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13, i32 3
  %7 = ptrtoint ptr %buf_h to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and5, ptr %buf_h, align 4
  %mul = mul i32 %and5, %and
  %fb_sz = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13, i32 4
  %8 = ptrtoint ptr %fb_sz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %fb_sz, align 8
  %shr = lshr exact i32 %mul, 1
  %arrayidx17 = getelementptr %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %arrayidx17, align 4
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5, i32 1, i32 7
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes, align 4
  %cap_num_planes = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 5, i32 2, i32 3
  %14 = ptrtoint ptr %cap_num_planes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cap_num_planes, align 4
  %15 = call ptr @memcpy(ptr %pic, ptr %picinfo, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_pic_info, %if.then)) #5
          to label %do.body31 [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx1, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %picinfo, align 8
  %22 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pic_h, align 4
  %24 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_w, align 8
  %26 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 575, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #5
  br label %do.body31

do.body31:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_pic_info, %if.then43)) #5
          to label %do.end54 [label %if.then43], !srcloc !98

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx1, align 4
  %id45 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %id45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id45, align 4
  %32 = ptrtoint ptr %fb_sz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fb_sz, align 8
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef 577, i32 noundef %31, i32 noundef %33, i32 noundef %35) #5
  br label %do.end54

do.end54:                                         ; preds = %if.then43, %do.body31
  %last_decoded_picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22
  %36 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_decoded_picinfo, align 4
  %38 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %picinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.not = icmp eq i32 %37, %39
  br i1 %cmp.not, label %lor.lhs.false, label %do.end54.if.then63_crit_edge

do.end54.if.then63_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63

lor.lhs.false:                                    ; preds = %do.end54
  %pic_h59 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 1
  %40 = ptrtoint ptr %pic_h59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pic_h59, align 4
  %42 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pic_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp62.not = icmp eq i32 %41, %43
  br i1 %cmp62.not, label %lor.lhs.false.if.end111_crit_edge, label %lor.lhs.false.if.then63_crit_edge

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63

lor.lhs.false.if.end111_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %do.end54.if.then63_crit_edge
  %resolution_changed = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 5, i32 2, i32 1
  %44 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %resolution_changed, align 4
  %buf_w67 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 2
  %45 = ptrtoint ptr %buf_w67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_w67, align 4
  %47 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_w, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp70.not = icmp eq i32 %46, %48
  br i1 %cmp70.not, label %lor.lhs.false71, label %if.then63.if.then77_crit_edge

if.then63.if.then77_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then77

lor.lhs.false71:                                  ; preds = %if.then63
  %buf_h73 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 3
  %49 = ptrtoint ptr %buf_h73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_h73, align 4
  %51 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp76.not = icmp eq i32 %50, %52
  br i1 %cmp76.not, label %lor.lhs.false71.do.body81_crit_edge, label %lor.lhs.false71.if.then77_crit_edge

lor.lhs.false71.if.then77_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then77

lor.lhs.false71.do.body81_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

if.then77:                                        ; preds = %lor.lhs.false71.if.then77_crit_edge, %if.then63.if.then77_crit_edge
  %realloc_mv_buf = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 5, i32 2, i32 2
  %53 = ptrtoint ptr %realloc_mv_buf to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %realloc_mv_buf, align 8
  br label %do.body81

do.body81:                                        ; preds = %if.then77, %lor.lhs.false71.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_pic_info, %if.then93)) #5
          to label %if.end111 [label %if.then93], !srcloc !98

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %resolution_changed, align 4
  %realloc_mv_buf99 = getelementptr inbounds %struct.vdec_h264_slice_inst, ptr %inst, i32 0, i32 5, i32 2, i32 2
  %56 = ptrtoint ptr %realloc_mv_buf99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %realloc_mv_buf99, align 8
  %58 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_decoded_picinfo, align 4
  %pic_h103 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 1
  %60 = ptrtoint ptr %pic_h103 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pic_h103, align 4
  %62 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %picinfo, align 8
  %64 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pic_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.26, i32 noundef 591, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #5
  br label %if.end111

if.end111:                                        ; preds = %if.then93, %do.body81, %lor.lhs.false.if.end111_crit_edge
  ret void
}

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @vdec_h264_slice_if, !1, !"vdec_h264_slice_if", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 769, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 628, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdec_h264_slice_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdec_h264_slice_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 640, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vdec_h264_slice_init.__UNIQUE_ID_ddebug305, !9, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 646, i32 2}
!15 = !{ptr @vdec_h264_slice_init.__UNIQUE_ID_ddebug306, !14, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 503, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @allocate_predication_buf._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @allocate_predication_buf._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 691, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vdec_h264_slice_decode.__UNIQUE_ID_ddebug308, !23, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!26 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 712, i32 3}
!29 = !{ptr @vdec_h264_slice_decode.__UNIQUE_ID_ddebug309, !28, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 736, i32 2}
!33 = !{ptr @vdec_h264_slice_decode.__UNIQUE_ID_ddebug310, !32, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!34 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 740, i32 2}
!37 = !{ptr @vdec_h264_slice_decode._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @vdec_h264_slice_decode._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 244, i32 4}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @get_h264_dpb_list._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @get_h264_dpb_list._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 530, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @alloc_mv_buf.__UNIQUE_ID_ddebug299, !45, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!48 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 538, i32 4}
!51 = !{ptr @alloc_mv_buf._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @alloc_mv_buf._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 762, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vdec_h264_slice_get_param._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @vdec_h264_slice_get_param._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 573, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug300, !59, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!62 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 576, i32 2}
!65 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug301, !64, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!66 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 586, i32 3}
!69 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug302, !68, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!70 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 609, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @get_dpb_size.__UNIQUE_ID_ddebug304, !72, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!75 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 602, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @get_crop_info.__UNIQUE_ID_ddebug303, !77, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!80 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 663, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @vdec_h264_slice_deinit.__UNIQUE_ID_ddebug307, !82, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!85 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_req_if.c", i32 515, i32 2}
!88 = !{ptr @free_predication_buf.__UNIQUE_ID_ddebug298, !87, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2148975506, i64 2148975511, i64 2148975524, i64 2148975568, i64 2148975602, i64 2148975623}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 1, i32 2000}
