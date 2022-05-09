; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vdec_ap_ipi_init = type { i32, i32, i64 }
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
%struct.vdec_vpu_ipi_ack = type { i32, i32, i64 }
%struct.vdec_ap_ipi_dec_start = type { i32, %union.anon.121, [3 x i32], i32 }
%union.anon.121 = type { i32 }
%struct.vdec_ap_ipi_cmd = type { i32, %union.anon.122 }
%union.anon.122 = type { i32 }
%struct.vdec_vpu_ipi_init_ack = type { i32, i32, i64, i32, i32, i32 }
%struct.mtk_vcodec_dec_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i8 }

@vpu_dec_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpu_dec_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/mtk-vcodec/vdec_vpu_if.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[MTK_VCODEC][%d]: +\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [MTK_VCODEC][%d]: +\0A\00", [34 x i8] zeroinitializer }, align 32
@vpu_dec_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&vpu->wq\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@vpu_dec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vpu_ipi_register fail status=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@vpu_dec_init._entry_ptr = internal global ptr @vpu_dec_init._entry, section ".printk_index", align 4
@vpu_dec_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[MTK_VCODEC][%d]: vdec_inst=%p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(),%d: [MTK_VCODEC][%d]: vdec_inst=%p\0A\00", [55 x i8] zeroinitializer }, align 32
@vpu_dec_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[MTK_VCODEC][%d]: - ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@vpu_dec_start.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vpu_dec_start\00", [18 x i8] zeroinitializer }, align 32
@vpu_dec_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.12, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: invalid len = %d\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@vpu_dec_start._entry_ptr = internal global ptr @vpu_dec_start._entry, section ".printk_index", align 4
@vpu_dec_start.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.10, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vpu_dec_ipi_handler.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpu_dec_ipi_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[MTK_VCODEC][%d]: + id=%X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(),%d: [MTK_VCODEC][%d]: + id=%X\0A\00", [60 x i8] zeroinitializer }, align 32
@vpu_dec_ipi_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: invalid msg=%X\0A\00", [44 x i8] zeroinitializer }, align 32
@vpu_dec_ipi_handler._entry_ptr = internal global ptr @vpu_dec_ipi_handler._entry, section ".printk_index", align 4
@vpu_dec_ipi_handler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[MTK_VCODEC][%d]: - id=%X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - id=%X\0A\00", [60 x i8] zeroinitializer }, align 32
@handle_init_ack_msg.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_init_ack_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[MTK_VCODEC][%d]: + ap_inst_addr = 0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [MTK_VCODEC][%d]: + ap_inst_addr = 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_init_ack_msg.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 0, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: - vpu_inst_addr = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - vpu_inst_addr = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_init_ack_msg.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.25, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MTK_VCODEC][%d]: firmware version 0x%x\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: [MTK_VCODEC][%d]: firmware version 0x%x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_init_ack_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: unhandled firmware version 0x%x\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_init_ack_msg._entry_ptr = internal global ptr @handle_init_ack_msg._entry, section ".printk_index", align 4
@vcodec_vpu_send_msg.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vcodec_vpu_send_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[MTK_VCODEC][%d]: id=%X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(),%d: [MTK_VCODEC][%d]: id=%X\0A\00", [62 x i8] zeroinitializer }, align 32
@vcodec_vpu_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: send fail vpu_id=%d msg_id=%X status=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@vcodec_vpu_send_msg._entry_ptr = internal global ptr @vcodec_vpu_send_msg._entry, section ".printk_index", align 4
@vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.15, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vcodec_send_ap_ipi\00", [45 x i8] zeroinitializer }, align 32
@vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[MTK_VCODEC][%d]: - id=%X ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(),%d: [MTK_VCODEC][%d]: - id=%X ret=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 45056, i64 45057, i64 45058, i64 45059, i64 45060]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 143, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 145, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 149, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 151, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 159, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 162, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 172, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 175, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 73, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 91, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 96, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 18, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 26, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 42, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 50, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 103, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 111, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 124, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [51 x i8] c"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 134, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @handle_init_ack_msg._entry, ptr @handle_init_ack_msg._entry_ptr, ptr @vcodec_vpu_send_msg._entry, ptr @vcodec_vpu_send_msg._entry_ptr, ptr @vpu_dec_init._entry, ptr @vpu_dec_init._entry_ptr, ptr @vpu_dec_ipi_handler._entry, ptr @vpu_dec_ipi_handler._entry_ptr, ptr @vpu_dec_start._entry, ptr @vpu_dec_start._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vpu_dec_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_dec_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_dec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_dec_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_dec_ipi_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_init_ack_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_vpu_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_dec_init(ptr noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.vdec_ap_ipi_init, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.vdec_ap_ipi_init, ptr %msg, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_init, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_init.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 143, i32 noundef %4) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  %wq = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.5, ptr noundef nonnull @vpu_dec_init.__key) #4
  %handler = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 9
  %5 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vpu_dec_ipi_handler, ptr %handler, align 4
  %ctx6 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %6 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx6, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_handler, align 8
  %12 = ptrtoint ptr %vpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vpu, align 4
  %call9 = tail call i32 @mtk_vcodec_fw_ipi_register(ptr noundef %11, i32 noundef %13, ptr noundef nonnull @vpu_dec_ipi_handler, ptr noundef nonnull @.str.6, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx6, align 4
  %id16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 151, i32 noundef %17, i32 noundef %call9) #7
  br label %cleanup

if.end18:                                         ; preds = %do.body3
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %msg, align 8
  store i32 40960, ptr %msg, align 8
  %19 = ptrtoint ptr %vpu to i32
  %conv = zext i32 %19 to i64
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %0, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_init, %if.then31)) #4
          to label %do.end36 [label %if.then31], !srcloc !88

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx6, align 4
  %id33 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_init.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 159, i32 noundef %24, ptr noundef %vpu) #4
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %if.end18
  %call37 = call fastcc i32 @vcodec_vpu_send_msg(ptr noundef %vpu, ptr noundef nonnull %msg, i32 noundef 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_init, %if.then50)) #4
          to label %cleanup [label %if.then50], !srcloc !88

if.then50:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx6, align 4
  %id52 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %id52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id52, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_init.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef %28, i32 noundef %call37) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.end36, %do.end13
  %retval.0 = phi i32 [ %call9, %do.end13 ], [ %call37, %if.then50 ], [ %call37, %do.end36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpu_dec_ipi_handler(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_inst_addr = getelementptr inbounds %struct.vdec_vpu_ipi_ack, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ap_inst_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ap_inst_addr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_ipi_handler.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_ipi_handler, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 7
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_ipi_handler.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 73, i32 noundef %6, i32 noundef %8) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.vdec_vpu_ipi_ack, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %failure = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %failure, align 4
  %signaled = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 6
  %12 = ptrtoint ptr %signaled to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %signaled, align 4
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then5, label %do.end.do.body17_crit_edge

do.end.do.body17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

if.then5:                                         ; preds = %do.end
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end10 [
    i32 45056, label %sw.bb
    i32 45057, label %if.then5.do.body17_crit_edge
    i32 45058, label %if.then5.do.body17_crit_edge52
    i32 45059, label %if.then5.do.body17_crit_edge53
    i32 45060, label %if.then5.do.body17_crit_edge54
  ]

if.then5.do.body17_crit_edge54:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

if.then5.do.body17_crit_edge53:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

if.then5.do.body17_crit_edge52:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

if.then5.do.body17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @handle_init_ack_msg(ptr noundef %data)
  br label %do.body17

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %ctx12 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %ctx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx12, align 4
  %id13 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id13, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef 91, i32 noundef %20, i32 noundef %15) #7
  br label %do.body17

do.body17:                                        ; preds = %do.end10, %sw.bb, %if.then5.do.body17_crit_edge, %if.then5.do.body17_crit_edge52, %if.then5.do.body17_crit_edge53, %if.then5.do.body17_crit_edge54, %do.end.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_ipi_handler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_ipi_handler, %if.then29)) #4
          to label %do.end35 [label %if.then29], !srcloc !88

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %ctx30 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 7
  %21 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx30, align 4
  %id31 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id31, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_ipi_handler.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef 96, i32 noundef %24, i32 noundef %26) #4
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_ipi_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vcodec_vpu_send_msg(ptr nocapture noundef %vpu, ptr noundef %msg, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_vpu_send_msg.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vcodec_vpu_send_msg, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_vpu_send_msg.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 103, i32 noundef %3, i32 noundef %5) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %failure = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 2
  %6 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %failure, align 4
  %signaled = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 6
  %7 = ptrtoint ptr %signaled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %signaled, align 4
  %ctx3 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %8 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx3, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_handler, align 8
  %14 = ptrtoint ptr %vpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vpu, align 4
  %call5 = tail call i32 @mtk_vcodec_fw_ipi_send(ptr noundef %13, i32 noundef %15, ptr noundef %msg, i32 noundef %len, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end16, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx3, align 4
  %id13 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id13, align 4
  %20 = ptrtoint ptr %vpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vpu, align 4
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef 112, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %call5) #7
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %failure to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %failure, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end10
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ %25, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_dec_start(ptr nocapture noundef %vpu, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.vdec_ap_ipi_dec_start, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.vdec_ap_ipi_dec_start, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vdec_ap_ipi_dec_start, ptr %msg, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_start.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_start, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_start.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef 172, i32 noundef %5) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp ugt i32 %len, 3
  br i1 %cmp, label %do.end6, label %if.end11

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %ctx8 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %6 = ptrtoint ptr %ctx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx8, align 4
  %id9 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 175, i32 noundef %9, i32 noundef %len) #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %10 = getelementptr inbounds i8, ptr %msg, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40961, ptr %msg, align 4
  %fw_abi_version = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 4
  %13 = ptrtoint ptr %fw_abi_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_abi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp12 = icmp ult i32 %14, 2
  %inst_id = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 5
  %inst_addr = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 3
  %storemerge.in = select i1 %cmp12, ptr %inst_addr, ptr %inst_id
  %15 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1556.not = icmp eq i32 %len, 0
  br i1 %cmp1556.not, label %if.end11.for.end_crit_edge, label %for.body.preheader

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %17 = shl nuw nsw i32 %len, 2
  %18 = call ptr @memcpy(ptr %1, ptr %data, i32 %17)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end11.for.end_crit_edge
  %call18 = call fastcc i32 @vcodec_vpu_send_msg(ptr noundef %vpu, ptr noundef nonnull %msg, i32 noundef 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vpu_dec_start.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_start, %if.then31)) #4
          to label %cleanup [label %if.then31], !srcloc !88

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %ctx32 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %19 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx32, align 4
  %id33 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id33, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vpu_dec_start.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 190, i32 noundef %22, i32 noundef %call18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %for.end, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call18, %if.then31 ], [ %call18, %for.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_dec_end(ptr nocapture noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.vdec_ap_ipi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #4
  %0 = getelementptr inbounds %struct.vdec_ap_ipi_cmd, ptr %msg.i, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_end, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %1 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.32, i32 noundef 124, i32 noundef %4, i32 noundef 40962) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40962, ptr %msg.i, align 8
  %fw_abi_version.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 4
  %6 = ptrtoint ptr %fw_abi_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_abi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ult i32 %7, 2
  %inst_id.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 5
  %inst_addr.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 3
  %storemerge.in.i = select i1 %cmp.i, ptr %inst_addr.i, ptr %inst_id.i
  %8 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge.i, ptr %0, align 4
  %call6.i = call fastcc i32 @vcodec_vpu_send_msg(ptr noundef %vpu, ptr noundef nonnull %msg.i, i32 noundef 8) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_end, %if.then19.i)) #4
          to label %vcodec_send_ap_ipi.exit [label %if.then19.i], !srcloc !88

if.then19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ctx20.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %10 = ptrtoint ptr %ctx20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx20.i, align 4
  %id21.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %id21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id21.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 134, i32 noundef %13, i32 noundef 40962, i32 noundef %call6.i) #4
  br label %vcodec_send_ap_ipi.exit

vcodec_send_ap_ipi.exit:                          ; preds = %if.then19.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #4
  ret i32 %call6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_dec_deinit(ptr nocapture noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.vdec_ap_ipi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #4
  %0 = getelementptr inbounds %struct.vdec_ap_ipi_cmd, ptr %msg.i, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_deinit, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %1 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.32, i32 noundef 124, i32 noundef %4, i32 noundef 40963) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40963, ptr %msg.i, align 8
  %fw_abi_version.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 4
  %6 = ptrtoint ptr %fw_abi_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_abi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ult i32 %7, 2
  %inst_id.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 5
  %inst_addr.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 3
  %storemerge.in.i = select i1 %cmp.i, ptr %inst_addr.i, ptr %inst_id.i
  %8 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge.i, ptr %0, align 4
  %call6.i = call fastcc i32 @vcodec_vpu_send_msg(ptr noundef %vpu, ptr noundef nonnull %msg.i, i32 noundef 8) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_deinit, %if.then19.i)) #4
          to label %vcodec_send_ap_ipi.exit [label %if.then19.i], !srcloc !88

if.then19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ctx20.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %10 = ptrtoint ptr %ctx20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx20.i, align 4
  %id21.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %id21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id21.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 134, i32 noundef %13, i32 noundef 40963, i32 noundef %call6.i) #4
  br label %vcodec_send_ap_ipi.exit

vcodec_send_ap_ipi.exit:                          ; preds = %if.then19.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #4
  ret i32 %call6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpu_dec_reset(ptr nocapture noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.vdec_ap_ipi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #4
  %0 = getelementptr inbounds %struct.vdec_ap_ipi_cmd, ptr %msg.i, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_reset, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %1 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.32, i32 noundef 124, i32 noundef %4, i32 noundef 40964) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40964, ptr %msg.i, align 8
  %fw_abi_version.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 4
  %6 = ptrtoint ptr %fw_abi_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_abi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp ult i32 %7, 2
  %inst_id.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 5
  %inst_addr.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 3
  %storemerge.in.i = select i1 %cmp.i, ptr %inst_addr.i, ptr %inst_id.i
  %8 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge.i, ptr %0, align 4
  %call6.i = call fastcc i32 @vcodec_vpu_send_msg(ptr noundef %vpu, ptr noundef nonnull %msg.i, i32 noundef 8) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vpu_dec_reset, %if.then19.i)) #4
          to label %vcodec_send_ap_ipi.exit [label %if.then19.i], !srcloc !88

if.then19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ctx20.i = getelementptr inbounds %struct.vdec_vpu_inst, ptr %vpu, i32 0, i32 7
  %10 = ptrtoint ptr %ctx20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx20.i, align 4
  %id21.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %id21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id21.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 134, i32 noundef %13, i32 noundef 40964, i32 noundef %call6.i) #4
  br label %vcodec_send_ap_ipi.exit

vcodec_send_ap_ipi.exit:                          ; preds = %if.then19.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #4
  ret i32 %call6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_init_ack_msg(ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_inst_addr = getelementptr inbounds %struct.vdec_vpu_ipi_init_ack, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %ap_inst_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ap_inst_addr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_init_ack_msg.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_init_ack_msg, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ctx = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %7 = ptrtoint ptr %ap_inst_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ap_inst_addr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_init_ack_msg.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 18, i32 noundef %6, i64 noundef %8) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx4 = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 7
  %9 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx4, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %fw_handler = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %fw_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_handler, align 8
  %vpu_inst_addr = getelementptr inbounds %struct.vdec_vpu_ipi_init_ack, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %vpu_inst_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vpu_inst_addr, align 8
  %call5 = tail call ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef %14, i32 noundef %16) #4
  %vsi = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %vsi to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5, ptr %vsi, align 4
  %18 = ptrtoint ptr %vpu_inst_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vpu_inst_addr, align 8
  %inst_addr = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %inst_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %inst_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_init_ack_msg.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_init_ack_msg, %if.then19)) #4
          to label %do.end25 [label %if.then19], !srcloc !88

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx4, align 4
  %id21 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id21, align 4
  %25 = ptrtoint ptr %inst_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inst_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_init_ack_msg.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef 26, i32 noundef %24, i32 noundef %26) #4
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.end
  %fw_abi_version = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 4
  %27 = ptrtoint ptr %fw_abi_version to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %fw_abi_version, align 4
  %inst_id = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 5
  %28 = ptrtoint ptr %inst_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -559038737, ptr %inst_id, align 4
  %29 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx4, align 4
  %dev27 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev27, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdec_pdata, align 8
  %chip = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp eq i32 %36, 0
  br i1 %cmp, label %do.end25.cleanup_crit_edge, label %if.end30

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30:                                         ; preds = %do.end25
  %vdec_abi_version = getelementptr inbounds %struct.vdec_vpu_ipi_init_ack, ptr %msg, i32 0, i32 4
  %37 = ptrtoint ptr %vdec_abi_version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vdec_abi_version, align 4
  %39 = ptrtoint ptr %fw_abi_version to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fw_abi_version, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_init_ack_msg.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_init_ack_msg, %if.then44)) #4
          to label %do.end50 [label %if.then44], !srcloc !88

if.then44:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx4, align 4
  %id46 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id46, align 4
  %44 = ptrtoint ptr %fw_abi_version to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw_abi_version, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_init_ack_msg.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef 42, i32 noundef %43, i32 noundef %45) #4
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %if.end30
  %46 = ptrtoint ptr %fw_abi_version to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_abi_version, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %47, label %do.end56 [
    i32 1, label %do.end50.cleanup_crit_edge
    i32 2, label %sw.bb
  ]

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  %inst_id52 = getelementptr inbounds %struct.vdec_vpu_ipi_init_ack, ptr %msg, i32 0, i32 5
  %49 = ptrtoint ptr %inst_id52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %inst_id52, align 8
  %51 = ptrtoint ptr %inst_id to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %inst_id, align 4
  br label %cleanup

do.end56:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx4, align 4
  %id59 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %id59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id59, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20, i32 noundef 51, i32 noundef %55, i32 noundef %47) #7
  %failure = getelementptr inbounds %struct.vdec_vpu_inst, ptr %2, i32 0, i32 2
  %56 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %failure, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %sw.bb, %do.end50.cleanup_crit_edge, %do.end25.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_vcodec_fw_map_dm_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_fw_ipi_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 143, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vpu_dec_init.__UNIQUE_ID_ddebug306, !1, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vpu_dec_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 145, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 149, i32 21}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 151, i32 3}
!14 = !{ptr @vpu_dec_init._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vpu_dec_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 159, i32 2}
!18 = !{ptr @vpu_dec_init.__UNIQUE_ID_ddebug307, !17, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 162, i32 2}
!22 = !{ptr @vpu_dec_init.__UNIQUE_ID_ddebug308, !21, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 172, i32 2}
!26 = !{ptr @vpu_dec_start.__UNIQUE_ID_ddebug309, !25, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 175, i32 3}
!29 = !{ptr @vpu_dec_start._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vpu_dec_start._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @vpu_dec_start.__UNIQUE_ID_ddebug310, !32, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 190, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 73, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vpu_dec_ipi_handler.__UNIQUE_ID_ddebug301, !34, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!37 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 91, i32 4}
!40 = !{ptr @vpu_dec_ipi_handler._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vpu_dec_ipi_handler._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 96, i32 2}
!44 = !{ptr @vpu_dec_ipi_handler.__UNIQUE_ID_ddebug302, !43, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 18, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @handle_init_ack_msg.__UNIQUE_ID_ddebug298, !47, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!50 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 26, i32 2}
!53 = !{ptr @handle_init_ack_msg.__UNIQUE_ID_ddebug299, !52, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!54 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 42, i32 2}
!57 = !{ptr @handle_init_ack_msg.__UNIQUE_ID_ddebug300, !56, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 50, i32 3}
!61 = !{ptr @handle_init_ack_msg._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @handle_init_ack_msg._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 103, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vcodec_vpu_send_msg.__UNIQUE_ID_ddebug303, !64, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!67 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 111, i32 3}
!70 = !{ptr @vcodec_vpu_send_msg._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vcodec_vpu_send_msg._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 124, i32 2}
!74 = !{ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug304, !73, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/mtk-vcodec/vdec_vpu_if.c", i32 134, i32 2}
!77 = !{ptr @vcodec_send_ap_ipi.__UNIQUE_ID_ddebug305, !76, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!78 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148306270, i64 2148306275, i64 2148306288, i64 2148306332, i64 2148306366, i64 2148306387}
