; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdec_common_if = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vdec_vp8_inst = type { ptr, [10 x %struct.vdec_fb_node], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mtk_vcodec_mem, %struct.vdec_vp8_hw_reg_base, i32, ptr, %struct.vdec_vpu_inst, ptr }
%struct.vdec_fb_node = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.vdec_vp8_hw_reg_base = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vdec_vpu_inst = type { i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }
%struct.vdec_vp8_dec_info = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.vdec_vp8_vsi = type { %struct.vdec_vp8_dec_info, %struct.vdec_pic_info, [300 x i32], [272 x [4 x i32]], i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@vdec_vp8_if = dso_local constant { %struct.vdec_common_if, [16 x i8] } { %struct.vdec_common_if { ptr @vdec_vp8_init, ptr @vdec_vp8_decode, ptr @vdec_vp8_get_param, ptr @vdec_vp8_deinit }, [16 x i8] zeroinitializer }, align 32
@vdec_vp8_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vdec_vp8 init err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdec_vp8_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c\00", [43 x i8] zeroinitializer }, align 32
@vdec_vp8_init._entry_ptr = internal global ptr @vdec_vp8_init._entry, section ".printk_index", align 4
@vdec_vp8_init.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[MTK_VCODEC][%d]: VP8 Instance >> %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(),%d: [MTK_VCODEC][%d]: VP8 Instance >> %p\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alloc_working_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Cannot allocate working buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_working_buf\00", [46 x i8] zeroinitializer }, align 32
@alloc_working_buf._entry_ptr = internal global ptr @alloc_working_buf._entry, section ".printk_index", align 4
@vdec_vp8_decode.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdec_vp8_decode\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[MTK_VCODEC][%d]: + [%d] FB y_dma=%llx c_dma=%llx fb=%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(),%d: [MTK_VCODEC][%d]: + [%d] FB y_dma=%llx c_dma=%llx fb=%p\0A\00", [62 x i8] zeroinitializer }, align 32
@vdec_vp8_decode.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[MTK_VCODEC][%d]: \0A + FRAME[%d] +\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: [MTK_VCODEC][%d]: \0A + FRAME[%d] +\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@vdec_vp8_decode.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[MTK_VCODEC][%d]: wait key frame !\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: [MTK_VCODEC][%d]: wait key frame !\0A\00", [51 x i8] zeroinitializer }, align 32
@vdec_vp8_decode.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: - resolution_changed -\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - resolution_changed -\0A\00", [45 x i8] zeroinitializer }, align 32
@vdec_vp8_decode.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.17, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: \0A - FRAME[%d] - show=%d\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: \0A - FRAME[%d] - show=%d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@vdec_vp8_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: \0A - FRAME[%d] - err=%d\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@vdec_vp8_decode._entry_ptr = internal global ptr @vdec_vp8_decode._entry, section ".printk_index", align 4
@vp8_dec_finish.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vp8_dec_finish\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[MTK_VCODEC][%d]: prev fb base dma=%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: [MTK_VCODEC][%d]: prev fb base dma=%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@vdec_vp8_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: invalid get parameter type=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdec_vp8_get_param\00", [45 x i8] zeroinitializer }, align 32
@vdec_vp8_get_param._entry_ptr = internal global ptr @vdec_vp8_get_param._entry, section ".printk_index", align 4
@get_disp_fb.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_disp_fb\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[MTK_VCODEC][%d]: [FB] get disp fb %p st=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] get disp fb %p st=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_disp_fb.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: [FB] there is no disp fb\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] there is no disp fb\0A\00", [43 x i8] zeroinitializer }, align 32
@get_free_fb.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_free_fb\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[MTK_VCODEC][%d]: [FB] get free fb %p st=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] get free fb %p st=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_free_fb.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: [FB] there is no free fb\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] there is no free fb\0A\00", [43 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_pic_info\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[MTK_VCODEC][%d]: fb size: Y(%d), C(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: [MTK_VCODEC][%d]: fb size: Y(%d), C(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@get_crop_info.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_crop_info\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[MTK_VCODEC][%d]: get crop info l=%d, t=%d, w=%d, h=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s(),%d: [MTK_VCODEC][%d]: get crop info l=%d, t=%d, w=%d, h=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@vdec_vp8_deinit.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdec_vp8_deinit\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"vdec_vp8_if\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 611, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 407, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 418, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 373, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 451, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 460, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 475, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 483, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 503, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 510, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 298, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 593, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 525, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 529, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 546, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 550, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 287, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 289, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 562, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [56 x i8] c"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 604, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @alloc_working_buf._entry, ptr @alloc_working_buf._entry_ptr, ptr @vdec_vp8_decode._entry, ptr @vdec_vp8_decode._entry_ptr, ptr @vdec_vp8_get_param._entry, ptr @vdec_vp8_get_param._entry_ptr, ptr @vdec_vp8_init._entry, ptr @vdec_vp8_init._entry_ptr, ptr @vdec_vp8_if, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp8_if to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp8_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_working_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp8_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp8_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_vp8_init(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 296) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx1, align 8
  %vpu = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %vpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %vpu, align 4
  %ctx3 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 10, i32 7
  %3 = ptrtoint ptr %ctx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %ctx3, align 8
  %call5 = tail call i32 @vpu_dec_init(ptr noundef %vpu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 8
  %id9 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 407, i32 noundef %7, i32 noundef %call5) #10
  br label %error_free_inst

if.end11:                                         ; preds = %if.end
  %vsi = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi, align 8
  %vsi13 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %vsi13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %vsi13, align 4
  %available_fb_node_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %available_fb_node_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %available_fb_node_list.i, ptr %available_fb_node_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %available_fb_node_list.i, ptr %prev.i.i, align 8
  %fb_use_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %fb_use_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %fb_use_list.i, ptr %fb_use_list.i, align 4
  %prev.i18.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fb_use_list.i, ptr %prev.i18.i, align 8
  %fb_free_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %fb_free_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %fb_free_list.i, ptr %fb_free_list.i, align 4
  %prev.i19.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fb_free_list.i, ptr %prev.i19.i, align 8
  %fb_disp_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %fb_disp_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %fb_disp_list.i, ptr %fb_disp_list.i, align 4
  %prev.i20.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i20.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fb_disp_list.i, ptr %prev.i20.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end11
  %i.023.i = phi i32 [ 0, %if.end11 ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 1, i32 %i.023.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.i, ptr %prev.i21.i, align 4
  %fb.i = getelementptr %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 1, i32 %i.023.i, i32 1
  %21 = ptrtoint ptr %fb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fb.i, align 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %23, ptr noundef %available_fb_node_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i, ptr %prev.i.i, align 8
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %available_fb_node_list.i, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i21.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.i, ptr %23, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %init_list.exit, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

init_list.exit:                                   ; preds = %list_add_tail.exit.i
  %working_buf.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %working_buf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 184320, ptr %working_buf.i, align 4
  %29 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx1, align 8
  %call.i = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %30, ptr noundef %working_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end17, label %error_deinit

if.end17:                                         ; preds = %init_list.exit
  %dma_addr.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %32 to i64
  %33 = ptrtoint ptr %vsi13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vsi13, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.i, ptr %34, align 8
  %36 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx1, align 8
  %call.i54 = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %37, i32 noundef 3) #6
  %reg_base.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7
  %top.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i54, ptr %top.i, align 4
  %39 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx1, align 8
  %call2.i55 = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %40, i32 noundef 4) #6
  %cm.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7, i32 4
  %41 = ptrtoint ptr %cm.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call2.i55, ptr %cm.i, align 8
  %42 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx1, align 8
  %call5.i = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %43, i32 noundef 8) #6
  %hwd.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7, i32 5
  %44 = ptrtoint ptr %hwd.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i, ptr %hwd.i, align 4
  %45 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx1, align 8
  %call8.i = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %46, i32 noundef 0) #6
  %47 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i, ptr %reg_base.i, align 8
  %48 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx1, align 8
  %call11.i = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %49, i32 noundef 1) #6
  %misc.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %misc.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call11.i, ptr %misc.i, align 4
  %51 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx1, align 8
  %call14.i = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %52, i32 noundef 2) #6
  %ld.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7, i32 2
  %53 = ptrtoint ptr %ld.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call14.i, ptr %ld.i, align 8
  %54 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx1, align 8
  %call17.i = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %55, i32 noundef 10) #6
  %hwb.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %call7.i.i, i32 0, i32 7, i32 6
  %56 = ptrtoint ptr %hwb.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call17.i, ptr %hwb.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_init.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_init, %if.then24)) #6
          to label %do.end29 [label %if.then24], !srcloc !99

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx1, align 8
  %id26 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id26, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_init.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 418, i32 noundef %60, ptr noundef nonnull %call7.i.i) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %if.end17
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %61 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %drv_handle, align 4
  br label %cleanup

error_deinit:                                     ; preds = %init_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx1, align 8
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 373, i32 noundef %65) #10
  %call31 = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #6
  br label %error_free_inst

error_free_inst:                                  ; preds = %error_deinit, %do.end
  %err.0 = phi i32 [ %call5, %do.end ], [ %call.i, %error_deinit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error_free_inst, %do.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error_free_inst ], [ 0, %do.end29 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_vp8_decode(ptr noundef %h_vdec, ptr noundef readonly %bs, ptr noundef %fb, ptr nocapture noundef writeonly %res_chg) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 11
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %vpu2 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %cmp = icmp eq ptr %bs, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %fb_use_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 3
  %2 = ptrtoint ptr %fb_use_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_use_list.i, align 4
  %cmp.not19.i = icmp eq ptr %3, %fb_use_list.i
  br i1 %cmp.not19.i, label %if.then.move_fb_list_use_to_free.exit_crit_edge, label %for.body.lr.ph.i

if.then.move_fb_list_use_to_free.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %move_fb_list_use_to_free.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %fb_free_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 4
  %prev.i2.i.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 4, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_move_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.020.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %tmp.0.i, %list_move_tail.exit.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %node.020.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %node.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.020.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.020.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %node.020.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.i.__list_del_entry.exit.i.i_crit_edge
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.020.i, ptr noundef %12, ptr noundef %fb_free_list.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %node.020.i, ptr %prev.i2.i.i, align 4
  %14 = ptrtoint ptr %node.020.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fb_free_list.i, ptr %node.020.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.020.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %node.020.i, ptr %12, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.0.i, %fb_use_list.i
  br i1 %cmp.not.i, label %list_move_tail.exit.i.move_fb_list_use_to_free.exit_crit_edge, label %list_move_tail.exit.i.for.body.i_crit_edge

list_move_tail.exit.i.for.body.i_crit_edge:       ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_move_tail.exit.i.move_fb_list_use_to_free.exit_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %move_fb_list_use_to_free.exit

move_fb_list_use_to_free.exit:                    ; preds = %list_move_tail.exit.i.move_fb_list_use_to_free.exit_crit_edge, %if.then.move_fb_list_use_to_free.exit_crit_edge
  %call = tail call i32 @vpu_dec_reset(ptr noundef %vpu2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %fb, null
  br i1 %tobool.not, label %if.end.cond.end8_crit_edge, label %cond.true4

if.end.cond.end8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

cond.true4:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %fb, i32 0, i32 2
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %18 to i64
  %dma_addr5 = getelementptr inbounds %struct.vdec_fb, ptr %fb, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %dma_addr5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr5, align 4
  %conv6 = zext i32 %20 to i64
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %if.end.cond.end8_crit_edge
  %cond251 = phi i64 [ %conv, %cond.true4 ], [ 0, %if.end.cond.end8_crit_edge ]
  %cond9 = phi i64 [ %conv6, %cond.true4 ], [ 0, %if.end.cond.end8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_decode, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !99

if.then14:                                        ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %frm_cnt = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 8
  %25 = ptrtoint ptr %frm_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frm_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_decode.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 452, i32 noundef %24, i32 noundef %26, i64 noundef %cond251, i64 noundef %cond9, ptr noundef %fb) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %cond.end8
  %27 = ptrtoint ptr %h_vdec to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fb, ptr %h_vdec, align 4
  %dma_addr16 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 2
  %28 = ptrtoint ptr %dma_addr16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr16, align 4
  %conv17 = zext i32 %29 to i64
  %bs_dma = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %bs_dma to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv17, ptr %bs_dma, align 8
  %31 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bs, align 4
  %bs_sz = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %bs_sz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %bs_sz, align 8
  %cur_y_fb_dma = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %cur_y_fb_dma to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %cond251, ptr %cur_y_fb_dma, align 8
  %cur_c_fb_dma = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %cur_c_fb_dma to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %cond9, ptr %cur_c_fb_dma, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_decode, %if.then30)) #6
          to label %do.end36 [label %if.then30], !srcloc !99

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ctx31 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %36 = ptrtoint ptr %ctx31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx31, align 4
  %id32 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id32, align 4
  %frm_cnt33 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 8
  %40 = ptrtoint ptr %frm_cnt33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frm_cnt33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_decode.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 460, i32 noundef %39, i32 noundef %41) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.end
  %cm1.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7, i32 4
  %42 = ptrtoint ptr %cm1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cm1.i, align 4
  %44 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vsi, align 4
  %top.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7, i32 3
  %46 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %top.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 60
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !100
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %shr.i = lshr i32 %49, 4
  %add.ptr10.i = getelementptr i8, ptr %43, i32 2364
  %add.ptr15.i = getelementptr i8, ptr %43, i32 2368
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.cond5.preheader.i.for.cond5.preheader.i_crit_edge, %do.end36
  %i.029.i = phi i32 [ 0, %do.end36 ], [ %inc.i, %for.cond5.preheader.i.for.cond5.preheader.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.029.i, %shr.i
  %shl.i = shl i32 %add.i, 2
  %add8.i = add nuw nsw i32 %shl.i, 65536
  %add9.i = add nuw nsw i32 %shl.i, 65539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %add9.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %50) #6, !srcloc !103
  %arrayidx11.i = getelementptr %struct.vdec_vp8_vsi, ptr %45, i32 0, i32 3, i32 %i.029.i, i32 3
  %51 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %53) #6, !srcloc !103
  %add9.1.i = add nuw nsw i32 %shl.i, 65538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %add9.1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %54) #6, !srcloc !103
  %arrayidx11.1.i = getelementptr %struct.vdec_vp8_vsi, ptr %45, i32 0, i32 3, i32 %i.029.i, i32 2
  %55 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx11.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %57) #6, !srcloc !103
  %add9.2.i = add nuw nsw i32 %shl.i, 65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %add9.2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %58) #6, !srcloc !103
  %arrayidx11.2.i = getelementptr %struct.vdec_vp8_vsi, ptr %45, i32 0, i32 3, i32 %i.029.i, i32 1
  %59 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx11.2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %61) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %add8.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %62) #6, !srcloc !103
  %arrayidx11.3.i = getelementptr %struct.vdec_vp8_vsi, ptr %45, i32 0, i32 3, i32 %i.029.i, i32 0
  %63 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx11.3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %65) #6, !srcloc !103
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 272
  br i1 %exitcond.not.i, label %write_hw_segmentation_data.exit, label %for.cond5.preheader.i.for.cond5.preheader.i_crit_edge

for.cond5.preheader.i.for.cond5.preheader.i_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

write_hw_segmentation_data.exit:                  ; preds = %for.cond5.preheader.i
  %reg_base.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7
  %66 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base.i, align 4
  %misc3.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7, i32 1
  %68 = ptrtoint ptr %misc3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %misc3.i, align 4
  %ld5.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %ld5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ld5.i, align 4
  %hwb7.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7, i32 6
  %72 = ptrtoint ptr %hwb7.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hwb7.i, align 4
  %hwd9.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %hwd9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwd9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 16777216) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr13.i = getelementptr i8, ptr %71, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16842752) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %add.ptr17.i = getelementptr i8, ptr %73, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 16842752) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 16777216) #6, !srcloc !103
  %add.ptr21.i = getelementptr i8, ptr %69, i32 244
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %77 = and i32 %76, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %77) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %add.ptr30.i = getelementptr i8, ptr %69, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 16777216) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %add.ptr34.i = getelementptr i8, ptr %69, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 2130771968) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %add.ptr38.i = getelementptr i8, ptr %69, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 1122417) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %add.ptr50.i = getelementptr i8, ptr %67, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 16777216) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %add.ptr54.i = getelementptr i8, ptr %69, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 16777216) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %add.ptr58.i = getelementptr i8, ptr %75, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 16777216) #6, !srcloc !103
  %78 = ptrtoint ptr %hwd9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hwd9.i, align 4
  %80 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vsi, align 4
  %arrayidx.i = getelementptr %struct.vdec_vp8_vsi, ptr %81, i32 0, i32 2, i32 2
  %add.ptr.i202 = getelementptr i8, ptr %79, i32 256
  %add.ptr8.i = getelementptr i8, ptr %79, i32 260
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %write_hw_segmentation_data.exit
  %p.021.i = phi ptr [ %arrayidx.i, %write_hw_segmentation_data.exit ], [ %incdec.ptr.2.i, %do.body.i.do.body.i_crit_edge ]
  %addr.020.i = phi i32 [ 0, %write_hw_segmentation_data.exit ], [ %add.i203, %do.body.i.do.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %write_hw_segmentation_data.exit ], [ %inc10.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %82 = tail call i32 @llvm.bswap.i32(i32 %addr.020.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %82) #6, !srcloc !103
  %incdec.ptr.i = getelementptr i32, ptr %p.021.i, i32 1
  %83 = ptrtoint ptr %p.021.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %p.021.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %85) #6, !srcloc !103
  %incdec.ptr.1.i = getelementptr i32, ptr %p.021.i, i32 2
  %86 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %incdec.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %88) #6, !srcloc !103
  %incdec.ptr.2.i = getelementptr i32, ptr %p.021.i, i32 3
  %89 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %incdec.ptr.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %91) #6, !srcloc !103
  %add.i203 = add nuw nsw i32 %addr.020.i, 4
  %inc10.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i204 = icmp eq i32 %inc10.i, 96
  br i1 %exitcond.not.i204, label %store_dec_table.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

store_dec_table.exit:                             ; preds = %do.body.i
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 1
  %92 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %va, align 4
  %add.ptr = getelementptr i8, ptr %93, i32 9
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr, align 1
  %conv37 = zext i8 %95 to i32
  %shl = shl nuw i32 %conv37, 24
  %add.ptr38 = getelementptr i8, ptr %93, i32 8
  %96 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr38, align 1
  %conv39 = zext i8 %97 to i32
  %shl40 = shl nuw nsw i32 %conv39, 16
  %or = or i32 %shl40, %shl
  %add.ptr41 = getelementptr i8, ptr %93, i32 7
  %98 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %99 to i32
  %shl43 = shl nuw nsw i32 %conv42, 8
  %or44 = or i32 %or, %shl43
  %add.ptr45 = getelementptr i8, ptr %93, i32 6
  %100 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr45, align 1
  %conv46 = zext i8 %101 to i32
  %or47 = or i32 %or44, %conv46
  %102 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or47, ptr %data, align 4
  %call48 = call i32 @vpu_dec_start(ptr noundef %vpu2, ptr noundef nonnull %data, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end72, label %if.then50

if.then50:                                        ; preds = %store_dec_table.exit
  br i1 %tobool.not, label %if.then50.add_fb_to_free_list.exit_crit_edge, label %if.then.i

if.then50.add_fb_to_free_list.exit_crit_edge:     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_fb_to_free_list.exit

if.then.i:                                        ; preds = %if.then50
  %available_fb_node_list.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 2
  %103 = ptrtoint ptr %available_fb_node_list.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %available_fb_node_list.i, align 4
  %fb1.i = getelementptr inbounds %struct.vdec_fb_node, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %fb1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %fb, ptr %fb1.i, align 4
  %fb_free_list.i205 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 4
  %call.i.i.i206 = call zeroext i1 @__list_del_entry_valid(ptr noundef %104) #6
  br i1 %call.i.i.i206, label %if.end.i.i.i209, label %if.then.i.__list_del_entry.exit.i.i212_crit_edge

if.then.i.__list_del_entry.exit.i.i212_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i212

if.end.i.i.i209:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i207 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i.i207, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %104, align 4
  %prev1.i.i.i.i208 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i.i208, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %__list_del_entry.exit.i.i212

__list_del_entry.exit.i.i212:                     ; preds = %if.end.i.i.i209, %if.then.i.__list_del_entry.exit.i.i212_crit_edge
  %prev.i2.i.i210 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %prev.i2.i.i210 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i2.i.i210, align 4
  %call.i.i.i.i211 = call zeroext i1 @__list_add_valid(ptr noundef %104, ptr noundef %113, ptr noundef %fb_free_list.i205) #6
  br i1 %call.i.i.i.i211, label %if.end.i.i.i.i214, label %__list_del_entry.exit.i.i212.add_fb_to_free_list.exit_crit_edge

__list_del_entry.exit.i.i212.add_fb_to_free_list.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i212
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_fb_to_free_list.exit

if.end.i.i.i.i214:                                ; preds = %__list_del_entry.exit.i.i212
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %prev.i2.i.i210 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %104, ptr %prev.i2.i.i210, align 4
  %115 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %fb_free_list.i205, ptr %104, align 4
  %prev3.i.i.i.i213 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i.i.i213, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %104, ptr %113, align 4
  br label %add_fb_to_free_list.exit

add_fb_to_free_list.exit:                         ; preds = %if.end.i.i.i.i214, %__list_del_entry.exit.i.i212.add_fb_to_free_list.exit_crit_edge, %if.then50.add_fb_to_free_list.exit_crit_edge
  %wait_key_frame = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 8
  %118 = ptrtoint ptr %wait_key_frame to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %wait_key_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool51.not = icmp eq i32 %119, 0
  br i1 %tobool51.not, label %add_fb_to_free_list.exit.do.end126_crit_edge, label %do.body53

add_fb_to_free_list.exit.do.end126_crit_edge:     ; preds = %add_fb_to_free_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end126

do.body53:                                        ; preds = %add_fb_to_free_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_decode, %if.then65)) #6
          to label %cleanup [label %if.then65], !srcloc !99

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %ctx66 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %120 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx66, align 4
  %id67 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %id67 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id67, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_decode.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 475, i32 noundef %123) #6
  br label %cleanup

if.end72:                                         ; preds = %store_dec_table.exit
  %resolution_changed = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 6
  %124 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %resolution_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool73.not = icmp eq i32 %125, 0
  br i1 %tobool73.not, label %if.end93, label %do.body75

do.body75:                                        ; preds = %if.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_decode, %if.then87)) #6
          to label %do.end92 [label %if.then87], !srcloc !99

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  %ctx88 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %126 = ptrtoint ptr %ctx88 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ctx88, align 4
  %id89 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %id89 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %id89, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_decode.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 483, i32 noundef %129) #6
  br label %do.end92

do.end92:                                         ; preds = %if.then87, %do.body75
  %130 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %res_chg, align 1
  br i1 %tobool.not, label %do.end92.cleanup_crit_edge, label %if.then.i220

do.end92.cleanup_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i220:                                     ; preds = %do.end92
  %available_fb_node_list.i216 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 2
  %131 = ptrtoint ptr %available_fb_node_list.i216 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %available_fb_node_list.i216, align 4
  %fb1.i217 = getelementptr inbounds %struct.vdec_fb_node, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %fb1.i217 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %fb, ptr %fb1.i217, align 4
  %fb_free_list.i218 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 4
  %call.i.i.i219 = call zeroext i1 @__list_del_entry_valid(ptr noundef %132) #6
  br i1 %call.i.i.i219, label %if.end.i.i.i223, label %if.then.i220.__list_del_entry.exit.i.i226_crit_edge

if.then.i220.__list_del_entry.exit.i.i226_crit_edge: ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i226

if.end.i.i.i223:                                  ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i221 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i221, align 4
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %132, align 4
  %prev1.i.i.i.i222 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i222, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %__list_del_entry.exit.i.i226

__list_del_entry.exit.i.i226:                     ; preds = %if.end.i.i.i223, %if.then.i220.__list_del_entry.exit.i.i226_crit_edge
  %prev.i2.i.i224 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %prev.i2.i.i224 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %prev.i2.i.i224, align 4
  %call.i.i.i.i225 = call zeroext i1 @__list_add_valid(ptr noundef %132, ptr noundef %141, ptr noundef %fb_free_list.i218) #6
  br i1 %call.i.i.i.i225, label %if.end.i.i.i.i228, label %__list_del_entry.exit.i.i226.cleanup_crit_edge

__list_del_entry.exit.i.i226.cleanup_crit_edge:   ; preds = %__list_del_entry.exit.i.i226
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i.i228:                                ; preds = %__list_del_entry.exit.i.i226
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %prev.i2.i.i224 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %132, ptr %prev.i2.i.i224, align 4
  %143 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %fb_free_list.i218, ptr %132, align 4
  %prev3.i.i.i.i227 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %144 = ptrtoint ptr %prev3.i.i.i.i227 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev3.i.i.i.i227, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %132, ptr %141, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.end72
  %ctx94 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %146 = ptrtoint ptr %ctx94 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ctx94, align 4
  %call95 = call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %147, i32 noundef 1, i32 noundef 1000) #6
  %148 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %vsi, align 4
  %load_data = getelementptr inbounds %struct.vdec_vp8_vsi, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %load_data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %load_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool97.not = icmp eq i32 %151, 0
  br i1 %tobool97.not, label %if.end93.if.end99_crit_edge, label %if.then98

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then98:                                        ; preds = %if.end93
  %arrayidx.i231 = getelementptr %struct.vdec_vp8_vsi, ptr %149, i32 0, i32 2, i32 2
  %152 = ptrtoint ptr %hwd9.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hwd9.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %153, i32 256
  %add.ptr2.i = getelementptr i8, ptr %153, i32 260
  br label %do.body.i238

do.body.i238:                                     ; preds = %do.body.i238.do.body.i238_crit_edge, %if.then98
  %i.028.i = phi i32 [ 0, %if.then98 ], [ %inc.i236, %do.body.i238.do.body.i238_crit_edge ]
  %addr.027.i = phi i32 [ 0, %if.then98 ], [ %add.i235, %do.body.i238.do.body.i238_crit_edge ]
  %p.026.i = phi ptr [ %arrayidx.i231, %if.then98 ], [ %incdec.ptr17.i, %do.body.i238.do.body.i238_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  call void @arm_heavy_mb() #6
  %154 = call i32 @llvm.bswap.i32(i32 %addr.027.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 %154) #6, !srcloc !103
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !100
  %156 = call i32 @llvm.bswap.i32(i32 %155) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %incdec.ptr.i234 = getelementptr i32, ptr %p.026.i, i32 1
  %157 = ptrtoint ptr %p.026.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %p.026.i, align 4
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !100
  %159 = call i32 @llvm.bswap.i32(i32 %158) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %incdec.ptr10.i = getelementptr i32, ptr %p.026.i, i32 2
  %160 = ptrtoint ptr %incdec.ptr.i234 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %incdec.ptr.i234, align 4
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %162 = and i32 %161, -256
  %163 = call i32 @llvm.bswap.i32(i32 %162) #6
  %incdec.ptr17.i = getelementptr i32, ptr %p.026.i, i32 3
  %164 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %incdec.ptr10.i, align 4
  %add.i235 = add nuw nsw i32 %addr.027.i, 4
  %inc.i236 = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i237 = icmp eq i32 %inc.i236, 96
  br i1 %exitcond.not.i237, label %do.body.i238.if.end99_crit_edge, label %do.body.i238.do.body.i238_crit_edge

do.body.i238.do.body.i238_crit_edge:              ; preds = %do.body.i238
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i238

do.body.i238.if.end99_crit_edge:                  ; preds = %do.body.i238
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.end99:                                         ; preds = %do.body.i238.if.end99_crit_edge, %if.end93.if.end99_crit_edge
  call fastcc void @vp8_dec_finish(ptr noundef %h_vdec)
  %165 = ptrtoint ptr %cm1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cm1.i, align 4
  %167 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vsi, align 4
  %169 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %top.i, align 4
  %add.ptr.i242 = getelementptr i8, ptr %170, i32 60
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #6, !srcloc !100
  %172 = call i32 @llvm.bswap.i32(i32 %171) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %shr.i243 = lshr i32 %172, 4
  %add.ptr9.i = getelementptr i8, ptr %166, i32 2364
  %add.ptr12.i = getelementptr i8, ptr %166, i32 2368
  br label %for.cond5.preheader.i249

for.cond5.preheader.i249:                         ; preds = %for.cond5.preheader.i249.for.cond5.preheader.i249_crit_edge, %if.end99
  %i.030.i = phi i32 [ 0, %if.end99 ], [ %inc.i247, %for.cond5.preheader.i249.for.cond5.preheader.i249_crit_edge ]
  %add.i244 = add nuw nsw i32 %i.030.i, %shr.i243
  %shl.i245 = shl i32 %add.i244, 2
  %add8.i246 = or i32 %shl.i245, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  call void @arm_heavy_mb() #6
  %173 = call i32 @llvm.bswap.i32(i32 %add8.i246) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %173) #6, !srcloc !103
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !100
  %175 = call i32 @llvm.bswap.i32(i32 %174) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %arrayidx16.i = getelementptr %struct.vdec_vp8_vsi, ptr %168, i32 0, i32 3, i32 %i.030.i, i32 3
  %176 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx16.i, align 4
  %add8.1.i = or i32 %shl.i245, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  call void @arm_heavy_mb() #6
  %177 = call i32 @llvm.bswap.i32(i32 %add8.1.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %177) #6, !srcloc !103
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !100
  %179 = call i32 @llvm.bswap.i32(i32 %178) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %arrayidx16.1.i = getelementptr %struct.vdec_vp8_vsi, ptr %168, i32 0, i32 3, i32 %i.030.i, i32 2
  %180 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx16.1.i, align 4
  %add8.2.i = or i32 %shl.i245, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  call void @arm_heavy_mb() #6
  %181 = call i32 @llvm.bswap.i32(i32 %add8.2.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %181) #6, !srcloc !103
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !100
  %183 = call i32 @llvm.bswap.i32(i32 %182) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %arrayidx16.2.i = getelementptr %struct.vdec_vp8_vsi, ptr %168, i32 0, i32 3, i32 %i.030.i, i32 1
  %184 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx16.2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  call void @arm_heavy_mb() #6
  %185 = call i32 @llvm.bswap.i32(i32 %shl.i245) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %185) #6, !srcloc !103
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !100
  %187 = call i32 @llvm.bswap.i32(i32 %186) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %arrayidx16.3.i = getelementptr %struct.vdec_vp8_vsi, ptr %168, i32 0, i32 3, i32 %i.030.i, i32 0
  %188 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %arrayidx16.3.i, align 4
  %inc.i247 = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i248 = icmp eq i32 %inc.i247, 272
  br i1 %exitcond.not.i248, label %read_hw_segmentation_data.exit, label %for.cond5.preheader.i249.for.cond5.preheader.i249_crit_edge

for.cond5.preheader.i249.for.cond5.preheader.i249_crit_edge: ; preds = %for.cond5.preheader.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i249

read_hw_segmentation_data.exit:                   ; preds = %for.cond5.preheader.i249
  %call100 = call i32 @vpu_dec_end(ptr noundef %vpu2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body104, label %read_hw_segmentation_data.exit.do.end126_crit_edge

read_hw_segmentation_data.exit.do.end126_crit_edge: ; preds = %read_hw_segmentation_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end126

do.body104:                                       ; preds = %read_hw_segmentation_data.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_decode, %if.then116)) #6
          to label %do.end122 [label %if.then116], !srcloc !99

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %ctx94 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ctx94, align 4
  %id118 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %id118 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %id118, align 4
  %frm_cnt119 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 8
  %193 = ptrtoint ptr %frm_cnt119 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %frm_cnt119, align 4
  %show_frame = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 7
  %195 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %show_frame, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_decode.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 504, i32 noundef %192, i32 noundef %194, i32 noundef %196) #6
  br label %do.end122

do.end122:                                        ; preds = %if.then116, %do.body104
  %frm_cnt123 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 8
  %197 = ptrtoint ptr %frm_cnt123 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %frm_cnt123, align 4
  %inc = add i32 %198, 1
  store i32 %inc, ptr %frm_cnt123, align 4
  %199 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %res_chg, align 1
  br label %cleanup

do.end126:                                        ; preds = %read_hw_segmentation_data.exit.do.end126_crit_edge, %add_fb_to_free_list.exit.do.end126_crit_edge
  %err.0 = phi i32 [ %call48, %add_fb_to_free_list.exit.do.end126_crit_edge ], [ %call100, %read_hw_segmentation_data.exit.do.end126_crit_edge ]
  %ctx128 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %200 = ptrtoint ptr %ctx128 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ctx128, align 4
  %id129 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %201, i32 0, i32 6
  %202 = ptrtoint ptr %id129 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %id129, align 4
  %frm_cnt130 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 8
  %204 = ptrtoint ptr %frm_cnt130 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %frm_cnt130, align 4
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 510, i32 noundef %203, i32 noundef %205, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %do.end122, %if.end.i.i.i.i228, %__list_del_entry.exit.i.i226.cleanup_crit_edge, %do.end92.cleanup_crit_edge, %if.then65, %do.body53, %move_fb_list_use_to_free.exit
  %retval.0 = phi i32 [ %call, %move_fb_list_use_to_free.exit ], [ %err.0, %do.end126 ], [ 0, %do.end122 ], [ 0, %if.then65 ], [ 0, %do.body53 ], [ 0, %do.end92.cleanup_crit_edge ], [ 0, %__list_del_entry.exit.i.i226.cleanup_crit_edge ], [ 0, %if.end.i.i.i.i228 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_vp8_get_param(ptr noundef %h_vdec, i32 noundef %type, ptr nocapture noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @get_disp_fb(ptr noundef %h_vdec, ptr noundef %out)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @get_free_fb(ptr noundef %h_vdec, ptr noundef %out)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %vsi.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 11
  %1 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsi.i, align 4
  %pic1.i = getelementptr inbounds %struct.vdec_vp8_vsi, ptr %2, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %out, ptr %pic1.i, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_get_param, %if.then.i)) #6
          to label %do.body4.i [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %ctx.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
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
  %pic_h.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pic_h.i, align 4
  %buf_w.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 2
  %12 = ptrtoint ptr %buf_w.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_w.i, align 4
  %buf_h.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 3
  %14 = ptrtoint ptr %buf_h.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_h.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 288, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #6
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %sw.bb2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_get_param, %if.then16.i)) #6
          to label %cleanup [label %if.then16.i], !srcloc !99

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %ctx17.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %16 = ptrtoint ptr %ctx17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx17.i, align 4
  %id18.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id18.i, align 4
  %fb_sz.i = getelementptr inbounds %struct.vdec_pic_info, ptr %out, i32 0, i32 4
  %20 = ptrtoint ptr %fb_sz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fb_sz.i, align 4
  %arrayidx20.i = getelementptr %struct.vdec_pic_info, ptr %out, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef 290, i32 noundef %19, i32 noundef %21, i32 noundef %23) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %out, align 4
  %top.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 1
  %25 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %top.i, align 4
  %vsi.i14 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 11
  %26 = ptrtoint ptr %vsi.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vsi.i14, align 4
  %pic.i = getelementptr inbounds %struct.vdec_vp8_vsi, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pic.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pic.i, align 8
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 2
  %30 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %width.i, align 4
  %31 = load ptr, ptr %vsi.i14, align 4
  %pic_h.i15 = getelementptr inbounds %struct.vdec_vp8_vsi, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %pic_h.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pic_h.i15, align 4
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 3
  %34 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %height.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_crop_info.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_get_param, %if.then.i18)) #6
          to label %cleanup [label %if.then.i18], !srcloc !99

if.then.i18:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %ctx.i16 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %35 = ptrtoint ptr %ctx.i16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx.i16, align 4
  %id.i17 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %id.i17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i17, align 4
  %39 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out, align 4
  %41 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %top.i, align 4
  %43 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width.i, align 4
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_crop_info.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 563, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %out, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 593, i32 noundef %51, i32 noundef %type) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %if.then.i18, %sw.bb3, %if.then16.i, %do.body4.i, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 0, %do.body4.i ], [ 0, %if.then16.i ], [ 0, %sw.bb3 ], [ 0, %if.then.i18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_vp8_deinit(ptr noundef %h_vdec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp8_deinit.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp8_deinit, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp8_deinit.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 604, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 10
  %call3 = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #6
  %va.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.free_working_buf.exit_crit_edge, label %if.then.i

do.end.free_working_buf.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_working_buf.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %working_buf.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 6
  %ctx.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 9
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %7, ptr noundef %working_buf.i) #6
  br label %free_working_buf.exit

free_working_buf.exit:                            ; preds = %if.then.i, %do.end.free_working_buf.exit_crit_edge
  %vsi.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %h_vdec, i32 0, i32 11
  %8 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %9, align 8
  tail call void @kfree(ptr noundef %h_vdec) #6
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
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_mem_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_get_reg_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp8_dec_finish(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 11
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %prev_y_dma1 = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev_y_dma1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %prev_y_dma1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_dec_finish.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_dec_finish, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 9
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_dec_finish.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 298, i32 noundef %7, i64 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %do.end.if.end21_crit_edge, label %if.then4

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then4:                                         ; preds = %do.end
  %fb_use_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then4
  %node.0.in = phi ptr [ %fb_use_list, %if.then4 ], [ %node.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.0 = load ptr, ptr %node.0.in, align 4
  %cmp7.not = icmp eq ptr %node.0, %fb_use_list
  br i1 %cmp7.not, label %for.cond.if.end21_crit_edge, label %for.body

for.cond.if.end21_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.body:                                         ; preds = %for.cond
  %fb10 = getelementptr inbounds %struct.vdec_fb_node, ptr %node.0, i32 0, i32 1
  %9 = ptrtoint ptr %fb10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fb10, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %12 to i64
  %cmp11 = icmp eq i64 %3, %conv
  br i1 %cmp11, label %if.then13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then13:                                        ; preds = %for.body
  %fb_free_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.0) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.__list_del_entry.exit.i_crit_edge

if.then13.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then13.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.0, ptr noundef %20, ptr noundef %fb_free_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end21_crit_edge

__list_del_entry.exit.i.if.end21_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node.0, ptr %prev.i2.i, align 4
  %22 = ptrtoint ptr %node.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fb_free_list, ptr %node.0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.0, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node.0, ptr %20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end21_crit_edge, %for.cond.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 2
  %25 = ptrtoint ptr %available_fb_node_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %available_fb_node_list, align 4
  %27 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inst, align 4
  %fb26 = getelementptr inbounds %struct.vdec_fb_node, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %fb26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %fb26, align 4
  %fb_use_list28 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 3
  %call.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #6
  br i1 %call.i.i62, label %if.end.i.i65, label %if.end21.__list_del_entry.exit.i68_crit_edge

if.end21.__list_del_entry.exit.i68_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i68

if.end.i.i65:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i63 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i63, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %26, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i64, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i68

__list_del_entry.exit.i68:                        ; preds = %if.end.i.i65, %if.end21.__list_del_entry.exit.i68_crit_edge
  %prev.i2.i66 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %prev.i2.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i66, align 4
  %call.i.i.i67 = tail call zeroext i1 @__list_add_valid(ptr noundef %26, ptr noundef %37, ptr noundef %fb_use_list28) #6
  br i1 %call.i.i.i67, label %if.end.i.i.i70, label %__list_del_entry.exit.i68.list_move_tail.exit71_crit_edge

__list_del_entry.exit.i68.list_move_tail.exit71_crit_edge: ; preds = %__list_del_entry.exit.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit71

if.end.i.i.i70:                                   ; preds = %__list_del_entry.exit.i68
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %prev.i2.i66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %26, ptr %prev.i2.i66, align 4
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %fb_use_list28, ptr %26, align 4
  %prev3.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i69, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %26, ptr %37, align 4
  br label %list_move_tail.exit71

list_move_tail.exit71:                            ; preds = %if.end.i.i.i70, %__list_del_entry.exit.i68.list_move_tail.exit71_crit_edge
  %42 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vsi, align 4
  %show_frame = getelementptr inbounds %struct.vdec_vp8_dec_info, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %show_frame, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool31.not = icmp eq i32 %45, 0
  br i1 %tobool31.not, label %list_move_tail.exit71.if.end41_crit_edge, label %if.then32

list_move_tail.exit71.if.end41_crit_edge:         ; preds = %list_move_tail.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then32:                                        ; preds = %list_move_tail.exit71
  %46 = ptrtoint ptr %available_fb_node_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %available_fb_node_list, align 4
  %48 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inst, align 4
  %fb39 = getelementptr inbounds %struct.vdec_fb_node, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %fb39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %fb39, align 4
  %fb_disp_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 5
  %call.i.i72 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #6
  br i1 %call.i.i72, label %if.end.i.i75, label %if.then32.__list_del_entry.exit.i78_crit_edge

if.then32.__list_del_entry.exit.i78_crit_edge:    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i78

if.end.i.i75:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i73 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i73, align 4
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %47, align 4
  %prev1.i.i.i74 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i74, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %__list_del_entry.exit.i78

__list_del_entry.exit.i78:                        ; preds = %if.end.i.i75, %if.then32.__list_del_entry.exit.i78_crit_edge
  %prev.i2.i76 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %prev.i2.i76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i2.i76, align 4
  %call.i.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %47, ptr noundef %58, ptr noundef %fb_disp_list) #6
  br i1 %call.i.i.i77, label %if.end.i.i.i80, label %__list_del_entry.exit.i78.if.end41_crit_edge

__list_del_entry.exit.i78.if.end41_crit_edge:     ; preds = %__list_del_entry.exit.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end.i.i.i80:                                   ; preds = %__list_del_entry.exit.i78
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i2.i76 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %47, ptr %prev.i2.i76, align 4
  %60 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %fb_disp_list, ptr %47, align 4
  %prev3.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i79, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %47, ptr %58, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end.i.i.i80, %__list_del_entry.exit.i78.if.end41_crit_edge, %list_move_tail.exit71.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_disp_fb(ptr noundef %inst, ptr nocapture noundef writeonly %out_fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_disp_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 5
  %0 = ptrtoint ptr %fb_disp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fb_disp_list, align 4
  %cmp.not = icmp eq ptr %1, %fb_disp_list
  %tobool.not48 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not48
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %9, ptr noundef %available_fb_node_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %available_fb_node_list, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %1, ptr %9, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %fb3 = getelementptr inbounds %struct.vdec_fb_node, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb3, align 4
  %status = getelementptr inbounds %struct.vdec_fb, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_disp_fb.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_disp_fb, %if.then9)) #6
          to label %if.end32 [label %if.then9], !srcloc !99

if.then9:                                         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 9
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb3, align 4
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_disp_fb.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 526, i32 noundef %21, ptr noundef %23, i32 noundef %25) #6
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_disp_fb.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_disp_fb, %if.then26)) #6
          to label %if.end32 [label %if.then26], !srcloc !99

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ctx27 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 9
  %26 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx27, align 4
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_disp_fb.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef 529, i32 noundef %29) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.else, %if.then9, %list_move_tail.exit
  %fb.0 = phi ptr [ %15, %if.then9 ], [ null, %if.then26 ], [ %15, %list_move_tail.exit ], [ null, %if.else ]
  %30 = ptrtoint ptr %out_fb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fb.0, ptr %out_fb, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_free_fb(ptr noundef %inst, ptr nocapture noundef writeonly %out_fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_free_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 4
  %0 = ptrtoint ptr %fb_free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fb_free_list, align 4
  %cmp.not = icmp eq ptr %1, %fb_free_list
  %tobool.not48 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not48
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %9, ptr noundef %available_fb_node_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %available_fb_node_list, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %1, ptr %9, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %fb3 = getelementptr inbounds %struct.vdec_fb_node, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb3, align 4
  %status = getelementptr inbounds %struct.vdec_fb, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %or = or i32 %17, 2
  store i32 %or, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_fb.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_fb, %if.then9)) #6
          to label %if.end32 [label %if.then9], !srcloc !99

if.then9:                                         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 9
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb3, align 4
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_fb.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 547, i32 noundef %21, ptr noundef %23, i32 noundef %25) #6
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_fb.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_fb, %if.then26)) #6
          to label %if.end32 [label %if.then26], !srcloc !99

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ctx27 = getelementptr inbounds %struct.vdec_vp8_inst, ptr %inst, i32 0, i32 9
  %26 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx27, align 4
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_fb.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef 550, i32 noundef %29) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.else, %if.then9, %list_move_tail.exit
  %fb.0 = phi ptr [ %15, %if.then9 ], [ null, %if.then26 ], [ %15, %list_move_tail.exit ], [ null, %if.else ]
  %30 = ptrtoint ptr %out_fb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fb.0, ptr %out_fb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @vdec_vp8_if, !1, !"vdec_vp8_if", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 611, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 407, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdec_vp8_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdec_vp8_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 418, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vdec_vp8_init.__UNIQUE_ID_ddebug301, !9, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 373, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @alloc_working_buf._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @alloc_working_buf._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 451, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug302, !19, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 460, i32 2}
!25 = !{ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug303, !24, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 475, i32 4}
!29 = !{ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug304, !28, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 483, i32 3}
!33 = !{ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug305, !32, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!34 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 503, i32 2}
!37 = !{ptr @vdec_vp8_decode.__UNIQUE_ID_ddebug306, !36, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 510, i32 2}
!41 = !{ptr @vdec_vp8_decode._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @vdec_vp8_decode._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 298, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vp8_dec_finish.__UNIQUE_ID_ddebug300, !44, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!47 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 593, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vdec_vp8_get_param._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @vdec_vp8_get_param._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 525, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @get_disp_fb.__UNIQUE_ID_ddebug308, !54, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!57 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 529, i32 3}
!60 = !{ptr @get_disp_fb.__UNIQUE_ID_ddebug309, !59, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 546, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @get_free_fb.__UNIQUE_ID_ddebug311, !63, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!66 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 550, i32 3}
!69 = !{ptr @get_free_fb.__UNIQUE_ID_ddebug312, !68, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!70 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 287, i32 2}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug298, !72, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!75 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 289, i32 2}
!78 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug299, !77, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!79 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 562, i32 2}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @get_crop_info.__UNIQUE_ID_ddebug313, !81, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!84 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp8_if.c", i32 604, i32 2}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vdec_vp8_deinit.__UNIQUE_ID_ddebug314, !86, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!89 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148215823, i64 2148215828, i64 2148215841, i64 2148215885, i64 2148215919, i64 2148215940}
!100 = !{i64 7384907}
!101 = !{i64 2156509436}
!102 = !{i64 2156510520}
!103 = !{i64 7384489}
!104 = !{i64 2156510901}
!105 = !{i64 2156513518}
!106 = !{i64 2156513900}
!107 = !{i64 2156514290}
!108 = !{i64 2156514663}
!109 = !{i64 2156515285}
!110 = !{i64 2156515513}
!111 = !{i64 2156515940}
!112 = !{i64 2156516324}
!113 = !{i64 2156516719}
!114 = !{i64 2156517122}
!115 = !{i64 2156517504}
!116 = !{i64 2156517885}
!117 = !{i64 2156518266}
!118 = !{i64 2156518647}
!119 = !{i64 2156519035}
!120 = !{i64 2156519423}
!121 = !{i64 2156519814}
!122 = !{i64 2156520454}
!123 = !{i64 2156520922}
!124 = !{i64 2156521390}
!125 = !{i64 2156511592}
!126 = !{i64 2156512676}
!127 = !{i64 2156513308}
