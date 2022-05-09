; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdec_common_if = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.vdec_vp9_inst = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, [18 x %struct.vdec_fb_node], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.vdec_vpu_inst, ptr, i32, %struct.mtk_vcodec_mem }
%struct.vdec_fb_node = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.113, i32 }
%union.anon.113 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vdec_vp9_vsi = type { [64 x i8], [8 x %struct.vp9_sf_ref_fb], i32, i32, [8 x i32], [8 x i32], i32, i32, %struct.vdec_fb, %struct.mtk_vcodec_mem, %struct.vdec_fb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x %struct.vp9_ref_cnt_buf], [8 x i32], i32, i32, %struct.vp9_dram_buf, [3 x %struct.vp9_ref_buf], %struct.vp9_dram_buf }
%struct.vp9_sf_ref_fb = type { %struct.vdec_fb, i32, i32 }
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }
%struct.vp9_ref_cnt_buf = type { %struct.vp9_fb_info, i32 }
%struct.vp9_fb_info = type { ptr, [32 x i32] }
%struct.vp9_ref_buf = type { ptr, i32, [6 x i32] }
%struct.vp9_dram_buf = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.102], %struct.media_entity_enum, i32 }
%struct.anon.102 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }

@vdec_vp9_if = dso_local constant { %struct.vdec_common_if, [16 x i8] } { %struct.vdec_common_if { ptr @vdec_vp9_init, ptr @vdec_vp9_decode, ptr @vdec_vp9_get_param, ptr @vdec_vp9_deinit }, [16 x i8] zeroinitializer }, align 32
@vdec_vp9_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vp9_dec_vpu_init failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdec_vp9_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c\00", [43 x i8] zeroinitializer }, align 32
@vdec_vp9_init._entry_ptr = internal global ptr @vdec_vp9_init._entry, section ".printk_index", align 4
@vdec_vp9_decode.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdec_vp9_decode\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[MTK_VCODEC][%d]: [EOS]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [EOS]\0A\00", [62 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: bs == NULL\0A\00", [48 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry_ptr = internal global ptr @vdec_vp9_decode._entry, section ".printk_index", align 4
@vdec_vp9_decode.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[MTK_VCODEC][%d]: Input BS Size = %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(),%d: [MTK_VCODEC][%d]: Input BS Size = %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vpu_dec_start failed\0A\00", [38 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry_ptr.12 = internal global ptr @vdec_vp9_decode._entry.10, section ".printk_index", align 4
@vdec_vp9_decode._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vpu trig decoder failed\0A\00", [35 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry_ptr.15 = internal global ptr @vdec_vp9_decode._entry.13, section ".printk_index", align 4
@vdec_vp9_decode._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Invalid values from VPU.\0A\00", [34 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry_ptr.18 = internal global ptr @vdec_vp9_decode._entry.16, section ".printk_index", align 4
@vdec_vp9_decode.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.19, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[MTK_VCODEC][%d]: [#pic %d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [#pic %d]\0A\00", [58 x i8] zeroinitializer }, align 32
@vdec_vp9_decode.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.21, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[MTK_VCODEC][%d]: drv->new_fb_idx=%d, drv->frm_to_show_idx=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s(),%d: [MTK_VCODEC][%d]: drv->new_fb_idx=%d, drv->frm_to_show_idx=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@vdec_vp9_decode.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.23, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[MTK_VCODEC][%d]: Skip Decode drv->new_fb_idx=%d, drv->frm_to_show_idx=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s(),%d: [MTK_VCODEC][%d]: Skip Decode drv->new_fb_idx=%d, drv->frm_to_show_idx=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@vdec_vp9_decode.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.25, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[MTK_VCODEC][%d]: VDEC_ST_RESOLUTION_CHANGED\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(),%d: [MTK_VCODEC][%d]: VDEC_ST_RESOLUTION_CHANGED\0A\00", [41 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vp9_decode_end_proc\0A\00", [39 x i8] zeroinitializer }, align 32
@vdec_vp9_decode._entry_ptr.29 = internal global ptr @vdec_vp9_decode._entry.27, section ".printk_index", align 4
@vp9_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vp9_dec_vpu_reset failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vp9_reset\00", [22 x i8] zeroinitializer }, align 32
@vp9_reset._entry_ptr = internal global ptr @vp9_reset._entry, section ".printk_index", align 4
@vp9_get_sf_ref_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: List Full\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vp9_get_sf_ref_fb\00", [46 x i8] zeroinitializer }, align 32
@vp9_get_sf_ref_fb._entry_ptr = internal global ptr @vp9_get_sf_ref_fb._entry, section ".printk_index", align 4
@vp9_get_sf_ref_fb._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Cannot allocate sf_ref_buf y_buf\0A\00", [58 x i8] zeroinitializer }, align 32
@vp9_get_sf_ref_fb._entry_ptr.36 = internal global ptr @vp9_get_sf_ref_fb._entry.34, section ".printk_index", align 4
@vp9_get_sf_ref_fb._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Cannot allocate sf_ref_fb c_buf\0A\00", [59 x i8] zeroinitializer }, align 32
@vp9_get_sf_ref_fb._entry_ptr.39 = internal global ptr @vp9_get_sf_ref_fb._entry.37, section ".printk_index", align 4
@validate_vsi_array_indexes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Invalid vsi->sf_frm_idx=%u.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"validate_vsi_array_indexes\00", [37 x i8] zeroinitializer }, align 32
@validate_vsi_array_indexes._entry_ptr = internal global ptr @validate_vsi_array_indexes._entry, section ".printk_index", align 4
@validate_vsi_array_indexes._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Invalid vsi->frm_to_show_idx=%u.\0A\00", [58 x i8] zeroinitializer }, align 32
@validate_vsi_array_indexes._entry_ptr.44 = internal global ptr @validate_vsi_array_indexes._entry.42, section ".printk_index", align 4
@validate_vsi_array_indexes._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Invalid vsi->new_fb_idx=%u.\0A\00", [63 x i8] zeroinitializer }, align 32
@validate_vsi_array_indexes._entry_ptr.47 = internal global ptr @validate_vsi_array_indexes._entry.45, section ".printk_index", align 4
@vp9_alloc_work_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Invalid w/h %d/%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vp9_alloc_work_buf\00", [45 x i8] zeroinitializer }, align 32
@vp9_alloc_work_buf._entry_ptr = internal global ptr @vp9_alloc_work_buf._entry, section ".printk_index", align 4
@vp9_alloc_work_buf.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[MTK_VCODEC][%d]: BUF CHG(%d): w/h/sb_w/sb_h=%d/%d/%d/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s(),%d: [MTK_VCODEC][%d]: BUF CHG(%d): w/h/sb_w/sb_h=%d/%d/%d/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@vp9_alloc_work_buf._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.49, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Cannot allocate mv_buf\0A\00", [36 x i8] zeroinitializer }, align 32
@vp9_alloc_work_buf._entry_ptr.54 = internal global ptr @vp9_alloc_work_buf._entry.52, section ".printk_index", align 4
@vp9_alloc_work_buf._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Cannot allocate seg_id_buf\0A\00", [32 x i8] zeroinitializer }, align 32
@vp9_alloc_work_buf._entry_ptr.57 = internal global ptr @vp9_alloc_work_buf._entry.55, section ".printk_index", align 4
@vp9_add_to_fb_use_list.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vp9_add_to_fb_use_list\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[MTK_VCODEC][%d]: fb == NULL\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(),%d: [MTK_VCODEC][%d]: fb == NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@vp9_add_to_fb_use_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: No free fb node\0A\00", [43 x i8] zeroinitializer }, align 32
@vp9_add_to_fb_use_list._entry_ptr = internal global ptr @vp9_add_to_fb_use_list._entry, section ".printk_index", align 4
@vp9_decode_end_proc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: Decode failed, Decode Timeout @[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vp9_decode_end_proc\00", [44 x i8] zeroinitializer }, align 32
@vp9_decode_end_proc._entry_ptr = internal global ptr @vp9_decode_end_proc._entry, section ".printk_index", align 4
@vp9_decode_end_proc._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vp9_dec_vpu_end failed\0A\00", [36 x i8] zeroinitializer }, align 32
@vp9_decode_end_proc._entry_ptr.66 = internal global ptr @vp9_decode_end_proc._entry.64, section ".printk_index", align 4
@vp9_decode_end_proc.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.67, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[MTK_VCODEC][%d]: Decode Ok @%d (%d/%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: [MTK_VCODEC][%d]: Decode Ok @%d (%d/%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@vp9_decode_end_proc.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.69, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[MTK_VCODEC][%d]: Decode Ok @%d (show_existing_frame)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s(),%d: [MTK_VCODEC][%d]: Decode Ok @%d (show_existing_frame)\0A\00", [32 x i8] zeroinitializer }, align 32
@vp9_swap_frm_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: inst->cur_fb->base_y.size=%zu, frm_to_show->fb.base_y.size=%zu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vp9_swap_frm_bufs\00", [46 x i8] zeroinitializer }, align 32
@vp9_swap_frm_bufs._entry_ptr = internal global ptr @vp9_swap_frm_bufs._entry, section ".printk_index", align 4
@vp9_add_to_fb_disp_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: fb == NULL\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vp9_add_to_fb_disp_list\00", [40 x i8] zeroinitializer }, align 32
@vp9_add_to_fb_disp_list._entry_ptr = internal global ptr @vp9_add_to_fb_disp_list._entry, section ".printk_index", align 4
@vp9_add_to_fb_disp_list._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: No available fb node\0A\00", [38 x i8] zeroinitializer }, align 32
@vp9_add_to_fb_disp_list._entry_ptr.77 = internal global ptr @vp9_add_to_fb_disp_list._entry.75, section ".printk_index", align 4
@vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vp9_add_to_fb_free_list\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[MTK_VCODEC][%d]: No free fb node\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(),%d: [MTK_VCODEC][%d]: No free fb node\0A\00", [52 x i8] zeroinitializer }, align 32
@vdec_vp9_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: not supported param type %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdec_vp9_get_param\00", [45 x i8] zeroinitializer }, align 32
@vdec_vp9_get_param._entry_ptr = internal global ptr @vdec_vp9_get_param._entry, section ".printk_index", align 4
@vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vp9_rm_from_fb_disp_list\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[MTK_VCODEC][%d]: [FB] get disp fb %p st=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] get disp fb %p st=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: [FB] there is no disp fb\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] there is no disp fb\0A\00", [43 x i8] zeroinitializer }, align 32
@get_free_fb.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_free_fb\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[MTK_VCODEC][%d]: [FB] get free fb %p st=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] get free fb %p st=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_free_fb.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.88, ptr @.str.2, ptr @.str.91, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: [FB] there is no free fb\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: [FB] there is no free fb\0A\00", [43 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_pic_info\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(),%d: [MTK_VCODEC][%d]: pic(%d, %d), buf(%d, %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@get_pic_info.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.93, ptr @.str.2, ptr @.str.96, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[MTK_VCODEC][%d]: fb size: Y(%d), C(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: [MTK_VCODEC][%d]: fb size: Y(%d), C(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@get_crop_info.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_crop_info\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[MTK_VCODEC][%d]: get crop info l=%d, t=%d, w=%d, h=%d\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(),%d: [MTK_VCODEC][%d]: get crop info l=%d, t=%d, w=%d, h=%d\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@vdec_vp9_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s(),%d: [MTK_VCODEC][ERROR][%d]: vpu_dec_deinit failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdec_vp9_deinit\00", [16 x i8] zeroinitializer }, align 32
@vdec_vp9_deinit._entry_ptr = internal global ptr @vdec_vp9_deinit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"vdec_vp9_if\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1023, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 801, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 832, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 838, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 842, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 885, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 895, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 903, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 929, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 932, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 938, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 957, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 964, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 668, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 333, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 342, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 351, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 747, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 752, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 757, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 380, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 385, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 401, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 418, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 641, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 651, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 585, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 591, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 594, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 597, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 495, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 439, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 449, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 249, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1015, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 627, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 630, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 735, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 738, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 709, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 711, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 988, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [56 x i8] c"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 772, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @validate_vsi_array_indexes._entry, ptr @validate_vsi_array_indexes._entry.42, ptr @validate_vsi_array_indexes._entry.45, ptr @validate_vsi_array_indexes._entry_ptr, ptr @validate_vsi_array_indexes._entry_ptr.44, ptr @validate_vsi_array_indexes._entry_ptr.47, ptr @vdec_vp9_decode._entry, ptr @vdec_vp9_decode._entry.10, ptr @vdec_vp9_decode._entry.13, ptr @vdec_vp9_decode._entry.16, ptr @vdec_vp9_decode._entry.27, ptr @vdec_vp9_decode._entry_ptr, ptr @vdec_vp9_decode._entry_ptr.12, ptr @vdec_vp9_decode._entry_ptr.15, ptr @vdec_vp9_decode._entry_ptr.18, ptr @vdec_vp9_decode._entry_ptr.29, ptr @vdec_vp9_deinit._entry, ptr @vdec_vp9_deinit._entry_ptr, ptr @vdec_vp9_get_param._entry, ptr @vdec_vp9_get_param._entry_ptr, ptr @vdec_vp9_init._entry, ptr @vdec_vp9_init._entry_ptr, ptr @vp9_add_to_fb_disp_list._entry, ptr @vp9_add_to_fb_disp_list._entry.75, ptr @vp9_add_to_fb_disp_list._entry_ptr, ptr @vp9_add_to_fb_disp_list._entry_ptr.77, ptr @vp9_add_to_fb_use_list._entry, ptr @vp9_add_to_fb_use_list._entry_ptr, ptr @vp9_alloc_work_buf._entry, ptr @vp9_alloc_work_buf._entry.52, ptr @vp9_alloc_work_buf._entry.55, ptr @vp9_alloc_work_buf._entry_ptr, ptr @vp9_alloc_work_buf._entry_ptr.54, ptr @vp9_alloc_work_buf._entry_ptr.57, ptr @vp9_decode_end_proc._entry, ptr @vp9_decode_end_proc._entry.64, ptr @vp9_decode_end_proc._entry_ptr, ptr @vp9_decode_end_proc._entry_ptr.66, ptr @vp9_get_sf_ref_fb._entry, ptr @vp9_get_sf_ref_fb._entry.34, ptr @vp9_get_sf_ref_fb._entry.37, ptr @vp9_get_sf_ref_fb._entry_ptr, ptr @vp9_get_sf_ref_fb._entry_ptr.36, ptr @vp9_get_sf_ref_fb._entry_ptr.39, ptr @vp9_reset._entry, ptr @vp9_reset._entry_ptr, ptr @vp9_swap_frm_bufs._entry, ptr @vp9_swap_frm_bufs._entry_ptr, ptr @vdec_vp9_if, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_if to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_decode._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_decode._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_decode._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_decode._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_get_sf_ref_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_get_sf_ref_fb._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_get_sf_ref_fb._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_vsi_array_indexes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_vsi_array_indexes._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_vsi_array_indexes._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_alloc_work_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_alloc_work_buf._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_alloc_work_buf._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_add_to_fb_use_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_decode_end_proc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_decode_end_proc._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_swap_frm_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_add_to_fb_disp_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp9_add_to_fb_disp_list._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vp9_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_vp9_init(ptr noundef %ctx) #0 align 64 {
entry:
  %mem.i30 = alloca %struct.mtk_vcodec_mem, align 4
  %mem.i = alloca %struct.mtk_vcodec_mem, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem.i) #5
  %0 = getelementptr inbounds i8, ptr %mem.i, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 388, ptr %mem.i, align 4
  %call.i = call i32 @mtk_vcodec_mem_alloc(ptr noundef %ctx, ptr noundef nonnull %mem.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vp9_alloc_inst.exit, label %vp9_alloc_inst.exit.thread

vp9_alloc_inst.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem.i) #5
  br label %cleanup

vp9_alloc_inst.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %mem1.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 12
  %5 = call ptr @memcpy(ptr %mem1.i, ptr %mem.i, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem.i) #5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %vp9_alloc_inst.exit.cleanup_crit_edge, label %if.end

vp9_alloc_inst.exit.cleanup_crit_edge:            ; preds = %vp9_alloc_inst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %vp9_alloc_inst.exit
  %total_frm_cnt = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 11
  %6 = ptrtoint ptr %total_frm_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %total_frm_cnt, align 4
  %ctx1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ctx, ptr %ctx1, align 4
  %vpu = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 9
  %8 = ptrtoint ptr %vpu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %vpu, align 4
  %ctx3 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 9, i32 7
  %9 = ptrtoint ptr %ctx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ctx, ptr %ctx3, align 4
  %call5 = call i32 @vpu_dec_init(ptr noundef %vpu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  %10 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx1, align 4
  %id9 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id9, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 801, i32 noundef %13) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem.i30) #5
  %14 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem.i30, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %mem.i30, ptr %mem1.i, i32 12)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 4
  %tobool.not.i32 = icmp eq ptr %17, null
  br i1 %tobool.not.i32, label %do.end.vp9_free_inst.exit_crit_edge, label %if.then.i

do.end.vp9_free_inst.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_free_inst.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1, align 4
  call void @mtk_vcodec_mem_free(ptr noundef %19, ptr noundef nonnull %mem.i30) #5
  br label %vp9_free_inst.exit

vp9_free_inst.exit:                               ; preds = %if.then.i, %do.end.vp9_free_inst.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem.i30) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %vsi = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vsi, align 4
  %vsi13 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 10
  %22 = ptrtoint ptr %vsi13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %vsi13, align 4
  %show_frame = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %21, i32 0, i32 20
  %23 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %show_frame, align 4
  %or = or i32 %24, 8
  store i32 %or, ptr %show_frame, align 4
  %available_fb_node_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %available_fb_node_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %available_fb_node_list.i, ptr %available_fb_node_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %available_fb_node_list.i, ptr %prev.i.i, align 4
  %fb_use_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 4
  %27 = ptrtoint ptr %fb_use_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %fb_use_list.i, ptr %fb_use_list.i, align 4
  %prev.i18.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fb_use_list.i, ptr %prev.i18.i, align 4
  %fb_free_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 5
  %29 = ptrtoint ptr %fb_free_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %fb_free_list.i, ptr %fb_free_list.i, align 4
  %prev.i19.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fb_free_list.i, ptr %prev.i19.i, align 4
  %fb_disp_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 6
  %31 = ptrtoint ptr %fb_disp_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %fb_disp_list.i, ptr %fb_disp_list.i, align 4
  %prev.i20.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %4, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev.i20.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %fb_disp_list.i, ptr %prev.i20.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end11
  %i.023.i = phi i32 [ 0, %if.end11 ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vdec_vp9_inst, ptr %4, i32 0, i32 2, i32 %i.023.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.i, ptr %prev.i21.i, align 4
  %fb.i = getelementptr %struct.vdec_vp9_inst, ptr %4, i32 0, i32 2, i32 %i.023.i, i32 1
  %35 = ptrtoint ptr %fb.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %fb.i, align 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %37, ptr noundef %available_fb_node_list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %available_fb_node_list.i, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i21.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx.i, ptr %37, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %init_all_fb_lists.exit, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

init_all_fb_lists.exit:                           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %42 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %4, ptr %drv_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %init_all_fb_lists.exit, %vp9_free_inst.exit, %vp9_alloc_inst.exit.cleanup_crit_edge, %vp9_alloc_inst.exit.thread
  %retval.0 = phi i32 [ -22, %vp9_free_inst.exit ], [ 0, %init_all_fb_lists.exit ], [ -12, %vp9_alloc_inst.exit.cleanup_crit_edge ], [ -12, %vp9_alloc_inst.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_vp9_decode(ptr noundef %h_vdec, ptr noundef readonly %bs, ptr noundef %fb, ptr nocapture noundef writeonly %res_chg) #0 align 64 {
entry:
  %data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !198
  %3 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !198
  %5 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !198
  %7 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %res_chg, align 1
  %cmp = icmp eq ptr %bs, null
  %cmp2 = icmp eq ptr %fb, null
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !199

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp9_decode.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 832, i32 noundef %11) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %fb_use_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 4
  %12 = ptrtoint ptr %fb_use_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb_use_list.i, align 4
  %cmp.not62.i = icmp eq ptr %13, %fb_use_list.i
  br i1 %cmp.not62.i, label %do.end.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end.for.end.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end
  %fb_free_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 5
  %prev.i2.i.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 5, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_move_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.063.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %tmp.0.i, %list_move_tail.exit.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %node.063.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0.i = load ptr, ptr %node.063.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.063.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.063.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %node.063.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node.063.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.i.__list_del_entry.exit.i.i_crit_edge
  %21 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.063.i, ptr noundef %22, ptr noundef %fb_free_list.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node.063.i, ptr %prev.i2.i.i, align 4
  %24 = ptrtoint ptr %node.063.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fb_free_list.i, ptr %node.063.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.063.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node.063.i, ptr %22, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.0.i, %fb_use_list.i
  br i1 %cmp.not.i, label %list_move_tail.exit.i.for.end.i_crit_edge, label %list_move_tail.exit.i.for.body.i_crit_edge

list_move_tail.exit.i.for.body.i_crit_edge:       ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_move_tail.exit.i.for.end.i_crit_edge:        ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %list_move_tail.exit.i.for.end.i_crit_edge, %do.end.for.end.i_crit_edge
  tail call fastcc void @vp9_free_all_sf_ref_fb(ptr noundef %h_vdec) #5
  %call.i = tail call fastcc i32 @vp9_get_sf_ref_fb(ptr noundef %h_vdec) #5
  %27 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vsi1, align 4
  %sf_next_ref_fb_idx.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %sf_next_ref_fb_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i, ptr %sf_next_ref_fb_idx.i, align 4
  %vpu.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 9
  %call14.i = tail call i32 @vpu_dec_reset(ptr noundef %vpu.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %for.end.i.vp9_reset.exit_crit_edge, label %do.end.i

for.end.i.vp9_reset.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_reset.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %30 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 668, i32 noundef %33) #8
  br label %vp9_reset.exit

vp9_reset.exit:                                   ; preds = %do.end.i, %for.end.i.vp9_reset.exit_crit_edge
  %va.i = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %h_vdec, i32 0, i32 1
  %34 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %va.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vsi1, align 4
  %mv_buf18.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %38, i32 0, i32 29
  %39 = ptrtoint ptr %mv_buf18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %mv_buf18.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %h_vdec, i32 0, i32 2
  %40 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.i, align 4
  %42 = load ptr, ptr %vsi1, align 4
  %pa.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %42, i32 0, i32 29, i32 1
  %43 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %pa.i, align 4
  %44 = ptrtoint ptr %h_vdec to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %h_vdec, align 4
  %46 = load ptr, ptr %vsi1, align 4
  %sz.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %46, i32 0, i32 29, i32 2
  %47 = ptrtoint ptr %sz.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %sz.i, align 4
  %seg_id_buf.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1
  %va26.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %va26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %va26.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = load ptr, ptr %vsi1, align 4
  %seg_id_buf28.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %51, i32 0, i32 31
  %52 = ptrtoint ptr %seg_id_buf28.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %seg_id_buf28.i, align 4
  %dma_addr31.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %dma_addr31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_addr31.i, align 4
  %55 = load ptr, ptr %vsi1, align 4
  %pa34.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %55, i32 0, i32 31, i32 1
  %56 = ptrtoint ptr %pa34.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %pa34.i, align 4
  %57 = ptrtoint ptr %seg_id_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seg_id_buf.i, align 4
  %59 = load ptr, ptr %vsi1, align 4
  %sz39.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %59, i32 0, i32 31, i32 2
  %60 = ptrtoint ptr %sz39.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %sz39.i, align 4
  br label %cleanup272

if.end6:                                          ; preds = %entry
  br i1 %cmp, label %do.end11, label %do.body17

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %ctx13 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %61 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx13, align 4
  %id14 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 838, i32 noundef %64) #8
  br label %cleanup272

do.body17:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %if.then29)) #5
          to label %do.end34 [label %if.then29], !srcloc !199

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %ctx30 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %65 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx30, align 4
  %id31 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id31, align 4
  %69 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp9_decode.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 842, i32 noundef %68, i32 noundef %70) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 1
  %bs40 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 9
  %sf_init = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 7
  %show_frame = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 20
  %vpu = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 9
  %fb43 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 8
  %sf_frm_cnt = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 3
  %sf_frm_idx = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 6
  %seg_id_buf = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1
  %va70 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1, i32 1
  %frm_to_show_idx.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 22
  %new_fb_idx.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 27
  %resolution_changed = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 24
  %cur_fb140 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 7
  %sf_next_ref_fb_idx = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 2
  %ctx167 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %frm_num = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 28
  %show_existing_frame = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 21
  %arrayidx225 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 30, i32 0
  %idx226 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 30, i32 0, i32 1
  %arrayidx225.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 30, i32 1
  %idx226.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 30, i32 1, i32 1
  %arrayidx225.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 30, i32 2
  %idx226.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 30, i32 2, i32 1
  br label %while.cond

while.cond:                                       ; preds = %vp9_is_last_sub_frm.exit.while.cond_crit_edge, %do.end34
  %71 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %va, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %72, i32 4
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr, align 4
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %3, align 4
  %add.ptr38 = getelementptr i8, ptr %72, i32 8
  %79 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr38, align 4
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %5, align 4
  %82 = call ptr @memcpy(ptr %bs40, ptr %bs, i32 12)
  br i1 %cmp2, label %while.cond.if.end44_crit_edge, label %if.then42

while.cond.if.end44_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then42:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %83 = call ptr @memcpy(ptr %fb43, ptr %fb, i32 28)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %while.cond.if.end44_crit_edge
  %84 = ptrtoint ptr %sf_init to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool45.not = icmp eq i32 %85, 0
  br i1 %tobool45.not, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bs, align 4
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 64)
  %sub = sub nuw nsw i32 64, %88
  %89 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %va, align 4
  %add.ptr52 = getelementptr i8, ptr %90, i32 %87
  %idx.neg = sub nsw i32 0, %88
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 %idx.neg
  %add.ptr54 = getelementptr i8, ptr %1, i32 %sub
  %91 = call ptr @memcpy(ptr %add.ptr54, ptr %add.ptr53, i32 %88)
  br label %if.end67

if.else:                                          ; preds = %if.end44
  %92 = ptrtoint ptr %sf_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sf_frm_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp55.not = icmp eq i32 %93, 0
  br i1 %cmp55.not, label %if.else.if.end67_crit_edge, label %land.lhs.true56

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true56:                                  ; preds = %if.else
  %94 = ptrtoint ptr %sf_frm_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sf_frm_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %93)
  %cmp58 = icmp ult i32 %95, %93
  br i1 %cmp58, label %if.then59, label %land.lhs.true56.if.end67_crit_edge

land.lhs.true56.if.end67_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %va, align 4
  %arrayidx63 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 4, i32 %95
  %98 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %97, i32 %99
  %arrayidx65 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 5, i32 %95
  %100 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx65, align 4
  %102 = call ptr @memcpy(ptr %97, ptr %add.ptr64, i32 %101)
  br label %if.end67

if.end67:                                         ; preds = %if.then59, %land.lhs.true56.if.end67_crit_edge, %if.else.if.end67_crit_edge, %if.then46
  %103 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %show_frame, align 4
  %and = and i32 %104, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.then69, label %if.end67.if.end73_crit_edge

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %va70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %va70, align 4
  %107 = ptrtoint ptr %seg_id_buf to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %seg_id_buf, align 4
  %109 = call ptr @memset(ptr %106, i32 0, i32 %108)
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end67.if.end73_crit_edge
  %call75 = call i32 @vpu_dec_start(ptr noundef %vpu, ptr noundef nonnull %data, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end85, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx167, align 4
  %id83 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %id83 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id83, align 4
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4, i32 noundef 885, i32 noundef %113) #8
  br label %DECODE_ERROR

if.end85:                                         ; preds = %if.end73
  %114 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %show_frame, align 4
  %and87 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end85.if.end111_crit_edge, label %if.then89

if.end85.if.end111_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then89:                                        ; preds = %if.end85
  %116 = ptrtoint ptr %va70 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %va70, align 4
  %118 = ptrtoint ptr %seg_id_buf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %seg_id_buf, align 4
  %120 = call ptr @memset(ptr %117, i32 0, i32 %119)
  %121 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %show_frame, align 4
  %and95 = and i32 %122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then89.if.end111_crit_edge, label %if.then97

if.then89.if.end111_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then97:                                        ; preds = %if.then89
  %call99 = call i32 @vpu_dec_start(ptr noundef %vpu, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then97.if.end111_crit_edge, label %do.end104

if.then97.if.end111_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

do.end104:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctx167, align 4
  %id107 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %id107 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %id107, align 4
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, i32 noundef 895, i32 noundef %126) #8
  br label %DECODE_ERROR

if.end111:                                        ; preds = %if.then97.if.end111_crit_edge, %if.then89.if.end111_crit_edge, %if.end85.if.end111_crit_edge
  %127 = ptrtoint ptr %sf_frm_idx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sf_frm_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %128)
  %cmp.i = icmp ugt i32 %128, 7
  br i1 %cmp.i, label %do.end.i395, label %if.end.i

do.end.i395:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ctx167, align 4
  %id.i393 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %id.i393 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %id.i393, align 4
  %call.i394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 748, i32 noundef %132, i32 noundef %128) #8
  br label %do.end117

if.end.i:                                         ; preds = %if.end111
  %133 = ptrtoint ptr %frm_to_show_idx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %frm_to_show_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %134)
  %cmp2.i = icmp ugt i32 %134, 8
  br i1 %cmp2.i, label %do.end5.i, label %if.end11.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ctx167, align 4
  %id8.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %136, i32 0, i32 6
  %137 = ptrtoint ptr %id8.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %id8.i, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 753, i32 noundef %138, i32 noundef %134) #8
  br label %do.end117

if.end11.i:                                       ; preds = %if.end.i
  %139 = ptrtoint ptr %new_fb_idx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %new_fb_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %140)
  %cmp12.i = icmp ugt i32 %140, 8
  br i1 %cmp12.i, label %do.end15.i, label %if.end122

do.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ctx167, align 4
  %id18.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id18.i, align 4
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i32 noundef 758, i32 noundef %144, i32 noundef %140) #8
  br label %do.end117

do.end117:                                        ; preds = %do.end15.i, %do.end5.i, %do.end.i395
  %145 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx167, align 4
  %id120 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %146, i32 0, i32 6
  %147 = ptrtoint ptr %id120 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %id120, align 4
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, i32 noundef 903, i32 noundef %148) #8
  br label %if.then270

if.end122:                                        ; preds = %if.end11.i
  %149 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %resolution_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool123.not = icmp eq i32 %150, 0
  br i1 %tobool123.not, label %if.end122.if.end128_crit_edge, label %if.then124

if.end122.if.end128_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then124:                                       ; preds = %if.end122
  %call125 = call fastcc zeroext i1 @vp9_alloc_work_buf(ptr noundef %h_vdec)
  br i1 %call125, label %if.then124.if.end128_crit_edge, label %if.then124.if.then270_crit_edge

if.then124.if.then270_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then270

if.then124.if.end128_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.end128:                                        ; preds = %if.then124.if.end128_crit_edge, %if.end122.if.end128_crit_edge
  %151 = ptrtoint ptr %sf_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sf_frm_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp130.not = icmp eq i32 %152, 0
  br i1 %cmp130.not, label %if.end128.if.end144_crit_edge, label %if.then131

if.end128.if.end144_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.then131:                                       ; preds = %if.end128
  %153 = ptrtoint ptr %sf_frm_idx to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sf_frm_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %152)
  %cmp136 = icmp ult i32 %154, %152
  br i1 %cmp136, label %if.then137, label %if.then131.if.end144_crit_edge

if.then131.if.end144_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.then137:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %sf_next_ref_fb_idx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sf_next_ref_fb_idx, align 4
  %arrayidx132 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 %156
  br label %if.end144

if.end144:                                        ; preds = %if.then137, %if.then131.if.end144_crit_edge, %if.end128.if.end144_crit_edge
  %arrayidx132.sink = phi ptr [ %arrayidx132, %if.then137 ], [ %fb, %if.then131.if.end144_crit_edge ], [ %fb, %if.end128.if.end144_crit_edge ]
  %157 = ptrtoint ptr %cur_fb140 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %arrayidx132.sink, ptr %cur_fb140, align 4
  %158 = ptrtoint ptr %new_fb_idx.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %new_fb_idx.i, align 4
  %arrayidx146 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %159
  %160 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %arrayidx132.sink, ptr %arrayidx146, align 4
  %161 = load ptr, ptr %cur_fb140, align 4
  %162 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %vsi1, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end144
  %i.0.i = phi i32 [ 0, %if.end144 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i)
  %cmp.i397 = icmp ult i32 %i.0.i, 8
  %cmp.not.i398 = xor i1 %cmp.i397, true
  %arrayidx.i = getelementptr %struct.vdec_vp9_vsi, ptr %163, i32 0, i32 1, i32 %i.0.i
  %cmp3.i = icmp eq ptr %arrayidx.i, %161
  %or.cond.i = select i1 %cmp.not.i398, i1 true, i1 %cmp3.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %vp9_is_sf_ref_fb.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

vp9_is_sf_ref_fb.exit:                            ; preds = %for.cond.i
  br i1 %cmp.i397, label %vp9_is_sf_ref_fb.exit.do.body154_crit_edge, label %if.then150

vp9_is_sf_ref_fb.exit.do.body154_crit_edge:       ; preds = %vp9_is_sf_ref_fb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body154

if.then150:                                       ; preds = %vp9_is_sf_ref_fb.exit
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @vp9_add_to_fb_use_list(ptr noundef %h_vdec, ptr noundef %161)
  br label %do.body154

do.body154:                                       ; preds = %if.then150, %vp9_is_sf_ref_fb.exit.do.body154_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %if.then166)) #5
          to label %do.end171 [label %if.then166], !srcloc !199

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ctx167, align 4
  %id168 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %165, i32 0, i32 6
  %166 = ptrtoint ptr %id168 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %id168, align 4
  %168 = ptrtoint ptr %frm_num to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %frm_num, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp9_decode.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 929, i32 noundef %167, i32 noundef %169) #5
  br label %do.end171

do.end171:                                        ; preds = %if.then166, %do.body154
  %170 = ptrtoint ptr %show_existing_frame to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %show_existing_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool172.not = icmp eq i32 %171, 0
  br i1 %tobool172.not, label %do.end171.if.end193_crit_edge, label %do.body174

do.end171.if.end193_crit_edge:                    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

do.body174:                                       ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %if.then186)) #5
          to label %if.end193 [label %if.then186], !srcloc !199

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ctx167, align 4
  %id188 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %173, i32 0, i32 6
  %174 = ptrtoint ptr %id188 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %id188, align 4
  %176 = ptrtoint ptr %new_fb_idx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %new_fb_idx.i, align 4
  %178 = ptrtoint ptr %frm_to_show_idx.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %frm_to_show_idx.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp9_decode.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, i32 noundef 934, i32 noundef %175, i32 noundef %177, i32 noundef %179) #5
  br label %if.end193

if.end193:                                        ; preds = %if.then186, %do.body174, %do.end171.if.end193_crit_edge
  %180 = ptrtoint ptr %show_existing_frame to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %show_existing_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool195.not = icmp eq i32 %181, 0
  br i1 %tobool195.not, label %if.end193.if.end222_crit_edge, label %land.lhs.true196

if.end193.if.end222_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end222

land.lhs.true196:                                 ; preds = %if.end193
  %182 = ptrtoint ptr %frm_to_show_idx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %frm_to_show_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %183)
  %cmp198 = icmp ult i32 %183, 9
  br i1 %cmp198, label %do.body200, label %land.lhs.true196.if.end222_crit_edge

land.lhs.true196.if.end222_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end222

do.body200:                                       ; preds = %land.lhs.true196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %if.then212)) #5
          to label %do.end219 [label %if.then212], !srcloc !199

if.then212:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  %184 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ctx167, align 4
  %id214 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %185, i32 0, i32 6
  %186 = ptrtoint ptr %id214 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %id214, align 4
  %188 = ptrtoint ptr %new_fb_idx.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %new_fb_idx.i, align 4
  %190 = ptrtoint ptr %frm_to_show_idx.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %frm_to_show_idx.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp9_decode.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4, i32 noundef 940, i32 noundef %187, i32 noundef %189, i32 noundef %191) #5
  br label %do.end219

do.end219:                                        ; preds = %if.then212, %do.body200
  %192 = ptrtoint ptr %frm_to_show_idx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %frm_to_show_idx.i, align 4
  call fastcc void @vp9_ref_cnt_fb(ptr noundef %h_vdec, ptr noundef %new_fb_idx.i, i32 noundef %193)
  br label %if.end222

if.end222:                                        ; preds = %do.end219, %land.lhs.true196.if.end222_crit_edge, %if.end193.if.end222_crit_edge
  %194 = ptrtoint ptr %idx226 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %idx226, align 4
  %arrayidx228 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %195
  %196 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %arrayidx228, ptr %arrayidx225, align 4
  %197 = ptrtoint ptr %idx226.1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %idx226.1, align 4
  %arrayidx228.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %198
  %199 = ptrtoint ptr %arrayidx225.1 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %arrayidx228.1, ptr %arrayidx225.1, align 4
  %200 = ptrtoint ptr %idx226.2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %idx226.2, align 4
  %arrayidx228.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %201
  %202 = ptrtoint ptr %arrayidx225.2 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %arrayidx228.2, ptr %arrayidx225.2, align 4
  %203 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %resolution_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool234.not = icmp eq i32 %204, 0
  br i1 %tobool234.not, label %if.end254, label %if.then235

if.then235:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #7
  %205 = ptrtoint ptr %res_chg to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %res_chg, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %DECODE_ERROR.thread442)) #5
          to label %cleanup272 [label %DECODE_ERROR.thread442], !srcloc !199

DECODE_ERROR.thread442:                           ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ctx167, align 4
  %id250 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %207, i32 0, i32 6
  %208 = ptrtoint ptr %id250 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %id250, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vdec_vp9_decode.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.4, i32 noundef 957, i32 noundef %209) #5
  br label %cleanup272

if.end254:                                        ; preds = %if.end222
  %call255 = call fastcc zeroext i1 @vp9_decode_end_proc(ptr noundef %h_vdec)
  br i1 %call255, label %if.end264, label %do.end259

do.end259:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #7
  %210 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ctx167, align 4
  %id262 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %211, i32 0, i32 6
  %212 = ptrtoint ptr %id262 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %id262, align 4
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, i32 noundef 964, i32 noundef %213) #8
  br label %if.then270

if.end264:                                        ; preds = %if.end254
  %214 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %vsi1, align 4
  %sf_frm_cnt.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %sf_frm_cnt.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %sf_frm_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i400 = icmp eq i32 %217, 0
  br i1 %cmp.i400, label %if.end264.while.end_crit_edge, label %vp9_is_last_sub_frm.exit

if.end264.while.end_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

vp9_is_last_sub_frm.exit:                         ; preds = %if.end264
  %sf_frm_idx.i401 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %215, i32 0, i32 6
  %218 = ptrtoint ptr %sf_frm_idx.i401 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %sf_frm_idx.i401, align 4
  %cmp3.i402 = icmp eq i32 %219, %217
  br i1 %cmp3.i402, label %vp9_is_last_sub_frm.exit.while.end_crit_edge, label %vp9_is_last_sub_frm.exit.while.cond_crit_edge

vp9_is_last_sub_frm.exit.while.cond_crit_edge:    ; preds = %vp9_is_last_sub_frm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

vp9_is_last_sub_frm.exit.while.end_crit_edge:     ; preds = %vp9_is_last_sub_frm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %vp9_is_last_sub_frm.exit.while.end_crit_edge, %if.end264.while.end_crit_edge
  %total_frm_cnt = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 11
  %220 = ptrtoint ptr %total_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %total_frm_cnt, align 4
  %inc268 = add i32 %221, 1
  store i32 %inc268, ptr %total_frm_cnt, align 4
  br label %cleanup272

DECODE_ERROR:                                     ; preds = %do.end104, %do.end80
  %ret.0.ph = phi i32 [ %call99, %do.end104 ], [ %call75, %do.end80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph)
  %cmp269 = icmp slt i32 %ret.0.ph, 0
  br i1 %cmp269, label %DECODE_ERROR.if.then270_crit_edge, label %DECODE_ERROR.cleanup272_crit_edge

DECODE_ERROR.cleanup272_crit_edge:                ; preds = %DECODE_ERROR
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup272

DECODE_ERROR.if.then270_crit_edge:                ; preds = %DECODE_ERROR
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then270

if.then270:                                       ; preds = %DECODE_ERROR.if.then270_crit_edge, %do.end259, %if.then124.if.then270_crit_edge, %do.end117
  %ret.0.ph441 = phi i32 [ %ret.0.ph, %DECODE_ERROR.if.then270_crit_edge ], [ -5, %do.end117 ], [ -22, %do.end259 ], [ -5, %if.then124.if.then270_crit_edge ]
  br i1 %cmp2, label %do.body6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then270
  %available_fb_node_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 3
  %222 = ptrtoint ptr %available_fb_node_list.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile ptr, ptr %available_fb_node_list.i, align 4
  %cmp.not.i405 = icmp eq ptr %223, %available_fb_node_list.i
  %tobool3.not24.i = icmp eq ptr %223, null
  %tobool3.not.i = or i1 %cmp.not.i405, %tobool3.not24.i
  br i1 %tobool3.not.i, label %if.then.i.cleanup272_crit_edge, label %if.then4.i

if.then.i.cleanup272_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup272

if.then4.i:                                       ; preds = %if.then.i
  %fb5.i = getelementptr inbounds %struct.vdec_fb_node, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %fb5.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %fb, ptr %fb5.i, align 4
  %fb_free_list.i406 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 5
  %call.i.i.i407 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %223) #5
  br i1 %call.i.i.i407, label %if.end.i.i.i410, label %if.then4.i.__list_del_entry.exit.i.i413_crit_edge

if.then4.i.__list_del_entry.exit.i.i413_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i413

if.end.i.i.i410:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i408 = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  %225 = ptrtoint ptr %prev.i.i.i408 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %prev.i.i.i408, align 4
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %223, align 4
  %prev1.i.i.i.i409 = getelementptr inbounds %struct.list_head, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %prev1.i.i.i.i409 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %226, ptr %prev1.i.i.i.i409, align 4
  %230 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile ptr %228, ptr %226, align 4
  br label %__list_del_entry.exit.i.i413

__list_del_entry.exit.i.i413:                     ; preds = %if.end.i.i.i410, %if.then4.i.__list_del_entry.exit.i.i413_crit_edge
  %prev.i2.i.i411 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 5, i32 1
  %231 = ptrtoint ptr %prev.i2.i.i411 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %prev.i2.i.i411, align 4
  %call.i.i.i.i412 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %223, ptr noundef %232, ptr noundef %fb_free_list.i406) #5
  br i1 %call.i.i.i.i412, label %if.end.i.i.i.i415, label %__list_del_entry.exit.i.i413.cleanup272_crit_edge

__list_del_entry.exit.i.i413.cleanup272_crit_edge: ; preds = %__list_del_entry.exit.i.i413
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup272

if.end.i.i.i.i415:                                ; preds = %__list_del_entry.exit.i.i413
  call void @__sanitizer_cov_trace_pc() #7
  %233 = ptrtoint ptr %prev.i2.i.i411 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %223, ptr %prev.i2.i.i411, align 4
  %234 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %fb_free_list.i406, ptr %223, align 4
  %prev3.i.i.i.i414 = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  %235 = ptrtoint ptr %prev3.i.i.i.i414 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %232, ptr %prev3.i.i.i.i414, align 4
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile ptr %223, ptr %232, align 4
  br label %cleanup272

do.body6.i:                                       ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_decode, %if.then11.i)) #5
          to label %cleanup272 [label %if.then11.i], !srcloc !199

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %237 = ptrtoint ptr %ctx167 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ctx167, align 4
  %id.i417 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %id.i417 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %id.i417, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef 249, i32 noundef %240) #5
  br label %cleanup272

cleanup272:                                       ; preds = %if.then11.i, %do.body6.i, %if.end.i.i.i.i415, %__list_del_entry.exit.i.i413.cleanup272_crit_edge, %if.then.i.cleanup272_crit_edge, %DECODE_ERROR.cleanup272_crit_edge, %while.end, %DECODE_ERROR.thread442, %if.then235, %do.end11, %vp9_reset.exit
  %retval.0 = phi i32 [ 0, %vp9_reset.exit ], [ -22, %do.end11 ], [ %ret.0.ph, %DECODE_ERROR.cleanup272_crit_edge ], [ 0, %DECODE_ERROR.thread442 ], [ %ret.0.ph441, %if.then.i.cleanup272_crit_edge ], [ %ret.0.ph441, %__list_del_entry.exit.i.i413.cleanup272_crit_edge ], [ %ret.0.ph441, %if.end.i.i.i.i415 ], [ %ret.0.ph441, %do.body6.i ], [ %ret.0.ph441, %if.then11.i ], [ 0, %while.end ], [ 0, %if.then235 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_vp9_get_param(ptr noundef %h_vdec, i32 noundef %type, ptr nocapture noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc ptr @vp9_rm_from_fb_disp_list(ptr noundef %h_vdec) #5
  %1 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %out, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.vdec_fb, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status.i, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %status.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @get_free_fb(ptr noundef %h_vdec, ptr noundef %out)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @get_pic_info(ptr noundef %h_vdec, ptr noundef %out)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %out, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out, align 4
  %top.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 1
  %6 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %top.i, align 4
  %vsi.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 10
  %7 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi.i, align 4
  %pic_w.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %pic_w.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pic_w.i, align 4
  %width.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 2
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width.i, align 4
  %12 = load ptr, ptr %vsi.i, align 4
  %pic_h.i = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %pic_h.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pic_h.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_rect, ptr %out, i32 0, i32 3
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_crop_info.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_vp9_get_param, %if.then.i14)) #5
          to label %sw.epilog [label %if.then.i14], !srcloc !199

if.then.i14:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  %22 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top.i, align 4
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i, align 4
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_crop_info.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef 989, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 1015, i32 noundef %31, i32 noundef %type) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i14, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb4 ], [ 0, %if.then.i14 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_vp9_deinit(ptr noundef %h_vdec) #0 align 64 {
entry:
  %mem.i = alloca %struct.mtk_vcodec_mem, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vpu = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 9
  %call = tail call i32 @vpu_dec_deinit(ptr noundef %vpu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef 772, i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %h_vdec, i32 0, i32 1
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %va, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx4 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %6 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx4, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %7, ptr noundef %h_vdec) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %va6 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %va6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va6, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %seg_id_buf = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 1
  %ctx9 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %10 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx9, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %11, ptr noundef %seg_id_buf) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  tail call fastcc void @vp9_free_all_sf_ref_fb(ptr noundef %h_vdec)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem.i) #5
  %12 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem.i, i32 0, i32 1
  %mem1.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 12
  %13 = call ptr @memcpy(ptr %mem.i, ptr %mem1.i, i32 12)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end10.vp9_free_inst.exit_crit_edge, label %if.then.i

if.end10.vp9_free_inst.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_free_inst.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %h_vdec, i32 0, i32 8
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  call void @mtk_vcodec_mem_free(ptr noundef %17, ptr noundef nonnull %mem.i) #5
  br label %vp9_free_inst.exit

vp9_free_inst.exit:                               ; preds = %if.then.i, %if.end10.vp9_free_inst.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem.i) #5
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
declare dso_local i32 @mtk_vcodec_mem_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vp9_alloc_work_buf(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dec_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %dec_capability to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dec_capability, align 8
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.131 = select i1 %tobool.not, i32 4096, i32 2048
  %pic_w = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pic_w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pic_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %.131)
  %cmp = icmp ugt i32 %9, %.131
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %. = select i1 %tobool.not, i32 2304, i32 1088
  %pic_h = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pic_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %.)
  %cmp2 = icmp ugt i32 %11, %.
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %do.body8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %pic_h6 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %pic_h6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pic_h6, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 381, i32 noundef %13, i32 noundef %9, i32 noundef %15) #8
  br label %cleanup

do.body8:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_alloc_work_buf.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_alloc_work_buf, %if.then14)) #5
          to label %do.end21 [label %if.then14], !srcloc !199

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %id16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id16, align 4
  %resolution_changed = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %resolution_changed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resolution_changed, align 4
  %22 = ptrtoint ptr %pic_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pic_w, align 4
  %24 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pic_h, align 4
  %buf_w = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_w, align 4
  %buf_h = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_alloc_work_buf.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 390, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #5
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %do.body8
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %inst, i32 0, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %do.end21.if.end25_crit_edge, label %if.then23

do.end21.if.end25_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %33, ptr noundef %inst) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.end21.if.end25_crit_edge
  %buf_w26 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %buf_w26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_w26, align 4
  %div129 = lshr i32 %35, 6
  %buf_h27 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %buf_h27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_h27, align 4
  %div28130 = lshr i32 %37, 6
  %mul = mul i32 %div129, 576
  %mul29 = mul i32 %mul, %div28130
  %mul30 = add i32 %mul29, 1152
  %38 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul30, ptr %inst, align 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %call32 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %40, ptr noundef %inst) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end43, label %if.then34

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %inst, align 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %id41 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %id41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id41, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.49, i32 noundef 401, i32 noundef %45) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end25
  %46 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %va, align 4
  %48 = ptrtoint ptr %47 to i32
  %mv_buf45 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 29
  %49 = ptrtoint ptr %mv_buf45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mv_buf45, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %inst, i32 0, i32 2
  %50 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_addr, align 4
  %pa = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 29, i32 1
  %52 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %pa, align 4
  %53 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inst, align 4
  %sz = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 29, i32 2
  %55 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sz, align 4
  %seg_id_buf = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 1
  %va50 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %va50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %va50, align 4
  %tobool51.not = icmp eq ptr %57, null
  br i1 %tobool51.not, label %if.end43.if.end54_crit_edge, label %if.then52

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %59, ptr noundef %seg_id_buf) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end43.if.end54_crit_edge
  %60 = ptrtoint ptr %seg_id_buf to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 73728, ptr %seg_id_buf, align 4
  %61 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx, align 4
  %call57 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %62, ptr noundef %seg_id_buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end68, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %seg_id_buf to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %seg_id_buf, align 4
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  %id66 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %id66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id66, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.49, i32 noundef 418, i32 noundef %67) #8
  br label %cleanup

if.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %va50 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %va50, align 4
  %70 = ptrtoint ptr %69 to i32
  %seg_id_buf70 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 31
  %71 = ptrtoint ptr %seg_id_buf70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %seg_id_buf70, align 4
  %dma_addr72 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %dma_addr72 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_addr72, align 4
  %pa74 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 31, i32 1
  %74 = ptrtoint ptr %pa74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %pa74, align 4
  %75 = ptrtoint ptr %seg_id_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %seg_id_buf, align 4
  %sz77 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 31, i32 2
  %77 = ptrtoint ptr %sz77 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %sz77, align 4
  tail call fastcc void @vp9_free_all_sf_ref_fb(ptr noundef %inst)
  %call78 = tail call fastcc i32 @vp9_get_sf_ref_fb(ptr noundef %inst)
  %sf_next_ref_fb_idx = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 2
  %78 = ptrtoint ptr %sf_next_ref_fb_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call78, ptr %sf_next_ref_fb_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then59, %if.then34, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.then34 ], [ false, %if.then59 ], [ true, %if.end68 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp9_add_to_fb_use_list(ptr noundef %inst, ptr noundef %fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fb, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_add_to_fb_use_list.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_add_to_fb_use_list, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !199

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_add_to_fb_use_list.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 641, i32 noundef %3) #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %4 = ptrtoint ptr %available_fb_node_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %available_fb_node_list, align 4
  %cmp.not = icmp eq ptr %5, %available_fb_node_list
  %tobool12.not2 = icmp eq ptr %5, null
  %tobool12.not = or i1 %cmp.not, %tobool12.not2
  br i1 %tobool12.not, label %do.end17, label %if.then13

if.then13:                                        ; preds = %if.end5
  %fb14 = getelementptr inbounds %struct.vdec_fb_node, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fb14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fb, ptr %fb14, align 4
  %fb_use_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.__list_del_entry.exit.i_crit_edge

if.then13.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then13.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %5, ptr noundef %14, ptr noundef %fb_use_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %prev.i2.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fb_use_list, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %5, ptr %14, align 4
  br label %cleanup

do.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %ctx19 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %19 = ptrtoint ptr %ctx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx19, align 4
  %id20 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.58, i32 noundef 651, i32 noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp9_ref_cnt_fb(ptr noundef %inst, ptr nocapture noundef %idx, i32 noundef %new_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %3
  %ref_cnt = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %3, i32 1
  %4 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end25_crit_edge, label %if.then

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %if.then10, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then10:                                        ; preds = %if.then
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi1, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then10
  %i.0.i = phi i32 [ 0, %if.then10 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i)
  %cmp.i = icmp ult i32 %i.0.i, 8
  %cmp.not.i = xor i1 %cmp.i, true
  %arrayidx.i = getelementptr %struct.vdec_vp9_vsi, ptr %10, i32 0, i32 1, i32 %i.0.i
  %cmp3.i = icmp eq ptr %arrayidx.i, %8
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %vp9_is_sf_ref_fb.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

vp9_is_sf_ref_fb.exit:                            ; preds = %for.cond.i
  br i1 %cmp.i, label %if.else, label %if.then13

if.then13:                                        ; preds = %vp9_is_sf_ref_fb.exit
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va, align 4
  %fb_use_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 4
  %13 = ptrtoint ptr %fb_use_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.019.i = load ptr, ptr %fb_use_list.i, align 4
  %cmp.not20.i = icmp eq ptr %node.019.i, %fb_use_list.i
  br i1 %cmp.not20.i, label %if.then13.do.body6.i_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.do.body6.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6.i

for.cond.i48:                                     ; preds = %for.body.i
  %14 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i = load ptr, ptr %node.021.i, align 4
  %cmp.not.i47 = icmp eq ptr %node.0.i, %fb_use_list.i
  br i1 %cmp.not.i47, label %for.cond.i48.vp9_rm_from_fb_use_list.exit_crit_edge, label %for.cond.i48.for.body.i_crit_edge

for.cond.i48.for.body.i_crit_edge:                ; preds = %for.cond.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i48.vp9_rm_from_fb_use_list.exit_crit_edge: ; preds = %for.cond.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_rm_from_fb_use_list.exit

for.body.i:                                       ; preds = %for.cond.i48.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %node.021.i = phi ptr [ %node.0.i, %for.cond.i48.for.body.i_crit_edge ], [ %node.019.i, %if.then13.for.body.i_crit_edge ]
  %fb2.i = getelementptr inbounds %struct.vdec_fb_node, ptr %node.021.i, i32 0, i32 1
  %15 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb2.i, align 4
  %va.i = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %va.i, align 4
  %cmp3.i49 = icmp eq ptr %18, %12
  br i1 %cmp3.i49, label %if.then.i, label %for.cond.i48

if.then.i:                                        ; preds = %for.body.i
  %available_fb_node_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.021.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.021.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.021.i, ptr noundef %26, ptr noundef %available_fb_node_list.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.vp9_rm_from_fb_use_list.exit_crit_edge

__list_del_entry.exit.i.i.vp9_rm_from_fb_use_list.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_rm_from_fb_use_list.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.021.i, ptr %prev.i2.i.i, align 4
  %28 = ptrtoint ptr %node.021.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %available_fb_node_list.i, ptr %node.021.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.021.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node.021.i, ptr %26, align 4
  br label %vp9_rm_from_fb_use_list.exit

vp9_rm_from_fb_use_list.exit:                     ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.vp9_rm_from_fb_use_list.exit_crit_edge, %for.cond.i48.vp9_rm_from_fb_use_list.exit_crit_edge
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %vp9_rm_from_fb_use_list.exit.do.body6.i_crit_edge, label %if.then.i52

vp9_rm_from_fb_use_list.exit.do.body6.i_crit_edge: ; preds = %vp9_rm_from_fb_use_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6.i

if.then.i52:                                      ; preds = %vp9_rm_from_fb_use_list.exit
  %available_fb_node_list.i50 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %31 = ptrtoint ptr %available_fb_node_list.i50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %available_fb_node_list.i50, align 4
  %cmp.not.i51 = icmp eq ptr %32, %available_fb_node_list.i50
  %tobool3.not24.i = icmp eq ptr %32, null
  %tobool3.not.i = or i1 %cmp.not.i51, %tobool3.not24.i
  br i1 %tobool3.not.i, label %if.then.i52.if.end25_crit_edge, label %if.then4.i

if.then.i52.if.end25_crit_edge:                   ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then4.i:                                       ; preds = %if.then.i52
  %fb5.i = getelementptr inbounds %struct.vdec_fb_node, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %fb5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %16, ptr %fb5.i, align 4
  %fb_free_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 5
  %call.i.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %32) #5
  br i1 %call.i.i.i53, label %if.end.i.i.i56, label %if.then4.i.__list_del_entry.exit.i.i59_crit_edge

if.then4.i.__list_del_entry.exit.i.i59_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i59

if.end.i.i.i56:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i54 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i54, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i55, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i.i59

__list_del_entry.exit.i.i59:                      ; preds = %if.end.i.i.i56, %if.then4.i.__list_del_entry.exit.i.i59_crit_edge
  %prev.i2.i.i57 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i2.i.i57, align 4
  %call.i.i.i.i58 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %32, ptr noundef %41, ptr noundef %fb_free_list.i) #5
  br i1 %call.i.i.i.i58, label %if.end.i.i.i.i61, label %__list_del_entry.exit.i.i59.if.end25_crit_edge

__list_del_entry.exit.i.i59.if.end25_crit_edge:   ; preds = %__list_del_entry.exit.i.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end.i.i.i.i61:                                 ; preds = %__list_del_entry.exit.i.i59
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %prev.i2.i.i57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %32, ptr %prev.i2.i.i57, align 4
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fb_free_list.i, ptr %32, align 4
  %prev3.i.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i.i60, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %32, ptr %41, align 4
  br label %if.end25

do.body6.i:                                       ; preds = %vp9_rm_from_fb_use_list.exit.do.body6.i_crit_edge, %if.then13.do.body6.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_ref_cnt_fb, %if.then11.i)) #5
          to label %if.end25 [label %if.then11.i], !srcloc !199

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %46 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef 249, i32 noundef %49) #5
  br label %if.end25

if.else:                                          ; preds = %vp9_is_sf_ref_fb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %used.i = getelementptr inbounds %struct.vp9_sf_ref_fb, ptr %8, i32 0, i32 1
  %50 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %used.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then11.i, %do.body6.i, %if.end.i.i.i.i61, %__list_del_entry.exit.i.i59.if.end25_crit_edge, %if.then.i52.if.end25_crit_edge, %if.then.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  %51 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %new_idx, ptr %idx, align 4
  %ref_cnt28 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %new_idx, i32 1
  %52 = ptrtoint ptr %ref_cnt28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ref_cnt28, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %ref_cnt28, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vp9_decode_end_proc(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %show_existing_frame = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %show_existing_frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %show_existing_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %do.body30

if.then:                                          ; preds = %entry
  %ctx1.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1.i, align 4
  %call.i = tail call i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %5, i32 noundef 1, i32 noundef 1000) #5
  %irq_status.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_status.i, align 8
  %and.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx1.i, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %frm_num = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %frm_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frm_num, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 586, i32 noundef %11, i32 noundef %13) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %vpu = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 9
  %call5 = tail call i32 @vpu_dec_end(ptr noundef %vpu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body16, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx1.i, align 4
  %id13 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id13, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 591, i32 noundef %17) #8
  br label %cleanup

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_decode_end_proc.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_decode_end_proc, %if.then23)) #5
          to label %if.end49 [label %if.then23], !srcloc !199

if.then23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1.i, align 4
  %id25 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id25, align 4
  %frm_num26 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %frm_num26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frm_num26, align 4
  %pic_w = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %pic_w to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pic_w, align 4
  %pic_h = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pic_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_decode_end_proc.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef 595, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #5
  br label %if.end49

do.body30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_decode_end_proc.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_decode_end_proc, %if.then42)) #5
          to label %if.end49 [label %if.then42], !srcloc !199

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %ctx43 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %28 = ptrtoint ptr %ctx43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx43, align 4
  %id44 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %id44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id44, align 4
  %frm_num45 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 28
  %32 = ptrtoint ptr %frm_num45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frm_num45, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_decode_end_proc.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.63, i32 noundef 598, i32 noundef %31, i32 noundef %33) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %do.body30, %if.then23, %do.body16
  tail call fastcc void @vp9_swap_frm_bufs(ptr noundef %inst)
  %frm_num50 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 28
  %34 = ptrtoint ptr %frm_num50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frm_num50, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %frm_num50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end10, %do.end
  %retval.0 = phi i1 [ true, %if.end49 ], [ false, %do.end10 ], [ false, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp9_free_all_sf_ref_fb(ptr nocapture noundef readonly %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %va = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %5, ptr noundef %arrayidx) #5
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %base_c = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %7, ptr noundef %base_c) #5
  %used = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %used, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %va.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %va.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %12, ptr noundef %arrayidx.1) #5
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %base_c.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %14, ptr noundef %base_c.1) #5
  %used.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %used.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %used.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %va.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %va.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %va.2, align 4
  %tobool.not.2 = icmp eq ptr %17, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %19, ptr noundef %arrayidx.2) #5
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %base_c.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %21, ptr noundef %base_c.2) #5
  %used.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %used.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %used.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %va.3 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %va.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %va.3, align 4
  %tobool.not.3 = icmp eq ptr %24, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %26, ptr noundef %arrayidx.3) #5
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %base_c.3 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %28, ptr noundef %base_c.3) #5
  %used.3 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 3, i32 1
  %29 = ptrtoint ptr %used.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %used.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %va.4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %va.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va.4, align 4
  %tobool.not.4 = icmp eq ptr %31, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %33, ptr noundef %arrayidx.4) #5
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %base_c.4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %35, ptr noundef %base_c.4) #5
  %used.4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 4, i32 1
  %36 = ptrtoint ptr %used.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %used.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %va.5 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 5, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %va.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %va.5, align 4
  %tobool.not.5 = icmp eq ptr %38, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.5 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %40, ptr noundef %arrayidx.5) #5
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %base_c.5 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 5, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %42, ptr noundef %base_c.5) #5
  %used.5 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 5, i32 1
  %43 = ptrtoint ptr %used.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %used.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %va.6 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 6, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %va.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %va.6, align 4
  %tobool.not.6 = icmp eq ptr %45, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.6 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %47, ptr noundef %arrayidx.6) #5
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %base_c.6 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 6, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %49, ptr noundef %base_c.6) #5
  %used.6 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 6, i32 1
  %50 = ptrtoint ptr %used.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %used.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %va.7 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 7, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %va.7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %va.7, align 4
  %tobool.not.7 = icmp eq ptr %52, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.7 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 7
  %53 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx, align 4
  tail call void @mtk_vcodec_mem_free(ptr noundef %54, ptr noundef %arrayidx.7) #5
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 4
  %base_c.7 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 7, i32 0, i32 1
  tail call void @mtk_vcodec_mem_free(ptr noundef %56, ptr noundef %base_c.7) #5
  %used.7 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 7, i32 1
  %57 = ptrtoint ptr %used.7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %used.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vp9_get_sf_ref_fb(ptr nocapture noundef readonly %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %va = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %used = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %va.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %va.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %used.1 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %used.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.1 = icmp eq i32 %9, 0
  br i1 %cmp4.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %va.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %va.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %used.2 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 2, i32 1
  %12 = ptrtoint ptr %used.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.2 = icmp eq i32 %13, 0
  br i1 %cmp4.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %va.3 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %va.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va.3, align 4
  %tobool.not.3 = icmp eq ptr %15, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %used.3 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 3, i32 1
  %16 = ptrtoint ptr %used.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.3 = icmp eq i32 %17, 0
  br i1 %cmp4.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %va.4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %va.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %va.4, align 4
  %tobool.not.4 = icmp eq ptr %19, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %used.4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 4, i32 1
  %20 = ptrtoint ptr %used.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp4.4 = icmp eq i32 %21, 0
  br i1 %cmp4.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %va.5 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 5, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %va.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va.5, align 4
  %tobool.not.5 = icmp eq ptr %23, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %used.5 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 5, i32 1
  %24 = ptrtoint ptr %used.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp4.5 = icmp eq i32 %25, 0
  br i1 %cmp4.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %va.6 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 6, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %va.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %va.6, align 4
  %tobool.not.6 = icmp eq ptr %27, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %used.6 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 6, i32 1
  %28 = ptrtoint ptr %used.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.6 = icmp eq i32 %29, 0
  br i1 %cmp4.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %va.7 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 7, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %va.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va.7, align 4
  %tobool.not.7 = icmp eq ptr %31, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %used.7 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 7, i32 1
  %32 = ptrtoint ptr %used.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp4.7 = icmp eq i32 %33, 0
  br i1 %cmp4.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %34 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %va, align 4
  %cmp13 = icmp eq ptr %35, null
  br i1 %cmp13, label %for.inc.7.if.end21_crit_edge, label %for.inc16

for.inc.7.if.end21_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16:                                        ; preds = %for.inc.7
  %36 = ptrtoint ptr %va.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %va.1, align 4
  %cmp13.1 = icmp eq ptr %37, null
  br i1 %cmp13.1, label %for.inc16.if.end21_crit_edge, label %for.inc16.1

for.inc16.if.end21_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16.1:                                      ; preds = %for.inc16
  %38 = ptrtoint ptr %va.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %va.2, align 4
  %cmp13.2 = icmp eq ptr %39, null
  br i1 %cmp13.2, label %for.inc16.1.if.end21_crit_edge, label %for.inc16.2

for.inc16.1.if.end21_crit_edge:                   ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16.2:                                      ; preds = %for.inc16.1
  %40 = ptrtoint ptr %va.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va.3, align 4
  %cmp13.3 = icmp eq ptr %41, null
  br i1 %cmp13.3, label %for.inc16.2.if.end21_crit_edge, label %for.inc16.3

for.inc16.2.if.end21_crit_edge:                   ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16.3:                                      ; preds = %for.inc16.2
  %42 = ptrtoint ptr %va.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %va.4, align 4
  %cmp13.4 = icmp eq ptr %43, null
  br i1 %cmp13.4, label %for.inc16.3.if.end21_crit_edge, label %for.inc16.4

for.inc16.3.if.end21_crit_edge:                   ; preds = %for.inc16.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16.4:                                      ; preds = %for.inc16.3
  %44 = ptrtoint ptr %va.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %va.5, align 4
  %cmp13.5 = icmp eq ptr %45, null
  br i1 %cmp13.5, label %for.inc16.4.if.end21_crit_edge, label %for.inc16.5

for.inc16.4.if.end21_crit_edge:                   ; preds = %for.inc16.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16.5:                                      ; preds = %for.inc16.4
  %46 = ptrtoint ptr %va.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %va.6, align 4
  %cmp13.6 = icmp eq ptr %47, null
  br i1 %cmp13.6, label %for.inc16.5.if.end21_crit_edge, label %for.inc16.6

for.inc16.5.if.end21_crit_edge:                   ; preds = %for.inc16.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.inc16.6:                                      ; preds = %for.inc16.5
  %48 = ptrtoint ptr %va.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %va.7, align 4
  %cmp13.7 = icmp eq ptr %49, null
  br i1 %cmp13.7, label %for.inc16.6.if.end21_crit_edge, label %do.end

for.inc16.6.if.end21_crit_edge:                   ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end:                                           ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %50 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 333, i32 noundef %53) #8
  br label %cleanup

if.end21:                                         ; preds = %for.inc16.6.if.end21_crit_edge, %for.inc16.5.if.end21_crit_edge, %for.inc16.4.if.end21_crit_edge, %for.inc16.3.if.end21_crit_edge, %for.inc16.2.if.end21_crit_edge, %for.inc16.1.if.end21_crit_edge, %for.inc16.if.end21_crit_edge, %for.inc.7.if.end21_crit_edge
  %idx.195.lcssa = phi i32 [ 0, %for.inc.7.if.end21_crit_edge ], [ 1, %for.inc16.if.end21_crit_edge ], [ 2, %for.inc16.1.if.end21_crit_edge ], [ 3, %for.inc16.2.if.end21_crit_edge ], [ 4, %for.inc16.3.if.end21_crit_edge ], [ 5, %for.inc16.4.if.end21_crit_edge ], [ 6, %for.inc16.5.if.end21_crit_edge ], [ 7, %for.inc16.6.if.end21_crit_edge ]
  %arrayidx23 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 %idx.195.lcssa
  %buf_sz_y_bs = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %buf_sz_y_bs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf_sz_y_bs, align 4
  %buf_len_sz_y = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %buf_len_sz_y to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf_len_sz_y, align 4
  %add = add i32 %57, %55
  %58 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add, ptr %arrayidx23, align 4
  %ctx26 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %59 = ptrtoint ptr %ctx26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx26, align 4
  %call27 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %60, ptr noundef %arrayidx23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %ctx26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx26, align 4
  %id35 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %id35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id35, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 342, i32 noundef %64) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end21
  %base_c = getelementptr inbounds %struct.vdec_fb, ptr %arrayidx23, i32 0, i32 1
  %buf_sz_c_bs = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %buf_sz_c_bs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buf_sz_c_bs, align 4
  %buf_len_sz_c = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 18
  %67 = ptrtoint ptr %buf_len_sz_c to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buf_len_sz_c, align 4
  %add41 = add i32 %68, %66
  %69 = ptrtoint ptr %base_c to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add41, ptr %base_c, align 4
  %70 = ptrtoint ptr %ctx26 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx26, align 4
  %call44 = tail call i32 @mtk_vcodec_mem_alloc(ptr noundef %71, ptr noundef %base_c) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end54, label %do.end49

do.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %ctx26 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx26, align 4
  %id52 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %id52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id52, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef 351, i32 noundef %75) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %used57 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 1, i32 %idx.195.lcssa, i32 1
  %76 = ptrtoint ptr %used57 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %used57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end49, %do.end32, %do.end, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end32 ], [ -1, %do.end49 ], [ %idx.195.lcssa, %if.end54 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true.1.cleanup_crit_edge ], [ 2, %land.lhs.true.2.cleanup_crit_edge ], [ 3, %land.lhs.true.3.cleanup_crit_edge ], [ 4, %land.lhs.true.4.cleanup_crit_edge ], [ 5, %land.lhs.true.5.cleanup_crit_edge ], [ 6, %land.lhs.true.6.cleanup_crit_edge ], [ 7, %land.lhs.true.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp9_swap_frm_bufs(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi1 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi1, align 4
  %refresh_frm_flags = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %refresh_frm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refresh_frm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not208 = icmp eq i32 %3, 0
  br i1 %tobool.not208, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %new_fb_idx = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %mask.0211 = phi i32 [ %3, %for.body.lr.ph ], [ %shr, %if.end.for.body_crit_edge ]
  %ref_index.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %and = and i32 %mask.0211, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 26, i32 %ref_index.0209
  %4 = ptrtoint ptr %new_fb_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_fb_idx, align 4
  tail call fastcc void @vp9_ref_cnt_fb(ptr noundef %inst, ptr noundef %arrayidx, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add i32 %ref_index.0209, 1
  %shr = ashr i32 %mask.0211, 1
  %tobool.not = icmp ult i32 %mask.0211, 2
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %new_fb_idx3 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %new_fb_idx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_fb_idx3, align 4
  %arrayidx4 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %7
  %ref_cnt = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %7, i32 1
  %8 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %ref_cnt, align 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %cur_fb = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 7
  %12 = ptrtoint ptr %cur_fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_fb, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %if.else62, label %if.then8

if.then8:                                         ; preds = %for.end
  %cmp10.not = icmp eq ptr %11, null
  br i1 %cmp10.not, label %if.then8.if.end51_crit_edge, label %land.lhs.true

if.then8.if.end51_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.lhs.true:                                    ; preds = %if.then8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp15.not = icmp ult i32 %15, %17
  br i1 %cmp15.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %base_c = getelementptr inbounds %struct.vdec_fb, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %base_c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_c, align 4
  %base_c20 = getelementptr inbounds %struct.vdec_fb, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %base_c20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_c20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp22.not = icmp ult i32 %19, %21
  br i1 %cmp22.not, label %land.lhs.true16.do.end_crit_edge, label %if.then23

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then23:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va, align 4
  %va28 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %va28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va28, align 4
  %26 = call ptr @memcpy(ptr %23, ptr %25, i32 %17)
  %27 = ptrtoint ptr %cur_fb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur_fb, align 4
  %va34 = getelementptr inbounds %struct.vdec_fb, ptr %28, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %va34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %va34, align 4
  %31 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx4, align 4
  %base_c36 = getelementptr inbounds %struct.vdec_fb, ptr %32, i32 0, i32 1
  %va37 = getelementptr inbounds %struct.vdec_fb, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %va37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va37, align 4
  %35 = ptrtoint ptr %base_c36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_c36, align 4
  %37 = call ptr @memcpy(ptr %30, ptr %34, i32 %36)
  br label %if.end51

do.end:                                           ; preds = %land.lhs.true16.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %13, align 4
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %11, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 498, i32 noundef %41, i32 noundef %43, i32 noundef %45) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.then23, %if.then8.if.end51_crit_edge
  %46 = ptrtoint ptr %cur_fb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_fb, align 4
  %48 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vsi1, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end51
  %i.0.i = phi i32 [ 0, %if.end51 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i)
  %cmp.i = icmp ult i32 %i.0.i, 8
  %cmp.not.i = xor i1 %cmp.i, true
  %arrayidx.i = getelementptr %struct.vdec_vp9_vsi, ptr %49, i32 0, i32 1, i32 %i.0.i
  %cmp3.i = icmp eq ptr %arrayidx.i, %47
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %vp9_is_sf_ref_fb.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

vp9_is_sf_ref_fb.exit:                            ; preds = %for.cond.i
  br i1 %cmp.i, label %vp9_is_sf_ref_fb.exit.if.end74_crit_edge, label %if.then54

vp9_is_sf_ref_fb.exit.if.end74_crit_edge:         ; preds = %vp9_is_sf_ref_fb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then54:                                        ; preds = %vp9_is_sf_ref_fb.exit
  %show_frame = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %show_frame to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %show_frame, align 4
  %and55 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then54.if.end74_crit_edge, label %if.then54.if.end74.sink.split_crit_edge

if.then54.if.end74.sink.split_crit_edge:          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74.sink.split

if.then54.if.end74_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.else62:                                        ; preds = %for.end
  %52 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vsi1, align 4
  br label %for.cond.i176

for.cond.i176:                                    ; preds = %for.cond.i176.for.cond.i176_crit_edge, %if.else62
  %i.0.i169 = phi i32 [ 0, %if.else62 ], [ %inc.i175, %for.cond.i176.for.cond.i176_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i169)
  %cmp.i170 = icmp ult i32 %i.0.i169, 8
  %cmp.not.i171 = xor i1 %cmp.i170, true
  %arrayidx.i172 = getelementptr %struct.vdec_vp9_vsi, ptr %53, i32 0, i32 1, i32 %i.0.i169
  %cmp3.i173 = icmp eq ptr %arrayidx.i172, %11
  %or.cond.i174 = select i1 %cmp.not.i171, i1 true, i1 %cmp3.i173
  %inc.i175 = add nuw nsw i32 %i.0.i169, 1
  br i1 %or.cond.i174, label %vp9_is_sf_ref_fb.exit177, label %for.cond.i176.for.cond.i176_crit_edge

for.cond.i176.for.cond.i176_crit_edge:            ; preds = %for.cond.i176
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i176

vp9_is_sf_ref_fb.exit177:                         ; preds = %for.cond.i176
  br i1 %cmp.i170, label %vp9_is_sf_ref_fb.exit177.if.end74_crit_edge, label %if.then65

vp9_is_sf_ref_fb.exit177.if.end74_crit_edge:      ; preds = %vp9_is_sf_ref_fb.exit177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then65:                                        ; preds = %vp9_is_sf_ref_fb.exit177
  %show_frame66 = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 20
  %54 = ptrtoint ptr %show_frame66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %show_frame66, align 4
  %and67 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then65.if.end74_crit_edge, label %if.then65.if.end74.sink.split_crit_edge

if.then65.if.end74.sink.split_crit_edge:          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74.sink.split

if.then65.if.end74_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74.sink.split:                              ; preds = %if.then65.if.end74.sink.split_crit_edge, %if.then54.if.end74.sink.split_crit_edge
  %.sink = phi ptr [ %47, %if.then54.if.end74.sink.split_crit_edge ], [ %11, %if.then65.if.end74.sink.split_crit_edge ]
  tail call fastcc void @vp9_add_to_fb_disp_list(ptr noundef %inst, ptr noundef %.sink)
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %if.then65.if.end74_crit_edge, %vp9_is_sf_ref_fb.exit177.if.end74_crit_edge, %if.then54.if.end74_crit_edge, %vp9_is_sf_ref_fb.exit.if.end74_crit_edge
  %56 = ptrtoint ptr %new_fb_idx3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %new_fb_idx3, align 4
  %ref_cnt78 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %57, i32 1
  %58 = ptrtoint ptr %ref_cnt78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ref_cnt78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp79 = icmp eq i32 %59, 0
  br i1 %cmp79, label %if.then80, label %if.end74.if.end104_crit_edge

if.end74.if.end104_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then80:                                        ; preds = %if.end74
  %arrayidx77 = getelementptr %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 25, i32 %57
  %60 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx77, align 4
  %62 = ptrtoint ptr %vsi1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vsi1, align 4
  br label %for.cond.i186

for.cond.i186:                                    ; preds = %for.cond.i186.for.cond.i186_crit_edge, %if.then80
  %i.0.i179 = phi i32 [ 0, %if.then80 ], [ %inc.i185, %for.cond.i186.for.cond.i186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i179)
  %cmp.i180 = icmp ult i32 %i.0.i179, 8
  %cmp.not.i181 = xor i1 %cmp.i180, true
  %arrayidx.i182 = getelementptr %struct.vdec_vp9_vsi, ptr %63, i32 0, i32 1, i32 %i.0.i179
  %cmp3.i183 = icmp eq ptr %arrayidx.i182, %61
  %or.cond.i184 = select i1 %cmp.not.i181, i1 true, i1 %cmp3.i183
  %inc.i185 = add nuw nsw i32 %i.0.i179, 1
  br i1 %or.cond.i184, label %vp9_is_sf_ref_fb.exit187, label %for.cond.i186.for.cond.i186_crit_edge

for.cond.i186.for.cond.i186_crit_edge:            ; preds = %for.cond.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i186

vp9_is_sf_ref_fb.exit187:                         ; preds = %for.cond.i186
  br i1 %cmp.i180, label %if.else97, label %if.then87

if.then87:                                        ; preds = %vp9_is_sf_ref_fb.exit187
  %va95 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %61, i32 0, i32 1
  %64 = ptrtoint ptr %va95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %va95, align 4
  %fb_use_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 4
  %66 = ptrtoint ptr %fb_use_list.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %node.019.i = load ptr, ptr %fb_use_list.i, align 4
  %cmp.not20.i = icmp eq ptr %node.019.i, %fb_use_list.i
  br i1 %cmp.not20.i, label %if.then87.do.body6.i_crit_edge, label %if.then87.for.body.i_crit_edge

if.then87.for.body.i_crit_edge:                   ; preds = %if.then87
  br label %for.body.i

if.then87.do.body6.i_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6.i

for.cond.i189:                                    ; preds = %for.body.i
  %67 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %node.0.i = load ptr, ptr %node.021.i, align 4
  %cmp.not.i188 = icmp eq ptr %node.0.i, %fb_use_list.i
  br i1 %cmp.not.i188, label %for.cond.i189.vp9_rm_from_fb_use_list.exit_crit_edge, label %for.cond.i189.for.body.i_crit_edge

for.cond.i189.for.body.i_crit_edge:               ; preds = %for.cond.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i189.vp9_rm_from_fb_use_list.exit_crit_edge: ; preds = %for.cond.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_rm_from_fb_use_list.exit

for.body.i:                                       ; preds = %for.cond.i189.for.body.i_crit_edge, %if.then87.for.body.i_crit_edge
  %node.021.i = phi ptr [ %node.0.i, %for.cond.i189.for.body.i_crit_edge ], [ %node.019.i, %if.then87.for.body.i_crit_edge ]
  %fb2.i = getelementptr inbounds %struct.vdec_fb_node, ptr %node.021.i, i32 0, i32 1
  %68 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fb2.i, align 4
  %va.i = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %va.i, align 4
  %cmp3.i190 = icmp eq ptr %71, %65
  br i1 %cmp3.i190, label %if.then.i, label %for.cond.i189

if.then.i:                                        ; preds = %for.body.i
  %available_fb_node_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.021.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.021.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %node.021.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %node.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.021.i, ptr noundef %79, ptr noundef %available_fb_node_list.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.vp9_rm_from_fb_use_list.exit_crit_edge

__list_del_entry.exit.i.i.vp9_rm_from_fb_use_list.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vp9_rm_from_fb_use_list.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %node.021.i, ptr %prev.i2.i.i, align 4
  %81 = ptrtoint ptr %node.021.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %available_fb_node_list.i, ptr %node.021.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.021.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %node.021.i, ptr %79, align 4
  br label %vp9_rm_from_fb_use_list.exit

vp9_rm_from_fb_use_list.exit:                     ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.vp9_rm_from_fb_use_list.exit_crit_edge, %for.cond.i189.vp9_rm_from_fb_use_list.exit_crit_edge
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %vp9_rm_from_fb_use_list.exit.do.body6.i_crit_edge, label %if.then.i193

vp9_rm_from_fb_use_list.exit.do.body6.i_crit_edge: ; preds = %vp9_rm_from_fb_use_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6.i

if.then.i193:                                     ; preds = %vp9_rm_from_fb_use_list.exit
  %available_fb_node_list.i191 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %84 = ptrtoint ptr %available_fb_node_list.i191 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %available_fb_node_list.i191, align 4
  %cmp.not.i192 = icmp eq ptr %85, %available_fb_node_list.i191
  %tobool3.not24.i = icmp eq ptr %85, null
  %tobool3.not.i = or i1 %cmp.not.i192, %tobool3.not24.i
  br i1 %tobool3.not.i, label %if.then.i193.if.end104_crit_edge, label %if.then4.i

if.then.i193.if.end104_crit_edge:                 ; preds = %if.then.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then4.i:                                       ; preds = %if.then.i193
  %fb5.i = getelementptr inbounds %struct.vdec_fb_node, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %fb5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %69, ptr %fb5.i, align 4
  %fb_free_list.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 5
  %call.i.i.i194 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %85) #5
  br i1 %call.i.i.i194, label %if.end.i.i.i197, label %if.then4.i.__list_del_entry.exit.i.i200_crit_edge

if.then4.i.__list_del_entry.exit.i.i200_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i200

if.end.i.i.i197:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i195 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i.i195, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %85, align 4
  %prev1.i.i.i.i196 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i.i196 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i.i196, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %__list_del_entry.exit.i.i200

__list_del_entry.exit.i.i200:                     ; preds = %if.end.i.i.i197, %if.then4.i.__list_del_entry.exit.i.i200_crit_edge
  %prev.i2.i.i198 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %prev.i2.i.i198 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i2.i.i198, align 4
  %call.i.i.i.i199 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %85, ptr noundef %94, ptr noundef %fb_free_list.i) #5
  br i1 %call.i.i.i.i199, label %if.end.i.i.i.i202, label %__list_del_entry.exit.i.i200.if.end104_crit_edge

__list_del_entry.exit.i.i200.if.end104_crit_edge: ; preds = %__list_del_entry.exit.i.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.end.i.i.i.i202:                                ; preds = %__list_del_entry.exit.i.i200
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %prev.i2.i.i198 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %85, ptr %prev.i2.i.i198, align 4
  %96 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %fb_free_list.i, ptr %85, align 4
  %prev3.i.i.i.i201 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i.i201 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i.i201, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %85, ptr %94, align 4
  br label %if.end104

do.body6.i:                                       ; preds = %vp9_rm_from_fb_use_list.exit.do.body6.i_crit_edge, %if.then87.do.body6.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_swap_frm_bufs, %if.then11.i)) #5
          to label %if.end104 [label %if.then11.i], !srcloc !199

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %99 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef 249, i32 noundef %102) #5
  br label %if.end104

if.else97:                                        ; preds = %vp9_is_sf_ref_fb.exit187
  call void @__sanitizer_cov_trace_pc() #7
  %used.i = getelementptr inbounds %struct.vp9_sf_ref_fb, ptr %61, i32 0, i32 1
  %103 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %used.i, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.else97, %if.then11.i, %do.body6.i, %if.end.i.i.i.i202, %__list_del_entry.exit.i.i200.if.end104_crit_edge, %if.then.i193.if.end104_crit_edge, %if.end74.if.end104_crit_edge
  %sf_frm_cnt = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 3
  %104 = ptrtoint ptr %sf_frm_cnt to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sf_frm_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp105.not = icmp eq i32 %105, 0
  br i1 %cmp105.not, label %if.end104.if.end111_crit_edge, label %land.lhs.true106

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

land.lhs.true106:                                 ; preds = %if.end104
  %sf_frm_idx = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 6
  %106 = ptrtoint ptr %sf_frm_idx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sf_frm_idx, align 4
  %sub = add i32 %105, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %sub)
  %cmp108.not = icmp eq i32 %107, %sub
  br i1 %cmp108.not, label %land.lhs.true106.if.end111_crit_edge, label %if.then109

land.lhs.true106.if.end111_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then109:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  %call110 = tail call fastcc i32 @vp9_get_sf_ref_fb(ptr noundef %inst)
  %sf_next_ref_fb_idx = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 2
  %108 = ptrtoint ptr %sf_next_ref_fb_idx to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call110, ptr %sf_next_ref_fb_idx, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %land.lhs.true106.if.end111_crit_edge, %if.end104.if.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp9_add_to_fb_disp_list(ptr noundef %inst, ptr noundef %fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fb, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef 439, i32 noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %4 = ptrtoint ptr %available_fb_node_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %available_fb_node_list, align 4
  %cmp.not = icmp eq ptr %5, %available_fb_node_list
  %tobool7.not1 = icmp eq ptr %5, null
  %tobool7.not = or i1 %cmp.not, %tobool7.not1
  br i1 %tobool7.not, label %do.end12, label %if.then8

if.then8:                                         ; preds = %if.end
  %fb9 = getelementptr inbounds %struct.vdec_fb_node, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fb9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fb, ptr %fb9, align 4
  %fb_disp_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.__list_del_entry.exit.i_crit_edge

if.then8.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then8.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %5, ptr noundef %14, ptr noundef %fb_disp_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %prev.i2.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fb_disp_list, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %5, ptr %14, align 4
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx14 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %19 = ptrtoint ptr %ctx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx14, align 4
  %id15 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id15, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, i32 noundef 449, i32 noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_free_fb(ptr noundef %inst, ptr nocapture noundef writeonly %out_fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_free_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 5
  %0 = ptrtoint ptr %fb_free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fb_free_list, align 4
  %cmp.not = icmp eq ptr %1, %fb_free_list
  %tobool.not48 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not48
  br i1 %tobool.not, label %do.body14, label %if.then

if.then:                                          ; preds = %entry
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
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
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %9, ptr noundef %available_fb_node_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_fb.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_fb, %if.then9)) #5
          to label %if.end32 [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_fb.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef 736, i32 noundef %21, ptr noundef %23, i32 noundef %25) #5
  br label %if.end32

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_free_fb.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_free_fb, %if.then26)) #5
          to label %if.end32 [label %if.then26], !srcloc !199

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %ctx27 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %26 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx27, align 4
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_free_fb.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.88, i32 noundef 738, i32 noundef %29) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %do.body14, %if.then9, %list_move_tail.exit
  %fb.0 = phi ptr [ %15, %if.then9 ], [ null, %if.then26 ], [ %15, %list_move_tail.exit ], [ null, %do.body14 ]
  %30 = ptrtoint ptr %out_fb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fb.0, ptr %out_fb, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_pic_info(ptr nocapture noundef readonly %inst, ptr nocapture noundef %pic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 10
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %buf_sz_y_bs = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %buf_sz_y_bs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_sz_y_bs, align 4
  %buf_len_sz_y = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %buf_len_sz_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_len_sz_y, align 4
  %add = add i32 %5, %3
  %fb_sz = getelementptr inbounds %struct.vdec_pic_info, ptr %pic, i32 0, i32 4
  %6 = ptrtoint ptr %fb_sz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %fb_sz, align 4
  %7 = load ptr, ptr %vsi, align 4
  %buf_sz_c_bs = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %buf_sz_c_bs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_sz_c_bs, align 4
  %buf_len_sz_c = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %buf_len_sz_c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_len_sz_c, align 4
  %add4 = add i32 %11, %9
  %arrayidx6 = getelementptr %struct.vdec_pic_info, ptr %pic, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add4, ptr %arrayidx6, align 4
  %13 = load ptr, ptr %vsi, align 4
  %pic_w = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pic_w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pic_w, align 4
  %16 = ptrtoint ptr %pic to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pic, align 4
  %17 = load ptr, ptr %vsi, align 4
  %pic_h = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pic_h, align 4
  %pic_h10 = getelementptr inbounds %struct.vdec_pic_info, ptr %pic, i32 0, i32 1
  %20 = ptrtoint ptr %pic_h10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pic_h10, align 4
  %21 = load ptr, ptr %vsi, align 4
  %buf_w = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_w, align 4
  %buf_w12 = getelementptr inbounds %struct.vdec_pic_info, ptr %pic, i32 0, i32 2
  %24 = ptrtoint ptr %buf_w12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %buf_w12, align 4
  %25 = load ptr, ptr %vsi, align 4
  %buf_h = getelementptr inbounds %struct.vdec_vp9_vsi, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_h, align 4
  %buf_h14 = getelementptr inbounds %struct.vdec_pic_info, ptr %pic, i32 0, i32 3
  %28 = ptrtoint ptr %buf_h14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %buf_h14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_pic_info, %if.then)) #5
          to label %do.body21 [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 4
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %33 = ptrtoint ptr %pic to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pic, align 4
  %35 = ptrtoint ptr %pic_h10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pic_h10, align 4
  %37 = ptrtoint ptr %buf_w12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_w12, align 4
  %39 = ptrtoint ptr %buf_h14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_h14, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef 710, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #5
  br label %do.body21

do.body21:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_pic_info.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_pic_info, %if.then33)) #5
          to label %do.end41 [label %if.then33], !srcloc !199

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %ctx34 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %41 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx34, align 4
  %id35 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %id35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id35, align 4
  %45 = ptrtoint ptr %fb_sz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fb_sz, align 4
  %47 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_pic_info.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93, i32 noundef 713, i32 noundef %44, i32 noundef %46, i32 noundef %48) #5
  br label %do.end41

do.end41:                                         ; preds = %if.then33, %do.body21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vp9_rm_from_fb_disp_list(ptr noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fb_disp_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 6
  %0 = ptrtoint ptr %fb_disp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fb_disp_list, align 4
  %cmp.not = icmp eq ptr %1, %fb_disp_list
  %tobool.not48 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not48
  br i1 %tobool.not, label %do.body14, label %if.then

if.then:                                          ; preds = %entry
  %fb3 = getelementptr inbounds %struct.vdec_fb_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb3, align 4
  %status = getelementptr inbounds %struct.vdec_fb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %status, align 4
  %available_fb_node_list = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %13, ptr noundef %available_fb_node_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %prev.i2.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %available_fb_node_list, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %1, ptr %13, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_rm_from_fb_disp_list, %if.then9)) #5
          to label %if.end32 [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef 628, i32 noundef %21, ptr noundef %23, i32 noundef %25) #5
  br label %if.end32

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vp9_rm_from_fb_disp_list, %if.then26)) #5
          to label %if.end32 [label %if.then26], !srcloc !199

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %ctx27 = getelementptr inbounds %struct.vdec_vp9_inst, ptr %inst, i32 0, i32 8
  %26 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx27, align 4
  %id28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.83, i32 noundef 630, i32 noundef %29) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %do.body14, %if.then9, %list_move_tail.exit
  %fb.0 = phi ptr [ %3, %if.then9 ], [ null, %if.then26 ], [ %3, %list_move_tail.exit ], [ null, %do.body14 ]
  ret ptr %fb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_dec_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @vdec_vp9_if, !1, !"vdec_vp9_if", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 1023, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 801, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdec_vp9_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdec_vp9_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 832, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug325, !9, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 838, i32 3}
!16 = !{ptr @vdec_vp9_decode._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vdec_vp9_decode._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 842, i32 2}
!20 = !{ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug326, !19, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 885, i32 4}
!24 = !{ptr @vdec_vp9_decode._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vdec_vp9_decode._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 895, i32 6}
!28 = !{ptr @vdec_vp9_decode._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vdec_vp9_decode._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 903, i32 4}
!32 = !{ptr @vdec_vp9_decode._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vdec_vp9_decode._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 929, i32 3}
!36 = !{ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug327, !35, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 932, i32 4}
!40 = !{ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug328, !39, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!41 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 938, i32 4}
!44 = !{ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug329, !43, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!45 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 957, i32 4}
!48 = !{ptr @vdec_vp9_decode.__UNIQUE_ID_ddebug330, !47, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!49 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 964, i32 4}
!52 = !{ptr @vdec_vp9_decode._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vdec_vp9_decode._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 668, i32 3}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vp9_reset._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @vp9_reset._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 333, i32 3}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vp9_get_sf_ref_fb._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @vp9_get_sf_ref_fb._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 342, i32 3}
!66 = !{ptr @vp9_get_sf_ref_fb._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @vp9_get_sf_ref_fb._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 351, i32 3}
!70 = !{ptr @vp9_get_sf_ref_fb._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vp9_get_sf_ref_fb._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 747, i32 3}
!74 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @validate_vsi_array_indexes._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @validate_vsi_array_indexes._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 752, i32 3}
!79 = !{ptr @validate_vsi_array_indexes._entry.42, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @validate_vsi_array_indexes._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 757, i32 3}
!83 = !{ptr @validate_vsi_array_indexes._entry.45, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @validate_vsi_array_indexes._entry_ptr.47, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 380, i32 3}
!87 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vp9_alloc_work_buf._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @vp9_alloc_work_buf._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 385, i32 2}
!92 = !{ptr @vp9_alloc_work_buf.__UNIQUE_ID_ddebug311, !91, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!93 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 401, i32 3}
!96 = !{ptr @vp9_alloc_work_buf._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @vp9_alloc_work_buf._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 418, i32 3}
!100 = !{ptr @vp9_alloc_work_buf._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @vp9_alloc_work_buf._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 641, i32 3}
!104 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vp9_add_to_fb_use_list.__UNIQUE_ID_ddebug318, !103, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!106 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 651, i32 3}
!109 = !{ptr @vp9_add_to_fb_use_list._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @vp9_add_to_fb_use_list._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 585, i32 4}
!113 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @vp9_decode_end_proc._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @vp9_decode_end_proc._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 591, i32 4}
!118 = !{ptr @vp9_decode_end_proc._entry.64, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @vp9_decode_end_proc._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 594, i32 3}
!122 = !{ptr @vp9_decode_end_proc.__UNIQUE_ID_ddebug313, !121, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!123 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 597, i32 3}
!126 = !{ptr @vp9_decode_end_proc.__UNIQUE_ID_ddebug314, !125, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!127 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 495, i32 5}
!130 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @vp9_swap_frm_bufs._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @vp9_swap_frm_bufs._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 439, i32 3}
!135 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @vp9_add_to_fb_disp_list._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @vp9_add_to_fb_disp_list._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 449, i32 3}
!140 = !{ptr @vp9_add_to_fb_disp_list._entry.75, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @vp9_add_to_fb_disp_list._entry_ptr.77, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 249, i32 3}
!144 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @vp9_add_to_fb_free_list.__UNIQUE_ID_ddebug310, !143, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!146 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 1015, i32 3}
!149 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @vdec_vp9_get_param._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @vdec_vp9_get_param._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 627, i32 3}
!154 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug316, !153, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!156 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 630, i32 3}
!159 = !{ptr @vp9_rm_from_fb_disp_list.__UNIQUE_ID_ddebug317, !158, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!160 = !{ptr @.str.87, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 735, i32 3}
!163 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @get_free_fb.__UNIQUE_ID_ddebug323, !162, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!165 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.91, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 738, i32 3}
!168 = !{ptr @get_free_fb.__UNIQUE_ID_ddebug324, !167, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!169 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 709, i32 2}
!172 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug320, !171, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!174 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 711, i32 2}
!177 = !{ptr @get_pic_info.__UNIQUE_ID_ddebug321, !176, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!178 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 988, i32 2}
!181 = !{ptr @.str.99, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @get_crop_info.__UNIQUE_ID_ddebug331, !180, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!183 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c", i32 772, i32 3}
!186 = !{ptr @.str.102, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @vdec_vp9_deinit._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @vdec_vp9_deinit._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"auto-init"}
!199 = !{i64 2148501212, i64 2148501217, i64 2148501230, i64 2148501274, i64 2148501308, i64 2148501329}
