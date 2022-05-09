; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/venc_vpu_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/venc_vpu_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venc_ap_ipi_msg_init = type { i32, i32, i64 }
%struct.venc_vpu_inst = type { %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.venc_vpu_ipi_msg_common = type { i32, i32, i64 }
%struct.venc_vpu_ipi_msg_enc = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.venc_ap_ipi_msg_set_param_ext = type { %struct.venc_ap_ipi_msg_set_param, [24 x i32] }
%struct.venc_ap_ipi_msg_set_param = type { i32, i32, i32, i32, [8 x i32] }
%struct.mtk_vcodec_enc_pdata = type { i32, i8, i32, i32, ptr, i32, ptr, i32, i32 }
%struct.venc_enc_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venc_ap_ipi_msg_enc_ext = type { %struct.venc_ap_ipi_msg_enc, i32, [32 x i32] }
%struct.venc_ap_ipi_msg_enc = type { i32, i32, i32, [3 x i32], i32, i32 }
%struct.mtk_vcodec_fb = type { i32, i32 }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.venc_frame_info = type { i32, i32, i32 }
%struct.venc_ap_ipi_msg_deinit = type { i32, i32 }
%struct.venc_vpu_ipi_msg_init = type { i32, i32, i64, i32, i32 }

@vpu_enc_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_enc\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpu_enc_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/mtk-vcodec/venc_vpu_if.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@vpu_enc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vpu->wq_hd\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"venc\00", [27 x i8] zeroinitializer }, align 32
@vpu_enc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vpu_ipi_register fail %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vpu_enc_init._entry_ptr = internal global ptr @vpu_enc_init._entry, section ".printk_index", align 4
@vpu_enc_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: AP_IPIMSG_ENC_INIT fail\0A\00", [35 x i8] zeroinitializer }, align 32
@vpu_enc_init._entry_ptr.10 = internal global ptr @vpu_enc_init._entry.8, section ".printk_index", align 4
@vpu_enc_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: -\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: -\0A\00", [34 x i8] zeroinitializer }, align 32
@vpu_enc_set_param.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vpu_enc_set_param\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[MTK_VCODEC][%d]: id %d ->\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(),%d: [MTK_VCODEC][%d]: id %d ->\0A\00", [59 x i8] zeroinitializer }, align 32
@vpu_enc_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: id %d not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@vpu_enc_set_param._entry_ptr = internal global ptr @vpu_enc_set_param._entry, section ".printk_index", align 4
@vpu_enc_set_param._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: AP_IPIMSG_ENC_SET_PARAM %d fail\0A\00", [59 x i8] zeroinitializer }, align 32
@vpu_enc_set_param._entry_ptr.19 = internal global ptr @vpu_enc_set_param._entry.17, section ".printk_index", align 4
@vpu_enc_set_param.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.20, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[MTK_VCODEC][%d]: id %d <-\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(),%d: [MTK_VCODEC][%d]: id %d <-\0A\00", [59 x i8] zeroinitializer }, align 32
@vpu_enc_encode.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpu_enc_encode\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[MTK_VCODEC][%d]: bs_mode %d ->\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(),%d: [MTK_VCODEC][%d]: bs_mode %d ->\0A\00", [54 x i8] zeroinitializer }, align 32
@vpu_enc_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: dma_addr not align to 16\0A\00", [34 x i8] zeroinitializer }, align 32
@vpu_enc_encode._entry_ptr = internal global ptr @vpu_enc_encode._entry, section ".printk_index", align 4
@vpu_enc_encode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: AP_IPIMSG_ENC_ENCODE %d fail\0A\00", [62 x i8] zeroinitializer }, align 32
@vpu_enc_encode._entry_ptr.28 = internal global ptr @vpu_enc_encode._entry.26, section ".printk_index", align 4
@vpu_enc_encode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.29, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[MTK_VCODEC][%d]: bs_mode %d state %d size %d key_frm %d <-\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s(),%d: [MTK_VCODEC][%d]: bs_mode %d state %d size %d key_frm %d <-\0A\00", [58 x i8] zeroinitializer }, align 32
@vpu_enc_deinit.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpu_enc_deinit\00", [17 x i8] zeroinitializer }, align 32
@vpu_enc_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.31, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: AP_IPIMSG_ENC_DEINIT fail\0A\00", [33 x i8] zeroinitializer }, align 32
@vpu_enc_deinit._entry_ptr = internal global ptr @vpu_enc_deinit._entry, section ".printk_index", align 4
@vpu_enc_deinit.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.11, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vpu_enc_ipi_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpu_enc_ipi_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[MTK_VCODEC][%d]: msg_id %x inst %p status %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(),%d: [MTK_VCODEC][%d]: msg_id %x inst %p status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@vpu_enc_ipi_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: unknown msg id %x\0A\00", [41 x i8] zeroinitializer }, align 32
@vpu_enc_ipi_handler._entry_ptr = internal global ptr @vpu_enc_ipi_handler._entry, section ".printk_index", align 4
@vpu_enc_ipi_handler.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.11, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@handle_enc_init_msg.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_enc_init_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[MTK_VCODEC][%d]: firmware version: 0x%x\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [MTK_VCODEC][%d]: firmware version: 0x%x\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_enc_init_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: unhandled firmware version 0x%x\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_enc_init_msg._entry_ptr = internal global ptr @handle_enc_init_msg._entry, section ".printk_index", align 4
@vpu_enc_send_msg.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpu_enc_send_msg\00", [47 x i8] zeroinitializer }, align 32
@vpu_enc_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.41, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: inst dev is NULL\0A\00", [42 x i8] zeroinitializer }, align 32
@vpu_enc_send_msg._entry_ptr = internal global ptr @vpu_enc_send_msg._entry, section ".printk_index", align 4
@vpu_enc_send_msg._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vpu_ipi_send msg_id %x len %d fail %d\0A\00", [53 x i8] zeroinitializer }, align 32
@vpu_enc_send_msg._entry_ptr.45 = internal global ptr @vpu_enc_send_msg._entry.43, section ".printk_index", align 4
@vpu_enc_send_msg.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.11, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 53248, i64 53249, i64 53250, i64 53251]
@__sancov_gen_cov_switch_values.46 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 113, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 115, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 120, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 123, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 131, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 135, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 169, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 211, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 215, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 220, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 236, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 250, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 265, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 270, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 280, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 286, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 53, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 73, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 25, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 31, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 86, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 89, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [51 x i8] c"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 96, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @handle_enc_init_msg._entry, ptr @handle_enc_init_msg._entry_ptr, ptr @vpu_enc_deinit._entry, ptr @vpu_enc_deinit._entry_ptr, ptr @vpu_enc_encode._entry, ptr @vpu_enc_encode._entry.26, ptr @vpu_enc_encode._entry_ptr, ptr @vpu_enc_encode._entry_ptr.28, ptr @vpu_enc_init._entry, ptr @vpu_enc_init._entry.8, ptr @vpu_enc_init._entry_ptr, ptr @vpu_enc_init._entry_ptr.10, ptr @vpu_enc_ipi_handler._entry, ptr @vpu_enc_ipi_handler._entry_ptr, ptr @vpu_enc_send_msg._entry, ptr @vpu_enc_send_msg._entry.43, ptr @vpu_enc_send_msg._entry_ptr, ptr @vpu_enc_send_msg._entry_ptr.45, ptr @vpu_enc_set_param._entry, ptr @vpu_enc_set_param._entry.17, ptr @vpu_enc_set_param._entry_ptr, ptr @vpu_enc_set_param._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vpu_enc_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_set_param._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_encode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_ipi_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_enc_init_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_enc_send_msg._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_enc_init(ptr noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca %struct.venc_ap_ipi_msg_init, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #4
  %0 = getelementptr inbounds %struct.venc_ap_ipi_msg_init, ptr %out, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_init, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_init.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef %4) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void @__init_waitqueue_head(ptr noundef %vpu, ptr noundef nonnull @.str.5, ptr noundef nonnull @vpu_enc_init.__key) #4
  %signaled = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 1
  %5 = ptrtoint ptr %signaled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %signaled, align 4
  %failure = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 2
  %6 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %failure, align 4
  %ctx6 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %7 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx6, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_handler, align 8
  %id7 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 8
  %13 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id7, align 4
  %call8 = tail call i32 @mtk_vcodec_fw_ipi_register(ptr noundef %12, i32 noundef %14, ptr noundef nonnull @vpu_enc_ipi_handler, ptr noundef nonnull @.str.6, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx6, align 4
  %id16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef %18, i32 noundef %call8) #7
  br label %cleanup

if.end18:                                         ; preds = %do.body3
  %19 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %out, align 8
  store i32 49152, ptr %out, align 8
  %20 = ptrtoint ptr %vpu to i32
  %conv = zext i32 %20 to i64
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %0, align 8
  %call19 = call fastcc i32 @vpu_enc_send_msg(ptr noundef %vpu, ptr noundef nonnull %out, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body30, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx6, align 4
  %id27 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %id27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id27, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 131, i32 noundef %25) #7
  br label %cleanup

do.body30:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_init, %if.then42)) #4
          to label %cleanup [label %if.then42], !srcloc !109

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx6, align 4
  %id44 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %id44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id44, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_init.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 135, i32 noundef %29) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %do.end24, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -22, %do.end24 ], [ 0, %if.then42 ], [ 0, %do.body30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_ipi_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpu_enc_ipi_handler(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %venc_inst = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %venc_inst to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %venc_inst, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_ipi_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_ipi_handler, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 8
  %status = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_ipi_handler.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 54, i32 noundef %6, i32 noundef %8, ptr noundef %2, i32 noundef %10) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %signaled = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %signaled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %signaled, align 4
  %status3 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp ne i32 %13, 0
  %conv4 = zext i1 %cmp to i32
  %failure = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %failure, align 4
  br i1 %cmp, label %do.end.do.body20_crit_edge, label %if.end8

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

if.end8:                                          ; preds = %do.end
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end13 [
    i32 53248, label %sw.bb
    i32 53249, label %if.end8.do.body20_crit_edge
    i32 53250, label %sw.bb10
    i32 53251, label %if.end8.do.body20_crit_edge58
  ]

if.end8.do.body20_crit_edge58:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

if.end8.do.body20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @handle_enc_init_msg(ptr noundef %2, ptr noundef %data)
  br label %do.body20

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %state.i = getelementptr inbounds %struct.venc_vpu_ipi_msg_enc, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 8
  %state1.i = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %state1.i, align 4
  %bs_size.i = getelementptr inbounds %struct.venc_vpu_ipi_msg_enc, ptr %data, i32 0, i32 5
  %21 = ptrtoint ptr %bs_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bs_size.i, align 8
  %bs_size2.i = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 4
  %23 = ptrtoint ptr %bs_size2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bs_size2.i, align 4
  %is_key_frm.i = getelementptr inbounds %struct.venc_vpu_ipi_msg_enc, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %is_key_frm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %is_key_frm.i, align 4
  %is_key_frm3.i = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 5
  %26 = ptrtoint ptr %is_key_frm3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %is_key_frm3.i, align 4
  br label %do.body20

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %ctx15 = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 9
  %27 = ptrtoint ptr %ctx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx15, align 4
  %id16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id16, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, i32 noundef 73, i32 noundef %30, i32 noundef %16) #7
  br label %do.body20

do.body20:                                        ; preds = %do.end13, %sw.bb10, %sw.bb, %if.end8.do.body20_crit_edge, %if.end8.do.body20_crit_edge58, %do.end.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_ipi_handler.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_ipi_handler, %if.then32)) #4
          to label %do.end37 [label %if.then32], !srcloc !109

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %ctx33 = getelementptr inbounds %struct.venc_vpu_inst, ptr %2, i32 0, i32 9
  %31 = ptrtoint ptr %ctx33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx33, align 4
  %id34 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %id34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id34, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_ipi_handler.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.33, i32 noundef 78, i32 noundef %34) #4
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpu_enc_send_msg(ptr nocapture noundef readonly %vpu, ptr noundef %msg, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_send_msg.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_send_msg, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_send_msg.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, i32 noundef 86, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx3 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %4 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx3, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_handler, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %do.end8, label %if.end13

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %id11 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef 89, i32 noundef %11) #7
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %id17 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 8
  %12 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id17, align 4
  %call18 = tail call i32 @mtk_vcodec_fw_ipi_send(ptr noundef nonnull %9, i32 noundef %13, ptr noundef %msg, i32 noundef %len, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end23

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx3, align 4
  %id26 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id26, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, i32 noundef 97, i32 noundef %17, i32 noundef %19, i32 noundef %len, i32 noundef %call18) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end13
  %failure = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 2
  %20 = ptrtoint ptr %failure to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %failure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %do.body32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_send_msg.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_send_msg, %if.then44)) #4
          to label %cleanup [label %if.then44], !srcloc !109

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx3, align 4
  %id46 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id46, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_send_msg.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.41, i32 noundef 103, i32 noundef %25) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body32, %if.end28.cleanup_crit_edge, %do.end23, %do.end8
  %retval.0 = phi i32 [ -22, %do.end23 ], [ -22, %do.end8 ], [ -22, %if.end28.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_enc_set_param(ptr nocapture noundef readonly %vpu, i32 noundef %id, ptr nocapture noundef readonly %enc_param) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca %struct.venc_ap_ipi_msg_set_param_ext, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %venc_pdata, align 4
  %uses_ext = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uses_ext to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uses_ext, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 48, i32 144
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %out) #4
  %8 = call ptr @memset(ptr %out, i32 255, i32 144)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_set_param.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_set_param, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %id7 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_set_param.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 169, i32 noundef %12, i32 noundef %id) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = getelementptr inbounds i8, ptr %out, i32 12
  %14 = call ptr @memset(ptr %13, i32 0, i32 132)
  %15 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 49153, ptr %out, align 4
  %inst_addr = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 6
  %16 = ptrtoint ptr %inst_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inst_addr, align 4
  %vpu_inst_addr = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 1
  %18 = ptrtoint ptr %vpu_inst_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vpu_inst_addr, align 4
  %param_id = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 2
  %19 = ptrtoint ptr %param_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %id, ptr %param_id, align 4
  %20 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %id, label %do.end58 [
    i32 0, label %sw.bb
    i32 1, label %do.end.sw.epilog_crit_edge
    i32 2, label %sw.bb29
    i32 3, label %sw.bb35
    i32 4, label %sw.bb41
    i32 5, label %sw.bb47
    i32 6, label %do.end.sw.epilog_crit_edge123
  ]

do.end.sw.epilog_crit_edge123:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then11

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %data_item = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 3
  %21 = ptrtoint ptr %data_item to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %data_item, align 4
  %buf_width.i = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 5
  %22 = ptrtoint ptr %buf_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_width.i, align 4
  %width.i = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 3
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i, align 4
  %sub.i = sub i32 %23, %25
  %rem.i = and i32 %sub.i, 15
  %data = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rem.i, ptr %data, align 4
  %height.i = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 4
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %sub.i116 = add i32 %28, -1
  %or.i = or i32 %sub.i116, 15
  %add.i = sub i32 1, %28
  %sub2.i = add i32 %add.i, %or.i
  %arrayidx18 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub2.i, ptr %arrayidx18, align 4
  %sub.i118 = add i32 %25, 15
  %div5.i = lshr i32 %sub.i118, 4
  %sub2.i120 = add i32 %28, 15
  %div36.i = lshr i32 %sub2.i120, 4
  %mul.i = mul i32 %div36.i, %div5.i
  %arrayidx22 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i, ptr %arrayidx22, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %data_item31 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 3
  %31 = ptrtoint ptr %data_item31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %data_item31, align 4
  %bitrate = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 9
  %32 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bitrate, align 4
  %data33 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4
  %34 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %data33, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %data_item37 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 3
  %35 = ptrtoint ptr %data_item37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %data_item37, align 4
  %frm_rate = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 7
  %36 = ptrtoint ptr %frm_rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frm_rate, align 4
  %data39 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4
  %38 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %data39, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %data_item43 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 3
  %39 = ptrtoint ptr %data_item43 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %data_item43, align 4
  %gop_size = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 10
  %40 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gop_size, align 4
  %data45 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4
  %42 = ptrtoint ptr %data45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %data45, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %data_item49 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 3
  %43 = ptrtoint ptr %data_item49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %data_item49, align 4
  %intra_period = getelementptr inbounds %struct.venc_enc_param, ptr %enc_param, i32 0, i32 8
  %44 = ptrtoint ptr %intra_period to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %intra_period, align 4
  %data51 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, ptr %out, i32 0, i32 4
  %46 = ptrtoint ptr %data51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %data51, align 4
  br label %sw.epilog

do.end58:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %id61 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %id61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef 211, i32 noundef %50, i32 noundef %id) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb41, %sw.bb35, %sw.bb29, %if.then11, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge123
  %call63 = call fastcc i32 @vpu_enc_send_msg(ptr noundef %vpu, ptr noundef nonnull %out, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body74, label %do.end68

do.end68:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx, align 4
  %id71 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %id71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id71, align 4
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef 216, i32 noundef %54, i32 noundef %id) #7
  br label %cleanup

do.body74:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_set_param.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_set_param, %if.then86)) #4
          to label %cleanup [label %if.then86], !srcloc !109

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 4
  %id88 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %id88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id88, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_set_param.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, i32 noundef 220, i32 noundef %58, i32 noundef %id) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body74, %do.end68, %do.end58
  %retval.0 = phi i32 [ -22, %do.end58 ], [ -22, %do.end68 ], [ 0, %if.then86 ], [ 0, %do.body74 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %out) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_enc_encode(ptr nocapture noundef readonly %vpu, i32 noundef %bs_mode, ptr noundef readonly %frm_buf, ptr noundef readonly %bs_buf, ptr noundef readonly %frame_info) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca %struct.venc_ap_ipi_msg_enc_ext, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %venc_pdata, align 4
  %uses_ext = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uses_ext to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uses_ext, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 32, i32 164
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %out) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_encode.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_encode, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_encode.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 236, i32 noundef %11, i32 noundef %bs_mode) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = getelementptr inbounds i8, ptr %out, i32 12
  %13 = call ptr @memset(ptr %12, i32 0, i32 152)
  %14 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 49154, ptr %out, align 4
  %inst_addr = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 6
  %15 = ptrtoint ptr %inst_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inst_addr, align 4
  %vpu_inst_addr = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 1
  %17 = ptrtoint ptr %vpu_inst_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %vpu_inst_addr, align 4
  %bs_mode9 = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 2
  %18 = ptrtoint ptr %bs_mode9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bs_mode, ptr %bs_mode9, align 4
  %tobool10.not = icmp eq ptr %frm_buf, null
  br i1 %tobool10.not, label %do.end.if.end49_crit_edge, label %if.then11

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then11:                                        ; preds = %do.end
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_fb, ptr %frm_buf, i32 0, i32 1
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr, align 4
  %rem = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %if.then11.do.end43_crit_edge

if.then11.do.end43_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end43

land.lhs.true:                                    ; preds = %if.then11
  %dma_addr14 = getelementptr [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %dma_addr14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr14, align 4
  %rem15 = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem15)
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true.do.end43_crit_edge

land.lhs.true.do.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end43

land.lhs.true17:                                  ; preds = %land.lhs.true
  %dma_addr20 = getelementptr [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %dma_addr20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr20, align 4
  %rem21 = and i32 %24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp22 = icmp eq i32 %rem21, 0
  br i1 %cmp22, label %if.then23, label %land.lhs.true17.do.end43_crit_edge

land.lhs.true17.do.end43_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end43

if.then23:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  %input_addr = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 3
  %25 = ptrtoint ptr %input_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %input_addr, align 4
  %arrayidx34 = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %22, ptr %arrayidx34, align 4
  %arrayidx40 = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %arrayidx40, align 4
  br label %if.end49

do.end43:                                         ; preds = %land.lhs.true17.do.end43_crit_edge, %land.lhs.true.do.end43_crit_edge, %if.then11.do.end43_crit_edge
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %id46 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id46, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, i32 noundef 250, i32 noundef %31) #7
  br label %cleanup

if.end49:                                         ; preds = %if.then23, %do.end.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %bs_buf, null
  br i1 %tobool50.not, label %if.end49.if.end55_crit_edge, label %if.then51

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %dma_addr52 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 2
  %32 = ptrtoint ptr %dma_addr52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr52, align 4
  %bs_addr = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 4
  %34 = ptrtoint ptr %bs_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bs_addr, align 4
  %35 = ptrtoint ptr %bs_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bs_buf, align 4
  %bs_size = getelementptr inbounds %struct.venc_ap_ipi_msg_enc, ptr %out, i32 0, i32 5
  %37 = ptrtoint ptr %bs_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bs_size, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49.if.end55_crit_edge
  %tobool58.not = icmp eq ptr %frame_info, null
  %or.cond = or i1 %tobool58.not, %tobool.not
  br i1 %or.cond, label %if.end55.if.end65_crit_edge, label %if.then59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %data_item = getelementptr inbounds %struct.venc_ap_ipi_msg_enc_ext, ptr %out, i32 0, i32 1
  %38 = ptrtoint ptr %data_item to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %data_item, align 4
  %39 = ptrtoint ptr %frame_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frame_info, align 4
  %data = getelementptr inbounds %struct.venc_ap_ipi_msg_enc_ext, ptr %out, i32 0, i32 2
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data, align 4
  %skip_frm_count = getelementptr inbounds %struct.venc_frame_info, ptr %frame_info, i32 0, i32 1
  %42 = ptrtoint ptr %skip_frm_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %skip_frm_count, align 4
  %arrayidx62 = getelementptr inbounds %struct.venc_ap_ipi_msg_enc_ext, ptr %out, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx62, align 4
  %frm_type = getelementptr inbounds %struct.venc_frame_info, ptr %frame_info, i32 0, i32 2
  %45 = ptrtoint ptr %frm_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frm_type, align 4
  %arrayidx64 = getelementptr inbounds %struct.venc_ap_ipi_msg_enc_ext, ptr %out, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %if.end55.if.end65_crit_edge
  %call66 = call fastcc i32 @vpu_enc_send_msg(ptr noundef %vpu, ptr noundef nonnull %out, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.body77, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %id74 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %id74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id74, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef 266, i32 noundef %51, i32 noundef %bs_mode) #7
  br label %cleanup

do.body77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_encode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_encode, %if.then89)) #4
          to label %cleanup [label %if.then89], !srcloc !109

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %id91 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %id91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id91, align 4
  %state = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 3
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 4
  %bs_size92 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 4
  %58 = ptrtoint ptr %bs_size92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bs_size92, align 4
  %is_key_frm = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 5
  %60 = ptrtoint ptr %is_key_frm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %is_key_frm, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_encode.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef 271, i32 noundef %55, i32 noundef %bs_mode, i32 noundef %57, i32 noundef %59, i32 noundef %61) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %do.end71, %do.end43
  %retval.0 = phi i32 [ -22, %do.end71 ], [ -22, %do.end43 ], [ 0, %if.then89 ], [ 0, %do.body77 ]
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %out) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_enc_deinit(ptr nocapture noundef readonly %vpu) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca %struct.venc_ap_ipi_msg_deinit, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #4
  %0 = getelementptr inbounds %struct.venc_ap_ipi_msg_deinit, ptr %out, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_deinit.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_deinit, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_deinit.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef 280, i32 noundef %4) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 211119117434880, ptr %out, align 8
  %inst_addr = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 6
  %6 = ptrtoint ptr %inst_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inst_addr, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %call3 = call fastcc i32 @vpu_enc_send_msg(ptr noundef %vpu, ptr noundef nonnull %out, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body14, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %ctx10 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %9 = ptrtoint ptr %ctx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx10, align 4
  %id11 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id11, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 286, i32 noundef %12) #7
  br label %cleanup

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_enc_deinit.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_enc_deinit, %if.then26)) #4
          to label %cleanup [label %if.then26], !srcloc !109

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %ctx27 = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %13 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx27, align 4
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id28, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_enc_deinit.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.31, i32 noundef 290, i32 noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %if.then26 ], [ 0, %do.body14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_enc_init_msg(ptr nocapture noundef %vpu, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vpu_inst_addr = getelementptr inbounds %struct.venc_vpu_ipi_msg_init, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %vpu_inst_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vpu_inst_addr, align 8
  %inst_addr = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 6
  %2 = ptrtoint ptr %inst_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %inst_addr, align 4
  %ctx = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 9
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_handler, align 8
  %9 = load i32, ptr %vpu_inst_addr, align 8
  %call = tail call ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef %8, i32 noundef %9) #4
  %vsi = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 7
  %10 = ptrtoint ptr %vsi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %vsi, align 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %dev3 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %venc_pdata, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_enc_init_msg.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_enc_init_msg, %if.then7)) #4
          to label %do.end [label %if.then7], !srcloc !109

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %venc_abi_version = getelementptr inbounds %struct.venc_vpu_ipi_msg_init, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %venc_abi_version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %venc_abi_version, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_enc_init_msg.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 26, i32 noundef %22, i32 noundef %24) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %venc_abi_version10 = getelementptr inbounds %struct.venc_vpu_ipi_msg_init, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %venc_abi_version10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %venc_abi_version10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cond = icmp eq i32 %26, 1
  br i1 %cond, label %do.end.cleanup_crit_edge, label %do.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %id16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id16, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37, i32 noundef 32, i32 noundef %30, i32 noundef %26) #7
  %failure = getelementptr inbounds %struct.venc_vpu_inst, ptr %vpu, i32 0, i32 2
  %31 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %failure, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_ipi_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 113, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vpu_enc_init.__UNIQUE_ID_ddebug303, !1, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vpu_enc_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 115, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 120, i32 31}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 123, i32 3}
!14 = !{ptr @vpu_enc_init._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vpu_enc_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 131, i32 3}
!18 = !{ptr @vpu_enc_init._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vpu_enc_init._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 135, i32 2}
!22 = !{ptr @vpu_enc_init.__UNIQUE_ID_ddebug304, !21, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 169, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vpu_enc_set_param.__UNIQUE_ID_ddebug305, !25, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!28 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 211, i32 3}
!31 = !{ptr @vpu_enc_set_param._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vpu_enc_set_param._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 215, i32 3}
!35 = !{ptr @vpu_enc_set_param._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @vpu_enc_set_param._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 220, i32 2}
!39 = !{ptr @vpu_enc_set_param.__UNIQUE_ID_ddebug306, !38, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 236, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vpu_enc_encode.__UNIQUE_ID_ddebug307, !42, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!45 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 250, i32 4}
!48 = !{ptr @vpu_enc_encode._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vpu_enc_encode._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 265, i32 3}
!52 = !{ptr @vpu_enc_encode._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vpu_enc_encode._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 270, i32 2}
!56 = !{ptr @vpu_enc_encode.__UNIQUE_ID_ddebug308, !55, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!57 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 280, i32 2}
!60 = !{ptr @vpu_enc_deinit.__UNIQUE_ID_ddebug309, !59, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 286, i32 3}
!63 = !{ptr @vpu_enc_deinit._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vpu_enc_deinit._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @vpu_enc_deinit.__UNIQUE_ID_ddebug310, !66, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 290, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 53, i32 2}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vpu_enc_ipi_handler.__UNIQUE_ID_ddebug299, !68, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!71 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 73, i32 3}
!74 = !{ptr @vpu_enc_ipi_handler._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @vpu_enc_ipi_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @vpu_enc_ipi_handler.__UNIQUE_ID_ddebug300, !77, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 78, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 25, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @handle_enc_init_msg.__UNIQUE_ID_ddebug298, !79, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!82 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 31, i32 3}
!85 = !{ptr @handle_enc_init_msg._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @handle_enc_init_msg._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 86, i32 2}
!89 = !{ptr @vpu_enc_send_msg.__UNIQUE_ID_ddebug301, !88, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 89, i32 3}
!92 = !{ptr @vpu_enc_send_msg._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vpu_enc_send_msg._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 96, i32 3}
!96 = !{ptr @vpu_enc_send_msg._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @vpu_enc_send_msg._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @vpu_enc_send_msg.__UNIQUE_ID_ddebug302, !99, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/mtk-vcodec/venc_vpu_if.c", i32 103, i32 2}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i64 2148308631, i64 2148308636, i64 2148308649, i64 2148308693, i64 2148308727, i64 2148308748}
!110 = !{i8 0, i8 2}
