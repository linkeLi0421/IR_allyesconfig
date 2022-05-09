; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdec_common_if = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vdec_h264_inst = type { i32, ptr, %struct.mtk_vcodec_mem, [17 x %struct.mtk_vcodec_mem], %struct.vdec_vpu_inst, ptr }
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
%struct.vdec_h264_vsi = type { [1024 x i8], i64, [17 x i64], %struct.h264_ring_fb_list, %struct.h264_ring_fb_list, %struct.vdec_h264_dec_info, %struct.vdec_pic_info, %struct.v4l2_rect }
%struct.h264_ring_fb_list = type { [17 x %struct.h264_fb], i32, i32, i32, i32 }
%struct.h264_fb = type { i64, i64, i64, i32, i32 }
%struct.vdec_h264_dec_info = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }

@vdec_h264_if = dso_local constant { %struct.vdec_common_if, [16 x i8] } { %struct.vdec_common_if { ptr @vdec_h264_init, ptr @vdec_h264_decode, ptr @vdec_h264_get_param, ptr @vdec_h264_deinit }, [16 x i8] zeroinitializer }, align 32
@vdec_h264_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vdec_h264 init err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdec_h264_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c\00", [42 x i8] zeroinitializer }, align 32
@vdec_h264_init._entry_ptr = internal global ptr @vdec_h264_init._entry, section ".printk_index", align 4
@vdec_h264_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[MTK_VCODEC][%d]: H264 Instance >> %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(),%d: [MTK_VCODEC][%d]: H264 Instance >> %p\0A\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@allocate_predication_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: failed to allocate ppl buf\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allocate_predication_buf\00", [39 x i8] zeroinitializer }, align 32
@allocate_predication_buf._entry_ptr = internal global ptr @allocate_predication_buf._entry, section ".printk_index", align 4
@vdec_h264_decode.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdec_h264_decode\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[MTK_VCODEC][%d]: + [%d] FB y_dma=%llx c_dma=%llx va=%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(),%d: [MTK_VCODEC][%d]: + [%d] FB y_dma=%llx c_dma=%llx va=%p\0A\00", [62 x i8] zeroinitializer }, align 32
@vdec_h264_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: invalid nal start code\0A\00", [36 x i8] zeroinitializer }, align 32
@vdec_h264_decode._entry_ptr = internal global ptr @vdec_h264_decode._entry, section ".printk_index", align 4
@vdec_h264_decode.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[MTK_VCODEC][%d]: \0A + NALU[%d] type %d +\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [MTK_VCODEC][%d]: \0A + NALU[%d] type %d +\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@vdec_h264_decode._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: - error bitstream - err = %d -\0A\00", [60 x i8] zeroinitializer }, align 32
@vdec_h264_decode._entry_ptr.16 = internal global ptr @vdec_h264_decode._entry.14, section ".printk_index", align 4
@vdec_h264_decode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.17, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: - resolution changed -\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - resolution changed -\0A\00", [45 x i8] zeroinitializer }, align 32
@vdec_h264_decode.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.19, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[MTK_VCODEC][%d]: \0A - NALU[%d] type=%d -\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [MTK_VCODEC][%d]: \0A - NALU[%d] type=%d -\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@vdec_h264_decode._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: \0A - NALU[%d] err=%d -\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@vdec_h264_decode._entry_ptr.23 = internal global ptr @vdec_h264_decode._entry.21, section ".printk_index", align 4
@get_pic_info.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_pic_info\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[MTK_VCODEC][%d]: fb size: Y(%d), C(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: [MTK_VCODEC][%d]: fb size: Y(%d), C(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@alloc_mv_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: failed to allocate mv buf\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alloc_mv_buf\00", [19 x i8] zeroinitializer }, align 32
@alloc_mv_buf._entry_ptr = internal global ptr @alloc_mv_buf._entry, section ".printk_index", align 4
@put_fb_to_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: [FB] put fb free_list full\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"put_fb_to_free\00", [17 x i8] zeroinitializer }, align 32
@put_fb_to_free._entry_ptr = internal global ptr @put_fb_to_free._entry, section ".printk_index", align 4
@put_fb_to_free.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[MTK_VCODEC][%d]: [FB] put fb into free_list @(%p, %llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] put fb into free_list @(%p, %llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@check_list_validity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: %s list err: cnt=%d r_idx=%d w_idx=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_list_validity\00", [44 x i8] zeroinitializer }, align 32
@check_list_validity._entry_ptr = internal global ptr @check_list_validity._entry, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disp\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@vdec_h264_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: invalid get parameter type=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdec_h264_get_param\00", [44 x i8] zeroinitializer }, align 32
@vdec_h264_get_param._entry_ptr = internal global ptr @vdec_h264_get_param._entry, section ".printk_index", align 4
@vdec_h264_get_fb.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdec_h264_get_fb\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: [FB] there is no %s fb\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] there is no %s fb\0A\00", [45 x i8] zeroinitializer }, align 32
@vdec_h264_get_fb.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[MTK_VCODEC][%d]: [FB] get %s fb st=%d poc=%d %llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] get %s fb st=%d poc=%d %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@get_dpb_size.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_dpb_size\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[MTK_VCODEC][%d]: sz=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(),%d: [MTK_VCODEC][%d]: sz=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@get_crop_info.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_crop_info\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: l=%d, t=%d, w=%d, h=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: l=%d, t=%d, w=%d, h=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@vdec_h264_deinit.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdec_h264_deinit\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@free_predication_buf.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.55, ptr @.str.2, ptr @.str.53, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"free_predication_buf\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"vdec_h264_if\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 498, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 288, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 297, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 147, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 351, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 362, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 369, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 391, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 402, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 423, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 429, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 249, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 251, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 181, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 231, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 235, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 212, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 491, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 443, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 454, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 269, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 262, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 314, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [57 x i8] c"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 159, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @alloc_mv_buf._entry, ptr @alloc_mv_buf._entry_ptr, ptr @allocate_predication_buf._entry, ptr @allocate_predication_buf._entry_ptr, ptr @check_list_validity._entry, ptr @check_list_validity._entry_ptr, ptr @put_fb_to_free._entry, ptr @put_fb_to_free._entry_ptr, ptr @vdec_h264_decode._entry, ptr @vdec_h264_decode._entry.14, ptr @vdec_h264_decode._entry.21, ptr @vdec_h264_decode._entry_ptr, ptr @vdec_h264_decode._entry_ptr.16, ptr @vdec_h264_decode._entry_ptr.23, ptr @vdec_h264_get_param._entry, ptr @vdec_h264_get_param._entry_ptr, ptr @vdec_h264_init._entry, ptr @vdec_h264_init._entry_ptr, ptr @vdec_h264_if, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_if to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_predication_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_decode._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_decode._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_mv_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_fb_to_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_list_validity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_h264_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_h264_init(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 316) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx1, align 4
  %vpu = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %vpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vpu, align 8
  %ctx3 = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %ctx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %ctx3, align 4
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
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef %7, i32 noundef %call5) #9
  br label %error_free_inst

if.end11:                                         ; preds = %if.end
  %vsi = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi, align 4
  %vsi13 = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %vsi13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %vsi13, align 8
  %pred_buf.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %pred_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32768, ptr %pred_buf.i, align 8
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 4
  %call.i = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %13, ptr noundef %pred_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body18, label %error_deinit

do.body18:                                        ; preds = %if.end11
  %dma_addr.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %call7.i.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 8
  %conv.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %vsi13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi13, align 8
  %pred_buf_dma.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pred_buf_dma.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv.i, ptr %pred_buf_dma.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_init, %if.then24)) #5
          to label %do.end29 [label %if.then24], !srcloc !118

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx1, align 4
  %id26 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id26, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_init.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef %22, ptr noundef nonnull %call7.i.i) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body18
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %23 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %drv_handle, align 4
  br label %cleanup

error_deinit:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx1, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 147, i32 noundef %27) #9
  %call31 = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #5
  br label %error_free_inst

error_free_inst:                                  ; preds = %error_deinit, %do.end
  %err.0 = phi i32 [ %call5, %do.end ], [ %call.i, %error_deinit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %error_free_inst, %do.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error_free_inst ], [ 0, %do.end29 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_h264_decode(ptr noundef %h_vdec, ptr noundef readonly %bs, ptr noundef %fb, ptr nocapture noundef writeonly %res_chg) #0 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vpu1 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !119
  %1 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !119
  %3 = ptrtoint ptr %fb to i32
  %conv = zext i32 %3 to i64
  %tobool.not = icmp eq ptr %fb, null
  br i1 %tobool.not, label %entry.cond.end8_crit_edge, label %cond.true4

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end8

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %fb, i32 0, i32 2
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 4
  %conv2 = zext i32 %5 to i64
  %dma_addr5 = getelementptr inbounds %struct.vdec_fb, ptr %fb, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %dma_addr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr5, align 4
  %conv6 = zext i32 %7 to i64
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %entry.cond.end8_crit_edge
  %cond256 = phi i64 [ %conv2, %cond.true4 ], [ 0, %entry.cond.end8_crit_edge ]
  %cond9 = phi i64 [ %conv6, %cond.true4 ], [ 0, %entry.cond.end8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_decode.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_decode, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !118

if.then:                                          ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %12 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_vdec, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %h_vdec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_decode.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 352, i32 noundef %11, i32 noundef %inc, i64 noundef %cond256, i64 noundef %cond9, ptr noundef %fb) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end8
  %cmp = icmp eq ptr %bs, null
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @vpu_dec_reset(ptr noundef %vpu1) #5
  br label %cleanup164

if.end16:                                         ; preds = %do.end
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 1
  %14 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va, align 4
  %16 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i = icmp ugt i32 %17, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end16.do.end23_crit_edge

if.end16.do.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

land.lhs.true.i:                                  ; preds = %if.end16
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1.i = icmp eq i8 %19, 0
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end23_crit_edge

land.lhs.true.i.do.end23_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %15, i32 1
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp6.i = icmp eq i8 %21, 0
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true3.i.if.end.i_crit_edge

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true3.i
  %arrayidx9.i = getelementptr i8, ptr %15, i32 2
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp11.i = icmp eq i8 %23, 1
  br i1 %cmp11.i, label %land.lhs.true8.i.if.end28_crit_edge, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true8.i.if.end28_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true3.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp13.i = icmp ugt i32 %17, 4
  br i1 %cmp13.i, label %land.lhs.true20.i.critedge, label %if.end.i.do.end23_crit_edge

if.end.i.do.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

land.lhs.true20.i.critedge:                       ; preds = %if.end.i
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp23.i = icmp eq i8 %25, 0
  br i1 %cmp23.i, label %land.lhs.true25.i, label %land.lhs.true20.i.critedge.do.end23_crit_edge

land.lhs.true20.i.critedge.do.end23_crit_edge:    ; preds = %land.lhs.true20.i.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

land.lhs.true25.i:                                ; preds = %land.lhs.true20.i.critedge
  %arrayidx26.i = getelementptr i8, ptr %15, i32 2
  %26 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp28.i = icmp eq i8 %27, 0
  br i1 %cmp28.i, label %land.lhs.true30.i, label %land.lhs.true25.i.do.end23_crit_edge

land.lhs.true25.i.do.end23_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

land.lhs.true30.i:                                ; preds = %land.lhs.true25.i
  %arrayidx31.i = getelementptr i8, ptr %15, i32 3
  %28 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp33.i = icmp eq i8 %29, 1
  br i1 %cmp33.i, label %land.lhs.true30.i.if.end28_crit_edge, label %land.lhs.true30.i.do.end23_crit_edge

land.lhs.true30.i.do.end23_crit_edge:             ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

land.lhs.true30.i.if.end28_crit_edge:             ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end23:                                         ; preds = %land.lhs.true30.i.do.end23_crit_edge, %land.lhs.true25.i.do.end23_crit_edge, %land.lhs.true20.i.critedge.do.end23_crit_edge, %if.end.i.do.end23_crit_edge, %land.lhs.true.i.do.end23_crit_edge, %if.end16.do.end23_crit_edge
  %ctx25 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %30 = ptrtoint ptr %ctx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx25, align 4
  %id26 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id26, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 362, i32 noundef %33) #9
  br label %err_free_fb_out

if.end28:                                         ; preds = %land.lhs.true30.i.if.end28_crit_edge, %land.lhs.true8.i.if.end28_crit_edge
  %retval.0.i243.ph = phi i32 [ 4, %land.lhs.true30.i.if.end28_crit_edge ], [ 3, %land.lhs.true8.i.if.end28_crit_edge ]
  %arrayidx = getelementptr i8, ptr %15, i32 %retval.0.i243.ph
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %35 to i32
  %and = and i32 %conv29, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_decode.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_decode, %if.then44)) #5
          to label %do.end50 [label %if.then44], !srcloc !118

if.then44:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %ctx45 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %36 = ptrtoint ptr %ctx45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx45, align 4
  %id46 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id46, align 4
  %40 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %h_vdec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_decode.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 370, i32 noundef %39, i32 noundef %41, i32 noundef %and) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp51 = icmp eq i32 %and, 8
  br i1 %cmp51, label %if.then53, label %do.end50.if.end58_crit_edge

do.end50.if.end58_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then53:                                        ; preds = %do.end50
  %sub = sub nuw i32 %17, %retval.0.i243.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub)
  %cmp54 = icmp ugt i32 %sub, 1024
  br i1 %cmp54, label %if.then53.err_free_fb_out_crit_edge, label %if.end57

if.then53.err_free_fb_out_crit_edge:              ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_fb_out

if.end57:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %vsi = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %42 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vsi, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %arrayidx, i32 %sub)
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %do.end50.if.end58_crit_edge
  %buf_sz.0 = phi i32 [ %sub, %if.end57 ], [ %17, %do.end50.if.end58_crit_edge ]
  %dma_addr59 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 2
  %45 = ptrtoint ptr %dma_addr59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_addr59, align 4
  %conv60 = zext i32 %46 to i64
  %vsi61 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %47 = ptrtoint ptr %vsi61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vsi61, align 4
  %bs_dma = getelementptr inbounds %struct.vdec_h264_vsi, ptr %48, i32 0, i32 5, i32 4
  %49 = ptrtoint ptr %bs_dma to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv60, ptr %bs_dma, align 8
  %50 = load ptr, ptr %vsi61, align 4
  %y_fb_dma64 = getelementptr inbounds %struct.vdec_h264_vsi, ptr %50, i32 0, i32 5, i32 5
  %51 = ptrtoint ptr %y_fb_dma64 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %cond256, ptr %y_fb_dma64, align 8
  %52 = load ptr, ptr %vsi61, align 4
  %c_fb_dma67 = getelementptr inbounds %struct.vdec_h264_vsi, ptr %52, i32 0, i32 5, i32 6
  %53 = ptrtoint ptr %c_fb_dma67 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %cond9, ptr %c_fb_dma67, align 8
  %54 = load ptr, ptr %vsi61, align 4
  %vdec_fb_va70 = getelementptr inbounds %struct.vdec_h264_vsi, ptr %54, i32 0, i32 5, i32 7
  %55 = ptrtoint ptr %vdec_fb_va70 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv, ptr %vdec_fb_va70, align 8
  %56 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %buf_sz.0, ptr %data, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv29, ptr %1, align 4
  %call74 = call i32 @vpu_dec_start(ptr noundef %vpu1, ptr noundef nonnull %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end90, label %if.then76

if.then76:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp77 = icmp sgt i32 %call74, 0
  %shr.mask = and i32 %call74, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %shr.mask)
  %cmp79 = icmp eq i32 %shr.mask, 196608
  %or.cond = and i1 %cmp77, %cmp79
  br i1 %or.cond, label %do.end84, label %if.then76.err_free_fb_out_crit_edge

if.then76.err_free_fb_out_crit_edge:              ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_fb_out

do.end84:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %ctx86 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %58 = ptrtoint ptr %ctx86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx86, align 4
  %id87 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %id87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id87, align 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 392, i32 noundef %61, i32 noundef %call74) #9
  br label %err_free_fb_out

if.end90:                                         ; preds = %if.end58
  %62 = ptrtoint ptr %vsi61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vsi61, align 4
  %resolution_changed = getelementptr inbounds %struct.vdec_h264_vsi, ptr %63, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %resolution_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool93 = icmp ne i32 %65, 0
  %frombool94 = zext i1 %tobool93 to i8
  %66 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool94, ptr %res_chg, align 1
  br i1 %tobool93, label %if.then96, label %if.end90.if.end124_crit_edge

if.end90.if.end124_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then96:                                        ; preds = %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_decode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_decode, %if.then109)) #5
          to label %do.end114 [label %if.then109], !srcloc !118

if.then109:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  %ctx110 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %67 = ptrtoint ptr %ctx110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx110, align 4
  %id111 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %id111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id111, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_decode.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 402, i32 noundef %70) #5
  br label %do.end114

do.end114:                                        ; preds = %if.then109, %if.then96
  %71 = ptrtoint ptr %vsi61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vsi61, align 4
  %pic1.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %pic1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %pic.sroa.0.0.copyload = load i32, ptr %pic1.i, align 8
  %pic.sroa.5.0.pic1.i.sroa_idx = getelementptr inbounds %struct.vdec_h264_vsi, ptr %72, i32 0, i32 6, i32 1
  %74 = ptrtoint ptr %pic.sroa.5.0.pic1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %74)
  %pic.sroa.5.0.copyload = load i32, ptr %pic.sroa.5.0.pic1.i.sroa_idx, align 4
  %pic.sroa.6.0.pic1.i.sroa_idx = getelementptr inbounds %struct.vdec_h264_vsi, ptr %72, i32 0, i32 6, i32 2
  %75 = ptrtoint ptr %pic.sroa.6.0.pic1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %pic.sroa.6.0.copyload = load i32, ptr %pic.sroa.6.0.pic1.i.sroa_idx, align 8
  %pic.sroa.8.0.pic1.i.sroa_idx = getelementptr inbounds %struct.vdec_h264_vsi, ptr %72, i32 0, i32 6, i32 3
  %76 = ptrtoint ptr %pic.sroa.8.0.pic1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %76)
  %pic.sroa.8.0.copyload = load i32, ptr %pic.sroa.8.0.pic1.i.sroa_idx, align 4
  %pic.sroa.10.0.pic1.i.sroa_idx = getelementptr inbounds %struct.vdec_h264_vsi, ptr %72, i32 0, i32 6, i32 4
  %77 = ptrtoint ptr %pic.sroa.10.0.pic1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %77)
  %pic.sroa.10.0.copyload = load i32, ptr %pic.sroa.10.0.pic1.i.sroa_idx, align 8
  %pic.sroa.11.0.pic1.i.sroa_idx = getelementptr inbounds %struct.vdec_h264_vsi, ptr %72, i32 0, i32 6, i32 4, i32 1
  %78 = ptrtoint ptr %pic.sroa.11.0.pic1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %78)
  %pic.sroa.11.0.copyload = load i32, ptr %pic.sroa.11.0.pic1.i.sroa_idx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_decode, %if.then.i)) #5
          to label %do.body4.i [label %if.then.i], !srcloc !118

if.then.i:                                        ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %79 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 250, i32 noundef %82, i32 noundef %pic.sroa.0.0.copyload, i32 noundef %pic.sroa.5.0.copyload, i32 noundef %pic.sroa.6.0.copyload, i32 noundef %pic.sroa.8.0.copyload) #5
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %do.end114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_decode, %if.then16.i)) #5
          to label %get_pic_info.exit [label %if.then16.i], !srcloc !118

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx17.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %83 = ptrtoint ptr %ctx17.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctx17.i, align 4
  %id18.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id18.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef 252, i32 noundef %86, i32 noundef %pic.sroa.10.0.copyload, i32 noundef %pic.sroa.11.0.copyload) #5
  br label %get_pic_info.exit

get_pic_info.exit:                                ; preds = %if.then16.i, %do.body4.i
  %87 = ptrtoint ptr %vsi61 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vsi61, align 4
  %realloc_mv_buf = getelementptr inbounds %struct.vdec_h264_vsi, ptr %88, i32 0, i32 5, i32 2
  %89 = ptrtoint ptr %realloc_mv_buf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %realloc_mv_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool117.not = icmp eq i32 %90, 0
  br i1 %tobool117.not, label %get_pic_info.exit.if.end124_crit_edge, label %if.then118

get_pic_info.exit.if.end124_crit_edge:            ; preds = %get_pic_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then118:                                       ; preds = %get_pic_info.exit
  %91 = shl i32 %pic.sroa.6.0.copyload, 2
  %mul.i.i = and i32 %91, -64
  %div14.i.i = lshr i32 %pic.sroa.8.0.copyload, 4
  %mul2.i.i = mul i32 %mul.i.i, %div14.i.i
  %ctx.i246 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %if.then118
  %i.025.i = phi i32 [ 0, %if.then118 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.025.i
  %va.i = getelementptr %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.025.i, i32 1
  %92 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i249_crit_edge, label %if.then.i248

for.body.i.if.end.i249_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i249

if.then.i248:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %ctx.i246 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctx.i246, align 4
  call void @mtk_vcodec_mem_free(ptr noundef %95, ptr noundef %arrayidx.i) #5
  br label %if.end.i249

if.end.i249:                                      ; preds = %if.then.i248, %for.body.i.if.end.i249_crit_edge
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul2.i.i, ptr %arrayidx.i, align 4
  %97 = ptrtoint ptr %ctx.i246 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx.i246, align 4
  %call2.i = call i32 @mtk_vcodec_mem_alloc(ptr noundef %98, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %cleanup

if.end7.i:                                        ; preds = %if.end.i249
  %dma_addr.i = getelementptr %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.025.i, i32 2
  %99 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %100 to i64
  %101 = ptrtoint ptr %vsi61 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vsi61, align 4
  %arrayidx8.i = getelementptr %struct.vdec_h264_vsi, ptr %102, i32 0, i32 2, i32 %i.025.i
  %103 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv.i, ptr %arrayidx8.i, align 8
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %if.end7.i.if.end124_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end7.i.if.end124_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

cleanup:                                          ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %ctx.i246 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctx.i246, align 4
  %id.i250 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %id.i250 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %id.i250, align 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 181, i32 noundef %107) #9
  br label %err_free_fb_out

if.end124:                                        ; preds = %if.end7.i.if.end124_crit_edge, %get_pic_info.exit.if.end124_crit_edge, %if.end90.if.end124_crit_edge
  %108 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end124.do.body137_crit_edge [
    i32 1, label %if.end124.if.then129_crit_edge
    i32 5, label %if.end124.if.then129_crit_edge274
  ]

if.end124.if.then129_crit_edge274:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then129

if.end124.if.then129_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then129

if.end124.do.body137_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body137

if.then129:                                       ; preds = %if.end124.if.then129_crit_edge, %if.end124.if.then129_crit_edge274
  %ctx130 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %109 = ptrtoint ptr %ctx130 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctx130, align 4
  %call131 = call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %110, i32 noundef 1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.then129.err_free_fb_out_crit_edge

if.then129.err_free_fb_out_crit_edge:             ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_fb_out

if.end134:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #7
  %call135 = call i32 @vpu_dec_end(ptr noundef %vpu1) #5
  br label %do.body137

do.body137:                                       ; preds = %if.end134, %if.end124.do.body137_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_decode.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_decode, %if.then149)) #5
          to label %cleanup164 [label %if.then149], !srcloc !118

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  %ctx150 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %111 = ptrtoint ptr %ctx150 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx150, align 4
  %id151 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %id151 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id151, align 4
  %115 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %h_vdec, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_decode.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 424, i32 noundef %114, i32 noundef %116, i32 noundef %and) #5
  br label %cleanup164

err_free_fb_out:                                  ; preds = %if.then129.err_free_fb_out_crit_edge, %cleanup, %do.end84, %if.then76.err_free_fb_out_crit_edge, %if.then53.err_free_fb_out_crit_edge, %do.end23
  %err.2 = phi i32 [ -5, %do.end23 ], [ -5, %do.end84 ], [ %call74, %if.then76.err_free_fb_out_crit_edge ], [ %call2.i, %cleanup ], [ %call131, %if.then129.err_free_fb_out_crit_edge ], [ -84, %if.then53.err_free_fb_out_crit_edge ]
  call fastcc void @put_fb_to_free(ptr noundef %h_vdec, ptr noundef %fb)
  %ctx160 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %117 = ptrtoint ptr %ctx160 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctx160, align 4
  %id161 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %id161 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %id161, align 4
  %121 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %h_vdec, align 4
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8, i32 noundef 429, i32 noundef %120, i32 noundef %122, i32 noundef %err.2) #9
  br label %cleanup164

cleanup164:                                       ; preds = %err_free_fb_out, %if.then149, %do.body137, %if.then14
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %err.2, %err_free_fb_out ], [ 0, %if.then149 ], [ 0, %do.body137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_h264_get_param(ptr nocapture noundef readonly %h_vdec, i32 noundef %type, ptr nocapture noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 4, label %sw.bb4
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vsi = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %1 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsi, align 4
  %list_disp = getelementptr inbounds %struct.vdec_h264_vsi, ptr %2, i32 0, i32 4
  tail call fastcc void @vdec_h264_get_fb(ptr noundef %h_vdec, ptr noundef %list_disp, i1 noundef zeroext true, ptr noundef %out)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vsi2 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %3 = ptrtoint ptr %vsi2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsi2, align 4
  %list_free = getelementptr inbounds %struct.vdec_h264_vsi, ptr %4, i32 0, i32 3
  tail call fastcc void @vdec_h264_get_fb(ptr noundef %h_vdec, ptr noundef %list_free, i1 noundef zeroext false, ptr noundef %out)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %vsi.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %5 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsi.i, align 4
  %pic1.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %6, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %out, ptr %pic1.i, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_get_param, %if.then.i)) #5
          to label %do.body4.i [label %if.then.i], !srcloc !118

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  %pic_h.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 1
  %14 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pic_h.i, align 4
  %buf_w.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 2
  %16 = ptrtoint ptr %buf_w.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_w.i, align 4
  %buf_h.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 3
  %18 = ptrtoint ptr %buf_h.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_h.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 250, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #5
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %sw.bb3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_get_param, %if.then16.i)) #5
          to label %cleanup [label %if.then16.i], !srcloc !118

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx17.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %20 = ptrtoint ptr %ctx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx17.i, align 4
  %id18.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id18.i, align 4
  %fb_sz.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 4
  %24 = ptrtoint ptr %fb_sz.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fb_sz.i, align 4
  %arrayidx20.i = getelementptr %struct.vdec_pic_info, ptr %out, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx20.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef 252, i32 noundef %23, i32 noundef %25, i32 noundef %27) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vsi.i18 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %28 = ptrtoint ptr %vsi.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vsi.i18, align 4
  %dec.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dec.i, align 8
  %32 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %out, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dpb_size.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_get_param, %if.then.i21)) #5
          to label %cleanup [label %if.then.i21], !srcloc !118

if.then.i21:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i19 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %33 = ptrtoint ptr %ctx.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i19, align 4
  %id.i20 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %id.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i20, align 4
  %37 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dpb_size.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef 269, i32 noundef %36, i32 noundef %38) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vsi.i22 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %39 = ptrtoint ptr %vsi.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vsi.i22, align 4
  %crop.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %crop.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %crop.i, align 8
  %43 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %out, align 4
  %44 = load ptr, ptr %vsi.i22, align 4
  %top.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %44, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %top.i, align 4
  %top4.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 1
  %47 = ptrtoint ptr %top4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %top4.i, align 4
  %48 = load ptr, ptr %vsi.i22, align 4
  %width.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %48, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width.i, align 8
  %width7.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 2
  %51 = ptrtoint ptr %width7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %width7.i, align 4
  %52 = load ptr, ptr %vsi.i22, align 4
  %height.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %52, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height.i, align 4
  %height10.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 3
  %55 = ptrtoint ptr %height10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height10.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_crop_info.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_get_param, %if.then.i25)) #5
          to label %cleanup [label %if.then.i25], !srcloc !118

if.then.i25:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i23 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %56 = ptrtoint ptr %ctx.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i23, align 4
  %id.i24 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %id.i24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i24, align 4
  %60 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %out, align 4
  %62 = ptrtoint ptr %top4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %top4.i, align 4
  %64 = ptrtoint ptr %width7.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %width7.i, align 4
  %66 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height10.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_crop_info.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 263, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %68 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 491, i32 noundef %71, i32 noundef %type) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i25, %sw.bb5, %if.then.i21, %sw.bb4, %if.then16.i, %do.body4.i, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 0, %do.body4.i ], [ 0, %if.then16.i ], [ 0, %sw.bb4 ], [ 0, %if.then.i21 ], [ 0, %sw.bb5 ], [ 0, %if.then.i25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_h264_deinit(ptr noundef %h_vdec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_deinit.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_deinit, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !118

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_deinit.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 314, i32 noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 4
  %call3 = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_predication_buf.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_deinit, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !118

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @free_predication_buf.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 159, i32 noundef %7) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %vsi.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 5
  %8 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi.i, align 4
  %pred_buf_dma.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pred_buf_dma.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %pred_buf_dma.i, align 8
  %va.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %do.end.i.free_predication_buf.exit_crit_edge, label %if.then4.i

do.end.i.free_predication_buf.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_predication_buf.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pred_buf.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 2
  %ctx5.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  %13 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx5.i, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %14, ptr noundef %pred_buf.i) #5
  br label %free_predication_buf.exit

free_predication_buf.exit:                        ; preds = %if.then4.i, %do.end.i.free_predication_buf.exit_crit_edge
  %ctx.i9 = getelementptr inbounds %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %free_predication_buf.exit
  %i.08.i = phi i32 [ 0, %free_predication_buf.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vsi.i, align 4
  %arrayidx.i = getelementptr %struct.vdec_h264_vsi, ptr %16, i32 0, i32 2, i32 %i.08.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %arrayidx.i, align 8
  %va.i10 = getelementptr %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.08.i, i32 1
  %18 = ptrtoint ptr %va.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %va.i10, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i11

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i11:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i = getelementptr %struct.vdec_h264_inst, ptr %h_vdec, i32 0, i32 3, i32 %i.08.i
  %20 = ptrtoint ptr %ctx.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.i9, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %21, ptr noundef %arrayidx1.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i11, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_fb_to_free(ptr nocapture noundef readonly %inst, ptr noundef %fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %vsi.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 5
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 4
  %count.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp.i = icmp ugt i32 %3, 17
  br i1 %cmp.i, label %if.then.check_list_validity.exit_crit_edge, label %lor.lhs.false.i

if.then.check_list_validity.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_list_validity.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %read_idx.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp2.i = icmp ugt i32 %5, 16
  br i1 %cmp2.i, label %lor.lhs.false.i.check_list_validity.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.check_list_validity.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_list_validity.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %write_idx.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %write_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp4.i = icmp ugt i32 %7, 16
  br i1 %cmp4.i, label %lor.lhs.false3.i.check_list_validity.exit_crit_edge, label %if.end

lor.lhs.false3.i.check_list_validity.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_list_validity.exit

check_list_validity.exit:                         ; preds = %lor.lhs.false3.i.check_list_validity.exit_crit_edge, %lor.lhs.false.i.check_list_validity.exit_crit_edge, %if.then.check_list_validity.exit_crit_edge
  %ctx.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 1
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %read_idx8.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %read_idx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_idx8.i, align 8
  %write_idx9.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %write_idx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write_idx9.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 214, i32 noundef %11, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %13, i32 noundef %15) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3.i
  %16 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsi.i, align 4
  %list_free = getelementptr inbounds %struct.vdec_h264_vsi, ptr %17, i32 0, i32 3
  %count = getelementptr inbounds %struct.vdec_h264_vsi, ptr %17, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %19)
  %cmp = icmp eq i32 %19, 17
  br i1 %cmp, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 1
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 231, i32 noundef %23) #9
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @put_fb_to_free.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@put_fb_to_free, %if.then12)) #5
          to label %do.end18 [label %if.then12], !srcloc !118

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %ctx13 = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 1
  %24 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx13, align 4
  %id14 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id14, align 4
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %fb, i32 0, i32 1
  %28 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %va, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %fb, i32 0, i32 2
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %31 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @put_fb_to_free.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 236, i32 noundef %27, ptr noundef %29, i64 noundef %conv) #5
  br label %do.end18

do.end18:                                         ; preds = %if.then12, %do.body6
  %32 = ptrtoint ptr %fb to i32
  %conv19 = zext i32 %32 to i64
  %write_idx = getelementptr inbounds %struct.vdec_h264_vsi, ptr %17, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %write_idx, align 4
  %arrayidx = getelementptr [17 x %struct.h264_fb], ptr %list_free, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv19, ptr %arrayidx, align 8
  %36 = load i32, ptr %write_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cmp21 = icmp eq i32 %36, 16
  %add = add i32 %36, 1
  %spec.select = select i1 %cmp21, i32 0, i32 %add
  %37 = ptrtoint ptr %write_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %write_idx, align 4
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end, %check_list_validity.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vdec_h264_get_fb(ptr nocapture noundef readonly %inst, ptr nocapture noundef %list, i1 noundef zeroext %disp_list, ptr nocapture noundef writeonly %out_fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 5
  %0 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi.i, align 4
  %list_disp.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 4
  %list_free.i = getelementptr inbounds %struct.vdec_h264_vsi, ptr %1, i32 0, i32 3
  %cond.i = select i1 %disp_list, ptr %list_disp.i, ptr %list_free.i
  %count.i = getelementptr inbounds %struct.h264_ring_fb_list, ptr %cond.i, i32 0, i32 3
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp.i = icmp ugt i32 %3, 17
  br i1 %cmp.i, label %entry.check_list_validity.exit_crit_edge, label %lor.lhs.false.i

entry.check_list_validity.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_list_validity.exit

lor.lhs.false.i:                                  ; preds = %entry
  %read_idx.i = getelementptr inbounds %struct.h264_ring_fb_list, ptr %cond.i, i32 0, i32 1
  %4 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp2.i = icmp ugt i32 %5, 16
  br i1 %cmp2.i, label %lor.lhs.false.i.check_list_validity.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.check_list_validity.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_list_validity.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %write_idx.i = getelementptr inbounds %struct.h264_ring_fb_list, ptr %cond.i, i32 0, i32 2
  %6 = ptrtoint ptr %write_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp4.i = icmp ugt i32 %7, 16
  br i1 %cmp4.i, label %lor.lhs.false3.i.check_list_validity.exit_crit_edge, label %if.end

lor.lhs.false3.i.check_list_validity.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_list_validity.exit

check_list_validity.exit:                         ; preds = %lor.lhs.false3.i.check_list_validity.exit_crit_edge, %lor.lhs.false.i.check_list_validity.exit_crit_edge, %entry.check_list_validity.exit_crit_edge
  %ctx.i = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 1
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %cond6.i = select i1 %disp_list, ptr @.str.37, ptr @.str.38
  %read_idx8.i = getelementptr inbounds %struct.h264_ring_fb_list, ptr %cond.i, i32 0, i32 1
  %12 = ptrtoint ptr %read_idx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_idx8.i, align 8
  %write_idx9.i = getelementptr inbounds %struct.h264_ring_fb_list, ptr %cond.i, i32 0, i32 2
  %14 = ptrtoint ptr %write_idx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write_idx9.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 214, i32 noundef %11, ptr noundef nonnull %cond6.i, i32 noundef %3, i32 noundef %13, i32 noundef %15) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3.i
  %count = getelementptr inbounds %struct.h264_ring_fb_list, ptr %list, i32 0, i32 3
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_get_fb.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_get_fb, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !118

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 1
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %cond = select i1 %disp_list, ptr @.str.37, ptr @.str.38
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_get_fb.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 444, i32 noundef %21, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %22 = ptrtoint ptr %out_fb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %out_fb, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %read_idx = getelementptr inbounds %struct.h264_ring_fb_list, ptr %list, i32 0, i32 1
  %23 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read_idx, align 8
  %arrayidx = getelementptr [17 x %struct.h264_fb], ptr %list, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %26 to i32
  %27 = inttoptr i32 %conv to ptr
  %cond14 = select i1 %disp_list, i32 1, i32 2
  %status = getelementptr inbounds %struct.vdec_fb, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %or = or i32 %29, %cond14
  store i32 %or, ptr %status, align 4
  %30 = ptrtoint ptr %out_fb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %out_fb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_h264_get_fb.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_h264_get_fb, %if.then27)) #5
          to label %do.end43 [label %if.then27], !srcloc !118

if.then27:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %ctx28 = getelementptr inbounds %struct.vdec_h264_inst, ptr %inst, i32 0, i32 1
  %31 = ptrtoint ptr %ctx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx28, align 4
  %id29 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id29, align 4
  %cond32 = select i1 %disp_list, ptr @.str.37, ptr @.str.38
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  %37 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %read_idx, align 8
  %arrayidx36 = getelementptr [17 x %struct.h264_fb], ptr %list, i32 0, i32 %38
  %poc = getelementptr [17 x %struct.h264_fb], ptr %list, i32 0, i32 %38, i32 3
  %39 = ptrtoint ptr %poc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %poc, align 8
  %41 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx36, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_h264_get_fb.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, i32 noundef 457, i32 noundef %34, ptr noundef nonnull %cond32, i32 noundef %36, i32 noundef %40, i64 noundef %42) #5
  br label %do.end43

do.end43:                                         ; preds = %if.then27, %if.end11
  %43 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %read_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp45 = icmp eq i32 %44, 16
  %add = add i32 %44, 1
  %spec.select = select i1 %cmp45, i32 0, i32 %add
  %45 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select, ptr %read_idx, align 8
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count, align 8
  %dec = add i32 %47, -1
  store i32 %dec, ptr %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end, %check_list_validity.exit
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @vdec_h264_if, !1, !"vdec_h264_if", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 498, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 288, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdec_h264_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdec_h264_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 297, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vdec_h264_init.__UNIQUE_ID_ddebug304, !9, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 147, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @allocate_predication_buf._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @allocate_predication_buf._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 351, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vdec_h264_decode.__UNIQUE_ID_ddebug306, !19, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 362, i32 3}
!25 = !{ptr @vdec_h264_decode._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @vdec_h264_decode._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 369, i32 2}
!29 = !{ptr @vdec_h264_decode.__UNIQUE_ID_ddebug307, !28, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!30 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 391, i32 4}
!33 = !{ptr @vdec_h264_decode._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vdec_h264_decode._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 402, i32 3}
!37 = !{ptr @vdec_h264_decode.__UNIQUE_ID_ddebug308, !36, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 423, i32 2}
!41 = !{ptr @vdec_h264_decode.__UNIQUE_ID_ddebug309, !40, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!42 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 429, i32 2}
!45 = !{ptr @vdec_h264_decode._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vdec_h264_decode._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 249, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug300, !48, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!51 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 251, i32 2}
!54 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!55 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 181, i32 4}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @alloc_mv_buf._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @alloc_mv_buf._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 231, i32 4}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @put_fb_to_free._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @put_fb_to_free._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 235, i32 3}
!68 = !{ptr @put_fb_to_free.__UNIQUE_ID_ddebug299, !67, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!69 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 212, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @check_list_validity._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @check_list_validity._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 491, i32 3}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vdec_h264_get_param._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @vdec_h264_get_param._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 443, i32 3}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vdec_h264_get_fb.__UNIQUE_ID_ddebug310, !83, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!86 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 454, i32 2}
!89 = !{ptr @vdec_h264_get_fb.__UNIQUE_ID_ddebug311, !88, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!90 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 269, i32 2}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @get_dpb_size.__UNIQUE_ID_ddebug303, !92, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!95 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 262, i32 2}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @get_crop_info.__UNIQUE_ID_ddebug302, !97, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!100 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 314, i32 2}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @vdec_h264_deinit.__UNIQUE_ID_ddebug305, !102, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!105 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c", i32 159, i32 2}
!108 = !{ptr @free_predication_buf.__UNIQUE_ID_ddebug298, !107, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2148964352, i64 2148964357, i64 2148964370, i64 2148964414, i64 2148964448, i64 2148964469}
!119 = !{!"auto-init"}
