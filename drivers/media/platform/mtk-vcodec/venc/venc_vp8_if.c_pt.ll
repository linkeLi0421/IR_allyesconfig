; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.venc_common_if = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venc_vp8_inst = type { ptr, [13 x %struct.mtk_vcodec_mem], i8, i32, i32, %struct.venc_vpu_inst, ptr, ptr }
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
%struct.venc_vp8_vpu_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venc_vp8_vsi = type { %struct.venc_vp8_vpu_config, [13 x %struct.venc_vp8_vpu_buf] }
%struct.venc_vp8_vpu_buf = type { i32, i32, i32 }

@venc_vp8_if = dso_local constant { %struct.venc_common_if, [16 x i8] } { %struct.venc_common_if { ptr @vp8_enc_init, ptr @vp8_enc_encode, ptr @vp8_enc_set_param, ptr @vp8_enc_deinit }, [16 x i8] zeroinitializer }, align 32
@vp8_enc_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_enc\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vp8_enc_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@vp8_enc_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: -\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: -\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vp8_enc_encode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vp8_enc_encode\00", [17 x i8] zeroinitializer }, align 32
@vp8_enc_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.7, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: opt not support:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@vp8_enc_encode._entry_ptr = internal global ptr @vp8_enc_encode._entry, section ".printk_index", align 4
@vp8_enc_encode.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.5, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vp8_enc_encode_frame.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp8_enc_encode_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[MTK_VCODEC][%d]: ->frm_cnt=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(),%d: [MTK_VCODEC][%d]: ->frm_cnt=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@vp8_enc_encode_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: irq_status=%d failed\0A\00", [38 x i8] zeroinitializer }, align 32
@vp8_enc_encode_frame._entry_ptr = internal global ptr @vp8_enc_encode_frame._entry, section ".printk_index", align 4
@vp8_enc_encode_frame._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vp8_enc_compose_one_frame failed\0A\00", [58 x i8] zeroinitializer }, align 32
@vp8_enc_encode_frame._entry_ptr.15 = internal global ptr @vp8_enc_encode_frame._entry.13, section ".printk_index", align 4
@vp8_enc_encode_frame.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[MTK_VCODEC][%d]: <-size=%d key_frm=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(),%d: [MTK_VCODEC][%d]: <-size=%d key_frm=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@vp8_enc_wait_venc_done.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vp8_enc_wait_venc_done\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[MTK_VCODEC][%d]: isr return %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(),%d: [MTK_VCODEC][%d]: isr return %x\0A\00", [54 x i8] zeroinitializer }, align 32
@vp8_enc_compose_one_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: bitstream buf size is too small(%zu)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vp8_enc_compose_one_frame\00", [38 x i8] zeroinitializer }, align 32
@vp8_enc_compose_one_frame._entry_ptr = internal global ptr @vp8_enc_compose_one_frame._entry, section ".printk_index", align 4
@vp8_enc_set_param.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vp8_enc_set_param\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[MTK_VCODEC][%d]: ->type=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(),%d: [MTK_VCODEC][%d]: ->type=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@vp8_enc_set_param.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[MTK_VCODEC][%d]: set ts_mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(),%d: [MTK_VCODEC][%d]: set ts_mode\0A\00", [56 x i8] zeroinitializer }, align 32
@vp8_enc_set_param.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.5, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vp8_enc_free_work_buf.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vp8_enc_free_work_buf\00", [42 x i8] zeroinitializer }, align 32
@vp8_enc_free_work_buf.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.5, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vp8_enc_alloc_work_buf\00", [41 x i8] zeroinitializer }, align 32
@vp8_enc_alloc_work_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.29, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: cannot alloc work_bufs[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@vp8_enc_alloc_work_buf._entry_ptr = internal global ptr @vp8_enc_alloc_work_buf._entry, section ".printk_index", align 4
@vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[MTK_VCODEC][%d]: work_bufs[%d] va=0x%p,iova=%pad,size=%zu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s(),%d: [MTK_VCODEC][%d]: work_bufs[%d] va=0x%p,iova=%pad,size=%zu\0A\00", [59 x i8] zeroinitializer }, align 32
@vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vp8_enc_deinit.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.3, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vp8_enc_deinit\00", [17 x i8] zeroinitializer }, align 32
@vp8_enc_deinit.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.5, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"venc_vp8_if\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 463, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 341, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 347, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 367, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 381, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 303, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 311, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 316, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 321, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 227, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 272, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 401, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 432, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 144, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 162, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 180, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 202, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [56 x i8] c"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 450, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @vp8_enc_alloc_work_buf._entry, ptr @vp8_enc_alloc_work_buf._entry_ptr, ptr @vp8_enc_compose_one_frame._entry, ptr @vp8_enc_compose_one_frame._entry_ptr, ptr @vp8_enc_encode._entry, ptr @vp8_enc_encode._entry_ptr, ptr @vp8_enc_encode_frame._entry, ptr @vp8_enc_encode_frame._entry.13, ptr @vp8_enc_encode_frame._entry_ptr, ptr @vp8_enc_encode_frame._entry_ptr.15, ptr @venc_vp8_if, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_vp8_if to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_enc_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_enc_encode_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_enc_encode_frame._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_enc_compose_one_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_enc_alloc_work_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp8_enc_init(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.venc_vp8_inst, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx1, align 8
  %vpu_inst = getelementptr inbounds %struct.venc_vp8_inst, ptr %call7.i.i, i32 0, i32 5
  %ctx2 = getelementptr inbounds %struct.venc_vp8_inst, ptr %call7.i.i, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %ctx2, align 8
  %id = getelementptr inbounds %struct.venc_vp8_inst, ptr %call7.i.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %id, align 4
  %call5 = tail call ptr @mtk_vcodec_get_reg_addr(ptr noundef %ctx, i32 noundef 13) #6
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_init, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !92

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx1, align 8
  %id12 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id12, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_init.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 341, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %call15 = tail call i32 @vpu_enc_init(ptr noundef %vpu_inst) #6
  %vsi = getelementptr inbounds %struct.venc_vp8_inst, ptr %call7.i.i, i32 0, i32 5, i32 7
  %9 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi, align 8
  %vsi17 = getelementptr inbounds %struct.venc_vp8_inst, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %vsi17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %vsi17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_init, %if.then30)) #6
          to label %do.end35 [label %if.then30], !srcloc !92

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 8
  %id32 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id32, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_init.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef %15) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool36.not = icmp eq i32 %call15, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.else:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %16 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %drv_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call15, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp8_enc_encode(ptr noundef %handle, i32 noundef %opt, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr nocapture noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_encode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_encode, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_encode.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef 367, i32 noundef %5) #6
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %opt)
  %cond = icmp eq i32 %opt, 1
  br i1 %cond, label %sw.bb, label %do.end14

sw.bb:                                            ; preds = %do.end
  %call5 = tail call fastcc i32 @vp8_enc_encode_frame(ptr noundef %handle, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr noundef %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb.encode_err_crit_edge

sw.bb.encode_err_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_err

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %is_key_frm = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 5, i32 5
  %10 = ptrtoint ptr %is_key_frm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_key_frm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9 = icmp ne i32 %11, 0
  %is_key_frm10 = getelementptr inbounds %struct.venc_done_result, ptr %result, i32 0, i32 1
  %frombool11 = zext i1 %tobool9 to i8
  %12 = ptrtoint ptr %is_key_frm10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool11, ptr %is_key_frm10, align 4
  br label %encode_err

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx1, align 4
  %id17 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id17, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 381, i32 noundef %16, i32 noundef %opt) #10
  br label %encode_err

encode_err:                                       ; preds = %do.end14, %if.end8, %sw.bb.encode_err_crit_edge
  %ret.0 = phi i32 [ %call5, %sw.bb.encode_err_crit_edge ], [ 0, %if.end8 ], [ -22, %do.end14 ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %enc_irq20 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %enc_irq20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enc_irq20, align 4
  tail call void @disable_irq(i32 noundef %20) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_encode.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_encode, %if.then33)) #6
          to label %do.end38 [label %if.then33], !srcloc !92

if.then33:                                        ; preds = %encode_err
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx1, align 4
  %id35 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id35, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_encode.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 389, i32 noundef %24) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %encode_err
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp8_enc_set_param(ptr noundef %handle, i32 noundef %type, ptr noundef %enc_prm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_set_param.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_set_param, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_set_param.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 401, i32 noundef %3, i32 noundef %type) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb35
  ]

sw.bb:                                            ; preds = %do.end
  %5 = ptrtoint ptr %enc_prm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enc_prm, align 4
  %vsi = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 6
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
  %bitrate5 = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bitrate5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %bitrate5, align 4
  %width = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 3
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %16 = load ptr, ptr %vsi, align 4
  %pic_w = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pic_w to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %pic_w, align 4
  %height = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = load ptr, ptr %vsi, align 4
  %pic_h = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %pic_h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %pic_h, align 4
  %buf_width = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 5
  %22 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_width, align 4
  %24 = load ptr, ptr %vsi, align 4
  %buf_w = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %buf_w to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %buf_w, align 4
  %buf_height = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 6
  %26 = ptrtoint ptr %buf_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_height, align 4
  %28 = load ptr, ptr %vsi, align 4
  %buf_h = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %buf_h to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %buf_h, align 4
  %gop_size = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 10
  %30 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gop_size, align 4
  %32 = load ptr, ptr %vsi, align 4
  %gop_size16 = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %gop_size16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %gop_size16, align 4
  %frm_rate = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 7
  %34 = ptrtoint ptr %frm_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frm_rate, align 4
  %36 = load ptr, ptr %vsi, align 4
  %framerate = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %framerate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %framerate, align 4
  %ts_mode = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 4
  %38 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ts_mode, align 4
  %40 = load ptr, ptr %vsi, align 4
  %ts_mode21 = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %ts_mode21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %ts_mode21, align 4
  %vpu_inst = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 5
  %call22 = tail call i32 @vpu_enc_set_param(ptr noundef %vpu_inst, i32 noundef 0, ptr noundef %enc_prm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb.do.body57_crit_edge

sw.bb.do.body57_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end25:                                         ; preds = %sw.bb
  %work_buf_allocated = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 2
  %42 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %work_buf_allocated, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool26.not = icmp eq i8 %43, 0
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vp8_enc_free_work_buf(ptr noundef %handle)
  %44 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %work_buf_allocated, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %call30 = tail call fastcc i32 @vp8_enc_alloc_work_buf(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.do.body57_crit_edge

if.end29.do.body57_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %work_buf_allocated, align 4
  br label %do.body57

sw.bb35:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ts_mode36 = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 4
  %46 = ptrtoint ptr %ts_mode36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %ts_mode36, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_set_param.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_set_param, %if.then49)) #6
          to label %do.body57 [label %if.then49], !srcloc !92

if.then49:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %ctx50 = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 7
  %47 = ptrtoint ptr %ctx50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx50, align 4
  %id51 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id51, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_set_param.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.23, i32 noundef 432, i32 noundef %50) #6
  br label %do.body57

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_inst55 = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 5
  %call56 = tail call i32 @vpu_enc_set_param(ptr noundef %vpu_inst55, i32 noundef %type, ptr noundef %enc_prm) #6
  br label %do.body57

do.body57:                                        ; preds = %sw.default, %if.then49, %sw.bb35, %if.end33, %if.end29.do.body57_crit_edge, %sw.bb.do.body57_crit_edge
  %ret.0 = phi i32 [ %call56, %sw.default ], [ 0, %if.then49 ], [ %call22, %sw.bb.do.body57_crit_edge ], [ %call30, %if.end29.do.body57_crit_edge ], [ 0, %if.end33 ], [ 0, %sw.bb35 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_set_param.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_set_param, %if.then69)) #6
          to label %do.end74 [label %if.then69], !srcloc !92

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %ctx70 = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 7
  %51 = ptrtoint ptr %ctx70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx70, align 4
  %id71 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %id71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id71, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_set_param.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23, i32 noundef 440, i32 noundef %54) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body57
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp8_enc_deinit(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_deinit.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_deinit, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_deinit.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, i32 noundef 450, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu_inst = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 5
  %call3 = tail call i32 @vpu_enc_deinit(ptr noundef %vpu_inst) #6
  %work_buf_allocated = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 2
  %4 = ptrtoint ptr %work_buf_allocated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %work_buf_allocated, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.end.do.body7_crit_edge, label %if.then5

do.end.do.body7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vp8_enc_free_work_buf(ptr noundef %handle)
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.end.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_deinit.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_deinit, %if.then19)) #6
          to label %do.end24 [label %if.then19], !srcloc !92

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %ctx20 = getelementptr inbounds %struct.venc_vp8_inst, ptr %handle, i32 0, i32 7
  %6 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx20, align 4
  %id21 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_deinit.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33, i32 noundef 457, i32 noundef %9) #6
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
define internal fastcc i32 @vp8_enc_encode_frame(ptr noundef %inst, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr nocapture noundef %bs_size) unnamed_addr #0 align 64 {
entry:
  %ac_tag.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_encode_frame.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_encode_frame, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %frm_cnt = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 3
  %4 = ptrtoint ptr %frm_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frm_cnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_encode_frame.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 303, i32 noundef %3, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vpu_inst = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 5
  %call3 = tail call i32 @vpu_enc_encode(ptr noundef %vpu_inst, i32 noundef 0, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %ctx1.i = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 7
  %6 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx1.i, align 4
  %call.i = tail call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %7, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.do.end11_crit_edge

if.end6.do.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then.i:                                        ; preds = %if.end6
  %irq_status2.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %irq_status2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_status2.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_wait_venc_done.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_encode_frame, %if.then7.i)) #6
          to label %vp8_enc_wait_venc_done.exit [label %if.then7.i], !srcloc !92

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx1.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_wait_venc_done.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 227, i32 noundef %13, i32 noundef %9) #6
  br label %vp8_enc_wait_venc_done.exit

vp8_enc_wait_venc_done.exit:                      ; preds = %if.then7.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.not = icmp eq i32 %9, 4
  br i1 %cmp.not, label %if.end16, label %vp8_enc_wait_venc_done.exit.do.end11_crit_edge

vp8_enc_wait_venc_done.exit.do.end11_crit_edge:   ; preds = %vp8_enc_wait_venc_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end11:                                         ; preds = %vp8_enc_wait_venc_done.exit.do.end11_crit_edge, %if.end6.do.end11_crit_edge
  %irq_status.0.i73 = phi i32 [ %9, %vp8_enc_wait_venc_done.exit.do.end11_crit_edge ], [ 0, %if.end6.do.end11_crit_edge ]
  %14 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx1.i, align 4
  %id14 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, i32 noundef 311, i32 noundef %17, i32 noundef %irq_status.0.i73) #10
  br label %cleanup

if.end16:                                         ; preds = %vp8_enc_wait_venc_done.exit
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ac_tag.i)
  %ac_tag.i.3.ac_tag.i.3..sroa_idx77 = getelementptr inbounds i8, ptr %ac_tag.i, i32 3
  %18 = call ptr @memset(ptr %ac_tag.i.3.ac_tag.i.3..sroa_idx77, i32 255, i32 7)
  %19 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inst, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 152
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !94
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %23 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inst, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %24, i32 232
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #6, !srcloc !94
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %is_key_frm.i = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %is_key_frm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is_key_frm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i66 = icmp eq i32 %28, 0
  %lnot.ext.i = zext i1 %tobool.not.i66 to i32
  %shl.i = shl i32 %26, 5
  %or.i = or i32 %shl.i, %lnot.ext.i
  %29 = trunc i32 %or.i to i8
  %conv.i = or i8 %29, 16
  %30 = ptrtoint ptr %ac_tag.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %ac_tag.i, align 1
  %shr.i = lshr i32 %shl.i, 8
  %conv4.i = trunc i32 %shr.i to i8
  %ac_tag.i.1.ac_tag.i.1.ac_tag.1.ac_tag.1.ac_tag.1..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 1
  %31 = ptrtoint ptr %ac_tag.i.1.ac_tag.i.1.ac_tag.1.ac_tag.1.ac_tag.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4.i, ptr %ac_tag.i.1.ac_tag.i.1.ac_tag.1.ac_tag.1.ac_tag.1..sroa_idx, align 1
  %shr6.i = lshr i32 %shl.i, 16
  %conv8.i = trunc i32 %shr6.i to i8
  %ac_tag.i.2.ac_tag.i.2.ac_tag.2.ac_tag.2.ac_tag.2..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 2
  %32 = ptrtoint ptr %ac_tag.i.2.ac_tag.i.2.ac_tag.2.ac_tag.2.ac_tag.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv8.i, ptr %ac_tag.i.2.ac_tag.i.2.ac_tag.2.ac_tag.2.ac_tag.2..sroa_idx, align 1
  br i1 %tobool.not.i66, label %if.end16.if.end.i_crit_edge, label %if.then.i67

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i67:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ac_tag.i.3.ac_tag.i.3..sroa_idx77 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -99, ptr %ac_tag.i.3.ac_tag.i.3..sroa_idx77, align 1
  %ac_tag.i.4.ac_tag.i.4.ac_tag.4.ac_tag.4.ac_tag.4..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 4
  %34 = ptrtoint ptr %ac_tag.i.4.ac_tag.i.4.ac_tag.4.ac_tag.4.ac_tag.4..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %ac_tag.i.4.ac_tag.i.4.ac_tag.4.ac_tag.4.ac_tag.4..sroa_idx, align 1
  %ac_tag.i.5.ac_tag.i.5.ac_tag.5.ac_tag.5.ac_tag.5..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 5
  %35 = ptrtoint ptr %ac_tag.i.5.ac_tag.i.5.ac_tag.5.ac_tag.5.ac_tag.5..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 42, ptr %ac_tag.i.5.ac_tag.i.5.ac_tag.5.ac_tag.5.ac_tag.5..sroa_idx, align 1
  %vsi.i = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 6
  %36 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsi.i, align 4
  %pic_w.i = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %pic_w.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pic_w.i, align 4
  %conv14.i = trunc i32 %39 to i8
  %ac_tag.i.6.ac_tag.i.6.ac_tag.6.ac_tag.6.ac_tag.6..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 6
  %40 = ptrtoint ptr %ac_tag.i.6.ac_tag.i.6.ac_tag.6.ac_tag.6.ac_tag.6..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv14.i, ptr %ac_tag.i.6.ac_tag.i.6.ac_tag.6.ac_tag.6.ac_tag.6..sroa_idx, align 1
  %shr19.i = lshr i32 %39, 8
  %conv20.i = trunc i32 %shr19.i to i8
  %ac_tag.i.7.ac_tag.i.7.ac_tag.7.ac_tag.7.ac_tag.7..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 7
  %41 = ptrtoint ptr %ac_tag.i.7.ac_tag.i.7.ac_tag.7.ac_tag.7.ac_tag.7..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv20.i, ptr %ac_tag.i.7.ac_tag.i.7.ac_tag.7.ac_tag.7.ac_tag.7..sroa_idx, align 1
  %pic_h.i = getelementptr inbounds %struct.venc_vp8_vpu_config, ptr %37, i32 0, i32 3
  %42 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pic_h.i, align 4
  %conv24.i = trunc i32 %43 to i8
  %ac_tag.i.8.ac_tag.i.8.ac_tag.8.ac_tag.8.ac_tag.8..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 8
  %44 = ptrtoint ptr %ac_tag.i.8.ac_tag.i.8.ac_tag.8.ac_tag.8.ac_tag.8..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv24.i, ptr %ac_tag.i.8.ac_tag.i.8.ac_tag.8.ac_tag.8.ac_tag.8..sroa_idx, align 1
  %shr29.i = lshr i32 %43, 8
  %conv30.i = trunc i32 %shr29.i to i8
  %ac_tag.i.9.ac_tag.i.9.ac_tag.9.ac_tag.9.ac_tag.9..sroa_idx = getelementptr inbounds i8, ptr %ac_tag.i, i32 9
  %45 = ptrtoint ptr %ac_tag.i.9.ac_tag.i.9.ac_tag.9.ac_tag.9.ac_tag.9..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv30.i, ptr %ac_tag.i.9.ac_tag.i.9.ac_tag.9.ac_tag.9.ac_tag.9..sroa_idx, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i67, %if.end16.if.end.i_crit_edge
  %ac_tag_size.0.i = phi i32 [ 10, %if.then.i67 ], [ 3, %if.end16.if.end.i_crit_edge ]
  %46 = ptrtoint ptr %bs_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bs_buf, align 4
  %add.i = add i32 %26, %22
  %add32.i = add i32 %add.i, %ac_tag_size.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add32.i)
  %cmp33.i = icmp ult i32 %47, %add32.i
  br i1 %cmp33.i, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx1.i, align 4
  %id.i68 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %id.i68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id.i68, align 4
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 273, i32 noundef %51, i32 noundef %47) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ac_tag.i)
  %52 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx1.i, align 4
  %id25 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 316, i32 noundef %55) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %va.i = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 1
  %56 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %va.i, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 %26
  %add.ptr39.i = getelementptr i8, ptr %add.ptr.i, i32 %ac_tag_size.0.i
  %58 = call ptr @memmove(ptr %add.ptr39.i, ptr %57, i32 %22)
  %59 = load ptr, ptr %va.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %59, i32 %ac_tag_size.0.i
  %va44.i = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 7, i32 1
  %60 = ptrtoint ptr %va44.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %va44.i, align 4
  %62 = call ptr @memcpy(ptr %add.ptr42.i, ptr %61, i32 %26)
  %63 = load ptr, ptr %va.i, align 4
  %64 = call ptr @memcpy(ptr %63, ptr %ac_tag.i, i32 %ac_tag_size.0.i)
  %65 = ptrtoint ptr %bs_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add32.i, ptr %bs_size, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ac_tag.i)
  %frm_cnt28 = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 3
  %66 = ptrtoint ptr %frm_cnt28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %frm_cnt28, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %frm_cnt28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_encode_frame.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_encode_frame, %if.then41)) #6
          to label %cleanup [label %if.then41], !srcloc !92

if.then41:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx1.i, align 4
  %id43 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %id43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id43, align 4
  %72 = ptrtoint ptr %bs_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bs_size, align 4
  %74 = ptrtoint ptr %is_key_frm.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %is_key_frm.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_encode_frame.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef 322, i32 noundef %71, i32 noundef %73, i32 noundef %75) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end27, %do.end22, %do.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end11 ], [ -22, %do.end22 ], [ %call3, %do.end.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_set_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp8_enc_free_work_buf(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_free_work_buf.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_free_work_buf, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_free_work_buf.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, i32 noundef 144, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx6 = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 7
  %arrayidx = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %do.end.for.inc_crit_edge, label %if.end5

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %7, ptr noundef %arrayidx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.1 = icmp eq i32 %9, 0
  br i1 %cmp3.1, label %for.inc.for.inc.1_crit_edge, label %if.end5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end5.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %11, ptr noundef %arrayidx.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.2 = icmp eq i32 %13, 0
  br i1 %cmp3.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end5.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %15, ptr noundef %arrayidx.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end5.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.3 = icmp eq i32 %17, 0
  br i1 %cmp3.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end5.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %19, ptr noundef %arrayidx.3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end5.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.4 = icmp eq i32 %21, 0
  br i1 %cmp3.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end5.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %23, ptr noundef %arrayidx.4) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end5.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3.5 = icmp eq i32 %25, 0
  br i1 %cmp3.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end5.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end5.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %27, ptr noundef %arrayidx.5) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end5.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.6 = icmp eq i32 %29, 0
  br i1 %cmp3.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end5.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.end5.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %31, ptr noundef %arrayidx.6) #6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end5.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp3.7 = icmp eq i32 %33, 0
  br i1 %cmp3.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end5.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end5.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %35, ptr noundef %arrayidx.7) #6
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end5.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp3.8 = icmp eq i32 %37, 0
  br i1 %cmp3.8, label %for.inc.7.for.inc.8_crit_edge, label %if.end5.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8

if.end5.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %39, ptr noundef %arrayidx.8) #6
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end5.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 9
  %40 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp3.9 = icmp eq i32 %41, 0
  br i1 %cmp3.9, label %for.inc.8.for.inc.9_crit_edge, label %if.end5.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9

if.end5.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %43, ptr noundef %arrayidx.9) #6
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end5.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 10
  %44 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp3.10 = icmp eq i32 %45, 0
  br i1 %cmp3.10, label %for.inc.9.for.inc.10_crit_edge, label %if.end5.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.10

if.end5.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %47, ptr noundef %arrayidx.10) #6
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end5.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 11
  %48 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp3.11 = icmp eq i32 %49, 0
  br i1 %cmp3.11, label %for.inc.10.for.inc.11_crit_edge, label %if.end5.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.11

if.end5.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %51, ptr noundef %arrayidx.11) #6
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end5.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 12
  %52 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp3.12 = icmp eq i32 %53, 0
  br i1 %cmp3.12, label %for.inc.11.for.inc.12_crit_edge, label %if.end5.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.12

if.end5.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx6, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %55, ptr noundef %arrayidx.12) #6
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end5.12, %for.inc.11.for.inc.12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_free_work_buf.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_free_work_buf, %if.then21)) #6
          to label %do.end26 [label %if.then21], !srcloc !92

if.then21:                                        ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx6, align 4
  %id23 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id23, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_free_work_buf.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28, i32 noundef 153, i32 noundef %59) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %for.inc.12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vp8_enc_alloc_work_buf(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 6
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %work_bufs = getelementptr inbounds %struct.venc_vp8_vsi, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_alloc_work_buf, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctx = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29, i32 noundef 162, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx11 = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 7
  %ctx30 = getelementptr inbounds %struct.venc_vp8_inst, ptr %inst, i32 0, i32 5, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0136 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venc_vp8_vpu_buf, ptr %work_bufs, i32 %i.0136
  %size = getelementptr %struct.venc_vp8_vpu_buf, ptr %work_bufs, i32 %i.0136, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %arrayidx9 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 %i.0136
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx9, align 4
  %9 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx11, align 4
  %call14 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %10, ptr noundef %arrayidx9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx11, align 4
  %id22 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %id22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id22, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 181, i32 noundef %14, i32 noundef %i.0136) #10
  tail call fastcc void @vp8_enc_free_work_buf(ptr noundef %inst)
  br label %cleanup

if.end24:                                         ; preds = %if.end5
  %i.0.off = add nsw i32 %i.0136, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.off)
  %switch = icmp ult i32 %i.0.off, 3
  br i1 %switch, label %if.then29, label %if.end24.if.end37_crit_edge

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx30, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw_handler, align 8
  %vpua = getelementptr %struct.venc_vp8_vpu_buf, ptr %work_bufs, i32 %i.0136, i32 1
  %21 = ptrtoint ptr %vpua to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vpua, align 4
  %call32 = tail call ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef %20, i32 noundef %22) #6
  %va = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 %i.0136, i32 1
  %23 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %va, align 4
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %27 = call ptr @memcpy(ptr %24, ptr %call32, i32 %26)
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end24.if.end37_crit_edge
  %dma_addr = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 %i.0136, i32 2
  %28 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_alloc_work_buf, %if.then53)) #6
          to label %for.inc [label %if.then53], !srcloc !92

if.then53:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx11, align 4
  %id55 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %id55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id55, align 4
  %va58 = getelementptr %struct.venc_vp8_inst, ptr %inst, i32 0, i32 1, i32 %i.0136, i32 1
  %35 = ptrtoint ptr %va58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %va58, align 4
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef 206, i32 noundef %34, i32 noundef %i.0136, ptr noundef %36, ptr noundef %dma_addr, i32 noundef %38) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then53, %if.end37, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %do.body68, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body68:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp8_enc_alloc_work_buf, %if.then80)) #6
          to label %cleanup [label %if.then80], !srcloc !92

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx11, align 4
  %id82 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %id82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id82, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29, i32 noundef 209, i32 noundef %42) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body68, %do.end19
  %retval.0 = phi i32 [ %call14, %do.end19 ], [ 0, %if.then80 ], [ 0, %do.body68 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_mem_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_enc_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @venc_vp8_if, !1, !"venc_vp8_if", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 463, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 341, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vp8_enc_init.__UNIQUE_ID_ddebug306, !3, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 347, i32 2}
!11 = !{ptr @vp8_enc_init.__UNIQUE_ID_ddebug307, !10, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 367, i32 2}
!15 = !{ptr @vp8_enc_encode.__UNIQUE_ID_ddebug308, !14, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 381, i32 3}
!18 = !{ptr @vp8_enc_encode._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vp8_enc_encode._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vp8_enc_encode.__UNIQUE_ID_ddebug309, !21, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 389, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 303, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vp8_enc_encode_frame.__UNIQUE_ID_ddebug304, !23, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 311, i32 3}
!29 = !{ptr @vp8_enc_encode_frame._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vp8_enc_encode_frame._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 316, i32 3}
!33 = !{ptr @vp8_enc_encode_frame._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vp8_enc_encode_frame._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 321, i32 2}
!37 = !{ptr @vp8_enc_encode_frame.__UNIQUE_ID_ddebug305, !36, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 227, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vp8_enc_wait_venc_done.__UNIQUE_ID_ddebug303, !40, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!43 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 272, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vp8_enc_compose_one_frame._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @vp8_enc_compose_one_frame._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 401, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vp8_enc_set_param.__UNIQUE_ID_ddebug310, !50, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!53 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 432, i32 3}
!56 = !{ptr @vp8_enc_set_param.__UNIQUE_ID_ddebug311, !55, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!57 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vp8_enc_set_param.__UNIQUE_ID_ddebug312, !59, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 440, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 144, i32 2}
!62 = !{ptr @vp8_enc_free_work_buf.__UNIQUE_ID_ddebug298, !61, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!63 = !{ptr @vp8_enc_free_work_buf.__UNIQUE_ID_ddebug299, !64, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 153, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 162, i32 2}
!67 = !{ptr @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug300, !66, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 180, i32 4}
!70 = !{ptr @vp8_enc_alloc_work_buf._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vp8_enc_alloc_work_buf._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 202, i32 3}
!74 = !{ptr @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug301, !73, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!75 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vp8_enc_alloc_work_buf.__UNIQUE_ID_ddebug302, !77, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 209, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 450, i32 2}
!80 = !{ptr @vp8_enc_deinit.__UNIQUE_ID_ddebug313, !79, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!81 = !{ptr @vp8_enc_deinit.__UNIQUE_ID_ddebug314, !82, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-vcodec/venc/venc_vp8_if.c", i32 457, i32 2}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148728203, i64 2148728208, i64 2148728221, i64 2148728265, i64 2148728299, i64 2148728320}
!93 = !{i8 0, i8 2}
!94 = !{i64 4209429}
!95 = !{i64 2156512625}
