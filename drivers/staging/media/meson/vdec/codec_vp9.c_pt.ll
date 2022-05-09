; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/codec_vp9.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/codec_vp9.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.codec_vp9 = type { %struct.mutex, %struct.codec_hevc_common, ptr, i32, %union.rpm_param, i32, i32, i32, %struct.list_head, i32, [24 x ptr], [24 x i32], [8 x i32], [8 x i32], [3 x ptr], i32, i32, %struct.loop_filter_info_n, %struct.loopfilter, %struct.segmentation, ptr, ptr }
%struct.codec_hevc_common = type { [24 x ptr], [24 x i32], [24 x ptr], [24 x i32], ptr, i32 }
%union.rpm_param = type { %struct.anon.101 }
%struct.anon.101 = type { [256 x i16] }
%struct.loop_filter_info_n = type { [64 x %struct.loop_filter_thresh], [8 x [4 x [2 x i8]]] }
%struct.loop_filter_thresh = type { i8, i8, i8 }
%struct.loopfilter = type { i32, i32, i32, i8, i8, [4 x i8], [4 x i8], [2 x i8], [2 x i8] }
%struct.segmentation = type { i8, i8, i8, i8, i8, [8 x [4 x i16]], [8 x i32] }
%struct.vdec_platform = type { ptr, i32, i32 }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vp9_frame = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@codec_vp9_ops = dso_local global { %struct.amvdec_codec_ops, [52 x i8] } { %struct.amvdec_codec_ops { ptr @codec_vp9_start, ptr @codec_vp9_stop, ptr null, ptr @codec_vp9_num_pending_bufs, ptr null, ptr null, ptr @codec_vp9_flush_output, ptr @codec_vp9_resume, ptr null, ptr @codec_vp9_isr, ptr @codec_vp9_threaded_isr }, [52 x i8] zeroinitializer }, align 32
@vdec_hevc_parser_cmd = external dso_local local_unnamed_addr constant [37 x i16], align 2
@codec_vp9_start.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson_vdec\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"codec_vp9_start\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/media/meson/vdec/codec_vp9.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"decode_count: %u; decode_size: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@codec_vp9_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vp9->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@codec_vp9_alloc_workspace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 705, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate VP9 Workspace\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"codec_vp9_alloc_workspace\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@codec_vp9_alloc_workspace._entry_ptr = internal global ptr @codec_vp9_alloc_workspace._entry, section ".printk_index", align 4
@codec_vp9_process_frame.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"codec_vp9_process_frame\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"frame %d: type: %08X; show_exist: %u; show: %u, intra_only: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@codec_vp9_rm_noshow_frame.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"codec_vp9_rm_noshow_frame\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rm noshow: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@codec_vp9_get_new_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1201, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No dst buffer available\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"codec_vp9_get_new_frame\00", [40 x i8] zeroinitializer }, align 32
@codec_vp9_get_new_frame._entry_ptr = internal global ptr @codec_vp9_get_new_frame._entry, section ".printk_index", align 4
@codec_vp9_get_new_frame._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1212, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@codec_vp9_get_new_frame._entry_ptr.16 = internal global ptr @codec_vp9_get_new_frame._entry.15, section ".printk_index", align 4
@codec_vp9_sync_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: couldn't find VP9 ref %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"codec_vp9_sync_ref\00", [45 x i8] zeroinitializer }, align 32
@codec_vp9_sync_ref._entry_ptr = internal global ptr @codec_vp9_sync_ref._entry, section ".printk_index", align 4
@codec_vp9_update_next_ref.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"codec_vp9_update_next_ref\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mask=%08X; ref_index=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@codec_vp9_show_existing_frame.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"codec_vp9_show_existing_frame\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"showing frame %u\0A\00", [46 x i8] zeroinitializer }, align 32
@codec_vp9_set_sao.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"codec_vp9_set_sao\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HEVC_DBLK_CFGB: %08X\0A\00", [42 x i8] zeroinitializer }, align 32
@codec_vp9_set_sao.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HEVC_SAO_CTRL1: %08X\0A\00", [42 x i8] zeroinitializer }, align 32
@codec_vp9_threaded_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 2094, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unrecognized dec_status: %08X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec_vp9_threaded_isr\00", [41 x i8] zeroinitializer }, align 32
@codec_vp9_threaded_isr._entry_ptr = internal global ptr @codec_vp9_threaded_isr._entry, section ".printk_index", align 4
@codec_vp9_threaded_isr.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 2, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ISR: %08X;%08X\0A\00", [16 x i8] zeroinitializer }, align 32
@count_to_update_factor = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 6, i32 12, i32 19, i32 25, i32 32, i32 38, i32 44, i32 51, i32 57, i32 64, i32 70, i32 76, i32 83, i32 89, i32 96, i32 102, i32 108, i32 115, i32 121, i32 128], [44 x i8] zeroinitializer }, align 32
@codec_vp9_process_rpm.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codec_vp9_process_rpm\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"width: %u; height: %u; is_10bit: %d; src_changed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@codec_vp9_show_frame.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"codec_vp9_show_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Doning %u\0A\00", [21 x i8] zeroinitializer }, align 32
@codec_vp9_show_frame.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deleting %d\0A\00", [19 x i8] zeroinitializer }, align 32
@codec_vp9_save_refs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: FIXME, would need to save ref %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"codec_vp9_save_refs\00", [44 x i8] zeroinitializer }, align 32
@codec_vp9_save_refs._entry_ptr = internal global ptr @codec_vp9_save_refs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 2640, i64 2648, i64 2688, i64 2712, i64 2718, i64 2720, i64 2722, i64 2742, i64 2762]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"codec_vp9_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2164, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 819, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 826, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 705, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1273, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1250, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1201, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1212, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1114, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1030, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1238, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 949, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 963, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2093, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2099, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"count_to_update_factor\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 338, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1400, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1427, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1436, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [48 x i8] c"../drivers/staging/media/meson/vdec/codec_vp9.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1057, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @codec_vp9_alloc_workspace._entry, ptr @codec_vp9_alloc_workspace._entry_ptr, ptr @codec_vp9_get_new_frame._entry, ptr @codec_vp9_get_new_frame._entry.15, ptr @codec_vp9_get_new_frame._entry_ptr, ptr @codec_vp9_get_new_frame._entry_ptr.16, ptr @codec_vp9_save_refs._entry, ptr @codec_vp9_save_refs._entry_ptr, ptr @codec_vp9_sync_ref._entry, ptr @codec_vp9_sync_ref._entry_ptr, ptr @codec_vp9_threaded_isr._entry, ptr @codec_vp9_threaded_isr._entry_ptr, ptr @codec_vp9_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @codec_vp9_start.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @count_to_update_factor, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_alloc_workspace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_get_new_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_get_new_frame._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_sync_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_threaded_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @count_to_update_factor to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_vp9_save_refs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_vp9_start(ptr nocapture noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1700) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %workspace_paddr.i = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 30015488, ptr noundef %workspace_paddr.i, i32 noundef 3264, i32 noundef 0) #9
  %workspace_vaddr.i = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %workspace_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %workspace_vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %free_vp9, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call fastcc void @codec_vp9_setup_workspace(ptr noundef %sess, ptr noundef nonnull %call7.i.i)
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 50180, i32 noundef 1) #9
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ugt i32 %9, 2
  br i1 %cmp, label %if.then6, label %if.end5.if.end7_crit_edge

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 50204, i32 noundef 536870912) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  %call8 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 50304) #9
  %and = and i32 %call8, 515899246
  %or = or i32 %and, 1631584401
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50304, i32 noundef %or) #9
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 50220, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50208, i32 noundef 1767) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50240, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50252, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50212, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49920, i32 noundef 0) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50248, i32 noundef 65536) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7
  %i.085 = phi i32 [ 0, %if.end7 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [37 x i16], ptr @vdec_hevc_parser_cmd, i32 0, i32 %i.085
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50248, i32 noundef %conv) #9
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50336, i32 noundef 2315) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50340, i32 noundef 454300687) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50344, i32 noundef 1775888) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50312, i32 noundef 37) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 53248, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 53248, i32 noundef 2) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49976, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49620, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49624, i32 noundef 1) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 58436, i32 noundef 0) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49992, i32 noundef 8) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50000, i32 noundef 0) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49996, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_start.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_start, %if.then14)) #9
          to label %do.end [label %if.then14], !srcloc !89

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 50008) #9
  %call16 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 50012) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_start.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.3, i32 noundef %call15, i32 noundef %call16) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %for.end
  %lfi1.i = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 17
  %12 = call ptr @memset(ptr %lfi1.i, i32 0, i32 388)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end
  %lvl.034.i.i = phi i32 [ 0, %do.end ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %13 = tail call i32 @llvm.smax.i32(i32 %lvl.034.i.i, i32 1) #9
  %conv15.i.i = trunc i32 %13 to i8
  %arrayidx.i.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi1.i, i32 0, i32 %lvl.034.i.i
  %lim.i.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi1.i, i32 0, i32 %lvl.034.i.i, i32 1
  %14 = ptrtoint ptr %lim.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15.i.i, ptr %lim.i.i, align 1
  %add16.i.i = shl nuw i32 %lvl.034.i.i, 1
  %mul.i.i = add nuw nsw i32 %add16.i.i, 4
  %add17.i.i = add i32 %mul.i.i, %13
  %conv18.i.i = trunc i32 %add17.i.i to i8
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %lvl.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %vp9_update_sharpness.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

vp9_update_sharpness.exit.i:                      ; preds = %for.body.i.i
  %sharpness_level.i = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %sharpness_level.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sharpness_level.i, align 4
  %last_sharpness_level.i = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %last_sharpness_level.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_sharpness_level.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vp9_update_sharpness.exit.i
  %i.059.i = phi i32 [ 0, %vp9_update_sharpness.exit.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl nuw i32 %i.059.i, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi1.i, i32 0, i32 %add.i
  %lim.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi1.i, i32 0, i32 %add.i, i32 1
  %19 = ptrtoint ptr %lim.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lim.i, align 2
  %21 = and i8 %20, 63
  %and.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv10.i = zext i8 %23 to i32
  %24 = shl nuw nsw i32 %and.i, 24
  %25 = shl nuw nsw i32 %conv10.i, 16
  %shl12.i = or i32 %24, %25
  %arrayidx15.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi1.i, i32 0, i32 %mul.i
  %lim16.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi1.i, i32 0, i32 %mul.i, i32 1
  %26 = ptrtoint ptr %lim16.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lim16.i, align 1
  %28 = and i8 %27, 63
  %and18.i = zext i8 %28 to i32
  %shl19.i = shl nuw nsw i32 %and18.i, 8
  %or20.i = or i32 %shl19.i, %shl12.i
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx15.i, align 2
  %conv25.i = zext i8 %30 to i32
  %or27.i = or i32 %or20.i, %conv25.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54308, i32 noundef %or27.i) #9
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %vp9_loop_filter_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vp9_loop_filter_init.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platform, align 4
  %revision.i = getelementptr inbounds %struct.vdec_platform, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp28.i = icmp ugt i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp32.i = icmp eq i32 %34, 3
  %..i = select i1 %cmp32.i, i32 21505, i32 1077936129
  %.sink.i = select i1 %cmp28.i, i32 64513, i32 %..i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54316, i32 noundef %.sink.i) #9
  %ref_frames_list = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %ref_frames_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ref_frames_list, ptr %ref_frames_list, align 8
  %prev.i = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ref_frames_list, ptr %prev.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @codec_vp9_start.__key) #9
  %ref_frame_map = getelementptr inbounds %struct.codec_vp9, ptr %call7.i.i, i32 0, i32 12
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 1284
  %37 = call ptr @memset(ptr %ref_frame_map, i32 255, i32 64)
  %38 = call ptr @memset(ptr %uglygep, i32 0, i32 12)
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

free_vp9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.5) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_vp9, %vp9_loop_filter_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_vp9 ], [ 0, %vp9_loop_filter_init.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_vp9_stop(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %workspace_vaddr = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %workspace_vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workspace_vaddr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %workspace_paddr = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %workspace_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 30015488, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %common = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 1
  tail call void @codec_hevc_free_fbc_buffers(ptr noundef %sess, ptr noundef %common) #9
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @codec_vp9_num_pending_bufs(ptr nocapture noundef readonly %sess) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %frames_num = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %frames_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frames_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @codec_vp9_flush_output(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %ref_frames_list = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_frames_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_frames_list, align 4
  %cmp.not34 = icmp eq ptr %3, %ref_frames_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %frames_num = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %tmp.035 = phi ptr [ %3, %for.body.lr.ph ], [ %n.037, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %tmp.035 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.037 = load ptr, ptr %tmp.035, align 4
  %done = getelementptr inbounds %struct.vp9_frame, ptr %tmp.035, i32 0, i32 6
  %5 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %for.body
  %show = getelementptr inbounds %struct.vp9_frame, ptr %tmp.035, i32 0, i32 4
  %7 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %show, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %vbuf = getelementptr inbounds %struct.vp9_frame, ptr %tmp.035, i32 0, i32 1
  %9 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbuf, align 4
  tail call void @amvdec_dst_buf_done(ptr noundef %sess, ptr noundef %10, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 8
  %vbuf10 = getelementptr inbounds %struct.vp9_frame, ptr %tmp.035, i32 0, i32 1
  %13 = ptrtoint ptr %vbuf10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbuf10, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %12, ptr noundef %14) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %15 = ptrtoint ptr %frames_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frames_num, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %frames_num, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.body.if.end11_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.035) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.035, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %tmp.035 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tmp.035, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %23 = ptrtoint ptr %tmp.035 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.035, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.035, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.035) #9
  %cmp.not = icmp eq ptr %n.037, %ref_frames_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @codec_vp9_resume(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %common = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 1
  %is_10bit = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_10bit, align 4
  %call = tail call i32 @codec_hevc_setup_buffers(ptr noundef %sess, ptr noundef %common, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %1) #9
  tail call void @amvdec_abort(ptr noundef %sess) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @codec_vp9_setup_workspace(ptr noundef %sess, ptr noundef %1)
  %4 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_10bit, align 4
  tail call void @codec_hevc_setup_decode_head(ptr noundef %sess, i32 noundef %5) #9
  tail call fastcc void @codec_vp9_process_lf(ptr noundef %1)
  tail call fastcc void @codec_vp9_process_frame(ptr noundef %sess)
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @codec_vp9_isr(ptr nocapture noundef readnone %sess) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_vp9_threaded_isr(ptr noundef %sess) #0 align 64 {
entry:
  %remainder.i.i.i219.i = alloca i32, align 4
  %remainder.i.i.i186.i = alloca i32, align 4
  %remainder.i.i.i153.i = alloca i32, align 4
  %remainder.i.i.i120.i = alloca i32, align 4
  %remainder.i.i.i87.i = alloca i32, align 4
  %remainder.i.i.i54.i = alloca i32, align 4
  %remainder.i.i.i21.i = alloca i32, align 4
  %remainder.i.i.i4.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 49920) #9
  %call2 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 49932) #9
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %call)
  %cmp.not = icmp eq i32 %call, 240
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev_dec = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_dec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %call) #13
  tail call void @amvdec_abort(ptr noundef %sess) #9
  br label %unlock

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_threaded_isr.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_threaded_isr, %if.then10)) #9
          to label %do.end13 [label %if.then10], !srcloc !89

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_threaded_isr.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.28, i32 noundef 240, i32 noundef %call2) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body5
  %keyframe_found = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 24
  %6 = ptrtoint ptr %keyframe_found to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %keyframe_found, align 4
  %and = and i32 %call2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %and)
  %cmp14 = icmp eq i32 %and, 253
  br i1 %cmp14, label %land.lhs.true, label %do.end13.if.end32_crit_edge

do.end13.if.end32_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %do.end13
  %cur_frame = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_frame, align 4
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %land.lhs.true.if.end32_crit_edge, label %if.then16

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then16:                                        ; preds = %land.lhs.true
  %workspace_vaddr = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %workspace_vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workspace_vaddr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1574912
  %11 = shl i32 %call2, 4
  %mul = and i32 %11, -4096
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr20 = getelementptr i8, ptr %10, i32 1591296
  %add.ptr22 = getelementptr i8, ptr %10, i32 1595392
  %prev_frame = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %prev_frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev_frame, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %if.then16.cond.end.thread_crit_edge, label %cond.end

if.then16.cond.end.thread_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread

cond.end:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.vp9_frame, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %phi.cmp.not = icmp eq i32 %15, 0
  %spec.select = select i1 %phi.cmp.not, i32 128, i32 112
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %cond.end, %if.then16.cond.end.thread_crit_edge
  %16 = phi i32 [ %spec.select, %cond.end ], [ 128, %if.then16.cond.end.thread_crit_edge ]
  %tobool.not.i115.in.in = getelementptr inbounds %struct.vp9_frame, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %tobool.not.i115.in.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %tobool.not.i115.in = load i32, ptr %tobool.not.i115.in.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool.not.i115.in)
  %tobool.not.i115.not = icmp eq i32 %tobool.not.i115.in, 0
  %cond2.i = select i1 %tobool.not.i115.not, i32 112, i32 %16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc35.i.for.body.i_crit_edge, %cond.end.thread
  %tx_size.0264.i = phi i32 [ 0, %cond.end.thread ], [ %inc36.i, %for.inc35.i.for.body.i_crit_edge ]
  %mul3.i = mul nuw nsw i32 %tx_size.0264.i, 400
  %add.i = add nuw nsw i32 %mul3.i, 112
  %mul5.i = mul nuw nsw i32 %tx_size.0264.i, 660
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.end29.i.for.cond10.preheader.i_crit_edge, %for.body.i
  %coef_count_plane_start.0263.i = phi i32 [ %mul5.i, %for.body.i ], [ %add31.i, %for.end29.i.for.cond10.preheader.i_crit_edge ]
  %coef_plane_start.0262.i = phi i32 [ %add.i, %for.body.i ], [ %add30.i, %for.end29.i.for.cond10.preheader.i_crit_edge ]
  %plane.0261.i = phi i32 [ 0, %for.body.i ], [ %inc33.i, %for.end29.i.for.cond10.preheader.i_crit_edge ]
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.end.i.for.cond13.preheader.i_crit_edge, %for.cond10.preheader.i
  %coef_count_type_start.0260.i = phi i32 [ %coef_count_plane_start.0263.i, %for.cond10.preheader.i ], [ %add26.i, %for.end.i.for.cond13.preheader.i_crit_edge ]
  %coef_type_start.0259.i = phi i32 [ %coef_plane_start.0262.i, %for.cond10.preheader.i ], [ %add25.i, %for.end.i.for.cond13.preheader.i_crit_edge ]
  %type.0258.i = phi i32 [ 0, %for.cond10.preheader.i ], [ %inc28.i, %for.end.i.for.cond13.preheader.i_crit_edge ]
  br label %for.body15.i

for.body15.i:                                     ; preds = %adapt_coef_probs_cxt.exit.i.for.body15.i_crit_edge, %for.cond13.preheader.i
  %coef_count_band_start.0257.i = phi i32 [ %coef_count_type_start.0260.i, %for.cond13.preheader.i ], [ %coef_count_band_start.1.i, %adapt_coef_probs_cxt.exit.i.for.body15.i_crit_edge ]
  %coef_band_start.0256.i = phi i32 [ %coef_type_start.0259.i, %for.cond13.preheader.i ], [ %coef_band_start.1.i, %adapt_coef_probs_cxt.exit.i.for.body15.i_crit_edge ]
  %band.0255.i = phi i32 [ 0, %for.cond13.preheader.i ], [ %inc.i, %adapt_coef_probs_cxt.exit.i.for.body15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band.0255.i)
  %cmp16.i = icmp eq i32 %band.0255.i, 0
  %..i = select i1 %cmp16.i, i32 3, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end38.2.i.i.for.body.i.i_crit_edge, %for.body15.i
  %coef_cxt_start.addr.096.i.i = phi i32 [ %add55.i.i, %cond.end38.2.i.i.for.body.i.i_crit_edge ], [ %coef_band_start.0256.i, %for.body15.i ]
  %coef_count_cxt_start.addr.095.i.i = phi i32 [ %add56.i.i, %cond.end38.2.i.i.for.body.i.i_crit_edge ], [ %coef_count_band_start.0257.i, %for.body15.i ]
  %cxt.094.i.i = phi i32 [ %inc58.i.i, %cond.end38.2.i.i.for.body.i.i_crit_edge ], [ 0, %for.body15.i ]
  %arrayidx.i.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_cxt_start.addr.095.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %coef_count_cxt_start.addr.095.i.i, 1
  %arrayidx1.i.i = getelementptr i32, ptr %add.ptr22, i32 %add.i.i
  %20 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i.i, align 4
  %add2.i.i = add i32 %coef_count_cxt_start.addr.095.i.i, 2
  %arrayidx3.i.i = getelementptr i32, ptr %add.ptr22, i32 %add2.i.i
  %22 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %coef_count_cxt_start.addr.095.i.i, 3
  %arrayidx5.i.i = getelementptr i32, ptr %add.ptr22, i32 %add4.i.i
  %24 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %coef_count_cxt_start.addr.095.i.i, 4
  %arrayidx7.i.i = getelementptr i32, ptr %add.ptr22, i32 %add6.i.i
  %26 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.i.i, align 4
  %add12.i.i = add i32 %23, %21
  %div.i.i = sdiv i32 %coef_cxt_start.addr.096.i.i, 4
  %mul.i.i = shl nsw i32 %div.i.i, 1
  %arrayidx19.i.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i.i
  %28 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx19.i.i, align 4
  %and.i.i = shl i32 %coef_cxt_start.addr.096.i.i, 3
  %mul20.i.i = and i32 %and.i.i, 24
  %shr.i.i = ashr i32 %29, %mul20.i.i
  %and21.i.i = and i32 %shr.i.i, 255
  %add28.i.i = add i32 %27, %25
  %30 = call i32 @llvm.smin.i32(i32 %add28.i.i, i32 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add28.i.i)
  %cmp30.i.i = icmp eq i32 %add28.i.i, 0
  br i1 %cmp30.i.i, label %for.body.i.i.cond.end38.i.i_crit_edge, label %cond.false32.i.i

for.body.i.i.cond.end38.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38.i.i

cond.false32.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = sext i32 %25 to i64
  %mul33.i.i = shl nsw i64 %conv.i.i, 8
  %shr34.i.i = ashr i32 %add28.i.i, 1
  %conv35.i.i = sext i32 %shr34.i.i to i64
  %add36.i.i = add nsw i64 %mul33.i.i, %conv35.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %31 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !90
  %call.i.i.i.i = call i64 @div_s64_rem(i64 noundef %add36.i.i, i32 noundef %add28.i.i, ptr noundef nonnull %remainder.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %conv.i.i.i = trunc i64 %call.i.i.i.i to i32
  %32 = call i32 @llvm.smax.i32(i32 %conv.i.i.i, i32 1) #9
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 255) #9
  br label %cond.end38.i.i

cond.end38.i.i:                                   ; preds = %cond.false32.i.i, %for.body.i.i.cond.end38.i.i_crit_edge
  %cond39.i.i = phi i32 [ %33, %cond.false32.i.i ], [ 128, %for.body.i.i.cond.end38.i.i_crit_edge ]
  %mul40.i.i = mul i32 %30, %cond2.i
  %div41.i.i = sdiv i32 %mul40.i.i, 24
  %sub.i.i = sub nsw i32 256, %div41.i.i
  %mul42.i.i = mul i32 %sub.i.i, %and21.i.i
  %mul43.i.i = mul i32 %cond39.i.i, %div41.i.i
  %add44.i.i = add i32 %mul42.i.i, 128
  %add.i.i.i = add i32 %add44.i.i, %mul43.i.i
  %shr.i.i.i = ashr i32 %add.i.i.i, 8
  %arrayidx48.i.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i.i
  %34 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx48.i.i, align 4
  %shl.i.i = shl nuw i32 255, %mul20.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and49.i.i = and i32 %35, %neg.i.i
  %shl50.i.i = shl i32 %shr.i.i.i, %mul20.i.i
  %or.i.i = or i32 %shl50.i.i, %and49.i.i
  store i32 %or.i.i, ptr %arrayidx48.i.i, align 4
  %add54.i.i = add i32 %coef_cxt_start.addr.096.i.i, 1
  %div.1.i.i = sdiv i32 %add54.i.i, 4
  %mul.1.i.i = shl nsw i32 %div.1.i.i, 1
  %arrayidx19.1.i.i = getelementptr i32, ptr %add.ptr17, i32 %mul.1.i.i
  %36 = ptrtoint ptr %arrayidx19.1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx19.1.i.i, align 4
  %and.1.i.i = shl i32 %add54.i.i, 3
  %mul20.1.i.i = and i32 %and.1.i.i, 24
  %shr.1.i.i = ashr i32 %37, %mul20.1.i.i
  %and21.1.i.i = and i32 %shr.1.i.i, 255
  %add28.1.i.i = add i32 %add12.i.i, %19
  %38 = call i32 @llvm.smin.i32(i32 %add28.1.i.i, i32 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add28.1.i.i)
  %cmp30.1.i.i = icmp eq i32 %add28.1.i.i, 0
  br i1 %cmp30.1.i.i, label %cond.end38.i.i.cond.end38.1.i.i_crit_edge, label %cond.false32.1.i.i

cond.end38.i.i.cond.end38.1.i.i_crit_edge:        ; preds = %cond.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38.1.i.i

cond.false32.1.i.i:                               ; preds = %cond.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.1.i.i = sext i32 %19 to i64
  %mul33.1.i.i = shl nsw i64 %conv.1.i.i, 8
  %shr34.1.i.i = ashr i32 %add28.1.i.i, 1
  %conv35.1.i.i = sext i32 %shr34.1.i.i to i64
  %add36.1.i.i = add nsw i64 %mul33.1.i.i, %conv35.1.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %39 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !90
  %call.i.i.1.i.i = call i64 @div_s64_rem(i64 noundef %add36.1.i.i, i32 noundef %add28.1.i.i, ptr noundef nonnull %remainder.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %conv.i.1.i.i = trunc i64 %call.i.i.1.i.i to i32
  %40 = call i32 @llvm.smax.i32(i32 %conv.i.1.i.i, i32 1) #9
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 255) #9
  br label %cond.end38.1.i.i

cond.end38.1.i.i:                                 ; preds = %cond.false32.1.i.i, %cond.end38.i.i.cond.end38.1.i.i_crit_edge
  %cond39.1.i.i = phi i32 [ %41, %cond.false32.1.i.i ], [ 128, %cond.end38.i.i.cond.end38.1.i.i_crit_edge ]
  %mul40.1.i.i = mul i32 %38, %cond2.i
  %div41.1.i.i = sdiv i32 %mul40.1.i.i, 24
  %sub.1.i.i = sub nsw i32 256, %div41.1.i.i
  %mul42.1.i.i = mul i32 %and21.1.i.i, %sub.1.i.i
  %mul43.1.i.i = mul i32 %cond39.1.i.i, %div41.1.i.i
  %add44.1.i.i = add i32 %mul42.1.i.i, 128
  %add.i.1.i.i = add i32 %add44.1.i.i, %mul43.1.i.i
  %shr.i.1.i.i = ashr i32 %add.i.1.i.i, 8
  %arrayidx48.1.i.i = getelementptr i32, ptr %add.ptr20, i32 %mul.1.i.i
  %42 = ptrtoint ptr %arrayidx48.1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx48.1.i.i, align 4
  %shl.1.i.i = shl nuw i32 255, %mul20.1.i.i
  %neg.1.i.i = xor i32 %shl.1.i.i, -1
  %and49.1.i.i = and i32 %43, %neg.1.i.i
  %shl50.1.i.i = shl i32 %shr.i.1.i.i, %mul20.1.i.i
  %or.1.i.i = or i32 %shl50.1.i.i, %and49.1.i.i
  store i32 %or.1.i.i, ptr %arrayidx48.1.i.i, align 4
  %add54.1.i.i = add i32 %coef_cxt_start.addr.096.i.i, 2
  %div.2.i.i = sdiv i32 %add54.1.i.i, 4
  %mul.2.i.i = shl nsw i32 %div.2.i.i, 1
  %arrayidx19.2.i.i = getelementptr i32, ptr %add.ptr17, i32 %mul.2.i.i
  %44 = ptrtoint ptr %arrayidx19.2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx19.2.i.i, align 4
  %and.2.i.i = shl i32 %add54.1.i.i, 3
  %mul20.2.i.i = and i32 %and.2.i.i, 24
  %shr.2.i.i = ashr i32 %45, %mul20.2.i.i
  %and21.2.i.i = and i32 %shr.2.i.i, 255
  %46 = call i32 @llvm.smin.i32(i32 %add12.i.i, i32 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i.i)
  %cmp30.2.i.i = icmp eq i32 %add12.i.i, 0
  br i1 %cmp30.2.i.i, label %cond.end38.1.i.i.cond.end38.2.i.i_crit_edge, label %cond.false32.2.i.i

cond.end38.1.i.i.cond.end38.2.i.i_crit_edge:      ; preds = %cond.end38.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38.2.i.i

cond.false32.2.i.i:                               ; preds = %cond.end38.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.2.i.i = sext i32 %21 to i64
  %mul33.2.i.i = shl nsw i64 %conv.2.i.i, 8
  %shr34.2.i.i = ashr i32 %add12.i.i, 1
  %conv35.2.i.i = sext i32 %shr34.2.i.i to i64
  %add36.2.i.i = add nsw i64 %mul33.2.i.i, %conv35.2.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %47 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !90
  %call.i.i.2.i.i = call i64 @div_s64_rem(i64 noundef %add36.2.i.i, i32 noundef %add12.i.i, ptr noundef nonnull %remainder.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %conv.i.2.i.i = trunc i64 %call.i.i.2.i.i to i32
  %48 = call i32 @llvm.smax.i32(i32 %conv.i.2.i.i, i32 1) #9
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 255) #9
  br label %cond.end38.2.i.i

cond.end38.2.i.i:                                 ; preds = %cond.false32.2.i.i, %cond.end38.1.i.i.cond.end38.2.i.i_crit_edge
  %cond39.2.i.i = phi i32 [ %49, %cond.false32.2.i.i ], [ 128, %cond.end38.1.i.i.cond.end38.2.i.i_crit_edge ]
  %mul40.2.i.i = mul i32 %46, %cond2.i
  %div41.2.i.i = sdiv i32 %mul40.2.i.i, 24
  %sub.2.i.i = sub nsw i32 256, %div41.2.i.i
  %mul42.2.i.i = mul i32 %and21.2.i.i, %sub.2.i.i
  %mul43.2.i.i = mul i32 %cond39.2.i.i, %div41.2.i.i
  %add44.2.i.i = add i32 %mul42.2.i.i, 128
  %add.i.2.i.i = add i32 %add44.2.i.i, %mul43.2.i.i
  %shr.i.2.i.i = ashr i32 %add.i.2.i.i, 8
  %arrayidx48.2.i.i = getelementptr i32, ptr %add.ptr20, i32 %mul.2.i.i
  %50 = ptrtoint ptr %arrayidx48.2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx48.2.i.i, align 4
  %shl.2.i.i = shl nuw i32 255, %mul20.2.i.i
  %neg.2.i.i = xor i32 %shl.2.i.i, -1
  %and49.2.i.i = and i32 %51, %neg.2.i.i
  %shl50.2.i.i = shl i32 %shr.i.2.i.i, %mul20.2.i.i
  %or.2.i.i = or i32 %shl50.2.i.i, %and49.2.i.i
  store i32 %or.2.i.i, ptr %arrayidx48.2.i.i, align 4
  %add55.i.i = add i32 %coef_cxt_start.addr.096.i.i, 3
  %add56.i.i = add i32 %coef_count_cxt_start.addr.095.i.i, 5
  %inc58.i.i = add nuw nsw i32 %cxt.094.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc58.i.i, %..i
  br i1 %exitcond.not.i.i, label %adapt_coef_probs_cxt.exit.i, label %cond.end38.2.i.i.for.body.i.i_crit_edge

cond.end38.2.i.i.for.body.i.i_crit_edge:          ; preds = %cond.end38.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

adapt_coef_probs_cxt.exit.i:                      ; preds = %cond.end38.2.i.i
  %coef_band_start.1.v.i = select i1 %cmp16.i, i32 10, i32 18
  %coef_band_start.1.i = add i32 %coef_band_start.1.v.i, %coef_band_start.0256.i
  %coef_count_band_start.1.v.i = select i1 %cmp16.i, i32 15, i32 30
  %coef_count_band_start.1.i = add i32 %coef_count_band_start.1.v.i, %coef_count_band_start.0257.i
  %inc.i = add nuw nsw i32 %band.0255.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.end.i, label %adapt_coef_probs_cxt.exit.i.for.body15.i_crit_edge

adapt_coef_probs_cxt.exit.i.for.body15.i_crit_edge: ; preds = %adapt_coef_probs_cxt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

for.end.i:                                        ; preds = %adapt_coef_probs_cxt.exit.i
  %add25.i = add nuw nsw i32 %coef_type_start.0259.i, 100
  %add26.i = add nuw nsw i32 %coef_count_type_start.0260.i, 165
  %inc28.i = add nuw nsw i32 %type.0258.i, 1
  %exitcond299.not.i = icmp eq i32 %inc28.i, 2
  br i1 %exitcond299.not.i, label %for.end29.i, label %for.end.i.for.cond13.preheader.i_crit_edge

for.end.i.for.cond13.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond13.preheader.i

for.end29.i:                                      ; preds = %for.end.i
  %add30.i = add nuw nsw i32 %coef_plane_start.0262.i, 200
  %add31.i = add nuw nsw i32 %coef_count_plane_start.0263.i, 330
  %inc33.i = add nuw nsw i32 %plane.0261.i, 1
  %exitcond300.not.i = icmp eq i32 %inc33.i, 2
  br i1 %exitcond300.not.i, label %for.inc35.i, label %for.end29.i.for.cond10.preheader.i_crit_edge

for.end29.i.for.cond10.preheader.i_crit_edge:     ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader.i

for.inc35.i:                                      ; preds = %for.end29.i
  %inc36.i = add nuw nsw i32 %tx_size.0264.i, 1
  %exitcond301.not.i = icmp eq i32 %inc36.i, 4
  br i1 %exitcond301.not.i, label %for.end37.i, label %for.inc35.i.for.body.i_crit_edge

for.inc35.i.for.body.i_crit_edge:                 ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end37.i:                                      ; preds = %for.inc35.i
  br i1 %tobool.not.i115.not, label %for.end37.i.adapt_coef_probs.exit_crit_edge, label %for.end37.i.for.body42.i_crit_edge

for.end37.i.for.body42.i_crit_edge:               ; preds = %for.end37.i
  br label %for.body42.i

for.end37.i.adapt_coef_probs.exit_crit_edge:      ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapt_coef_probs.exit

for.body42.i:                                     ; preds = %if.end104.i.for.body42.i_crit_edge, %for.end37.i.for.body42.i_crit_edge
  %coef_count_node_start.0266.i = phi i32 [ %add115.i, %if.end104.i.for.body42.i_crit_edge ], [ 2640, %for.end37.i.for.body42.i_crit_edge ]
  %coef_node_start.0265.i = phi i32 [ %add113.i, %if.end104.i.for.body42.i_crit_edge ], [ -1, %for.end37.i.for.body42.i_crit_edge ]
  %52 = zext i32 %coef_count_node_start.0266.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %coef_count_node_start.0266.i, label %if.end77.fold.split.i [
    i32 2640, label %for.body42.i.if.end77.i_crit_edge
    i32 2648, label %if.then47.i
    i32 2688, label %if.then50.i
    i32 2712, label %if.then53.i
    i32 2718, label %if.then56.i
    i32 2720, label %if.then59.i
    i32 2722, label %if.then62.i
    i32 2742, label %if.then65.i
    i32 2762, label %if.then68.i
  ]

for.body42.i.if.end77.i_crit_edge:                ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then47.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then50.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then53.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then56.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then59.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then62.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then65.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then68.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.end77.fold.split.i:                            ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end77.fold.split.i, %if.then68.i, %if.then65.i, %if.then62.i, %if.then59.i, %if.then56.i, %if.then53.i, %if.then50.i, %if.then47.i, %for.body42.i.if.end77.i_crit_edge
  %coef_node_start.1.i = phi i32 [ 1748, %if.then47.i ], [ 100, %if.then50.i ], [ 96, %if.then53.i ], [ 1899, %if.then56.i ], [ 1921, %if.then59.i ], [ 1911, %if.then62.i ], [ 1933, %if.then65.i ], [ 1961, %if.then68.i ], [ 1744, %for.body42.i.if.end77.i_crit_edge ], [ %coef_node_start.0265.i, %if.end77.fold.split.i ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_node_start.0266.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %add78.i = or i32 %coef_count_node_start.0266.i, 1
  %arrayidx79.i = getelementptr i32, ptr %add.ptr22, i32 %add78.i
  %55 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %56, %54
  %div.i = sdiv i32 %coef_node_start.1.i, 4
  %mul81.i = shl nsw i32 %div.i, 1
  %arrayidx82.i = getelementptr i32, ptr %add.ptr17, i32 %mul81.i
  %57 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx82.i, align 4
  %and.i = shl i32 %coef_node_start.1.i, 3
  %mul83.i = and i32 %and.i, 24
  %shr.i = ashr i32 %58, %mul83.i
  %and84.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add80.i)
  %cmp85.i = icmp eq i32 %add80.i, 0
  br i1 %cmp85.i, label %if.end77.i.if.end104.i_crit_edge, label %if.else87.i

if.end77.i.if.end104.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.else87.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = call i32 @llvm.smin.i32(i32 %add80.i, i32 20) #9
  %conv.i = zext i32 %54 to i64
  %mul94.i = shl nuw nsw i64 %conv.i, 8
  %shr95.i = ashr i32 %add80.i, 1
  %conv96.i = sext i32 %shr95.i to i64
  %add97.i = add nsw i64 %mul94.i, %conv96.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #9
  %60 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !90
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %add97.i, i32 noundef %add80.i, ptr noundef nonnull %remainder.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #9
  %conv.i1.i = trunc i64 %call.i.i.i to i32
  %61 = call i32 @llvm.smax.i32(i32 %conv.i1.i, i32 1) #9
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 255) #9
  %arrayidx99.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %59
  %63 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx99.i, align 4
  %sub.i = sub i32 256, %64
  %mul100.i = mul i32 %sub.i, %and84.i
  %mul101.i = mul i32 %62, %64
  %add102.i = add i32 %mul101.i, 128
  %add.i2.i = add i32 %add102.i, %mul100.i
  %shr.i3.i = ashr i32 %add.i2.i, 8
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else87.i, %if.end77.i.if.end104.i_crit_edge
  %new_prob.0.i = phi i32 [ %shr.i3.i, %if.else87.i ], [ %and84.i, %if.end77.i.if.end104.i_crit_edge ]
  %arrayidx107.i = getelementptr i32, ptr %add.ptr20, i32 %mul81.i
  %65 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx107.i, align 4
  %shl.i = shl nuw i32 255, %mul83.i
  %neg.i = xor i32 %shl.i, -1
  %and108.i = and i32 %66, %neg.i
  %shl109.i = shl i32 %new_prob.0.i, %mul83.i
  %or.i = or i32 %and108.i, %shl109.i
  store i32 %or.i, ptr %arrayidx107.i, align 4
  %add113.i = add i32 %coef_node_start.1.i, 1
  %add115.i = add nuw nsw i32 %coef_count_node_start.0266.i, 2
  %cmp41.i = icmp ult i32 %coef_count_node_start.0266.i, 2768
  br i1 %cmp41.i, label %if.end104.i.for.body42.i_crit_edge, label %if.end104.i.for.cond121.preheader.i_crit_edge

if.end104.i.for.cond121.preheader.i_crit_edge:    ; preds = %if.end104.i
  br label %for.cond121.preheader.i

if.end104.i.for.body42.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42.i

for.cond121.preheader.i:                          ; preds = %for.end150.i.for.cond121.preheader.i_crit_edge, %if.end104.i.for.cond121.preheader.i_crit_edge
  %tree_i.0271.i = phi i32 [ %inc153.i, %for.end150.i.for.cond121.preheader.i_crit_edge ], [ 0, %if.end104.i.for.cond121.preheader.i_crit_edge ]
  %coef_count_node_start.1270.i = phi i32 [ %add151.i, %for.end150.i.for.cond121.preheader.i_crit_edge ], [ 2770, %if.end104.i.for.cond121.preheader.i_crit_edge ]
  %coef_node_start.2269.i = phi i32 [ %add147.i, %for.end150.i.for.cond121.preheader.i_crit_edge ], [ 1712, %if.end104.i.for.cond121.preheader.i_crit_edge ]
  %arrayidx131.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_node_start.1270.i
  %add132.i = or i32 %coef_count_node_start.1270.i, 1
  %arrayidx133.i = getelementptr i32, ptr %add.ptr22, i32 %add132.i
  %add134.i = add nuw nsw i32 %coef_count_node_start.1270.i, 3
  %arrayidx135.i = getelementptr i32, ptr %add.ptr22, i32 %add134.i
  %add137.i = add nuw nsw i32 %coef_count_node_start.1270.i, 2
  %arrayidx138.i = getelementptr i32, ptr %add.ptr22, i32 %add137.i
  br label %for.body124.i

for.body124.i:                                    ; preds = %vp9_tree_merge_probs.exit.i.for.body124.i_crit_edge, %for.cond121.preheader.i
  %coef_node_start.3268.i = phi i32 [ %coef_node_start.2269.i, %for.cond121.preheader.i ], [ %add147.i, %vp9_tree_merge_probs.exit.i.for.body124.i_crit_edge ]
  %node.0267.i = phi i32 [ 0, %for.cond121.preheader.i ], [ %inc149.i, %vp9_tree_merge_probs.exit.i.for.body124.i_crit_edge ]
  %67 = zext i32 %node.0267.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %node.0267.i, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb129.i
  ]

sw.bb.i:                                          ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx135.i, align 4
  br label %sw.epilog.i

sw.bb129.i:                                       ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx133.i, align 4
  %72 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx135.i, align 4
  %add136.i = add i32 %73, %71
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx131.i, align 4
  %76 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx133.i, align 4
  %add143.i = add i32 %77, %75
  %78 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx135.i, align 4
  %add146.i = add i32 %add143.i, %79
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb129.i, %sw.bb.i
  %tree_left.0.in.i = phi ptr [ %arrayidx138.i, %sw.default.i ], [ %arrayidx131.i, %sw.bb129.i ], [ %arrayidx133.i, %sw.bb.i ]
  %tree_right.0.i = phi i32 [ %add146.i, %sw.default.i ], [ %add136.i, %sw.bb129.i ], [ %69, %sw.bb.i ]
  %80 = ptrtoint ptr %tree_left.0.in.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %tree_left.0.i = load i32, ptr %tree_left.0.in.i, align 4
  %div.i5.i = sdiv i32 %coef_node_start.3268.i, 4
  %mul.i6.i = shl nsw i32 %div.i5.i, 1
  %arrayidx.i7.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i6.i
  %81 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i7.i, align 4
  %and.i8.i = shl i32 %coef_node_start.3268.i, 3
  %mul1.i.i = and i32 %and.i8.i, 24
  %shr.i9.i = ashr i32 %82, %mul1.i.i
  %and2.i.i = and i32 %shr.i9.i, 255
  %add.i10.i = add i32 %tree_left.0.i, %tree_right.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i10.i)
  %cmp.i.i = icmp eq i32 %add.i10.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.vp9_tree_merge_probs.exit.i_crit_edge, label %if.else.i.i

sw.epilog.i.vp9_tree_merge_probs.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit.i

if.else.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = call i32 @llvm.smin.i32(i32 %add.i10.i, i32 20) #9
  %conv.i11.i = sext i32 %tree_left.0.i to i64
  %mul4.i.i = shl nsw i64 %conv.i11.i, 8
  %shr5.i.i = ashr i32 %add.i10.i, 1
  %conv6.i.i = sext i32 %shr5.i.i to i64
  %add7.i.i = add nsw i64 %mul4.i.i, %conv6.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i4.i) #9
  %84 = ptrtoint ptr %remainder.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %remainder.i.i.i4.i, align 4, !annotation !90
  %call.i.i.i12.i = call i64 @div_s64_rem(i64 noundef %add7.i.i, i32 noundef %add.i10.i, ptr noundef nonnull %remainder.i.i.i4.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i4.i) #9
  %conv.i.i13.i = trunc i64 %call.i.i.i12.i to i32
  %85 = call i32 @llvm.smax.i32(i32 %conv.i.i13.i, i32 1) #9
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 255) #9
  %arrayidx9.i.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %83
  %87 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx9.i.i, align 4
  %sub.i14.i = sub i32 256, %88
  %mul10.i.i = mul i32 %sub.i14.i, %and2.i.i
  %mul11.i.i = mul i32 %86, %88
  %add12.i15.i = add i32 %mul11.i.i, 128
  %add.i.i16.i = add i32 %add12.i15.i, %mul10.i.i
  %shr.i.i17.i = ashr i32 %add.i.i16.i, 8
  br label %vp9_tree_merge_probs.exit.i

vp9_tree_merge_probs.exit.i:                      ; preds = %if.else.i.i, %sw.epilog.i.vp9_tree_merge_probs.exit.i_crit_edge
  %new_prob.0.i.i = phi i32 [ %shr.i.i17.i, %if.else.i.i ], [ %and2.i.i, %sw.epilog.i.vp9_tree_merge_probs.exit.i_crit_edge ]
  %arrayidx16.i.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i6.i
  %89 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx16.i.i, align 4
  %shl.i18.i = shl nuw i32 255, %mul1.i.i
  %neg.i19.i = xor i32 %shl.i18.i, -1
  %and17.i.i = and i32 %90, %neg.i19.i
  %shl18.i.i = shl i32 %new_prob.0.i.i, %mul1.i.i
  %or.i20.i = or i32 %and17.i.i, %shl18.i.i
  store i32 %or.i20.i, ptr %arrayidx16.i.i, align 4
  %add147.i = add i32 %coef_node_start.3268.i, 1
  %inc149.i = add nuw nsw i32 %node.0267.i, 1
  %exitcond302.not.i = icmp eq i32 %inc149.i, 3
  br i1 %exitcond302.not.i, label %for.end150.i, label %vp9_tree_merge_probs.exit.i.for.body124.i_crit_edge

vp9_tree_merge_probs.exit.i.for.body124.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body124.i

for.end150.i:                                     ; preds = %vp9_tree_merge_probs.exit.i
  %add151.i = add nuw nsw i32 %coef_count_node_start.1270.i, 4
  %inc153.i = add nuw nsw i32 %tree_i.0271.i, 1
  %exitcond303.not.i = icmp eq i32 %inc153.i, 7
  br i1 %exitcond303.not.i, label %for.end150.i.for.cond159.preheader.i_crit_edge, label %for.end150.i.for.cond121.preheader.i_crit_edge

for.end150.i.for.cond121.preheader.i_crit_edge:   ; preds = %for.end150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond121.preheader.i

for.end150.i.for.cond159.preheader.i_crit_edge:   ; preds = %for.end150.i
  br label %for.cond159.preheader.i

for.cond159.preheader.i:                          ; preds = %for.end303.i.for.cond159.preheader.i_crit_edge, %for.end150.i.for.cond159.preheader.i_crit_edge
  %tree_i.1276.i = phi i32 [ %inc306.i, %for.end303.i.for.cond159.preheader.i_crit_edge ], [ 0, %for.end150.i.for.cond159.preheader.i_crit_edge ]
  %coef_count_node_start.2275.i = phi i32 [ %add304.i, %for.end303.i.for.cond159.preheader.i_crit_edge ], [ 2798, %for.end150.i.for.cond159.preheader.i_crit_edge ]
  %coef_node_start.4274.i = phi i32 [ %add300.i, %for.end303.i.for.cond159.preheader.i_crit_edge ], [ 1768, %for.end150.i.for.cond159.preheader.i_crit_edge ]
  %add245.i = add nuw nsw i32 %coef_count_node_start.2275.i, 9
  %arrayidx246.i = getelementptr i32, ptr %add.ptr22, i32 %add245.i
  %add247.i = or i32 %coef_count_node_start.2275.i, 1
  %arrayidx248.i = getelementptr i32, ptr %add.ptr22, i32 %add247.i
  %add249.i = add nuw nsw i32 %coef_count_node_start.2275.i, 2
  %arrayidx250.i = getelementptr i32, ptr %add.ptr22, i32 %add249.i
  %add252.i = add nuw nsw i32 %coef_count_node_start.2275.i, 5
  %arrayidx253.i = getelementptr i32, ptr %add.ptr22, i32 %add252.i
  %add255.i = add nuw nsw i32 %coef_count_node_start.2275.i, 4
  %arrayidx256.i = getelementptr i32, ptr %add.ptr22, i32 %add255.i
  %add258.i = add nuw nsw i32 %coef_count_node_start.2275.i, 3
  %arrayidx259.i = getelementptr i32, ptr %add.ptr22, i32 %add258.i
  %add261.i = add nuw nsw i32 %coef_count_node_start.2275.i, 7
  %arrayidx262.i = getelementptr i32, ptr %add.ptr22, i32 %add261.i
  %add264.i = add nuw nsw i32 %coef_count_node_start.2275.i, 6
  %arrayidx265.i = getelementptr i32, ptr %add.ptr22, i32 %add264.i
  %add267.i = add nuw nsw i32 %coef_count_node_start.2275.i, 8
  %arrayidx268.i = getelementptr i32, ptr %add.ptr22, i32 %add267.i
  %arrayidx272.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_node_start.2275.i
  br label %for.body162.i

for.body162.i:                                    ; preds = %vp9_tree_merge_probs.exit53.i.for.body162.i_crit_edge, %for.cond159.preheader.i
  %coef_node_start.5273.i = phi i32 [ %coef_node_start.4274.i, %for.cond159.preheader.i ], [ %add300.i, %vp9_tree_merge_probs.exit53.i.for.body162.i_crit_edge ]
  %node.1272.i = phi i32 [ 0, %for.cond159.preheader.i ], [ %inc302.i, %vp9_tree_merge_probs.exit53.i.for.body162.i_crit_edge ]
  %91 = zext i32 %node.1272.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %node.1272.i, label %sw.default270.i [
    i32 8, label %sw.bb164.i
    i32 7, label %sw.bb169.i
    i32 6, label %sw.bb177.i
    i32 5, label %sw.bb188.i
    i32 4, label %sw.bb193.i
    i32 3, label %sw.bb201.i
    i32 2, label %sw.bb221.i
    i32 1, label %sw.bb244.i
  ]

sw.bb164.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx265.i, align 4
  %94 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx262.i, align 4
  br label %sw.epilog299.i

sw.bb169.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx268.i, align 4
  %98 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx262.i, align 4
  %100 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx265.i, align 4
  %add176.i = add i32 %101, %99
  br label %sw.epilog299.i

sw.bb177.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx259.i, align 4
  %104 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx262.i, align 4
  %106 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx265.i, align 4
  %add184.i = add i32 %107, %105
  %108 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx268.i, align 4
  %add187.i = add i32 %add184.i, %109
  br label %sw.epilog299.i

sw.bb188.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx256.i, align 4
  %112 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx253.i, align 4
  br label %sw.epilog299.i

sw.bb193.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx250.i, align 4
  %116 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx253.i, align 4
  %118 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx256.i, align 4
  %add200.i = add i32 %119, %117
  br label %sw.epilog299.i

sw.bb201.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx250.i, align 4
  %122 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx253.i, align 4
  %add206.i = add i32 %123, %121
  %124 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx256.i, align 4
  %add209.i = add i32 %add206.i, %125
  %126 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx259.i, align 4
  %128 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx262.i, align 4
  %add214.i = add i32 %129, %127
  %130 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx265.i, align 4
  %add217.i = add i32 %add214.i, %131
  %132 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx268.i, align 4
  %add220.i = add i32 %add217.i, %133
  br label %sw.epilog299.i

sw.bb221.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx248.i, align 4
  %136 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx250.i, align 4
  %138 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx253.i, align 4
  %add228.i = add i32 %139, %137
  %140 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx256.i, align 4
  %add231.i = add i32 %add228.i, %141
  %142 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx259.i, align 4
  %add234.i = add i32 %add231.i, %143
  %144 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx262.i, align 4
  %add237.i = add i32 %add234.i, %145
  %146 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx265.i, align 4
  %add240.i = add i32 %add237.i, %147
  %148 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx268.i, align 4
  %add243.i = add i32 %add240.i, %149
  br label %sw.epilog299.i

sw.bb244.i:                                       ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx246.i, align 4
  %152 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx248.i, align 4
  %154 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx250.i, align 4
  %add251.i = add i32 %155, %153
  %156 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx253.i, align 4
  %add254.i = add i32 %add251.i, %157
  %158 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx256.i, align 4
  %add257.i = add i32 %add254.i, %159
  %160 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx259.i, align 4
  %add260.i = add i32 %add257.i, %161
  %162 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx262.i, align 4
  %add263.i = add i32 %add260.i, %163
  %164 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx265.i, align 4
  %add266.i = add i32 %add263.i, %165
  %166 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx268.i, align 4
  %add269.i = add i32 %add266.i, %167
  br label %sw.epilog299.i

sw.default270.i:                                  ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx272.i, align 4
  %170 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx246.i, align 4
  %172 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx248.i, align 4
  %add277.i = add i32 %173, %171
  %174 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx250.i, align 4
  %add280.i = add i32 %add277.i, %175
  %176 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx253.i, align 4
  %add283.i = add i32 %add280.i, %177
  %178 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx256.i, align 4
  %add286.i = add i32 %add283.i, %179
  %180 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx259.i, align 4
  %add289.i = add i32 %add286.i, %181
  %182 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx262.i, align 4
  %add292.i = add i32 %add289.i, %183
  %184 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx265.i, align 4
  %add295.i = add i32 %add292.i, %185
  %186 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx268.i, align 4
  %add298.i = add i32 %add295.i, %187
  br label %sw.epilog299.i

sw.epilog299.i:                                   ; preds = %sw.default270.i, %sw.bb244.i, %sw.bb221.i, %sw.bb201.i, %sw.bb193.i, %sw.bb188.i, %sw.bb177.i, %sw.bb169.i, %sw.bb164.i
  %tree_left.1.i = phi i32 [ %169, %sw.default270.i ], [ %151, %sw.bb244.i ], [ %135, %sw.bb221.i ], [ %add209.i, %sw.bb201.i ], [ %115, %sw.bb193.i ], [ %111, %sw.bb188.i ], [ %103, %sw.bb177.i ], [ %97, %sw.bb169.i ], [ %93, %sw.bb164.i ]
  %tree_right.1.i = phi i32 [ %add298.i, %sw.default270.i ], [ %add269.i, %sw.bb244.i ], [ %add243.i, %sw.bb221.i ], [ %add220.i, %sw.bb201.i ], [ %add200.i, %sw.bb193.i ], [ %113, %sw.bb188.i ], [ %add187.i, %sw.bb177.i ], [ %add176.i, %sw.bb169.i ], [ %95, %sw.bb164.i ]
  %div.i22.i = sdiv i32 %coef_node_start.5273.i, 4
  %mul.i23.i = shl nsw i32 %div.i22.i, 1
  %arrayidx.i24.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i23.i
  %188 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.i24.i, align 4
  %and.i25.i = shl i32 %coef_node_start.5273.i, 3
  %mul1.i26.i = and i32 %and.i25.i, 24
  %shr.i27.i = ashr i32 %189, %mul1.i26.i
  %and2.i28.i = and i32 %shr.i27.i, 255
  %add.i29.i = add i32 %tree_right.1.i, %tree_left.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i29.i)
  %cmp.i30.i = icmp eq i32 %add.i29.i, 0
  br i1 %cmp.i30.i, label %sw.epilog299.i.vp9_tree_merge_probs.exit53.i_crit_edge, label %if.else.i45.i

sw.epilog299.i.vp9_tree_merge_probs.exit53.i_crit_edge: ; preds = %sw.epilog299.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit53.i

if.else.i45.i:                                    ; preds = %sw.epilog299.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = call i32 @llvm.smin.i32(i32 %add.i29.i, i32 20) #9
  %conv.i31.i = sext i32 %tree_left.1.i to i64
  %mul4.i32.i = shl nsw i64 %conv.i31.i, 8
  %shr5.i33.i = ashr i32 %add.i29.i, 1
  %conv6.i34.i = sext i32 %shr5.i33.i to i64
  %add7.i35.i = add nsw i64 %mul4.i32.i, %conv6.i34.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i21.i) #9
  %191 = ptrtoint ptr %remainder.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -1, ptr %remainder.i.i.i21.i, align 4, !annotation !90
  %call.i.i.i36.i = call i64 @div_s64_rem(i64 noundef %add7.i35.i, i32 noundef %add.i29.i, ptr noundef nonnull %remainder.i.i.i21.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i21.i) #9
  %conv.i.i37.i = trunc i64 %call.i.i.i36.i to i32
  %192 = call i32 @llvm.smax.i32(i32 %conv.i.i37.i, i32 1) #9
  %193 = call i32 @llvm.umin.i32(i32 %192, i32 255) #9
  %arrayidx9.i38.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %190
  %194 = ptrtoint ptr %arrayidx9.i38.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx9.i38.i, align 4
  %sub.i39.i = sub i32 256, %195
  %mul10.i40.i = mul i32 %sub.i39.i, %and2.i28.i
  %mul11.i41.i = mul i32 %193, %195
  %add12.i42.i = add i32 %mul11.i41.i, 128
  %add.i.i43.i = add i32 %add12.i42.i, %mul10.i40.i
  %shr.i.i44.i = ashr i32 %add.i.i43.i, 8
  br label %vp9_tree_merge_probs.exit53.i

vp9_tree_merge_probs.exit53.i:                    ; preds = %if.else.i45.i, %sw.epilog299.i.vp9_tree_merge_probs.exit53.i_crit_edge
  %new_prob.0.i46.i = phi i32 [ %shr.i.i44.i, %if.else.i45.i ], [ %and2.i28.i, %sw.epilog299.i.vp9_tree_merge_probs.exit53.i_crit_edge ]
  %arrayidx16.i47.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i23.i
  %196 = ptrtoint ptr %arrayidx16.i47.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx16.i47.i, align 4
  %shl.i48.i = shl nuw i32 255, %mul1.i26.i
  %neg.i49.i = xor i32 %shl.i48.i, -1
  %and17.i50.i = and i32 %197, %neg.i49.i
  %shl18.i51.i = shl i32 %new_prob.0.i46.i, %mul1.i26.i
  %or.i52.i = or i32 %and17.i50.i, %shl18.i51.i
  store i32 %or.i52.i, ptr %arrayidx16.i47.i, align 4
  %add300.i = add i32 %coef_node_start.5273.i, 1
  %inc302.i = add nuw nsw i32 %node.1272.i, 1
  %exitcond304.not.i = icmp eq i32 %inc302.i, 9
  br i1 %exitcond304.not.i, label %for.end303.i, label %vp9_tree_merge_probs.exit53.i.for.body162.i_crit_edge

vp9_tree_merge_probs.exit53.i.for.body162.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body162.i

for.end303.i:                                     ; preds = %vp9_tree_merge_probs.exit53.i
  %add304.i = add nuw nsw i32 %coef_count_node_start.2275.i, 10
  %inc306.i = add nuw nsw i32 %tree_i.1276.i, 1
  %exitcond305.not.i = icmp eq i32 %inc306.i, 14
  br i1 %exitcond305.not.i, label %for.end303.i.for.cond312.preheader.i_crit_edge, label %for.end303.i.for.cond159.preheader.i_crit_edge

for.end303.i.for.cond159.preheader.i_crit_edge:   ; preds = %for.end303.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond159.preheader.i

for.end303.i.for.cond312.preheader.i_crit_edge:   ; preds = %for.end303.i
  br label %for.cond312.preheader.i

for.cond312.preheader.i:                          ; preds = %for.end345.i.for.cond312.preheader.i_crit_edge, %for.end303.i.for.cond312.preheader.i_crit_edge
  %tree_i.2281.i = phi i32 [ %inc348.i, %for.end345.i.for.cond312.preheader.i_crit_edge ], [ 0, %for.end303.i.for.cond312.preheader.i_crit_edge ]
  %coef_count_node_start.3280.i = phi i32 [ %add346.i, %for.end345.i.for.cond312.preheader.i_crit_edge ], [ 2938, %for.end303.i.for.cond312.preheader.i_crit_edge ]
  %coef_node_start.6279.i = phi i32 [ %add342.i, %for.end345.i.for.cond312.preheader.i_crit_edge ], [ 48, %for.end303.i.for.cond312.preheader.i_crit_edge ]
  %add323.i = or i32 %coef_count_node_start.3280.i, 1
  %arrayidx324.i = getelementptr i32, ptr %add.ptr22, i32 %add323.i
  %add325.i = add nuw nsw i32 %coef_count_node_start.3280.i, 2
  %arrayidx326.i = getelementptr i32, ptr %add.ptr22, i32 %add325.i
  %add327.i = add nuw nsw i32 %coef_count_node_start.3280.i, 3
  %arrayidx328.i = getelementptr i32, ptr %add.ptr22, i32 %add327.i
  %arrayidx332.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_node_start.3280.i
  br label %for.body315.i

for.body315.i:                                    ; preds = %vp9_tree_merge_probs.exit86.i.for.body315.i_crit_edge, %for.cond312.preheader.i
  %coef_node_start.7278.i = phi i32 [ %coef_node_start.6279.i, %for.cond312.preheader.i ], [ %add342.i, %vp9_tree_merge_probs.exit86.i.for.body315.i_crit_edge ]
  %node.2277.i = phi i32 [ 0, %for.cond312.preheader.i ], [ %inc344.i, %vp9_tree_merge_probs.exit86.i.for.body315.i_crit_edge ]
  %198 = zext i32 %node.2277.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %node.2277.i, label %sw.default330.i [
    i32 2, label %sw.bb317.i
    i32 1, label %sw.bb322.i
  ]

sw.bb317.i:                                       ; preds = %for.body315.i
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx328.i, align 4
  br label %sw.epilog341.i

sw.bb322.i:                                       ; preds = %for.body315.i
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %arrayidx326.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx326.i, align 4
  %203 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx328.i, align 4
  %add329.i = add i32 %204, %202
  br label %sw.epilog341.i

sw.default330.i:                                  ; preds = %for.body315.i
  call void @__sanitizer_cov_trace_pc() #11
  %205 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx324.i, align 4
  %207 = ptrtoint ptr %arrayidx326.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx326.i, align 4
  %add337.i = add i32 %208, %206
  %209 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx328.i, align 4
  %add340.i = add i32 %add337.i, %210
  br label %sw.epilog341.i

sw.epilog341.i:                                   ; preds = %sw.default330.i, %sw.bb322.i, %sw.bb317.i
  %tree_left.2.in.i = phi ptr [ %arrayidx332.i, %sw.default330.i ], [ %arrayidx324.i, %sw.bb322.i ], [ %arrayidx326.i, %sw.bb317.i ]
  %tree_right.2.i = phi i32 [ %add340.i, %sw.default330.i ], [ %add329.i, %sw.bb322.i ], [ %200, %sw.bb317.i ]
  %211 = ptrtoint ptr %tree_left.2.in.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %tree_left.2.i = load i32, ptr %tree_left.2.in.i, align 4
  %div.i55.i = sdiv i32 %coef_node_start.7278.i, 4
  %mul.i56.i = shl nsw i32 %div.i55.i, 1
  %arrayidx.i57.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i56.i
  %212 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i57.i, align 4
  %and.i58.i = shl i32 %coef_node_start.7278.i, 3
  %mul1.i59.i = and i32 %and.i58.i, 24
  %shr.i60.i = ashr i32 %213, %mul1.i59.i
  %and2.i61.i = and i32 %shr.i60.i, 255
  %add.i62.i = add i32 %tree_left.2.i, %tree_right.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i62.i)
  %cmp.i63.i = icmp eq i32 %add.i62.i, 0
  br i1 %cmp.i63.i, label %sw.epilog341.i.vp9_tree_merge_probs.exit86.i_crit_edge, label %if.else.i78.i

sw.epilog341.i.vp9_tree_merge_probs.exit86.i_crit_edge: ; preds = %sw.epilog341.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit86.i

if.else.i78.i:                                    ; preds = %sw.epilog341.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = call i32 @llvm.smin.i32(i32 %add.i62.i, i32 20) #9
  %conv.i64.i = sext i32 %tree_left.2.i to i64
  %mul4.i65.i = shl nsw i64 %conv.i64.i, 8
  %shr5.i66.i = ashr i32 %add.i62.i, 1
  %conv6.i67.i = sext i32 %shr5.i66.i to i64
  %add7.i68.i = add nsw i64 %mul4.i65.i, %conv6.i67.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i54.i) #9
  %215 = ptrtoint ptr %remainder.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -1, ptr %remainder.i.i.i54.i, align 4, !annotation !90
  %call.i.i.i69.i = call i64 @div_s64_rem(i64 noundef %add7.i68.i, i32 noundef %add.i62.i, ptr noundef nonnull %remainder.i.i.i54.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i54.i) #9
  %conv.i.i70.i = trunc i64 %call.i.i.i69.i to i32
  %216 = call i32 @llvm.smax.i32(i32 %conv.i.i70.i, i32 1) #9
  %217 = call i32 @llvm.umin.i32(i32 %216, i32 255) #9
  %arrayidx9.i71.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %214
  %218 = ptrtoint ptr %arrayidx9.i71.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx9.i71.i, align 4
  %sub.i72.i = sub i32 256, %219
  %mul10.i73.i = mul i32 %sub.i72.i, %and2.i61.i
  %mul11.i74.i = mul i32 %217, %219
  %add12.i75.i = add i32 %mul11.i74.i, 128
  %add.i.i76.i = add i32 %add12.i75.i, %mul10.i73.i
  %shr.i.i77.i = ashr i32 %add.i.i76.i, 8
  br label %vp9_tree_merge_probs.exit86.i

vp9_tree_merge_probs.exit86.i:                    ; preds = %if.else.i78.i, %sw.epilog341.i.vp9_tree_merge_probs.exit86.i_crit_edge
  %new_prob.0.i79.i = phi i32 [ %shr.i.i77.i, %if.else.i78.i ], [ %and2.i61.i, %sw.epilog341.i.vp9_tree_merge_probs.exit86.i_crit_edge ]
  %arrayidx16.i80.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i56.i
  %220 = ptrtoint ptr %arrayidx16.i80.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx16.i80.i, align 4
  %shl.i81.i = shl nuw i32 255, %mul1.i59.i
  %neg.i82.i = xor i32 %shl.i81.i, -1
  %and17.i83.i = and i32 %221, %neg.i82.i
  %shl18.i84.i = shl i32 %new_prob.0.i79.i, %mul1.i59.i
  %or.i85.i = or i32 %and17.i83.i, %shl18.i84.i
  store i32 %or.i85.i, ptr %arrayidx16.i80.i, align 4
  %add342.i = add i32 %coef_node_start.7278.i, 1
  %inc344.i = add nuw nsw i32 %node.2277.i, 1
  %exitcond306.not.i = icmp eq i32 %inc344.i, 3
  br i1 %exitcond306.not.i, label %for.end345.i, label %vp9_tree_merge_probs.exit86.i.for.body315.i_crit_edge

vp9_tree_merge_probs.exit86.i.for.body315.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body315.i

for.end345.i:                                     ; preds = %vp9_tree_merge_probs.exit86.i
  %add346.i = add nuw nsw i32 %coef_count_node_start.3280.i, 4
  %inc348.i = add nuw nsw i32 %tree_i.2281.i, 1
  %exitcond307.not.i = icmp eq i32 %inc348.i, 16
  br i1 %exitcond307.not.i, label %for.end345.i.sw.epilog372.i_crit_edge, label %for.end345.i.for.cond312.preheader.i_crit_edge

for.end345.i.for.cond312.preheader.i_crit_edge:   ; preds = %for.end345.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond312.preheader.i

for.end345.i.sw.epilog372.i_crit_edge:            ; preds = %for.end345.i
  br label %sw.epilog372.i

sw.epilog372.i:                                   ; preds = %vp9_tree_merge_probs.exit119.1.i.sw.epilog372.i_crit_edge, %for.end345.i.sw.epilog372.i_crit_edge
  %tree_i.3286.i = phi i32 [ %inc379.i, %vp9_tree_merge_probs.exit119.1.i.sw.epilog372.i_crit_edge ], [ 0, %for.end345.i.sw.epilog372.i_crit_edge ]
  %coef_count_node_start.4285.i = phi i32 [ %add377.i, %vp9_tree_merge_probs.exit119.1.i.sw.epilog372.i_crit_edge ], [ 3002, %for.end345.i.sw.epilog372.i_crit_edge ]
  %coef_node_start.8284.i = phi i32 [ %add373.1.i, %vp9_tree_merge_probs.exit119.1.i.sw.epilog372.i_crit_edge ], [ 1736, %for.end345.i.sw.epilog372.i_crit_edge ]
  %add367.i = add nuw nsw i32 %coef_count_node_start.4285.i, 1
  %arrayidx368.i = getelementptr i32, ptr %add.ptr22, i32 %add367.i
  %add369.i = add nuw nsw i32 %coef_count_node_start.4285.i, 2
  %arrayidx370.i = getelementptr i32, ptr %add.ptr22, i32 %add369.i
  %222 = ptrtoint ptr %arrayidx368.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx368.i, align 4
  %224 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx370.i, align 4
  %add371.i = add i32 %225, %223
  %tree_left.3.in.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_node_start.4285.i
  %226 = ptrtoint ptr %tree_left.3.in.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %tree_left.3.i = load i32, ptr %tree_left.3.in.i, align 4
  %227 = lshr exact i32 %coef_node_start.8284.i, 1
  %mul.i89.i = and i32 %227, 1073741822
  %arrayidx.i90.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i89.i
  %228 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx.i90.i, align 4
  %and.i91.i = shl i32 %coef_node_start.8284.i, 3
  %mul1.i92.i = and i32 %and.i91.i, 16
  %shr.i93.i = ashr i32 %229, %mul1.i92.i
  %and2.i94.i = and i32 %shr.i93.i, 255
  %add.i95.i = add i32 %add371.i, %tree_left.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i95.i)
  %cmp.i96.i = icmp eq i32 %add.i95.i, 0
  br i1 %cmp.i96.i, label %sw.epilog372.i.sw.epilog372.1.i_crit_edge, label %if.else.i111.i

sw.epilog372.i.sw.epilog372.1.i_crit_edge:        ; preds = %sw.epilog372.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog372.1.i

if.else.i111.i:                                   ; preds = %sw.epilog372.i
  call void @__sanitizer_cov_trace_pc() #11
  %230 = call i32 @llvm.smin.i32(i32 %add.i95.i, i32 20) #9
  %conv.i97.i = sext i32 %tree_left.3.i to i64
  %mul4.i98.i = shl nsw i64 %conv.i97.i, 8
  %shr5.i99.i = ashr i32 %add.i95.i, 1
  %conv6.i100.i = sext i32 %shr5.i99.i to i64
  %add7.i101.i = add nsw i64 %mul4.i98.i, %conv6.i100.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i87.i) #9
  %231 = ptrtoint ptr %remainder.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 -1, ptr %remainder.i.i.i87.i, align 4, !annotation !90
  %call.i.i.i102.i = call i64 @div_s64_rem(i64 noundef %add7.i101.i, i32 noundef %add.i95.i, ptr noundef nonnull %remainder.i.i.i87.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i87.i) #9
  %conv.i.i103.i = trunc i64 %call.i.i.i102.i to i32
  %232 = call i32 @llvm.smax.i32(i32 %conv.i.i103.i, i32 1) #9
  %233 = call i32 @llvm.umin.i32(i32 %232, i32 255) #9
  %arrayidx9.i104.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %230
  %234 = ptrtoint ptr %arrayidx9.i104.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx9.i104.i, align 4
  %sub.i105.i = sub i32 256, %235
  %mul10.i106.i = mul i32 %sub.i105.i, %and2.i94.i
  %mul11.i107.i = mul i32 %233, %235
  %add12.i108.i = add i32 %mul11.i107.i, 128
  %add.i.i109.i = add i32 %add12.i108.i, %mul10.i106.i
  %shr.i.i110.i = ashr i32 %add.i.i109.i, 8
  br label %sw.epilog372.1.i

sw.epilog372.1.i:                                 ; preds = %if.else.i111.i, %sw.epilog372.i.sw.epilog372.1.i_crit_edge
  %new_prob.0.i112.i = phi i32 [ %shr.i.i110.i, %if.else.i111.i ], [ %and2.i94.i, %sw.epilog372.i.sw.epilog372.1.i_crit_edge ]
  %arrayidx16.i113.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i89.i
  %236 = ptrtoint ptr %arrayidx16.i113.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx16.i113.i, align 4
  %shl.i114.i = shl nuw nsw i32 255, %mul1.i92.i
  %neg.i115.i = xor i32 %shl.i114.i, -1
  %and17.i116.i = and i32 %237, %neg.i115.i
  %shl18.i117.i = shl i32 %new_prob.0.i112.i, %mul1.i92.i
  %or.i118.i = or i32 %and17.i116.i, %shl18.i117.i
  store i32 %or.i118.i, ptr %arrayidx16.i113.i, align 4
  %238 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx370.i, align 4
  %240 = ptrtoint ptr %arrayidx368.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %tree_left.3.1.i = load i32, ptr %arrayidx368.i, align 4
  %241 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx.i90.i, align 4
  %mul1.i92.1.i = or i32 %mul1.i92.i, 8
  %shr.i93.1.i = ashr i32 %242, %mul1.i92.1.i
  %and2.i94.1.i = and i32 %shr.i93.1.i, 255
  %add.i95.1.i = add i32 %tree_left.3.1.i, %239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i95.1.i)
  %cmp.i96.1.i = icmp eq i32 %add.i95.1.i, 0
  br i1 %cmp.i96.1.i, label %sw.epilog372.1.i.vp9_tree_merge_probs.exit119.1.i_crit_edge, label %if.else.i111.1.i

sw.epilog372.1.i.vp9_tree_merge_probs.exit119.1.i_crit_edge: ; preds = %sw.epilog372.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit119.1.i

if.else.i111.1.i:                                 ; preds = %sw.epilog372.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %243 = call i32 @llvm.smin.i32(i32 %add.i95.1.i, i32 20) #9
  %conv.i97.1.i = sext i32 %tree_left.3.1.i to i64
  %mul4.i98.1.i = shl nsw i64 %conv.i97.1.i, 8
  %shr5.i99.1.i = ashr i32 %add.i95.1.i, 1
  %conv6.i100.1.i = sext i32 %shr5.i99.1.i to i64
  %add7.i101.1.i = add nsw i64 %mul4.i98.1.i, %conv6.i100.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i87.i) #9
  %244 = ptrtoint ptr %remainder.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %remainder.i.i.i87.i, align 4, !annotation !90
  %call.i.i.i102.1.i = call i64 @div_s64_rem(i64 noundef %add7.i101.1.i, i32 noundef %add.i95.1.i, ptr noundef nonnull %remainder.i.i.i87.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i87.i) #9
  %conv.i.i103.1.i = trunc i64 %call.i.i.i102.1.i to i32
  %245 = call i32 @llvm.smax.i32(i32 %conv.i.i103.1.i, i32 1) #9
  %246 = call i32 @llvm.umin.i32(i32 %245, i32 255) #9
  %arrayidx9.i104.1.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %243
  %247 = ptrtoint ptr %arrayidx9.i104.1.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx9.i104.1.i, align 4
  %sub.i105.1.i = sub i32 256, %248
  %mul10.i106.1.i = mul i32 %sub.i105.1.i, %and2.i94.1.i
  %mul11.i107.1.i = mul i32 %246, %248
  %add12.i108.1.i = add i32 %mul11.i107.1.i, 128
  %add.i.i109.1.i = add i32 %add12.i108.1.i, %mul10.i106.1.i
  %shr.i.i110.1.i = ashr i32 %add.i.i109.1.i, 8
  br label %vp9_tree_merge_probs.exit119.1.i

vp9_tree_merge_probs.exit119.1.i:                 ; preds = %if.else.i111.1.i, %sw.epilog372.1.i.vp9_tree_merge_probs.exit119.1.i_crit_edge
  %new_prob.0.i112.1.i = phi i32 [ %shr.i.i110.1.i, %if.else.i111.1.i ], [ %and2.i94.1.i, %sw.epilog372.1.i.vp9_tree_merge_probs.exit119.1.i_crit_edge ]
  %249 = ptrtoint ptr %arrayidx16.i113.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx16.i113.i, align 4
  %shl.i114.1.i = shl nuw i32 255, %mul1.i92.1.i
  %neg.i115.1.i = xor i32 %shl.i114.1.i, -1
  %and17.i116.1.i = and i32 %250, %neg.i115.1.i
  %shl18.i117.1.i = shl i32 %new_prob.0.i112.1.i, %mul1.i92.1.i
  %or.i118.1.i = or i32 %and17.i116.1.i, %shl18.i117.1.i
  store i32 %or.i118.1.i, ptr %arrayidx16.i113.i, align 4
  %add373.1.i = add nuw nsw i32 %coef_node_start.8284.i, 2
  %add377.i = add nuw nsw i32 %coef_count_node_start.4285.i, 3
  %inc379.i = add nuw nsw i32 %tree_i.3286.i, 1
  %exitcond308.not.i = icmp eq i32 %inc379.i, 4
  br i1 %exitcond308.not.i, label %for.cond385.preheader.i, label %vp9_tree_merge_probs.exit119.1.i.sw.epilog372.i_crit_edge

vp9_tree_merge_probs.exit119.1.i.sw.epilog372.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit119.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog372.i

for.cond385.preheader.i:                          ; preds = %vp9_tree_merge_probs.exit119.1.i
  %arrayidx397.i = getelementptr i8, ptr %10, i32 1607452
  %arrayidx399.i = getelementptr i8, ptr %10, i32 1607456
  %arrayidx401.i = getelementptr i8, ptr %10, i32 1607460
  %arrayidx405.i = getelementptr i8, ptr %10, i32 1607448
  br label %for.body388.i

for.body388.i:                                    ; preds = %vp9_tree_merge_probs.exit152.i.for.body388.i_crit_edge, %for.cond385.preheader.i
  %coef_node_start.11288.i = phi i32 [ 1896, %for.cond385.preheader.i ], [ %add415.i, %vp9_tree_merge_probs.exit152.i.for.body388.i_crit_edge ]
  %node.4287.i = phi i32 [ 0, %for.cond385.preheader.i ], [ %inc417.i, %vp9_tree_merge_probs.exit152.i.for.body388.i_crit_edge ]
  %251 = zext i32 %node.4287.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %node.4287.i, label %sw.default403.i [
    i32 2, label %sw.bb390.i
    i32 1, label %sw.bb395.i
  ]

sw.bb390.i:                                       ; preds = %for.body388.i
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %arrayidx401.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx401.i, align 4
  br label %sw.epilog414.i

sw.bb395.i:                                       ; preds = %for.body388.i
  call void @__sanitizer_cov_trace_pc() #11
  %254 = ptrtoint ptr %arrayidx399.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx399.i, align 4
  %256 = ptrtoint ptr %arrayidx401.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx401.i, align 4
  %add402.i = add i32 %257, %255
  br label %sw.epilog414.i

sw.default403.i:                                  ; preds = %for.body388.i
  call void @__sanitizer_cov_trace_pc() #11
  %258 = ptrtoint ptr %arrayidx397.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx397.i, align 4
  %260 = ptrtoint ptr %arrayidx399.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx399.i, align 4
  %add410.i = add i32 %261, %259
  %262 = ptrtoint ptr %arrayidx401.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx401.i, align 4
  %add413.i = add i32 %add410.i, %263
  br label %sw.epilog414.i

sw.epilog414.i:                                   ; preds = %sw.default403.i, %sw.bb395.i, %sw.bb390.i
  %tree_left.4.in.i = phi ptr [ %arrayidx405.i, %sw.default403.i ], [ %arrayidx397.i, %sw.bb395.i ], [ %arrayidx399.i, %sw.bb390.i ]
  %tree_right.4.i = phi i32 [ %add413.i, %sw.default403.i ], [ %add402.i, %sw.bb395.i ], [ %253, %sw.bb390.i ]
  %264 = ptrtoint ptr %tree_left.4.in.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %tree_left.4.i = load i32, ptr %tree_left.4.in.i, align 4
  %265 = lshr i32 %coef_node_start.11288.i, 1
  %mul.i122.i = and i32 %265, 1073741822
  %arrayidx.i123.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i122.i
  %266 = ptrtoint ptr %arrayidx.i123.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx.i123.i, align 4
  %and.i124.i = shl i32 %coef_node_start.11288.i, 3
  %mul1.i125.i = and i32 %and.i124.i, 24
  %shr.i126.i = ashr i32 %267, %mul1.i125.i
  %and2.i127.i = and i32 %shr.i126.i, 255
  %add.i128.i = add i32 %tree_left.4.i, %tree_right.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i128.i)
  %cmp.i129.i = icmp eq i32 %add.i128.i, 0
  br i1 %cmp.i129.i, label %sw.epilog414.i.vp9_tree_merge_probs.exit152.i_crit_edge, label %if.else.i144.i

sw.epilog414.i.vp9_tree_merge_probs.exit152.i_crit_edge: ; preds = %sw.epilog414.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit152.i

if.else.i144.i:                                   ; preds = %sw.epilog414.i
  call void @__sanitizer_cov_trace_pc() #11
  %268 = call i32 @llvm.smin.i32(i32 %add.i128.i, i32 20) #9
  %conv.i130.i = sext i32 %tree_left.4.i to i64
  %mul4.i131.i = shl nsw i64 %conv.i130.i, 8
  %shr5.i132.i = ashr i32 %add.i128.i, 1
  %conv6.i133.i = sext i32 %shr5.i132.i to i64
  %add7.i134.i = add nsw i64 %mul4.i131.i, %conv6.i133.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i120.i) #9
  %269 = ptrtoint ptr %remainder.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 -1, ptr %remainder.i.i.i120.i, align 4, !annotation !90
  %call.i.i.i135.i = call i64 @div_s64_rem(i64 noundef %add7.i134.i, i32 noundef %add.i128.i, ptr noundef nonnull %remainder.i.i.i120.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i120.i) #9
  %conv.i.i136.i = trunc i64 %call.i.i.i135.i to i32
  %270 = call i32 @llvm.smax.i32(i32 %conv.i.i136.i, i32 1) #9
  %271 = call i32 @llvm.umin.i32(i32 %270, i32 255) #9
  %arrayidx9.i137.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %268
  %272 = ptrtoint ptr %arrayidx9.i137.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx9.i137.i, align 4
  %sub.i138.i = sub i32 256, %273
  %mul10.i139.i = mul i32 %sub.i138.i, %and2.i127.i
  %mul11.i140.i = mul i32 %271, %273
  %add12.i141.i = add i32 %mul11.i140.i, 128
  %add.i.i142.i = add i32 %add12.i141.i, %mul10.i139.i
  %shr.i.i143.i = ashr i32 %add.i.i142.i, 8
  br label %vp9_tree_merge_probs.exit152.i

vp9_tree_merge_probs.exit152.i:                   ; preds = %if.else.i144.i, %sw.epilog414.i.vp9_tree_merge_probs.exit152.i_crit_edge
  %new_prob.0.i145.i = phi i32 [ %shr.i.i143.i, %if.else.i144.i ], [ %and2.i127.i, %sw.epilog414.i.vp9_tree_merge_probs.exit152.i_crit_edge ]
  %arrayidx16.i146.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i122.i
  %274 = ptrtoint ptr %arrayidx16.i146.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx16.i146.i, align 4
  %shl.i147.i = shl nuw i32 255, %mul1.i125.i
  %neg.i148.i = xor i32 %shl.i147.i, -1
  %and17.i149.i = and i32 %275, %neg.i148.i
  %shl18.i150.i = shl i32 %new_prob.0.i145.i, %mul1.i125.i
  %or.i151.i = or i32 %and17.i149.i, %shl18.i150.i
  store i32 %or.i151.i, ptr %arrayidx16.i146.i, align 4
  %add415.i = add nuw nsw i32 %coef_node_start.11288.i, 1
  %inc417.i = add nuw nsw i32 %node.4287.i, 1
  %exitcond309.not.i = icmp eq i32 %inc417.i, 3
  br i1 %exitcond309.not.i, label %vp9_tree_merge_probs.exit152.i.for.body426.i_crit_edge, label %vp9_tree_merge_probs.exit152.i.for.body388.i_crit_edge

vp9_tree_merge_probs.exit152.i.for.body388.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body388.i

vp9_tree_merge_probs.exit152.i.for.body426.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit152.i
  br label %for.body426.i

for.body426.i:                                    ; preds = %for.inc647.i.for.body426.i_crit_edge, %vp9_tree_merge_probs.exit152.i.for.body426.i_crit_edge
  %mvd_i.0298.i = phi i32 [ %inc648.i, %for.inc647.i.for.body426.i_crit_edge ], [ 0, %vp9_tree_merge_probs.exit152.i.for.body426.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mvd_i.0298.i)
  %tobool427.not.i = icmp eq i32 %mvd_i.0298.i, 0
  %cond428.i = select i1 %tobool427.not.i, i32 1900, i32 1922
  %cond430.i = select i1 %tobool427.not.i, i32 3018, i32 3031
  %add528.i = add nuw nsw i32 %cond430.i, 1
  %arrayidx529.i = getelementptr i32, ptr %add.ptr22, i32 %add528.i
  %add530.i = add nuw nsw i32 %cond430.i, 2
  %arrayidx531.i = getelementptr i32, ptr %add.ptr22, i32 %add530.i
  %add532.i = add nuw nsw i32 %cond430.i, 3
  %arrayidx533.i = getelementptr i32, ptr %add.ptr22, i32 %add532.i
  %add535.i = add nuw nsw i32 %cond430.i, 4
  %arrayidx536.i = getelementptr i32, ptr %add.ptr22, i32 %add535.i
  %add538.i = add nuw nsw i32 %cond430.i, 5
  %arrayidx539.i = getelementptr i32, ptr %add.ptr22, i32 %add538.i
  %add541.i = add nuw nsw i32 %cond430.i, 6
  %arrayidx542.i = getelementptr i32, ptr %add.ptr22, i32 %add541.i
  %add544.i = add nuw nsw i32 %cond430.i, 7
  %arrayidx545.i = getelementptr i32, ptr %add.ptr22, i32 %add544.i
  %add547.i = add nuw nsw i32 %cond430.i, 8
  %arrayidx548.i = getelementptr i32, ptr %add.ptr22, i32 %add547.i
  %add550.i = add nuw nsw i32 %cond430.i, 9
  %arrayidx551.i = getelementptr i32, ptr %add.ptr22, i32 %add550.i
  %add553.i = add nuw nsw i32 %cond430.i, 10
  %arrayidx554.i = getelementptr i32, ptr %add.ptr22, i32 %add553.i
  %arrayidx558.i = getelementptr i32, ptr %add.ptr22, i32 %cond430.i
  br label %for.body434.i

for.body434.i:                                    ; preds = %vp9_tree_merge_probs.exit185.i.for.body434.i_crit_edge, %for.body426.i
  %coef_node_start.12292.i = phi i32 [ %cond428.i, %for.body426.i ], [ %add589.i, %vp9_tree_merge_probs.exit185.i.for.body434.i_crit_edge ]
  %node.5291.i = phi i32 [ 0, %for.body426.i ], [ %inc591.i, %vp9_tree_merge_probs.exit185.i.for.body434.i_crit_edge ]
  %276 = zext i32 %node.5291.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %node.5291.i, label %sw.default556.i [
    i32 9, label %sw.bb436.i
    i32 8, label %sw.bb441.i
    i32 7, label %sw.bb446.i
    i32 6, label %sw.bb457.i
    i32 5, label %sw.bb471.i
    i32 4, label %sw.bb476.i
    i32 3, label %sw.bb496.i
    i32 2, label %sw.bb501.i
    i32 1, label %sw.bb527.i
  ]

sw.bb436.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %277 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx551.i, align 4
  %279 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx554.i, align 4
  br label %sw.epilog588.i

sw.bb441.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %281 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx545.i, align 4
  %283 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx548.i, align 4
  br label %sw.epilog588.i

sw.bb446.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %285 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx545.i, align 4
  %287 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx548.i, align 4
  %add451.i = add i32 %288, %286
  %289 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx551.i, align 4
  %291 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx554.i, align 4
  %add456.i = add i32 %292, %290
  br label %sw.epilog588.i

sw.bb457.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %293 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx542.i, align 4
  %295 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx545.i, align 4
  %297 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx548.i, align 4
  %add464.i = add i32 %298, %296
  %299 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx551.i, align 4
  %add467.i = add i32 %add464.i, %300
  %301 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx554.i, align 4
  %add470.i = add i32 %add467.i, %302
  br label %sw.epilog588.i

sw.bb471.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %303 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx536.i, align 4
  %305 = ptrtoint ptr %arrayidx539.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx539.i, align 4
  br label %sw.epilog588.i

sw.bb476.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %307 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx536.i, align 4
  %309 = ptrtoint ptr %arrayidx539.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx539.i, align 4
  %add481.i = add i32 %310, %308
  %311 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx542.i, align 4
  %313 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx545.i, align 4
  %add486.i = add i32 %314, %312
  %315 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx548.i, align 4
  %add489.i = add i32 %add486.i, %316
  %317 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx551.i, align 4
  %add492.i = add i32 %add489.i, %318
  %319 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx554.i, align 4
  %add495.i = add i32 %add492.i, %320
  br label %sw.epilog588.i

sw.bb496.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %321 = ptrtoint ptr %arrayidx531.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx531.i, align 4
  %323 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx533.i, align 4
  br label %sw.epilog588.i

sw.bb501.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %arrayidx531.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx531.i, align 4
  %327 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx533.i, align 4
  %add506.i = add i32 %328, %326
  %329 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx536.i, align 4
  %331 = ptrtoint ptr %arrayidx539.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx539.i, align 4
  %add511.i = add i32 %332, %330
  %333 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx542.i, align 4
  %add514.i = add i32 %add511.i, %334
  %335 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx545.i, align 4
  %add517.i = add i32 %add514.i, %336
  %337 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx548.i, align 4
  %add520.i = add i32 %add517.i, %338
  %339 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx551.i, align 4
  %add523.i = add i32 %add520.i, %340
  %341 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx554.i, align 4
  %add526.i = add i32 %add523.i, %342
  br label %sw.epilog588.i

sw.bb527.i:                                       ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %343 = ptrtoint ptr %arrayidx529.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx529.i, align 4
  %345 = ptrtoint ptr %arrayidx531.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx531.i, align 4
  %347 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx533.i, align 4
  %add534.i = add i32 %348, %346
  %349 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx536.i, align 4
  %add537.i = add i32 %add534.i, %350
  %351 = ptrtoint ptr %arrayidx539.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %arrayidx539.i, align 4
  %add540.i = add i32 %add537.i, %352
  %353 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx542.i, align 4
  %add543.i = add i32 %add540.i, %354
  %355 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx545.i, align 4
  %add546.i = add i32 %add543.i, %356
  %357 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx548.i, align 4
  %add549.i = add i32 %add546.i, %358
  %359 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx551.i, align 4
  %add552.i = add i32 %add549.i, %360
  %361 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx554.i, align 4
  %add555.i = add i32 %add552.i, %362
  br label %sw.epilog588.i

sw.default556.i:                                  ; preds = %for.body434.i
  call void @__sanitizer_cov_trace_pc() #11
  %363 = ptrtoint ptr %arrayidx558.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx558.i, align 4
  %365 = ptrtoint ptr %arrayidx529.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx529.i, align 4
  %367 = ptrtoint ptr %arrayidx531.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx531.i, align 4
  %add563.i = add i32 %368, %366
  %369 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx533.i, align 4
  %add566.i = add i32 %add563.i, %370
  %371 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx536.i, align 4
  %add569.i = add i32 %add566.i, %372
  %373 = ptrtoint ptr %arrayidx539.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx539.i, align 4
  %add572.i = add i32 %add569.i, %374
  %375 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx542.i, align 4
  %add575.i = add i32 %add572.i, %376
  %377 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx545.i, align 4
  %add578.i = add i32 %add575.i, %378
  %379 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx548.i, align 4
  %add581.i = add i32 %add578.i, %380
  %381 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx551.i, align 4
  %add584.i = add i32 %add581.i, %382
  %383 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx554.i, align 4
  %add587.i = add i32 %add584.i, %384
  br label %sw.epilog588.i

sw.epilog588.i:                                   ; preds = %sw.default556.i, %sw.bb527.i, %sw.bb501.i, %sw.bb496.i, %sw.bb476.i, %sw.bb471.i, %sw.bb457.i, %sw.bb446.i, %sw.bb441.i, %sw.bb436.i
  %tree_left.5.i = phi i32 [ %364, %sw.default556.i ], [ %344, %sw.bb527.i ], [ %add506.i, %sw.bb501.i ], [ %322, %sw.bb496.i ], [ %add481.i, %sw.bb476.i ], [ %304, %sw.bb471.i ], [ %294, %sw.bb457.i ], [ %add451.i, %sw.bb446.i ], [ %282, %sw.bb441.i ], [ %278, %sw.bb436.i ]
  %tree_right.5.i = phi i32 [ %add587.i, %sw.default556.i ], [ %add555.i, %sw.bb527.i ], [ %add526.i, %sw.bb501.i ], [ %324, %sw.bb496.i ], [ %add495.i, %sw.bb476.i ], [ %306, %sw.bb471.i ], [ %add470.i, %sw.bb457.i ], [ %add456.i, %sw.bb446.i ], [ %284, %sw.bb441.i ], [ %280, %sw.bb436.i ]
  %385 = lshr i32 %coef_node_start.12292.i, 1
  %mul.i155.i = and i32 %385, 1073741822
  %arrayidx.i156.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i155.i
  %386 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx.i156.i, align 4
  %and.i157.i = shl i32 %coef_node_start.12292.i, 3
  %mul1.i158.i = and i32 %and.i157.i, 24
  %shr.i159.i = ashr i32 %387, %mul1.i158.i
  %and2.i160.i = and i32 %shr.i159.i, 255
  %add.i161.i = add i32 %tree_right.5.i, %tree_left.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i161.i)
  %cmp.i162.i = icmp eq i32 %add.i161.i, 0
  br i1 %cmp.i162.i, label %sw.epilog588.i.vp9_tree_merge_probs.exit185.i_crit_edge, label %if.else.i177.i

sw.epilog588.i.vp9_tree_merge_probs.exit185.i_crit_edge: ; preds = %sw.epilog588.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit185.i

if.else.i177.i:                                   ; preds = %sw.epilog588.i
  call void @__sanitizer_cov_trace_pc() #11
  %388 = call i32 @llvm.smin.i32(i32 %add.i161.i, i32 20) #9
  %conv.i163.i = sext i32 %tree_left.5.i to i64
  %mul4.i164.i = shl nsw i64 %conv.i163.i, 8
  %shr5.i165.i = ashr i32 %add.i161.i, 1
  %conv6.i166.i = sext i32 %shr5.i165.i to i64
  %add7.i167.i = add nsw i64 %mul4.i164.i, %conv6.i166.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i153.i) #9
  %389 = ptrtoint ptr %remainder.i.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 -1, ptr %remainder.i.i.i153.i, align 4, !annotation !90
  %call.i.i.i168.i = call i64 @div_s64_rem(i64 noundef %add7.i167.i, i32 noundef %add.i161.i, ptr noundef nonnull %remainder.i.i.i153.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i153.i) #9
  %conv.i.i169.i = trunc i64 %call.i.i.i168.i to i32
  %390 = call i32 @llvm.smax.i32(i32 %conv.i.i169.i, i32 1) #9
  %391 = call i32 @llvm.umin.i32(i32 %390, i32 255) #9
  %arrayidx9.i170.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %388
  %392 = ptrtoint ptr %arrayidx9.i170.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx9.i170.i, align 4
  %sub.i171.i = sub i32 256, %393
  %mul10.i172.i = mul i32 %sub.i171.i, %and2.i160.i
  %mul11.i173.i = mul i32 %391, %393
  %add12.i174.i = add i32 %mul11.i173.i, 128
  %add.i.i175.i = add i32 %add12.i174.i, %mul10.i172.i
  %shr.i.i176.i = ashr i32 %add.i.i175.i, 8
  br label %vp9_tree_merge_probs.exit185.i

vp9_tree_merge_probs.exit185.i:                   ; preds = %if.else.i177.i, %sw.epilog588.i.vp9_tree_merge_probs.exit185.i_crit_edge
  %new_prob.0.i178.i = phi i32 [ %shr.i.i176.i, %if.else.i177.i ], [ %and2.i160.i, %sw.epilog588.i.vp9_tree_merge_probs.exit185.i_crit_edge ]
  %arrayidx16.i179.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i155.i
  %394 = ptrtoint ptr %arrayidx16.i179.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx16.i179.i, align 4
  %shl.i180.i = shl nuw i32 255, %mul1.i158.i
  %neg.i181.i = xor i32 %shl.i180.i, -1
  %and17.i182.i = and i32 %395, %neg.i181.i
  %shl18.i183.i = shl i32 %new_prob.0.i178.i, %mul1.i158.i
  %or.i184.i = or i32 %and17.i182.i, %shl18.i183.i
  store i32 %or.i184.i, ptr %arrayidx16.i179.i, align 4
  %add589.i = add nuw nsw i32 %coef_node_start.12292.i, 1
  %inc591.i = add nuw nsw i32 %node.5291.i, 1
  %exitcond310.not.i = icmp eq i32 %inc591.i, 10
  br i1 %exitcond310.not.i, label %for.end592.i, label %vp9_tree_merge_probs.exit185.i.for.body434.i_crit_edge

vp9_tree_merge_probs.exit185.i.for.body434.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body434.i

for.end592.i:                                     ; preds = %vp9_tree_merge_probs.exit185.i
  %cond594.i = select i1 %tobool427.not.i, i32 1910, i32 1932
  %cond596.i = select i1 %tobool427.not.i, i32 3029, i32 3042
  %arrayidx598.i = getelementptr i32, ptr %add.ptr22, i32 %cond596.i
  %396 = ptrtoint ptr %arrayidx598.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx598.i, align 4
  %add599.i = add nuw nsw i32 %cond596.i, 1
  %arrayidx600.i = getelementptr i32, ptr %add.ptr22, i32 %add599.i
  %398 = ptrtoint ptr %arrayidx600.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx600.i, align 4
  %400 = lshr exact i32 %cond594.i, 1
  %mul.i188.i = and i32 %400, 1022
  %arrayidx.i189.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i188.i
  %401 = ptrtoint ptr %arrayidx.i189.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %arrayidx.i189.i, align 4
  %and.i190.i = shl nuw nsw i32 %cond594.i, 3
  %mul1.i191.i = and i32 %and.i190.i, 16
  %shr.i192.i = ashr i32 %402, %mul1.i191.i
  %and2.i193.i = and i32 %shr.i192.i, 255
  %add.i194.i = add i32 %399, %397
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i194.i)
  %cmp.i195.i = icmp eq i32 %add.i194.i, 0
  br i1 %cmp.i195.i, label %for.end592.i.vp9_tree_merge_probs.exit218.i_crit_edge, label %if.else.i210.i

for.end592.i.vp9_tree_merge_probs.exit218.i_crit_edge: ; preds = %for.end592.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit218.i

if.else.i210.i:                                   ; preds = %for.end592.i
  call void @__sanitizer_cov_trace_pc() #11
  %403 = call i32 @llvm.smin.i32(i32 %add.i194.i, i32 20) #9
  %conv.i196.i = sext i32 %397 to i64
  %mul4.i197.i = shl nsw i64 %conv.i196.i, 8
  %shr5.i198.i = ashr i32 %add.i194.i, 1
  %conv6.i199.i = sext i32 %shr5.i198.i to i64
  %add7.i200.i = add nsw i64 %mul4.i197.i, %conv6.i199.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i186.i) #9
  %404 = ptrtoint ptr %remainder.i.i.i186.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 -1, ptr %remainder.i.i.i186.i, align 4, !annotation !90
  %call.i.i.i201.i = call i64 @div_s64_rem(i64 noundef %add7.i200.i, i32 noundef %add.i194.i, ptr noundef nonnull %remainder.i.i.i186.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i186.i) #9
  %conv.i.i202.i = trunc i64 %call.i.i.i201.i to i32
  %405 = call i32 @llvm.smax.i32(i32 %conv.i.i202.i, i32 1) #9
  %406 = call i32 @llvm.umin.i32(i32 %405, i32 255) #9
  %arrayidx9.i203.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %403
  %407 = ptrtoint ptr %arrayidx9.i203.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx9.i203.i, align 4
  %sub.i204.i = sub i32 256, %408
  %mul10.i205.i = mul i32 %sub.i204.i, %and2.i193.i
  %mul11.i206.i = mul i32 %406, %408
  %add12.i207.i = add i32 %mul11.i206.i, 128
  %add.i.i208.i = add i32 %add12.i207.i, %mul10.i205.i
  %shr.i.i209.i = ashr i32 %add.i.i208.i, 8
  br label %vp9_tree_merge_probs.exit218.i

vp9_tree_merge_probs.exit218.i:                   ; preds = %if.else.i210.i, %for.end592.i.vp9_tree_merge_probs.exit218.i_crit_edge
  %new_prob.0.i211.i = phi i32 [ %shr.i.i209.i, %if.else.i210.i ], [ %and2.i193.i, %for.end592.i.vp9_tree_merge_probs.exit218.i_crit_edge ]
  %arrayidx16.i212.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i188.i
  %409 = ptrtoint ptr %arrayidx16.i212.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx16.i212.i, align 4
  %shl.i213.i = shl nuw nsw i32 255, %mul1.i191.i
  %neg.i214.i = xor i32 %shl.i213.i, -1
  %and17.i215.i = and i32 %410, %neg.i214.i
  %shl18.i216.i = shl i32 %new_prob.0.i211.i, %mul1.i191.i
  %or.i217.i = or i32 %and17.i215.i, %shl18.i216.i
  store i32 %or.i217.i, ptr %arrayidx16.i212.i, align 4
  %cond602.i = select i1 %tobool427.not.i, i32 1943, i32 1952
  %cond604.i = select i1 %tobool427.not.i, i32 3044, i32 3056
  br label %for.cond609.preheader.i

for.cond609.preheader.i:                          ; preds = %for.end642.i.for.cond609.preheader.i_crit_edge, %vp9_tree_merge_probs.exit218.i
  %tree_i.5297.i = phi i32 [ 0, %vp9_tree_merge_probs.exit218.i ], [ %inc645.i, %for.end642.i.for.cond609.preheader.i_crit_edge ]
  %coef_count_node_start.6296.i = phi i32 [ %cond604.i, %vp9_tree_merge_probs.exit218.i ], [ %add643.i, %for.end642.i.for.cond609.preheader.i_crit_edge ]
  %coef_node_start.13295.i = phi i32 [ %cond602.i, %vp9_tree_merge_probs.exit218.i ], [ %add639.i, %for.end642.i.for.cond609.preheader.i_crit_edge ]
  %add620.i = or i32 %coef_count_node_start.6296.i, 1
  %arrayidx621.i = getelementptr i32, ptr %add.ptr22, i32 %add620.i
  %add622.i = or i32 %coef_count_node_start.6296.i, 2
  %arrayidx623.i = getelementptr i32, ptr %add.ptr22, i32 %add622.i
  %add624.i = or i32 %coef_count_node_start.6296.i, 3
  %arrayidx625.i = getelementptr i32, ptr %add.ptr22, i32 %add624.i
  %arrayidx629.i = getelementptr i32, ptr %add.ptr22, i32 %coef_count_node_start.6296.i
  br label %for.body612.i

for.body612.i:                                    ; preds = %vp9_tree_merge_probs.exit251.i.for.body612.i_crit_edge, %for.cond609.preheader.i
  %coef_node_start.14294.i = phi i32 [ %coef_node_start.13295.i, %for.cond609.preheader.i ], [ %add639.i, %vp9_tree_merge_probs.exit251.i.for.body612.i_crit_edge ]
  %node.6293.i = phi i32 [ 0, %for.cond609.preheader.i ], [ %inc641.i, %vp9_tree_merge_probs.exit251.i.for.body612.i_crit_edge ]
  %411 = zext i32 %node.6293.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %411, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %node.6293.i, label %sw.default627.i [
    i32 2, label %sw.bb614.i
    i32 1, label %sw.bb619.i
  ]

sw.bb614.i:                                       ; preds = %for.body612.i
  call void @__sanitizer_cov_trace_pc() #11
  %412 = ptrtoint ptr %arrayidx625.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx625.i, align 4
  br label %sw.epilog638.i

sw.bb619.i:                                       ; preds = %for.body612.i
  call void @__sanitizer_cov_trace_pc() #11
  %414 = ptrtoint ptr %arrayidx623.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx623.i, align 4
  %416 = ptrtoint ptr %arrayidx625.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx625.i, align 4
  %add626.i = add i32 %417, %415
  br label %sw.epilog638.i

sw.default627.i:                                  ; preds = %for.body612.i
  call void @__sanitizer_cov_trace_pc() #11
  %418 = ptrtoint ptr %arrayidx621.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx621.i, align 4
  %420 = ptrtoint ptr %arrayidx623.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx623.i, align 4
  %add634.i = add i32 %421, %419
  %422 = ptrtoint ptr %arrayidx625.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx625.i, align 4
  %add637.i = add i32 %add634.i, %423
  br label %sw.epilog638.i

sw.epilog638.i:                                   ; preds = %sw.default627.i, %sw.bb619.i, %sw.bb614.i
  %tree_left.6.in.i = phi ptr [ %arrayidx629.i, %sw.default627.i ], [ %arrayidx621.i, %sw.bb619.i ], [ %arrayidx623.i, %sw.bb614.i ]
  %tree_right.6.i = phi i32 [ %add637.i, %sw.default627.i ], [ %add626.i, %sw.bb619.i ], [ %413, %sw.bb614.i ]
  %424 = ptrtoint ptr %tree_left.6.in.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %tree_left.6.i = load i32, ptr %tree_left.6.in.i, align 4
  %div.i220.i = sdiv i32 %coef_node_start.14294.i, 4
  %mul.i221.i = shl nsw i32 %div.i220.i, 1
  %arrayidx.i222.i = getelementptr i32, ptr %add.ptr17, i32 %mul.i221.i
  %425 = ptrtoint ptr %arrayidx.i222.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %arrayidx.i222.i, align 4
  %and.i223.i = shl i32 %coef_node_start.14294.i, 3
  %mul1.i224.i = and i32 %and.i223.i, 24
  %shr.i225.i = ashr i32 %426, %mul1.i224.i
  %and2.i226.i = and i32 %shr.i225.i, 255
  %add.i227.i = add i32 %tree_left.6.i, %tree_right.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i227.i)
  %cmp.i228.i = icmp eq i32 %add.i227.i, 0
  br i1 %cmp.i228.i, label %sw.epilog638.i.vp9_tree_merge_probs.exit251.i_crit_edge, label %if.else.i243.i

sw.epilog638.i.vp9_tree_merge_probs.exit251.i_crit_edge: ; preds = %sw.epilog638.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vp9_tree_merge_probs.exit251.i

if.else.i243.i:                                   ; preds = %sw.epilog638.i
  call void @__sanitizer_cov_trace_pc() #11
  %427 = call i32 @llvm.smin.i32(i32 %add.i227.i, i32 20) #9
  %conv.i229.i = sext i32 %tree_left.6.i to i64
  %mul4.i230.i = shl nsw i64 %conv.i229.i, 8
  %shr5.i231.i = ashr i32 %add.i227.i, 1
  %conv6.i232.i = sext i32 %shr5.i231.i to i64
  %add7.i233.i = add nsw i64 %mul4.i230.i, %conv6.i232.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i219.i) #9
  %428 = ptrtoint ptr %remainder.i.i.i219.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 -1, ptr %remainder.i.i.i219.i, align 4, !annotation !90
  %call.i.i.i234.i = call i64 @div_s64_rem(i64 noundef %add7.i233.i, i32 noundef %add.i227.i, ptr noundef nonnull %remainder.i.i.i219.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i219.i) #9
  %conv.i.i235.i = trunc i64 %call.i.i.i234.i to i32
  %429 = call i32 @llvm.smax.i32(i32 %conv.i.i235.i, i32 1) #9
  %430 = call i32 @llvm.umin.i32(i32 %429, i32 255) #9
  %arrayidx9.i236.i = getelementptr [21 x i32], ptr @count_to_update_factor, i32 0, i32 %427
  %431 = ptrtoint ptr %arrayidx9.i236.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx9.i236.i, align 4
  %sub.i237.i = sub i32 256, %432
  %mul10.i238.i = mul i32 %sub.i237.i, %and2.i226.i
  %mul11.i239.i = mul i32 %430, %432
  %add12.i240.i = add i32 %mul11.i239.i, 128
  %add.i.i241.i = add i32 %add12.i240.i, %mul10.i238.i
  %shr.i.i242.i = ashr i32 %add.i.i241.i, 8
  br label %vp9_tree_merge_probs.exit251.i

vp9_tree_merge_probs.exit251.i:                   ; preds = %if.else.i243.i, %sw.epilog638.i.vp9_tree_merge_probs.exit251.i_crit_edge
  %new_prob.0.i244.i = phi i32 [ %shr.i.i242.i, %if.else.i243.i ], [ %and2.i226.i, %sw.epilog638.i.vp9_tree_merge_probs.exit251.i_crit_edge ]
  %arrayidx16.i245.i = getelementptr i32, ptr %add.ptr20, i32 %mul.i221.i
  %433 = ptrtoint ptr %arrayidx16.i245.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx16.i245.i, align 4
  %shl.i246.i = shl nuw i32 255, %mul1.i224.i
  %neg.i247.i = xor i32 %shl.i246.i, -1
  %and17.i248.i = and i32 %434, %neg.i247.i
  %shl18.i249.i = shl i32 %new_prob.0.i244.i, %mul1.i224.i
  %or.i250.i = or i32 %and17.i248.i, %shl18.i249.i
  store i32 %or.i250.i, ptr %arrayidx16.i245.i, align 4
  %add639.i = add i32 %coef_node_start.14294.i, 1
  %inc641.i = add nuw nsw i32 %node.6293.i, 1
  %exitcond311.not.i = icmp eq i32 %inc641.i, 3
  br i1 %exitcond311.not.i, label %for.end642.i, label %vp9_tree_merge_probs.exit251.i.for.body612.i_crit_edge

vp9_tree_merge_probs.exit251.i.for.body612.i_crit_edge: ; preds = %vp9_tree_merge_probs.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body612.i

for.end642.i:                                     ; preds = %vp9_tree_merge_probs.exit251.i
  %add643.i = add nuw nsw i32 %coef_count_node_start.6296.i, 4
  %inc645.i = add nuw nsw i32 %tree_i.5297.i, 1
  %exitcond312.not.i = icmp eq i32 %inc645.i, 3
  br i1 %exitcond312.not.i, label %for.inc647.i, label %for.end642.i.for.cond609.preheader.i_crit_edge

for.end642.i.for.cond609.preheader.i_crit_edge:   ; preds = %for.end642.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond609.preheader.i

for.inc647.i:                                     ; preds = %for.end642.i
  %inc648.i = add nuw nsw i32 %mvd_i.0298.i, 1
  %exitcond313.not.i = icmp eq i32 %inc648.i, 2
  br i1 %exitcond313.not.i, label %for.inc647.i.adapt_coef_probs.exit_crit_edge, label %for.inc647.i.for.body426.i_crit_edge

for.inc647.i.for.body426.i_crit_edge:             ; preds = %for.inc647.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body426.i

for.inc647.i.adapt_coef_probs.exit_crit_edge:     ; preds = %for.inc647.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adapt_coef_probs.exit

adapt_coef_probs.exit:                            ; preds = %for.inc647.i.adapt_coef_probs.exit_crit_edge, %for.end37.i.adapt_coef_probs.exit_crit_edge
  %435 = call ptr @memcpy(ptr %add.ptr17, ptr %add.ptr20, i32 3968)
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49932, i32 noundef 0) #9
  br label %if.end32

if.end32:                                         ; preds = %adapt_coef_probs.exit, %land.lhs.true.if.end32_crit_edge, %do.end13.if.end32_crit_edge
  %uglygep = getelementptr i8, ptr %3, i32 1284
  %436 = call ptr @memset(ptr %uglygep, i32 0, i32 12)
  %cur_frame35 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 20
  %437 = ptrtoint ptr %cur_frame35 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %cur_frame35, align 4
  %prev_frame36 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 21
  %439 = ptrtoint ptr %prev_frame36 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %438, ptr %prev_frame36, align 4
  %tobool.not.i91 = icmp eq ptr %438, null
  br i1 %tobool.not.i91, label %if.end32.codec_vp9_update_ref.exit_crit_edge, label %if.end.i

if.end32.codec_vp9_update_ref.exit_crit_edge:     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

if.end.i:                                         ; preds = %if.end32
  %type.i = getelementptr inbounds %struct.vp9_frame, ptr %438, i32 0, i32 5
  %440 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %cmp.i = icmp eq i32 %441, 0
  br i1 %cmp.i, label %if.end.i.for.body.i95.preheader_crit_edge, label %cond.end.i

if.end.i.for.body.i95.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95.preheader

cond.end.i:                                       ; preds = %if.end.i
  %refresh_frame_flags2.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 9
  %442 = ptrtoint ptr %refresh_frame_flags2.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %refresh_frame_flags2.i, align 2
  %conv.i92 = zext i16 %443 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %443)
  %tobool3.not36.i = icmp eq i16 %443, 0
  br i1 %tobool3.not36.i, label %cond.end.i.for.end.i96_crit_edge, label %cond.end.i.for.body.i95.preheader_crit_edge

cond.end.i.for.body.i95.preheader_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95.preheader

cond.end.i.for.end.i96_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i96

for.body.i95.preheader:                           ; preds = %cond.end.i.for.body.i95.preheader_crit_edge, %if.end.i.for.body.i95.preheader_crit_edge
  %mask.038.i.ph = phi i32 [ 255, %if.end.i.for.body.i95.preheader_crit_edge ], [ %conv.i92, %cond.end.i.for.body.i95.preheader_crit_edge ]
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %for.body.i95.preheader
  %mask.038.i = phi i32 [ %447, %for.body.i95.for.body.i95_crit_edge ], [ %mask.038.i.ph, %for.body.i95.preheader ]
  %ref_index.037.i = phi i32 [ %inc.i94, %for.body.i95.for.body.i95_crit_edge ], [ 0, %for.body.i95.preheader ]
  %arrayidx.i93 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %ref_index.037.i
  %444 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx.i93, align 4
  %arrayidx4.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %ref_index.037.i
  %446 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %445, ptr %arrayidx4.i, align 4
  %inc.i94 = add nuw nsw i32 %ref_index.037.i, 1
  %447 = lshr i32 %mask.038.i, 1
  %tobool3.not.i = icmp ult i32 %mask.038.i, 2
  br i1 %tobool3.not.i, label %for.body.i95.for.end.i96_crit_edge, label %for.body.i95.for.body.i95_crit_edge

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95

for.body.i95.for.end.i96_crit_edge:               ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i96

for.end.i96:                                      ; preds = %for.body.i95.for.end.i96_crit_edge, %cond.end.i.for.end.i96_crit_edge
  %ref_index.0.lcssa.i = phi i32 [ 0, %cond.end.i.for.end.i96_crit_edge ], [ %inc.i94, %for.body.i95.for.end.i96_crit_edge ]
  %show_existing_frame.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %448 = ptrtoint ptr %show_existing_frame.i to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %show_existing_frame.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %449)
  %tobool5.not.i = icmp eq i16 %449, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ref_index.0.lcssa.i)
  %cmp939.i = icmp slt i32 %ref_index.0.lcssa.i, 8
  %or.cond.i = select i1 %tobool5.not.i, i1 %cmp939.i, i1 false
  br i1 %or.cond.i, label %for.body11.i, label %for.end.i96.codec_vp9_update_ref.exit_crit_edge

for.end.i96.codec_vp9_update_ref.exit_crit_edge:  ; preds = %for.end.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i:                                     ; preds = %for.end.i96
  %arrayidx13.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %ref_index.0.lcssa.i
  %450 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %ref_index.0.lcssa.i
  %452 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %arrayidx15.i, align 4
  %inc17.i = add nuw nsw i32 %ref_index.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i)
  %exitcond.not.i97 = icmp eq i32 %inc17.i, 8
  br i1 %exitcond.not.i97, label %for.body11.i.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.1

for.body11.i.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.1:                                   ; preds = %for.body11.i
  %arrayidx13.i.1 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i
  %453 = ptrtoint ptr %arrayidx13.i.1 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %arrayidx13.i.1, align 4
  %arrayidx15.i.1 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i
  %455 = ptrtoint ptr %arrayidx15.i.1 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %454, ptr %arrayidx15.i.1, align 4
  %inc17.i.1 = add nuw nsw i32 %ref_index.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i.1)
  %exitcond.not.i97.1 = icmp eq i32 %inc17.i.1, 8
  br i1 %exitcond.not.i97.1, label %for.body11.i.1.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.2

for.body11.i.1.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.2:                                   ; preds = %for.body11.i.1
  %arrayidx13.i.2 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i.1
  %456 = ptrtoint ptr %arrayidx13.i.2 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx13.i.2, align 4
  %arrayidx15.i.2 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i.1
  %458 = ptrtoint ptr %arrayidx15.i.2 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %457, ptr %arrayidx15.i.2, align 4
  %inc17.i.2 = add nuw nsw i32 %ref_index.0.lcssa.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i.2)
  %exitcond.not.i97.2 = icmp eq i32 %inc17.i.2, 8
  br i1 %exitcond.not.i97.2, label %for.body11.i.2.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.3

for.body11.i.2.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.3:                                   ; preds = %for.body11.i.2
  %arrayidx13.i.3 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i.2
  %459 = ptrtoint ptr %arrayidx13.i.3 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %arrayidx13.i.3, align 4
  %arrayidx15.i.3 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i.2
  %461 = ptrtoint ptr %arrayidx15.i.3 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %arrayidx15.i.3, align 4
  %inc17.i.3 = add nuw nsw i32 %ref_index.0.lcssa.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i.3)
  %exitcond.not.i97.3 = icmp eq i32 %inc17.i.3, 8
  br i1 %exitcond.not.i97.3, label %for.body11.i.3.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.4

for.body11.i.3.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.4:                                   ; preds = %for.body11.i.3
  %arrayidx13.i.4 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i.3
  %462 = ptrtoint ptr %arrayidx13.i.4 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx13.i.4, align 4
  %arrayidx15.i.4 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i.3
  %464 = ptrtoint ptr %arrayidx15.i.4 to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %463, ptr %arrayidx15.i.4, align 4
  %inc17.i.4 = add nuw nsw i32 %ref_index.0.lcssa.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i.4)
  %exitcond.not.i97.4 = icmp eq i32 %inc17.i.4, 8
  br i1 %exitcond.not.i97.4, label %for.body11.i.4.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.5

for.body11.i.4.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.5:                                   ; preds = %for.body11.i.4
  %arrayidx13.i.5 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i.4
  %465 = ptrtoint ptr %arrayidx13.i.5 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx13.i.5, align 4
  %arrayidx15.i.5 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i.4
  %467 = ptrtoint ptr %arrayidx15.i.5 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %466, ptr %arrayidx15.i.5, align 4
  %inc17.i.5 = add nuw nsw i32 %ref_index.0.lcssa.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i.5)
  %exitcond.not.i97.5 = icmp eq i32 %inc17.i.5, 8
  br i1 %exitcond.not.i97.5, label %for.body11.i.5.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.6

for.body11.i.5.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.6:                                   ; preds = %for.body11.i.5
  %arrayidx13.i.6 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i.5
  %468 = ptrtoint ptr %arrayidx13.i.6 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx13.i.6, align 4
  %arrayidx15.i.6 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i.5
  %470 = ptrtoint ptr %arrayidx15.i.6 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %arrayidx15.i.6, align 4
  %inc17.i.6 = add nuw nsw i32 %ref_index.0.lcssa.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc17.i.6)
  %exitcond.not.i97.6 = icmp eq i32 %inc17.i.6, 8
  br i1 %exitcond.not.i97.6, label %for.body11.i.6.codec_vp9_update_ref.exit_crit_edge, label %for.body11.i.7

for.body11.i.6.codec_vp9_update_ref.exit_crit_edge: ; preds = %for.body11.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_ref.exit

for.body11.i.7:                                   ; preds = %for.body11.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.i.7 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %inc17.i.6
  %471 = ptrtoint ptr %arrayidx13.i.7 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx13.i.7, align 4
  %arrayidx15.i.7 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %inc17.i.6
  %473 = ptrtoint ptr %arrayidx15.i.7 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %472, ptr %arrayidx15.i.7, align 4
  br label %codec_vp9_update_ref.exit

codec_vp9_update_ref.exit:                        ; preds = %for.body11.i.7, %for.body11.i.6.codec_vp9_update_ref.exit_crit_edge, %for.body11.i.5.codec_vp9_update_ref.exit_crit_edge, %for.body11.i.4.codec_vp9_update_ref.exit_crit_edge, %for.body11.i.3.codec_vp9_update_ref.exit_crit_edge, %for.body11.i.2.codec_vp9_update_ref.exit_crit_edge, %for.body11.i.1.codec_vp9_update_ref.exit_crit_edge, %for.body11.i.codec_vp9_update_ref.exit_crit_edge, %for.end.i96.codec_vp9_update_ref.exit_crit_edge, %if.end32.codec_vp9_update_ref.exit_crit_edge
  %474 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %priv, align 4
  %workspace_vaddr.i = getelementptr inbounds %struct.codec_vp9, ptr %475, i32 0, i32 2
  %476 = ptrtoint ptr %workspace_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %workspace_vaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %477, i32 30005248
  %rpm_param.i = getelementptr inbounds %struct.codec_vp9, ptr %475, i32 0, i32 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %codec_vp9_update_ref.exit
  %i.017.i = phi i32 [ 0, %codec_vp9_update_ref.exit ], [ %add7.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ]
  %add.i98 = or i32 %i.017.i, 3
  %arrayidx.i99 = getelementptr i16, ptr %add.ptr.i, i32 %add.i98
  %478 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %arrayidx.i99, align 2
  %arrayidx5.i = getelementptr [256 x i16], ptr %rpm_param.i, i32 0, i32 %i.017.i
  %480 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %479, ptr %arrayidx5.i, align 2
  %sub.1.i = or i32 %i.017.i, 2
  %arrayidx.1.i = getelementptr i16, ptr %add.ptr.i, i32 %sub.1.i
  %481 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %arrayidx.1.i, align 2
  %add4.1.i = or i32 %i.017.i, 1
  %arrayidx5.1.i = getelementptr [256 x i16], ptr %rpm_param.i, i32 0, i32 %add4.1.i
  %483 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %482, ptr %arrayidx5.1.i, align 2
  %arrayidx.2.i = getelementptr i16, ptr %add.ptr.i, i32 %add4.1.i
  %484 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %arrayidx.2.i, align 2
  %arrayidx5.2.i = getelementptr [256 x i16], ptr %rpm_param.i, i32 0, i32 %sub.1.i
  %486 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 %485, ptr %arrayidx5.2.i, align 2
  %arrayidx.3.i = getelementptr i16, ptr %add.ptr.i, i32 %i.017.i
  %487 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %487)
  %488 = load i16, ptr %arrayidx.3.i, align 2
  %arrayidx5.3.i = getelementptr [256 x i16], ptr %rpm_param.i, i32 0, i32 %add.i98
  %489 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 %488, ptr %arrayidx5.3.i, align 2
  %add7.i = add nuw nsw i32 %i.017.i, 4
  %cmp.i100 = icmp ult i32 %i.017.i, 252
  br i1 %cmp.i100, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, label %codec_vp9_fetch_rpm.exit

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

codec_vp9_fetch_rpm.exit:                         ; preds = %for.cond1.preheader.i
  %width.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 10
  %height.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 11
  %490 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %490)
  %491 = load i16, ptr %height.i, align 2
  %conv1.i = zext i16 %491 to i32
  %add2.i = add nuw nsw i32 %conv1.i, 31
  %492 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %width.i, align 2
  %conv.i101 = zext i16 %493 to i32
  %add.i102 = add nuw nsw i32 %conv.i101, 63
  %div569.i = lshr i32 %add.i102, 6
  %div971.i = lshr i32 %add2.i, 6
  %rem6.i = lshr i32 %add2.i, 5
  %rem6.lobit.i = and i32 %rem6.i, 1
  %cond14.i = add nuw nsw i32 %rem6.lobit.i, %div971.i
  %mul.i = mul nuw nsw i32 %cond14.i, %div569.i
  %lcu_total.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 15
  %494 = ptrtoint ptr %lcu_total.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %mul.i, ptr %lcu_total.i, align 4
  %bit_depth.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 25
  %495 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %bit_depth.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %496)
  %cmp.i103 = icmp eq i16 %496, 10
  %is_10bit.0.i = zext i1 %cmp.i103 to i32
  %width17.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 6
  %497 = ptrtoint ptr %width17.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %width17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %498, i32 %conv.i101)
  %cmp20.not.i = icmp eq i32 %498, %conv.i101
  br i1 %cmp20.not.i, label %lor.lhs.false.i, label %codec_vp9_fetch_rpm.exit.if.then31.i_crit_edge

codec_vp9_fetch_rpm.exit.if.then31.i_crit_edge:   ; preds = %codec_vp9_fetch_rpm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %codec_vp9_fetch_rpm.exit
  %height22.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 7
  %499 = ptrtoint ptr %height22.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %height22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %500, i32 %conv1.i)
  %cmp25.not.i = icmp eq i32 %500, %conv1.i
  br i1 %cmp25.not.i, label %lor.lhs.false27.i, label %lor.lhs.false.i.if.then31.i_crit_edge

lor.lhs.false.i.if.then31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i
  %is_10bit28.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 5
  %501 = ptrtoint ptr %is_10bit28.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %is_10bit28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %502, i32 %is_10bit.0.i)
  %cmp29.not.i = icmp eq i32 %502, %is_10bit.0.i
  br i1 %cmp29.not.i, label %lor.lhs.false27.i.if.end32.i_crit_edge, label %lor.lhs.false27.i.if.then31.i_crit_edge

lor.lhs.false27.i.if.then31.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

lor.lhs.false27.i.if.end32.i_crit_edge:           ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then31.i:                                      ; preds = %lor.lhs.false27.i.if.then31.i_crit_edge, %lor.lhs.false.i.if.then31.i_crit_edge, %codec_vp9_fetch_rpm.exit.if.then31.i_crit_edge
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %lor.lhs.false27.i.if.end32.i_crit_edge
  %tobool38.not = phi i1 [ false, %if.then31.i ], [ true, %lor.lhs.false27.i.if.end32.i_crit_edge ]
  %src_changed.0.i = phi i32 [ 1, %if.then31.i ], [ 0, %lor.lhs.false27.i.if.end32.i_crit_edge ]
  %503 = ptrtoint ptr %width17.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %conv.i101, ptr %width17.i, align 4
  %height38.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 7
  %504 = ptrtoint ptr %height38.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %conv1.i, ptr %height38.i, align 4
  %is_10bit39.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 5
  %505 = ptrtoint ptr %is_10bit39.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %is_10bit.0.i, ptr %is_10bit39.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_process_rpm.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_threaded_isr, %if.then43.i)) #9
          to label %codec_vp9_process_rpm.exit [label %if.then43.i], !srcloc !89

if.then43.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %506 = ptrtoint ptr %width17.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %width17.i, align 4
  %508 = ptrtoint ptr %height38.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %height38.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_process_rpm.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.30, i32 noundef %507, i32 noundef %509, i32 noundef %is_10bit.0.i, i32 noundef %src_changed.0.i) #9
  br label %codec_vp9_process_rpm.exit

codec_vp9_process_rpm.exit:                       ; preds = %if.then43.i, %if.end32.i
  br i1 %tobool38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %codec_vp9_process_rpm.exit
  %510 = ptrtoint ptr %width17.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %width17.i, align 4
  %512 = ptrtoint ptr %height38.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %height38.i, align 4
  call void @amvdec_src_change(ptr noundef %sess, i32 noundef %511, i32 noundef %513, i32 noundef 16) #9
  %514 = ptrtoint ptr %cur_frame35 to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr null, ptr %cur_frame35, align 4
  call fastcc void @codec_vp9_show_frame(ptr noundef %sess)
  %frames_num = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 9
  %515 = ptrtoint ptr %frames_num to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %frames_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %516)
  %tobool41.not = icmp eq i32 %516, 0
  br i1 %tobool41.not, label %if.then39.unlock_crit_edge, label %if.then42

if.then39.unlock_crit_edge:                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then42:                                        ; preds = %if.then39
  %ref_info.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 14
  %517 = ptrtoint ptr %ref_info.i to i32
  call void @__asan_load2_noabort(i32 %517)
  %518 = load i16, ptr %ref_info.i, align 2
  %519 = lshr i16 %518, 9
  %520 = and i16 %519, 7
  %and.i104 = zext i16 %520 to i32
  %arrayidx.i105 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %and.i104
  %521 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %arrayidx.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %cmp2.i = icmp slt i32 %522, 0
  br i1 %cmp2.i, label %if.then42.cleanup.i_crit_edge, label %do.end.i

if.then42.cleanup.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

do.end.i:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %522) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.then42.cleanup.i_crit_edge
  %523 = ptrtoint ptr %ref_info.i to i32
  call void @__asan_load2_noabort(i32 %523)
  %524 = load i16, ptr %ref_info.i, align 2
  %525 = lshr i16 %524, 5
  %526 = and i16 %525, 7
  %and.1.i = zext i16 %526 to i32
  %arrayidx.1.i106 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %and.1.i
  %527 = ptrtoint ptr %arrayidx.1.i106 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %arrayidx.1.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %528)
  %cmp2.1.i = icmp slt i32 %528, 0
  br i1 %cmp2.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %do.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

do.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %528) #13
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %do.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %529 = ptrtoint ptr %ref_info.i to i32
  call void @__asan_load2_noabort(i32 %529)
  %530 = load i16, ptr %ref_info.i, align 2
  %531 = lshr i16 %530, 1
  %532 = and i16 %531, 7
  %and.2.i = zext i16 %532 to i32
  %arrayidx.2.i107 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %and.2.i
  %533 = ptrtoint ptr %arrayidx.2.i107 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %arrayidx.2.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %534)
  %cmp2.2.i = icmp slt i32 %534, 0
  br i1 %cmp2.2.i, label %cleanup.1.i.unlock_crit_edge, label %do.end.2.i

cleanup.1.i.unlock_crit_edge:                     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

do.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %534) #13
  br label %unlock

if.end44:                                         ; preds = %codec_vp9_process_rpm.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @codec_vp9_process_lf(ptr noundef nonnull %3)
  call fastcc void @codec_vp9_process_frame(ptr noundef %sess)
  call fastcc void @codec_vp9_show_frame(ptr noundef %sess)
  br label %unlock

unlock:                                           ; preds = %if.end44, %do.end.2.i, %cleanup.1.i.unlock_crit_edge, %if.then39.unlock_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_setup_workspace(ptr nocapture noundef readonly %sess, ptr nocapture noundef readonly %vp9) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform, align 4
  %revision2 = getelementptr inbounds %struct.vdec_platform, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %revision2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision2, align 4
  %workspace_paddr = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 3
  %6 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %workspace_paddr, align 4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 53284, i32 noundef %7) #9
  %add3 = add i32 %7, 30005248
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49924, i32 noundef %add3) #9
  %add4 = add i32 %7, 409600
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49928, i32 noundef %add4) #9
  %add5 = add i32 %7, 415744
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49940, i32 noundef %add5) #9
  %add6 = add i32 %7, 423936
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49944, i32 noundef %add6) #9
  %add7 = add i32 %7, 434176
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49948, i32 noundef %add7) #9
  %add8 = add i32 %7, 436224
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49952, i32 noundef %add8) #9
  %add9 = add i32 %7, 438272
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49972, i32 noundef %add9) #9
  %8 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform, align 4
  %revision11 = getelementptr inbounds %struct.vdec_platform, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %revision11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp ugt i32 %11, 2
  %add12 = add i32 %7, 471040
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54328, i32 noundef %add12) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54288, i32 noundef %add12) #9
  %add14 = add i32 %7, 995328
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54292, i32 noundef %add14) #9
  %add15 = add i32 %7, 1519616
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49964, i32 noundef %add15) #9
  %add16 = add i32 %7, 1574912
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49956, i32 noundef %add16) #9
  %add17 = add i32 %7, 1595392
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49960, i32 noundef %add17) #9
  %add18 = add i32 %7, 30005504
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49980, i32 noundef %add18) #9
  %is_10bit = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 5
  %12 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp ugt i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i = icmp ne i32 %13, 0
  %narrow.i = and i1 %cmp.i, %tobool.i
  br i1 %narrow.i, label %if.then19, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add20 = add i32 %7, 1607680
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55528, i32 noundef %add20) #9
  %add22 = add i32 %7, 1617920
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55532, i32 noundef %add22) #9
  %mmu_map_paddr = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %mmu_map_paddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmu_map_paddr, align 4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49188, i32 noundef %15) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_read_dos(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @codec_hevc_free_fbc_buffers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_dst_buf_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @codec_hevc_setup_buffers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_abort(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @codec_hevc_setup_decode_head(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_process_lf(ptr nocapture noundef %vp9) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_ref_delta_enabled = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 16
  %0 = ptrtoint ptr %mode_ref_delta_enabled to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode_ref_delta_enabled, align 2
  %conv = trunc i16 %1 to i8
  %mode_ref_delta_enabled1 = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %mode_ref_delta_enabled1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %mode_ref_delta_enabled1, align 4
  %sharpness_level = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 24
  %3 = ptrtoint ptr %sharpness_level to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sharpness_level, align 2
  %conv2 = zext i16 %4 to i32
  %sharpness_level4 = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %sharpness_level4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %sharpness_level4, align 4
  %filter_level = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 23
  %6 = ptrtoint ptr %filter_level to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %filter_level, align 2
  %conv5 = zext i16 %7 to i32
  %default_filt_lvl = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 16
  %8 = ptrtoint ptr %default_filt_lvl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv5, ptr %default_filt_lvl, align 4
  %seg_enabled = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 34
  %9 = ptrtoint ptr %seg_enabled to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %seg_enabled, align 2
  %conv6 = trunc i16 %10 to i8
  %seg_4lf = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 19
  %11 = ptrtoint ptr %seg_4lf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %seg_4lf, align 4
  %seg_abs_delta = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 35
  %12 = ptrtoint ptr %seg_abs_delta to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %seg_abs_delta, align 2
  %conv7 = trunc i16 %13 to i8
  %abs_delta = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %abs_delta to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %abs_delta, align 1
  %ref_deltas = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 17
  %15 = ptrtoint ptr %ref_deltas to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ref_deltas, align 2
  %conv10 = trunc i16 %16 to i8
  %arrayidx13 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 5, i32 0
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10, ptr %arrayidx13, align 1
  %arrayidx.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 18
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.1, align 2
  %conv10.1 = trunc i16 %19 to i8
  %arrayidx13.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10.1, ptr %arrayidx13.1, align 1
  %arrayidx.2 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 19
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.2, align 2
  %conv10.2 = trunc i16 %22 to i8
  %arrayidx13.2 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 5, i32 2
  %23 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.2, ptr %arrayidx13.2, align 1
  %arrayidx.3 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 20
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.3, align 2
  %conv10.3 = trunc i16 %25 to i8
  %arrayidx13.3 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 5, i32 3
  %26 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.3, ptr %arrayidx13.3, align 1
  %mode_deltas = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 21
  %27 = ptrtoint ptr %mode_deltas to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mode_deltas, align 2
  %conv19 = trunc i16 %28 to i8
  %arrayidx22 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 7, i32 0
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv19, ptr %arrayidx22, align 1
  %arrayidx18.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 22
  %30 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx18.1, align 2
  %conv19.1 = trunc i16 %31 to i8
  %arrayidx22.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 18, i32 7, i32 1
  %32 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv19.1, ptr %arrayidx22.1, align 1
  %seg_lf_info = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 36
  %33 = ptrtoint ptr %seg_lf_info to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %seg_lf_info, align 2
  %35 = lshr i16 %34, 14
  %36 = and i16 %35, 2
  %37 = zext i16 %36 to i32
  %arrayidx33 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 0
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx33, align 4
  %arrayidx30.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 37
  %39 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx30.1, align 2
  %41 = lshr i16 %40, 14
  %42 = and i16 %41, 2
  %43 = zext i16 %42 to i32
  %arrayidx33.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 1
  %44 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx33.1, align 4
  %arrayidx30.2 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 38
  %45 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx30.2, align 2
  %47 = lshr i16 %46, 14
  %48 = and i16 %47, 2
  %49 = zext i16 %48 to i32
  %arrayidx33.2 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 2
  %50 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx33.2, align 4
  %arrayidx30.3 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 39
  %51 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx30.3, align 2
  %53 = lshr i16 %52, 14
  %54 = and i16 %53, 2
  %55 = zext i16 %54 to i32
  %arrayidx33.3 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 3
  %56 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx33.3, align 4
  %arrayidx30.4 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 40
  %57 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx30.4, align 2
  %59 = lshr i16 %58, 14
  %60 = and i16 %59, 2
  %61 = zext i16 %60 to i32
  %arrayidx33.4 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 4
  %62 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx33.4, align 4
  %arrayidx30.5 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 41
  %63 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx30.5, align 2
  %65 = lshr i16 %64, 14
  %66 = and i16 %65, 2
  %67 = zext i16 %66 to i32
  %arrayidx33.5 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 5
  %68 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx33.5, align 4
  %arrayidx30.6 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 42
  %69 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx30.6, align 2
  %71 = lshr i16 %70, 14
  %72 = and i16 %71, 2
  %73 = zext i16 %72 to i32
  %arrayidx33.6 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 6
  %74 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx33.6, align 4
  %arrayidx30.7 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 4, i32 0, i32 0, i32 43
  %75 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx30.7, align 2
  %77 = lshr i16 %76, 14
  %78 = and i16 %77, 2
  %79 = zext i16 %78 to i32
  %arrayidx33.7 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 6, i32 7
  %80 = ptrtoint ptr %arrayidx33.7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx33.7, align 4
  %81 = and i16 %34, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool45.not = icmp eq i16 %81, 0
  %and49 = and i16 %34, 63
  %sub = sub nsw i16 0, %and49
  %cond54 = select i1 %tobool45.not, i16 %and49, i16 %sub
  %arrayidx58 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %cond54, ptr %arrayidx58, align 2
  %83 = and i16 %40, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool45.not.1 = icmp eq i16 %83, 0
  %and49.1 = and i16 %40, 63
  %sub.1 = sub nsw i16 0, %and49.1
  %cond54.1 = select i1 %tobool45.not.1, i16 %and49.1, i16 %sub.1
  %arrayidx58.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 1, i32 1
  %84 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %cond54.1, ptr %arrayidx58.1, align 2
  %85 = and i16 %46, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool45.not.2 = icmp eq i16 %85, 0
  %and49.2 = and i16 %46, 63
  %sub.2 = sub nsw i16 0, %and49.2
  %cond54.2 = select i1 %tobool45.not.2, i16 %and49.2, i16 %sub.2
  %arrayidx58.2 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 2, i32 1
  %86 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %cond54.2, ptr %arrayidx58.2, align 2
  %87 = and i16 %52, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool45.not.3 = icmp eq i16 %87, 0
  %and49.3 = and i16 %52, 63
  %sub.3 = sub nsw i16 0, %and49.3
  %cond54.3 = select i1 %tobool45.not.3, i16 %and49.3, i16 %sub.3
  %arrayidx58.3 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 3, i32 1
  %88 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %cond54.3, ptr %arrayidx58.3, align 2
  %89 = and i16 %58, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool45.not.4 = icmp eq i16 %89, 0
  %and49.4 = and i16 %58, 63
  %sub.4 = sub nsw i16 0, %and49.4
  %cond54.4 = select i1 %tobool45.not.4, i16 %and49.4, i16 %sub.4
  %arrayidx58.4 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 4, i32 1
  %90 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %cond54.4, ptr %arrayidx58.4, align 2
  %91 = and i16 %64, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool45.not.5 = icmp eq i16 %91, 0
  %and49.5 = and i16 %64, 63
  %sub.5 = sub nsw i16 0, %and49.5
  %cond54.5 = select i1 %tobool45.not.5, i16 %and49.5, i16 %sub.5
  %arrayidx58.5 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 5, i32 1
  %92 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %cond54.5, ptr %arrayidx58.5, align 2
  %93 = and i16 %70, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool45.not.6 = icmp eq i16 %93, 0
  %and49.6 = and i16 %70, 63
  %sub.6 = sub nsw i16 0, %and49.6
  %cond54.6 = select i1 %tobool45.not.6, i16 %and49.6, i16 %sub.6
  %arrayidx58.6 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 6, i32 1
  %94 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %cond54.6, ptr %arrayidx58.6, align 2
  %95 = and i16 %76, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool45.not.7 = icmp eq i16 %95, 0
  %and49.7 = and i16 %76, 63
  %sub.7 = sub nsw i16 0, %and49.7
  %cond54.7 = select i1 %tobool45.not.7, i16 %and49.7, i16 %sub.7
  %arrayidx58.7 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 19, i32 5, i32 7, i32 1
  %96 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %cond54.7, ptr %arrayidx58.7, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_process_frame(ptr noundef %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %show_frame = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %show_frame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %show_frame, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @codec_vp9_rm_noshow_frame(ptr noundef %sess)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 40) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.codec_vp9_get_new_frame.exit.thread_crit_edge, label %if.end.i

if.end.codec_vp9_get_new_frame.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_get_new_frame.exit.thread

if.end.i:                                         ; preds = %if.end
  %m2m_ctx.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %9 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx.i, align 8
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7
  %call.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i) #9
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.codec_vp9_get_new_frame.exit.thread.sink.split_crit_edge, label %while.cond.preheader.i

if.end.i.codec_vp9_get_new_frame.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_get_new_frame.exit.thread.sink.split

while.cond.preheader.i:                           ; preds = %if.end.i
  %ref_frames_list.i.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %vbuf.0.i = phi ptr [ %call.i60.i, %while.body.i.while.cond.i_crit_edge ], [ %call.i.i, %while.cond.preheader.i ]
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.cond.i
  %frame.0.in.i.i = phi ptr [ %ref_frames_list.i.i, %while.cond.i ], [ %frame.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %13 = ptrtoint ptr %frame.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %frame.0.i.i = load ptr, ptr %frame.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %frame.0.i.i, %ref_frames_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.while.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.while.end.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %index.i.i = getelementptr inbounds %struct.vp9_frame, ptr %frame.0.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i, align 4
  %cmp2.i.i = icmp eq i32 %15, %12
  br i1 %cmp2.i.i, label %codec_vp9_get_frame_by_idx.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

codec_vp9_get_frame_by_idx.exit.i:                ; preds = %for.body.i.i
  %tobool6.not.i = icmp eq ptr %frame.0.i.i, null
  br i1 %tobool6.not.i, label %codec_vp9_get_frame_by_idx.exit.i.while.end.i_crit_edge, label %while.body.i

codec_vp9_get_frame_by_idx.exit.i.while.end.i_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %codec_vp9_get_frame_by_idx.exit.i
  %16 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx.i, align 8
  %cap_q_ctx.i59.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 7
  %call.i60.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i59.i) #9
  %18 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx.i, align 8
  tail call void @v4l2_m2m_buf_queue(ptr noundef %19, ptr noundef %vbuf.0.i) #9
  %tobool10.not.i = icmp eq ptr %call.i60.i, null
  br i1 %tobool10.not.i, label %while.body.i.codec_vp9_get_new_frame.exit.thread.sink.split_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.codec_vp9_get_new_frame.exit.thread.sink.split_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_get_new_frame.exit.thread.sink.split

while.end.i:                                      ; preds = %codec_vp9_get_frame_by_idx.exit.i.while.end.i_crit_edge, %for.cond.i.i.while.end.i_crit_edge
  %index.i.le = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf.0.i, i32 0, i32 1
  %vbuf18.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %vbuf18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vbuf.0.i, ptr %vbuf18.i, align 8
  %21 = ptrtoint ptr %index.i.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.le, align 4
  %index21.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %index21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %index21.i, align 4
  %intra_only.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 4, i32 0, i32 0, i32 6
  %24 = ptrtoint ptr %intra_only.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %intra_only.i, align 2
  %conv.i = zext i16 %25 to i32
  %intra_only22.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %intra_only22.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %intra_only22.i, align 8
  %show_frame.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 4, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %show_frame.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %show_frame.i, align 2
  %conv23.i = zext i16 %28 to i32
  %show.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv23.i, ptr %show.i, align 4
  %frame_type.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 4, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %frame_type.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %frame_type.i, align 2
  %conv24.i = zext i16 %31 to i32
  %type.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv24.i, ptr %type.i, align 8
  %width.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 6
  %33 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width.i, align 4
  %width25.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %width25.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %width25.i, align 8
  %height.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 7
  %36 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height.i, align 4
  %height26.i = getelementptr inbounds %struct.vp9_frame, ptr %call7.i.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %height26.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %height26.i, align 4
  %prev.i.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %40, ptr noundef %ref_frames_list.i.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end.i.codec_vp9_get_new_frame.exit_crit_edge

while.end.i.codec_vp9_get_new_frame.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_get_new_frame.exit

if.end.i.i.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ref_frames_list.i.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i.i, ptr %40, align 4
  br label %codec_vp9_get_new_frame.exit

codec_vp9_get_new_frame.exit.thread.sink.split:   ; preds = %while.body.i.codec_vp9_get_new_frame.exit.thread.sink.split_crit_edge, %if.end.i.codec_vp9_get_new_frame.exit.thread.sink.split_crit_edge
  %45 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sess, align 8
  %dev.i = getelementptr inbounds %struct.amvdec_core, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.13) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %codec_vp9_get_new_frame.exit.thread

codec_vp9_get_new_frame.exit.thread:              ; preds = %codec_vp9_get_new_frame.exit.thread.sink.split, %if.end.codec_vp9_get_new_frame.exit.thread_crit_edge
  %cur_frame158 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 20
  %49 = ptrtoint ptr %cur_frame158 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %cur_frame158, align 4
  br label %cleanup

codec_vp9_get_new_frame.exit:                     ; preds = %if.end.i.i.i, %while.end.i.codec_vp9_get_new_frame.exit_crit_edge
  %frames_num.i = getelementptr inbounds %struct.codec_vp9, ptr %7, i32 0, i32 9
  %50 = ptrtoint ptr %frames_num.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frames_num.i, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %frames_num.i, align 4
  %cur_frame = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 20
  %52 = ptrtoint ptr %cur_frame to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %cur_frame, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_process_frame.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_process_frame, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !89

if.then10:                                        ; preds = %codec_vp9_get_new_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_frame, align 4
  %index = getelementptr inbounds %struct.vp9_frame, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index, align 4
  %frame_type = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %frame_type to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %frame_type, align 2
  %conv = zext i16 %58 to i32
  %show_existing_frame = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %show_existing_frame to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %show_existing_frame, align 2
  %conv12 = zext i16 %60 to i32
  %61 = ptrtoint ptr %show_frame to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %show_frame, align 2
  %conv14 = zext i16 %62 to i32
  %intra_only15 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 6
  %63 = ptrtoint ptr %intra_only15 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %intra_only15, align 2
  %conv16 = zext i16 %64 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_process_frame.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.10, i32 noundef %56, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %codec_vp9_get_new_frame.exit
  %frame_type18 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 3
  %65 = ptrtoint ptr %frame_type18 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %frame_type18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp.not = icmp eq i16 %66, 0
  br i1 %cmp.not, label %do.end.if.end22_crit_edge, label %if.then21

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %do.end
  %ref_info.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 14
  %ref_frames_list.i.i85 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 8
  %67 = ptrtoint ptr %ref_info.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ref_info.i, align 2
  %69 = lshr i16 %68, 9
  %70 = and i16 %69, 7
  %and.i = zext i16 %70 to i32
  %arrayidx.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %and.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  br label %for.cond.i.i89

for.cond.i.i89:                                   ; preds = %for.body.i.i92.for.cond.i.i89_crit_edge, %if.then21
  %frame.0.in.i.i86 = phi ptr [ %ref_frames_list.i.i85, %if.then21 ], [ %frame.0.i.i87, %for.body.i.i92.for.cond.i.i89_crit_edge ]
  %73 = ptrtoint ptr %frame.0.in.i.i86 to i32
  call void @__asan_load4_noabort(i32 %73)
  %frame.0.i.i87 = load ptr, ptr %frame.0.in.i.i86, align 4
  %cmp.not.i.i88 = icmp eq ptr %frame.0.i.i87, %ref_frames_list.i.i85
  br i1 %cmp.not.i.i88, label %codec_vp9_get_frame_by_idx.exit.thread.i, label %for.body.i.i92

codec_vp9_get_frame_by_idx.exit.thread.i:         ; preds = %for.cond.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx216.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 0
  %74 = ptrtoint ptr %arrayidx216.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx216.i, align 4
  br label %do.end.i95

for.body.i.i92:                                   ; preds = %for.cond.i.i89
  %index.i.i90 = getelementptr inbounds %struct.vp9_frame, ptr %frame.0.i.i87, i32 0, i32 2
  %75 = ptrtoint ptr %index.i.i90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index.i.i90, align 4
  %cmp2.i.i91 = icmp eq i32 %76, %72
  br i1 %cmp2.i.i91, label %codec_vp9_get_frame_by_idx.exit.i94, label %for.body.i.i92.for.cond.i.i89_crit_edge

for.body.i.i92.for.cond.i.i89_crit_edge:          ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i89

codec_vp9_get_frame_by_idx.exit.i94:              ; preds = %for.body.i.i92
  %arrayidx2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 0
  %77 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %frame.0.i.i87, ptr %arrayidx2.i, align 4
  %tobool.not.i93 = icmp eq ptr %frame.0.i.i87, null
  br i1 %tobool.not.i93, label %codec_vp9_get_frame_by_idx.exit.i94.do.end.i95_crit_edge, label %codec_vp9_get_frame_by_idx.exit.i94.if.end.i96_crit_edge

codec_vp9_get_frame_by_idx.exit.i94.if.end.i96_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i96

codec_vp9_get_frame_by_idx.exit.i94.do.end.i95_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i95

do.end.i95:                                       ; preds = %codec_vp9_get_frame_by_idx.exit.i94.do.end.i95_crit_edge, %codec_vp9_get_frame_by_idx.exit.thread.i
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %72) #13
  br label %if.end.i96

if.end.i96:                                       ; preds = %do.end.i95, %codec_vp9_get_frame_by_idx.exit.i94.if.end.i96_crit_edge
  %78 = ptrtoint ptr %ref_info.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ref_info.i, align 2
  %80 = lshr i16 %79, 5
  %81 = and i16 %80, 7
  %and.1.i = zext i16 %81 to i32
  %arrayidx.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %and.1.i
  %82 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.1.i, align 4
  br label %for.cond.i.1.i

for.cond.i.1.i:                                   ; preds = %for.body.i.1.i.for.cond.i.1.i_crit_edge, %if.end.i96
  %frame.0.in.i.1.i = phi ptr [ %ref_frames_list.i.i85, %if.end.i96 ], [ %frame.0.i.1.i, %for.body.i.1.i.for.cond.i.1.i_crit_edge ]
  %84 = ptrtoint ptr %frame.0.in.i.1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %frame.0.i.1.i = load ptr, ptr %frame.0.in.i.1.i, align 4
  %cmp.not.i.1.i = icmp eq ptr %frame.0.i.1.i, %ref_frames_list.i.i85
  br i1 %cmp.not.i.1.i, label %codec_vp9_get_frame_by_idx.exit.thread.1.i, label %for.body.i.1.i

for.body.i.1.i:                                   ; preds = %for.cond.i.1.i
  %index.i.1.i = getelementptr inbounds %struct.vp9_frame, ptr %frame.0.i.1.i, i32 0, i32 2
  %85 = ptrtoint ptr %index.i.1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index.i.1.i, align 4
  %cmp2.i.1.i = icmp eq i32 %86, %83
  br i1 %cmp2.i.1.i, label %codec_vp9_get_frame_by_idx.exit.1.i, label %for.body.i.1.i.for.cond.i.1.i_crit_edge

for.body.i.1.i.for.cond.i.1.i_crit_edge:          ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.1.i

codec_vp9_get_frame_by_idx.exit.1.i:              ; preds = %for.body.i.1.i
  %arrayidx2.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 1
  %87 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %frame.0.i.1.i, ptr %arrayidx2.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %frame.0.i.1.i, null
  br i1 %tobool.not.1.i, label %codec_vp9_get_frame_by_idx.exit.1.i.do.end.1.i_crit_edge, label %codec_vp9_get_frame_by_idx.exit.1.i.if.end.1.i_crit_edge

codec_vp9_get_frame_by_idx.exit.1.i.if.end.1.i_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

codec_vp9_get_frame_by_idx.exit.1.i.do.end.1.i_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.1.i

codec_vp9_get_frame_by_idx.exit.thread.1.i:       ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx216.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 1
  %88 = ptrtoint ptr %arrayidx216.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx216.1.i, align 4
  br label %do.end.1.i

do.end.1.i:                                       ; preds = %codec_vp9_get_frame_by_idx.exit.thread.1.i, %codec_vp9_get_frame_by_idx.exit.1.i.do.end.1.i_crit_edge
  %call5.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %83) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %codec_vp9_get_frame_by_idx.exit.1.i.if.end.1.i_crit_edge
  %89 = ptrtoint ptr %ref_info.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %ref_info.i, align 2
  %91 = lshr i16 %90, 1
  %92 = and i16 %91, 7
  %and.2.i = zext i16 %92 to i32
  %arrayidx.2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %and.2.i
  %93 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.2.i, align 4
  br label %for.cond.i.2.i

for.cond.i.2.i:                                   ; preds = %for.body.i.2.i.for.cond.i.2.i_crit_edge, %if.end.1.i
  %frame.0.in.i.2.i = phi ptr [ %ref_frames_list.i.i85, %if.end.1.i ], [ %frame.0.i.2.i, %for.body.i.2.i.for.cond.i.2.i_crit_edge ]
  %95 = ptrtoint ptr %frame.0.in.i.2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %frame.0.i.2.i = load ptr, ptr %frame.0.in.i.2.i, align 4
  %cmp.not.i.2.i = icmp eq ptr %frame.0.i.2.i, %ref_frames_list.i.i85
  br i1 %cmp.not.i.2.i, label %codec_vp9_get_frame_by_idx.exit.thread.2.i, label %for.body.i.2.i

for.body.i.2.i:                                   ; preds = %for.cond.i.2.i
  %index.i.2.i = getelementptr inbounds %struct.vp9_frame, ptr %frame.0.i.2.i, i32 0, i32 2
  %96 = ptrtoint ptr %index.i.2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index.i.2.i, align 4
  %cmp2.i.2.i = icmp eq i32 %97, %94
  br i1 %cmp2.i.2.i, label %codec_vp9_get_frame_by_idx.exit.2.i, label %for.body.i.2.i.for.cond.i.2.i_crit_edge

for.body.i.2.i.for.cond.i.2.i_crit_edge:          ; preds = %for.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.2.i

codec_vp9_get_frame_by_idx.exit.2.i:              ; preds = %for.body.i.2.i
  %arrayidx2.2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 2
  %98 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %frame.0.i.2.i, ptr %arrayidx2.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %frame.0.i.2.i, null
  br i1 %tobool.not.2.i, label %codec_vp9_get_frame_by_idx.exit.2.i.do.end.2.i_crit_edge, label %codec_vp9_get_frame_by_idx.exit.2.i.if.end22_crit_edge

codec_vp9_get_frame_by_idx.exit.2.i.if.end22_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

codec_vp9_get_frame_by_idx.exit.2.i.do.end.2.i_crit_edge: ; preds = %codec_vp9_get_frame_by_idx.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.2.i

codec_vp9_get_frame_by_idx.exit.thread.2.i:       ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx216.2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 2
  %99 = ptrtoint ptr %arrayidx216.2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %arrayidx216.2.i, align 4
  br label %do.end.2.i

do.end.2.i:                                       ; preds = %codec_vp9_get_frame_by_idx.exit.thread.2.i, %codec_vp9_get_frame_by_idx.exit.2.i.do.end.2.i_crit_edge
  %call5.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %94) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end.2.i, %codec_vp9_get_frame_by_idx.exit.2.i.if.end22_crit_edge, %do.end.if.end22_crit_edge
  %100 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur_frame, align 4
  %index.i97 = getelementptr inbounds %struct.vp9_frame, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %index.i97 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index.i97, align 4
  %type.i98 = getelementptr inbounds %struct.vp9_frame, ptr %101, i32 0, i32 5
  %104 = ptrtoint ptr %type.i98 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i = icmp eq i32 %105, 0
  br i1 %cmp.i, label %if.end22.do.body.i.preheader_crit_edge, label %cond.end.i

if.end22.do.body.i.preheader_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %cond.end.i.do.body.i.preheader_crit_edge, %if.end22.do.body.i.preheader_crit_edge
  %mask.045.i.ph = phi i32 [ 255, %if.end22.do.body.i.preheader_crit_edge ], [ %conv.i99, %cond.end.i.do.body.i.preheader_crit_edge ]
  br label %do.body.i

cond.end.i:                                       ; preds = %if.end22
  %refresh_frame_flags2.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 9
  %106 = ptrtoint ptr %refresh_frame_flags2.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %refresh_frame_flags2.i, align 2
  %conv.i99 = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not42.i = icmp eq i16 %107, 0
  br i1 %tobool.not42.i, label %cond.end.i.for.body15.i.preheader_crit_edge, label %cond.end.i.do.body.i.preheader_crit_edge

cond.end.i.do.body.i.preheader_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.preheader

cond.end.i.for.body15.i.preheader_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i.preheader

for.body15.i.preheader:                           ; preds = %for.cond12.preheader.i.for.body15.i.preheader_crit_edge, %cond.end.i.for.body15.i.preheader_crit_edge
  %ref_index.147.i.ph = phi i32 [ 0, %cond.end.i.for.body15.i.preheader_crit_edge ], [ %inc.i103, %for.cond12.preheader.i.for.body15.i.preheader_crit_edge ]
  br label %for.body15.i

for.cond12.preheader.i:                           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ref_index.043.i)
  %cmp1346.i = icmp ult i32 %ref_index.043.i, 7
  br i1 %cmp1346.i, label %for.cond12.preheader.i.for.body15.i.preheader_crit_edge, label %for.cond12.preheader.i.codec_vp9_update_next_ref.exit_crit_edge

for.cond12.preheader.i.codec_vp9_update_next_ref.exit_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_next_ref.exit

for.cond12.preheader.i.for.body15.i.preheader_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i.preheader

do.body.i:                                        ; preds = %if.end11.i.do.body.i_crit_edge, %do.body.i.preheader
  %mask.045.i = phi i32 [ %112, %if.end11.i.do.body.i_crit_edge ], [ %mask.045.i.ph, %do.body.i.preheader ]
  %ref_index.043.i = phi i32 [ %inc.i103, %if.end11.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_update_next_ref.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_process_frame, %if.then.i)) #9
          to label %do.end.i102 [label %if.then.i], !srcloc !89

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_update_next_ref.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.20, i32 noundef %mask.045.i, i32 noundef %ref_index.043.i) #9
  br label %do.end.i102

do.end.i102:                                      ; preds = %if.then.i, %do.body.i
  %and.i100 = and i32 %mask.045.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool6.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool6.not.i101, label %if.else.i, label %do.end.i102.if.end11.i_crit_edge

do.end.i102.if.end11.i_crit_edge:                 ; preds = %do.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.else.i:                                        ; preds = %do.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %ref_index.043.i
  %108 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx8.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %do.end.i102.if.end11.i_crit_edge
  %.sink.i = phi i32 [ %109, %if.else.i ], [ %103, %do.end.i102.if.end11.i_crit_edge ]
  %110 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %ref_index.043.i
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink.i, ptr %110, align 4
  %inc.i103 = add nuw nsw i32 %ref_index.043.i, 1
  %112 = lshr i32 %mask.045.i, 1
  %tobool.not.i104 = icmp ult i32 %mask.045.i, 2
  br i1 %tobool.not.i104, label %for.cond12.preheader.i, label %if.end11.i.do.body.i_crit_edge

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.i.preheader
  %ref_index.147.i = phi i32 [ %inc21.i, %for.body15.i.for.body15.i_crit_edge ], [ %ref_index.147.i.ph, %for.body15.i.preheader ]
  %arrayidx17.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 12, i32 %ref_index.147.i
  %113 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 13, i32 %ref_index.147.i
  %115 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx19.i, align 4
  %inc21.i = add nuw nsw i32 %ref_index.147.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 8
  br i1 %exitcond.not.i, label %for.body15.i.codec_vp9_update_next_ref.exit_crit_edge, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

for.body15.i.codec_vp9_update_next_ref.exit_crit_edge: ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_update_next_ref.exit

codec_vp9_update_next_ref.exit:                   ; preds = %for.body15.i.codec_vp9_update_next_ref.exit_crit_edge, %for.cond12.preheader.i.codec_vp9_update_next_ref.exit_crit_edge
  %show_existing_frame.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %116 = ptrtoint ptr %show_existing_frame.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %show_existing_frame.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.not.i105 = icmp eq i16 %117, 0
  br i1 %tobool.not.i105, label %codec_vp9_update_next_ref.exit.codec_vp9_show_existing_frame.exit_crit_edge, label %do.body.i106

codec_vp9_update_next_ref.exit.codec_vp9_show_existing_frame.exit_crit_edge: ; preds = %codec_vp9_update_next_ref.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_show_existing_frame.exit

do.body.i106:                                     ; preds = %codec_vp9_update_next_ref.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_show_existing_frame.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_process_frame, %if.then4.i)) #9
          to label %codec_vp9_show_existing_frame.exit [label %if.then4.i], !srcloc !89

if.then4.i:                                       ; preds = %do.body.i106
  call void @__sanitizer_cov_trace_pc() #11
  %frame_to_show_idx.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 2
  %118 = ptrtoint ptr %frame_to_show_idx.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %frame_to_show_idx.i, align 2
  %conv.i107 = zext i16 %119 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_show_existing_frame.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.22, i32 noundef %conv.i107) #9
  br label %codec_vp9_show_existing_frame.exit

codec_vp9_show_existing_frame.exit:               ; preds = %if.then4.i, %do.body.i106, %codec_vp9_update_next_ref.exit.codec_vp9_show_existing_frame.exit_crit_edge
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %120 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %revision, align 4
  %is_10bit = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 5
  %124 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %123)
  %cmp.i108 = icmp ult i32 %123, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i = icmp eq i32 %125, 0
  %tobool24.not = or i1 %cmp.i108, %tobool.i
  br i1 %tobool24.not, label %codec_vp9_show_existing_frame.exit.if.end27_crit_edge, label %if.then25

codec_vp9_show_existing_frame.exit.if.end27_crit_edge: ; preds = %codec_vp9_show_existing_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %codec_vp9_show_existing_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  %common = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 1
  %126 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur_frame, align 4
  %vbuf = getelementptr inbounds %struct.vp9_frame, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vbuf, align 4
  tail call void @codec_hevc_fill_mmu_map(ptr noundef %sess, ptr noundef %common, ptr noundef %129) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %codec_vp9_show_existing_frame.exit.if.end27_crit_edge
  %130 = ptrtoint ptr %show_frame to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %show_frame, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool30.not = icmp eq i16 %131, 0
  br i1 %tobool30.not, label %cond.false, label %if.end27.cond.end_crit_edge

if.end27.cond.end_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %intra_only31 = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 6
  %132 = ptrtoint ptr %intra_only31 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %intra_only31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %phi.cmp = icmp eq i16 %133, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end27.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.false ], [ true, %if.end27.cond.end_crit_edge ]
  %134 = ptrtoint ptr %frame_type18 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %frame_type18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %cmp35.not = icmp ne i16 %135, 0
  %or.cond = select i1 %cmp35.not, i1 %cond, i1 false
  br i1 %or.cond, label %if.then38, label %if.else

if.then38:                                        ; preds = %cond.end
  %136 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sess, align 8
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 54016, i32 noundef 1) #9
  tail call fastcc void @codec_vp9_set_refs(ptr noundef %sess, ptr noundef %3) #9
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 54016, i32 noundef 4097) #9
  tail call fastcc void @codec_vp9_set_refs(ptr noundef %sess, ptr noundef %3) #9
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53512, i32 noundef 4) #9
  %width4.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 6
  %height8.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then38
  %i.069.i = phi i32 [ 0, %if.then38 ], [ %inc.i115, %for.inc.i.for.body.i_crit_edge ]
  %scale.068.i = phi i32 [ 0, %if.then38 ], [ %scale.2.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i109 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 14, i32 %i.069.i
  %138 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i109, align 4
  %tobool.not.i110 = icmp eq ptr %139, null
  br i1 %tobool.not.i110, label %for.body.i.for.inc.i_crit_edge, label %if.end.i112

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i112:                                      ; preds = %for.body.i
  %width.i111 = getelementptr inbounds %struct.vp9_frame, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %width.i111 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %width.i111, align 4
  %142 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %width4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %143)
  %cmp5.not.i = icmp eq i32 %141, %143
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.i112.if.then10.i_crit_edge

if.end.i112.if.then10.i_crit_edge:                ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.end.i112
  %height.i113 = getelementptr inbounds %struct.vp9_frame, ptr %139, i32 0, i32 8
  %144 = ptrtoint ptr %height.i113 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %height.i113, align 4
  %146 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %height8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp9.not.i = icmp eq i32 %145, %147
  br i1 %cmp9.not.i, label %lor.lhs.false.i.if.end11.i114_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i.if.end11.i114_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i114

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %if.end.i112.if.then10.i_crit_edge
  br label %if.end11.i114

if.end11.i114:                                    ; preds = %if.then10.i, %lor.lhs.false.i.if.end11.i114_crit_edge
  %scale.1.i = phi i32 [ 1, %if.then10.i ], [ %scale.068.i, %lor.lhs.false.i.if.end11.i114_crit_edge ]
  %height17.i = getelementptr inbounds %struct.vp9_frame, ptr %139, i32 0, i32 8
  %148 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %height17.i, align 4
  %call.i = tail call i32 @amvdec_am21c_body_size(i32 noundef %141, i32 noundef %149) #9
  %150 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i109, align 4
  %width20.i = getelementptr inbounds %struct.vp9_frame, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %width20.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %width20.i, align 4
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53516, i32 noundef %153) #9
  %154 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i109, align 4
  %height23.i = getelementptr inbounds %struct.vp9_frame, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %height23.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %height23.i, align 4
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53516, i32 noundef %157) #9
  %158 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i109, align 4
  %width26.i = getelementptr inbounds %struct.vp9_frame, ptr %159, i32 0, i32 7
  %160 = ptrtoint ptr %width26.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %width26.i, align 4
  %shl.i = shl i32 %161, 14
  %162 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %width4.i, align 4
  %div.i = udiv i32 %shl.i, %163
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53516, i32 noundef %div.i) #9
  %164 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i109, align 4
  %height30.i = getelementptr inbounds %struct.vp9_frame, ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %height30.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %height30.i, align 4
  %shl31.i = shl i32 %167, 14
  %168 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %height8.i, align 4
  %div33.i = udiv i32 %shl31.i, %169
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53516, i32 noundef %div33.i) #9
  %shr.i = lshr i32 %call.i, 5
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53516, i32 noundef %shr.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i114, %for.body.i.for.inc.i_crit_edge
  %scale.2.i = phi i32 [ %scale.1.i, %if.end11.i114 ], [ %scale.068.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i115 = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i116 = icmp eq i32 %inc.i115, 3
  br i1 %exitcond.not.i116, label %codec_vp9_set_mc.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

codec_vp9_set_mc.exit:                            ; preds = %for.inc.i
  tail call void @amvdec_write_dos(ptr noundef %137, i32 noundef 53508, i32 noundef %scale.2.i) #9
  %prev_frame.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 21
  %170 = ptrtoint ptr %prev_frame.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev_frame.i, align 4
  %width.i117 = getelementptr inbounds %struct.vp9_frame, ptr %171, i32 0, i32 7
  %172 = ptrtoint ptr %width.i117 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %width.i117, align 4
  %174 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cur_frame, align 4
  %width1.i = getelementptr inbounds %struct.vp9_frame, ptr %175, i32 0, i32 7
  %176 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %177)
  %cmp.i119 = icmp eq i32 %173, %177
  br i1 %cmp.i119, label %land.lhs.true.i, label %if.end.critedge56.i

land.lhs.true.i:                                  ; preds = %codec_vp9_set_mc.exit
  %height.i120 = getelementptr inbounds %struct.vp9_frame, ptr %171, i32 0, i32 8
  %178 = ptrtoint ptr %height.i120 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %height.i120, align 4
  %height4.i = getelementptr inbounds %struct.vp9_frame, ptr %175, i32 0, i32 8
  %180 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %181)
  %cmp5.i = icmp eq i32 %179, %181
  br i1 %cmp5.i, label %land.lhs.true6.i, label %if.end.critedge53.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %intra_only.i121 = getelementptr inbounds %struct.vp9_frame, ptr %171, i32 0, i32 3
  %182 = ptrtoint ptr %intra_only.i121 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %intra_only.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i122 = icmp eq i32 %183, 0
  br i1 %tobool.not.i122, label %land.lhs.true8.i, label %if.end.critedge50.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true6.i
  %show.i123 = getelementptr inbounds %struct.vp9_frame, ptr %171, i32 0, i32 4
  %184 = ptrtoint ptr %show.i123 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %show.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool10.not.i124 = icmp eq i32 %185, 0
  br i1 %tobool10.not.i124, label %if.end.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true8.i
  %type.i125 = getelementptr inbounds %struct.vp9_frame, ptr %171, i32 0, i32 5
  %186 = ptrtoint ptr %type.i125 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %type.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp12.not.i = icmp eq i32 %187, 0
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51316, i32 noundef 605168658) #9
  %workspace_paddr.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %188 = ptrtoint ptr %workspace_paddr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %workspace_paddr.i, align 4
  %add.i = add i32 %189, 1628160
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51272, i32 noundef %add.i) #9
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br i1 %cmp12.not.i, label %land.rhs.i.codec_vp9_set_mpred_mv.exit_crit_edge, label %if.then.i126

land.rhs.i.codec_vp9_set_mpred_mv.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_set_mpred_mv.exit

if.then.i126:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br label %codec_vp9_set_mpred_mv.exit

if.end.critedge.i:                                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51316, i32 noundef 605168658) #9
  %workspace_paddr.c.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %190 = ptrtoint ptr %workspace_paddr.c.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %workspace_paddr.c.i, align 4
  %add.c.i = add i32 %191, 1628160
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51272, i32 noundef %add.c.i) #9
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br label %codec_vp9_set_mpred_mv.exit

if.end.critedge50.i:                              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51316, i32 noundef 605168658) #9
  %workspace_paddr.c51.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %192 = ptrtoint ptr %workspace_paddr.c51.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %workspace_paddr.c51.i, align 4
  %add.c52.i = add i32 %193, 1628160
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51272, i32 noundef %add.c52.i) #9
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br label %codec_vp9_set_mpred_mv.exit

if.end.critedge53.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51316, i32 noundef 605168658) #9
  %workspace_paddr.c54.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %194 = ptrtoint ptr %workspace_paddr.c54.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %workspace_paddr.c54.i, align 4
  %add.c55.i = add i32 %195, 1628160
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51272, i32 noundef %add.c55.i) #9
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br label %codec_vp9_set_mpred_mv.exit

if.end.critedge56.i:                              ; preds = %codec_vp9_set_mc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51316, i32 noundef 605168658) #9
  %workspace_paddr.c57.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %196 = ptrtoint ptr %workspace_paddr.c57.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %workspace_paddr.c57.i, align 4
  %add.c58.i = add i32 %197, 1628160
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51272, i32 noundef %add.c58.i) #9
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br label %codec_vp9_set_mpred_mv.exit

codec_vp9_set_mpred_mv.exit:                      ; preds = %if.end.critedge56.i, %if.end.critedge53.i, %if.end.critedge50.i, %if.end.critedge.i, %if.then.i126, %land.rhs.i.codec_vp9_set_mpred_mv.exit_crit_edge
  %198 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cur_frame, align 4
  %workspace_paddr.i.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 3
  %200 = ptrtoint ptr %workspace_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %workspace_paddr.i.i, align 4
  %add.i.i = add i32 %201, 1693696
  %index.i.i127 = getelementptr inbounds %struct.vp9_frame, ptr %199, i32 0, i32 2
  %202 = ptrtoint ptr %index.i.i127 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %index.i.i127, align 4
  %mul.i.i = mul i32 %203, 1179648
  %add1.i.i = add i32 %add.i.i, %mul.i.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51276, i32 noundef %add1.i.i) #9
  %204 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cur_frame, align 4
  %206 = ptrtoint ptr %workspace_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %workspace_paddr.i.i, align 4
  %add.i60.i = add i32 %207, 1693696
  %index.i61.i = getelementptr inbounds %struct.vp9_frame, ptr %205, i32 0, i32 2
  %208 = ptrtoint ptr %index.i61.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %index.i61.i, align 4
  %mul.i62.i = mul i32 %209, 1179648
  %add1.i63.i = add i32 %add.i60.i, %mul.i62.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51284, i32 noundef %add1.i63.i) #9
  %210 = ptrtoint ptr %prev_frame.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prev_frame.i, align 4
  %212 = ptrtoint ptr %workspace_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %workspace_paddr.i.i, align 4
  %add.i65.i = add i32 %213, 1693696
  %index.i66.i = getelementptr inbounds %struct.vp9_frame, ptr %211, i32 0, i32 2
  %214 = ptrtoint ptr %index.i66.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %index.i66.i, align 4
  %mul.i67.i = mul i32 %215, 1179648
  %add1.i68.i = add i32 %add.i65.i, %mul.i67.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51280, i32 noundef %add1.i68.i) #9
  %216 = ptrtoint ptr %prev_frame.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %prev_frame.i, align 4
  %218 = ptrtoint ptr %workspace_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %workspace_paddr.i.i, align 4
  %add.i70.i = add i32 %219, 1693696
  %index.i71.i = getelementptr inbounds %struct.vp9_frame, ptr %217, i32 0, i32 2
  %220 = ptrtoint ptr %index.i71.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %index.i71.i, align 4
  %mul.i72.i = mul i32 %221, 1179648
  %add1.i73.i = add i32 %add.i70.i, %mul.i72.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51288, i32 noundef %add1.i73.i) #9
  %222 = ptrtoint ptr %prev_frame.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %prev_frame.i, align 4
  %224 = ptrtoint ptr %workspace_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %workspace_paddr.i.i, align 4
  %add.i75.i = add i32 %225, 1693696
  %index.i76.i = getelementptr inbounds %struct.vp9_frame, ptr %223, i32 0, i32 2
  %226 = ptrtoint ptr %index.i76.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %index.i76.i, align 4
  %mul.i77.i = mul i32 %227, 1179648
  %add1.i78.i = add i32 %add.i75.i, %mul.i77.i
  %lcu_total.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 15
  %228 = ptrtoint ptr %lcu_total.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %lcu_total.i, align 4
  %mul.i = mul i32 %229, 576
  %add23.i = add i32 %add1.i78.i, %mul.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 51592, i32 noundef %add23.i) #9
  br label %if.end39

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 51504, i32 noundef 64) #9
  br label %if.end39

if.end39:                                         ; preds = %if.else, %codec_vp9_set_mpred_mv.exit
  %height = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 7
  %230 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %height, align 4
  %shl = shl i32 %231, 16
  %width = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 6
  %232 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %width, align 4
  %or = or i32 %shl, %233
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50316, i32 noundef %or) #9
  %234 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sess, align 8
  %236 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %priv, align 4
  tail call void @amvdec_write_dos(ptr noundef %235, i32 noundef 54208, i32 noundef 2) #9
  %cur_frame.i130 = getelementptr inbounds %struct.codec_vp9, ptr %237, i32 0, i32 20
  %238 = ptrtoint ptr %cur_frame.i130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cur_frame.i130, align 4
  %type.i131 = getelementptr inbounds %struct.vp9_frame, ptr %239, i32 0, i32 5
  %240 = ptrtoint ptr %type.i131 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %type.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp.i132 = icmp eq i32 %241, 0
  br i1 %cmp.i132, label %if.end39.codec_vp9_set_mcrcc.exit_crit_edge, label %lor.lhs.false.i135

if.end39.codec_vp9_set_mcrcc.exit_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_set_mcrcc.exit

lor.lhs.false.i135:                               ; preds = %if.end39
  %intra_only.i133 = getelementptr inbounds %struct.vp9_frame, ptr %239, i32 0, i32 3
  %242 = ptrtoint ptr %intra_only.i133 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %intra_only.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.not.i134 = icmp eq i32 %243, 0
  br i1 %tobool.not.i134, label %if.end.i139, label %lor.lhs.false.i135.codec_vp9_set_mcrcc.exit_crit_edge

lor.lhs.false.i135.codec_vp9_set_mcrcc.exit_crit_edge: ; preds = %lor.lhs.false.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %codec_vp9_set_mcrcc.exit

if.end.i139:                                      ; preds = %lor.lhs.false.i135
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %235, i32 noundef 54016, i32 noundef 2) #9
  %call.i136 = tail call i32 @amvdec_read_dos(ptr noundef %235, i32 noundef 54020) #9
  %and.i137 = and i32 %call.i136, 65535
  %shl.i138 = shl i32 %call.i136, 16
  %or.i = or i32 %and.i137, %shl.i138
  tail call void @amvdec_write_dos(ptr noundef %235, i32 noundef 54212, i32 noundef %or.i) #9
  %call3.i = tail call i32 @amvdec_read_dos(ptr noundef %235, i32 noundef 54020) #9
  %and4.i = and i32 %call3.i, 65535
  %shl5.i = shl i32 %call3.i, 16
  %or6.i = or i32 %and4.i, %shl5.i
  tail call void @amvdec_write_dos(ptr noundef %235, i32 noundef 54216, i32 noundef %or6.i) #9
  br label %codec_vp9_set_mcrcc.exit

codec_vp9_set_mcrcc.exit:                         ; preds = %if.end.i139, %lor.lhs.false.i135.codec_vp9_set_mcrcc.exit_crit_edge, %if.end39.codec_vp9_set_mcrcc.exit_crit_edge
  %.sink.i140 = phi i32 [ 4080, %if.end.i139 ], [ 0, %lor.lhs.false.i135.codec_vp9_set_mcrcc.exit_crit_edge ], [ 0, %if.end39.codec_vp9_set_mcrcc.exit_crit_edge ]
  tail call void @amvdec_write_dos(ptr noundef %235, i32 noundef 54208, i32 noundef %.sink.i140) #9
  %244 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur_frame, align 4
  %vbuf41 = getelementptr inbounds %struct.vp9_frame, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %vbuf41 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %vbuf41, align 4
  tail call fastcc void @codec_vp9_set_sao(ptr noundef %sess, ptr noundef %247)
  %seg_4lf = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 19
  %lfi = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 17
  %default_filt_lvl = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 16
  %248 = ptrtoint ptr %default_filt_lvl to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %default_filt_lvl, align 4
  %shr.i141 = ashr i32 %249, 5
  %last_sharpness_level.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 2
  %250 = ptrtoint ptr %last_sharpness_level.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %last_sharpness_level.i, align 4
  %sharpness_level.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 1
  %252 = ptrtoint ptr %sharpness_level.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %sharpness_level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %253)
  %cmp.not.i = icmp eq i32 %251, %253
  br i1 %cmp.not.i, label %codec_vp9_set_mcrcc.exit.if.end.i154_crit_edge, label %if.then.i144

codec_vp9_set_mcrcc.exit.if.end.i154_crit_edge:   ; preds = %codec_vp9_set_mcrcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i154

if.then.i144:                                     ; preds = %codec_vp9_set_mcrcc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp1.i.i = icmp sgt i32 %253, 0
  %conv.i.i = zext i1 %cmp1.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %253)
  %cmp2.i.i142 = icmp sgt i32 %253, 4
  %conv3.i.i = zext i1 %cmp2.i.i142 to i32
  %add.i.i143 = add nuw nsw i32 %conv.i.i, %conv3.i.i
  %sub.i.i = sub i32 9, %253
  br label %for.body.i.i146

for.body.i.i146:                                  ; preds = %for.body.i.i146.for.body.i.i146_crit_edge, %if.then.i144
  %lvl.034.i.i = phi i32 [ 0, %if.then.i144 ], [ %inc.i.i, %for.body.i.i146.for.body.i.i146_crit_edge ]
  %shr.i.i = lshr i32 %lvl.034.i.i, %add.i.i143
  %254 = tail call i32 @llvm.smin.i32(i32 %shr.i.i, i32 %sub.i.i) #9
  %block_inside_limit.0.i.i = select i1 %cmp1.i.i, i32 %254, i32 %shr.i.i
  %255 = tail call i32 @llvm.smax.i32(i32 %block_inside_limit.0.i.i, i32 1) #9
  %conv15.i.i = trunc i32 %255 to i8
  %arrayidx.i.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi, i32 0, i32 %lvl.034.i.i
  %lim.i.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi, i32 0, i32 %lvl.034.i.i, i32 1
  %256 = ptrtoint ptr %lim.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv15.i.i, ptr %lim.i.i, align 1
  %add16.i.i = shl nuw i32 %lvl.034.i.i, 1
  %mul.i.i145 = add nuw nsw i32 %add16.i.i, 4
  %add17.i.i = add i32 %mul.i.i145, %255
  %conv18.i.i = trunc i32 %add17.i.i to i8
  %257 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %lvl.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %vp9_update_sharpness.exit.i, label %for.body.i.i146.for.body.i.i146_crit_edge

for.body.i.i146.for.body.i.i146_crit_edge:        ; preds = %for.body.i.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i146

vp9_update_sharpness.exit.i:                      ; preds = %for.body.i.i146
  %258 = ptrtoint ptr %sharpness_level.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %sharpness_level.i, align 4
  %260 = ptrtoint ptr %last_sharpness_level.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %last_sharpness_level.i, align 4
  br label %for.body.i153

for.body.i153:                                    ; preds = %for.body.i153.for.body.i153_crit_edge, %vp9_update_sharpness.exit.i
  %i.0245.i = phi i32 [ 0, %vp9_update_sharpness.exit.i ], [ %inc.i151, %for.body.i153.for.body.i153_crit_edge ]
  %mul.i147 = shl nuw i32 %i.0245.i, 1
  %add.i148 = or i32 %mul.i147, 1
  %arrayidx.i149 = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi, i32 0, i32 %add.i148
  %lim.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi, i32 0, i32 %add.i148, i32 1
  %261 = ptrtoint ptr %lim.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %lim.i, align 1
  %263 = and i8 %262, 63
  %and.i150 = zext i8 %263 to i32
  %264 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx.i149, align 1
  %conv10.i = zext i8 %265 to i32
  %266 = shl nuw nsw i32 %and.i150, 24
  %267 = shl nuw nsw i32 %conv10.i, 16
  %shl12.i = or i32 %266, %267
  %arrayidx15.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi, i32 0, i32 %mul.i147
  %lim16.i = getelementptr [64 x %struct.loop_filter_thresh], ptr %lfi, i32 0, i32 %mul.i147, i32 1
  %268 = ptrtoint ptr %lim16.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %lim16.i, align 1
  %270 = and i8 %269, 63
  %and18.i = zext i8 %270 to i32
  %shl19.i = shl nuw nsw i32 %and18.i, 8
  %or20.i = or i32 %shl19.i, %shl12.i
  %271 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx15.i, align 1
  %conv25.i = zext i8 %272 to i32
  %or27.i = or i32 %or20.i, %conv25.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54308, i32 noundef %or27.i) #9
  %inc.i151 = add nuw nsw i32 %i.0245.i, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, 32
  br i1 %exitcond.not.i152, label %for.body.i153.if.end.i154_crit_edge, label %for.body.i153.for.body.i153_crit_edge

for.body.i153.for.body.i153_crit_edge:            ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i153

for.body.i153.if.end.i154_crit_edge:              ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i154

if.end.i154:                                      ; preds = %for.body.i153.if.end.i154_crit_edge, %codec_vp9_set_mcrcc.exit.if.end.i154_crit_edge
  %mode_ref_delta_enabled.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 3
  %abs_delta.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 19, i32 3
  %ref_deltas.i = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 5
  %arrayidx87.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 5, i32 1
  %arrayidx91.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 7
  %arrayidx91.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 7, i32 1
  %arrayidx87.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 5, i32 2
  %arrayidx87.2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 18, i32 5, i32 3
  br label %for.body31.i

for.cond124.preheader.i:                          ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool166.not.i = icmp eq i32 %249, 0
  br label %for.body127.i

for.body31.i:                                     ; preds = %if.end120.i.for.body31.i_crit_edge, %if.end.i154
  %seg_id.0248.i = phi i32 [ 0, %if.end.i154 ], [ %inc122.i, %if.end120.i.for.body31.i_crit_edge ]
  %273 = ptrtoint ptr %seg_4lf to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %seg_4lf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i.i = icmp eq i8 %274, 0
  br i1 %tobool.not.i.i, label %for.body31.i.if.end51.i_crit_edge, label %segfeature_active.exit.i

for.body31.i.if.end51.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

segfeature_active.exit.i:                         ; preds = %for.body31.i
  %arrayidx.i242.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 19, i32 6, i32 %seg_id.0248.i
  %275 = ptrtoint ptr %arrayidx.i242.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i242.i, align 4
  %277 = and i32 %276, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i155 = icmp eq i32 %277, 0
  br i1 %tobool.not.i155, label %segfeature_active.exit.i.if.end51.i_crit_edge, label %if.then32.i

segfeature_active.exit.i.if.end51.i_crit_edge:    ; preds = %segfeature_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then32.i:                                      ; preds = %segfeature_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 19, i32 5, i32 %seg_id.0248.i, i32 1
  %278 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %arrayidx1.i.i, align 2
  %conv.i243.i = sext i16 %279 to i32
  %280 = ptrtoint ptr %abs_delta.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %abs_delta.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %281)
  %cmp35.i = icmp eq i8 %281, 1
  %add37.i = select i1 %cmp35.i, i32 0, i32 %249
  %cond.i = add i32 %add37.i, %conv.i243.i
  %282 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 0) #9
  %283 = tail call i32 @llvm.umin.i32(i32 %282, i32 63) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then32.i, %segfeature_active.exit.i.if.end51.i_crit_edge, %for.body31.i.if.end51.i_crit_edge
  %lvl_seg.0.i = phi i32 [ %283, %if.then32.i ], [ %249, %segfeature_active.exit.i.if.end51.i_crit_edge ], [ %249, %for.body31.i.if.end51.i_crit_edge ]
  %284 = ptrtoint ptr %mode_ref_delta_enabled.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %mode_ref_delta_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool52.not.i = icmp eq i8 %285, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.else.i156

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx54.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i
  %286 = trunc i32 %lvl_seg.0.i to i8
  %287 = zext i8 %286 to i32
  %288 = call ptr @memset(ptr %arrayidx54.i, i32 %287, i32 8)
  br label %if.end120.i

if.else.i156:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %289 = ptrtoint ptr %ref_deltas.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %ref_deltas.i, align 2
  %conv56.i = sext i8 %290 to i32
  %mul57.i = shl i32 %conv56.i, %shr.i141
  %add58.i = add i32 %mul57.i, %lvl_seg.0.i
  %291 = tail call i32 @llvm.smax.i32(i32 %add58.i, i32 0) #9
  %292 = tail call i32 @llvm.umin.i32(i32 %291, i32 63) #9
  %conv73.i = trunc i32 %292 to i8
  %arrayidx75.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i
  %293 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv73.i, ptr %arrayidx75.i, align 1
  %294 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx87.i, align 1
  %conv88.i = sext i8 %295 to i32
  %mul89.i = shl i32 %conv88.i, %shr.i141
  %add90.i = add i32 %mul89.i, %lvl_seg.0.i
  %296 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx91.i, align 1
  %conv92.i = sext i8 %297 to i32
  %mul93.i = shl i32 %conv92.i, %shr.i141
  %add94.i = add i32 %add90.i, %mul93.i
  %298 = tail call i32 @llvm.smax.i32(i32 %add94.i, i32 0) #9
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 63) #9
  %conv109.i = trunc i32 %299 to i8
  %arrayidx113.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i, i32 1, i32 0
  %300 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv109.i, ptr %arrayidx113.i, align 1
  %301 = ptrtoint ptr %arrayidx91.1.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx91.1.i, align 1
  %conv92.1.i = sext i8 %302 to i32
  %mul93.1.i = shl i32 %conv92.1.i, %shr.i141
  %add94.1.i = add i32 %mul93.1.i, %add90.i
  %303 = tail call i32 @llvm.smax.i32(i32 %add94.1.i, i32 0) #9
  %304 = tail call i32 @llvm.umin.i32(i32 %303, i32 63) #9
  %conv109.1.i = trunc i32 %304 to i8
  %arrayidx113.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i, i32 1, i32 1
  %305 = ptrtoint ptr %arrayidx113.1.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv109.1.i, ptr %arrayidx113.1.i, align 1
  %306 = ptrtoint ptr %arrayidx87.1.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx87.1.i, align 1
  %conv88.1253.i = sext i8 %307 to i32
  %mul89.1254.i = shl i32 %conv88.1253.i, %shr.i141
  %add90.1255.i = add i32 %mul89.1254.i, %lvl_seg.0.i
  %add94.1259.i = add i32 %add90.1255.i, %mul93.i
  %308 = tail call i32 @llvm.smax.i32(i32 %add94.1259.i, i32 0) #9
  %309 = tail call i32 @llvm.umin.i32(i32 %308, i32 63) #9
  %conv109.1260.i = trunc i32 %309 to i8
  %arrayidx113.1261.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i, i32 2, i32 0
  %310 = ptrtoint ptr %arrayidx113.1261.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv109.1260.i, ptr %arrayidx113.1261.i, align 1
  %add94.1.1.i = add i32 %add90.1255.i, %mul93.1.i
  %311 = tail call i32 @llvm.smax.i32(i32 %add94.1.1.i, i32 0) #9
  %312 = tail call i32 @llvm.umin.i32(i32 %311, i32 63) #9
  %conv109.1.1.i = trunc i32 %312 to i8
  %arrayidx113.1.1.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i, i32 2, i32 1
  %313 = ptrtoint ptr %arrayidx113.1.1.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %conv109.1.1.i, ptr %arrayidx113.1.1.i, align 1
  %314 = ptrtoint ptr %arrayidx87.2.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx87.2.i, align 1
  %conv88.2.i = sext i8 %315 to i32
  %mul89.2.i = shl i32 %conv88.2.i, %shr.i141
  %add90.2.i = add i32 %mul89.2.i, %lvl_seg.0.i
  %add94.2.i = add i32 %add90.2.i, %mul93.i
  %316 = tail call i32 @llvm.smax.i32(i32 %add94.2.i, i32 0) #9
  %317 = tail call i32 @llvm.umin.i32(i32 %316, i32 63) #9
  %conv109.2.i = trunc i32 %317 to i8
  %arrayidx113.2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i, i32 3, i32 0
  %318 = ptrtoint ptr %arrayidx113.2.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %conv109.2.i, ptr %arrayidx113.2.i, align 1
  %add94.1.2.i = add i32 %add90.2.i, %mul93.1.i
  %319 = tail call i32 @llvm.smax.i32(i32 %add94.1.2.i, i32 0) #9
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 63) #9
  %conv109.1.2.i = trunc i32 %320 to i8
  %arrayidx113.1.2.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %seg_id.0248.i, i32 3, i32 1
  %321 = ptrtoint ptr %arrayidx113.1.2.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv109.1.2.i, ptr %arrayidx113.1.2.i, align 1
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else.i156, %if.then53.i
  %inc122.i = add nuw nsw i32 %seg_id.0248.i, 1
  %exitcond262.not.i = icmp eq i32 %inc122.i, 8
  br i1 %exitcond262.not.i, label %for.cond124.preheader.i, label %if.end120.i.for.body31.i_crit_edge

if.end120.i.for.body31.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

for.body127.i:                                    ; preds = %for.body127.i.for.body127.i_crit_edge, %for.cond124.preheader.i
  %i.1251.i = phi i32 [ 0, %for.cond124.preheader.i ], [ %inc170.i, %for.body127.i.for.body127.i_crit_edge ]
  %322 = lshr i32 %i.1251.i, 1
  %arrayidx130.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %322
  %and132.i = and i32 %i.1251.i, 1
  %arrayidx133.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %322, i32 3, i32 %and132.i
  %323 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx133.i, align 1
  %325 = and i8 %324, 63
  %and135.i = zext i8 %325 to i32
  %shl136.i = shl nuw nsw i32 %and135.i, 24
  %arrayidx142.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %322, i32 2, i32 %and132.i
  %326 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx142.i, align 1
  %328 = and i8 %327, 63
  %and144.i = zext i8 %328 to i32
  %shl145.i = shl nuw nsw i32 %and144.i, 16
  %or146.i = or i32 %shl145.i, %shl136.i
  %arrayidx152.i = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 17, i32 1, i32 %322, i32 1, i32 %and132.i
  %329 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx152.i, align 1
  %331 = and i8 %330, 63
  %and154.i = zext i8 %331 to i32
  %shl155.i = shl nuw nsw i32 %and154.i, 8
  %or156.i = or i32 %or146.i, %shl155.i
  %arrayidx162.i = getelementptr [2 x i8], ptr %arrayidx130.i, i32 0, i32 %and132.i
  %332 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx162.i, align 1
  %334 = and i8 %333, 63
  %and164.i = zext i8 %334 to i32
  %or165.i = or i32 %or156.i, %and164.i
  %spec.store.select.i = select i1 %tobool166.not.i, i32 0, i32 %or165.i
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54312, i32 noundef %spec.store.select.i) #9
  %inc170.i = add nuw nsw i32 %i.1251.i, 1
  %exitcond263.not.i = icmp eq i32 %inc170.i, 16
  br i1 %exitcond263.not.i, label %vp9_loop_filter_frame_init.exit, label %for.body127.i.for.body127.i_crit_edge

for.body127.i.for.body127.i_crit_edge:            ; preds = %for.body127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body127.i

vp9_loop_filter_frame_init.exit:                  ; preds = %for.body127.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49920, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %vp9_loop_filter_frame_init.exit, %codec_vp9_get_new_frame.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_rm_noshow_frame(ptr nocapture noundef readonly %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ref_frames_list = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %ref_frames_list, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %ref_frames_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %show = getelementptr inbounds %struct.vp9_frame, ptr %tmp.0, i32 0, i32 4
  %3 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %show, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_rm_noshow_frame.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_rm_noshow_frame, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !89

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.vp9_frame, ptr %tmp.0, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_rm_noshow_frame.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.12, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %m2m_ctx = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 8
  %vbuf = getelementptr inbounds %struct.vp9_frame, ptr %tmp.0, i32 0, i32 1
  %9 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbuf, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %8, ptr noundef %10) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.0) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %17 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.0) #9
  %frames_num = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %frames_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frames_num, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %frames_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @codec_hevc_fill_mmu_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_clear_dos_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_set_sao(ptr noundef %sess, ptr noundef %vb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %pixfmt_cap = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 8
  %is_10bit = getelementptr inbounds %struct.codec_vp9, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 1, i32 1, i32 %7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf_y_paddr.0.in = phi ptr [ %arrayidx, %if.then ], [ %call.i, %if.else ]
  %8 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %buf_y_paddr.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %buf_y_paddr.0 = load i32, ptr %buf_y_paddr.0.in, align 4
  %call8 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 55436) #9
  %and = and i32 %call8, -16712193
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55436, i32 noundef %and) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55448, i32 noundef %buf_y_paddr.0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %11 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixfmt_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091854, i32 %12)
  %cmp = icmp eq i32 %12, 842091854
  br i1 %cmp, label %if.then11, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i149 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %13 = ptrtoint ptr %call.i149 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i149, align 4
  %call.i150 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 1) #9
  %15 = ptrtoint ptr %call.i150 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i150, align 4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55340, i32 noundef %14) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55348, i32 noundef %16) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55356, i32 noundef %14) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55360, i32 noundef %16) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %revision, align 4
  %21 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.i = icmp ult i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i = icmp eq i32 %22, 0
  %tobool18.not = or i1 %cmp.i, %tobool.i
  br i1 %tobool18.not, label %if.end14.if.end23_crit_edge, label %if.then19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %index21 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %23 = ptrtoint ptr %index21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index21, align 4
  %arrayidx22 = getelementptr %struct.codec_vp9, ptr %3, i32 0, i32 1, i32 3, i32 %24
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22, align 4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55456, i32 noundef %26) #9
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 55436, i32 noundef 1024) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  %call24 = tail call i32 @amvdec_get_output_size(ptr noundef %sess) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55344, i32 noundef %call24) #9
  %call25 = tail call i32 @amvdec_get_output_size(ptr noundef %sess) #9
  %div145 = lshr i32 %call25, 1
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55352, i32 noundef %div145) #9
  %27 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform, align 4
  %revision27 = getelementptr inbounds %struct.vdec_platform, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %revision27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %revision27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp28 = icmp ugt i32 %30, 2
  br i1 %cmp28, label %if.then29, label %if.end23.if.end50_crit_edge

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then29:                                        ; preds = %if.end23
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 54316, i32 noundef 816) #9
  %31 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not = icmp eq i32 %32, 0
  br i1 %tobool33.not, label %if.then29.if.end35_crit_edge, label %if.then34

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 54316, i32 noundef 256) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then29.if.end35_crit_edge
  %33 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixfmt_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091854, i32 %34)
  %cmp37 = icmp eq i32 %34, 842091854
  br i1 %cmp37, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 54316, i32 noundef 512) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %width = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %35 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %36)
  %cmp40 = icmp ugt i32 %36, 1279
  br i1 %cmp40, label %if.then41, label %if.end39.do.body_crit_edge

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 54316, i32 noundef 16) #9
  br label %do.body

do.body:                                          ; preds = %if.then41, %if.end39.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_set_sao.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_set_sao, %if.then47)) #9
          to label %if.end50 [label %if.then47], !srcloc !89

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 54316) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_set_sao.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.24, i32 noundef %call48) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %do.body, %if.end23.if.end50_crit_edge
  %call51 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 55304) #9
  %and52 = and i32 %call51, -16369
  %or = or i32 %and52, 4080
  %37 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform, align 4
  %revision54 = getelementptr inbounds %struct.vdec_platform, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %revision54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %revision54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp55 = icmp ult i32 %40, 3
  br i1 %cmp55, label %if.then56, label %if.end50.if.end65_crit_edge

if.end50.if.end65_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %and57 = and i32 %or, -12292
  %41 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool61.not = icmp eq i32 %42, 0
  %or63 = zext i1 %tobool61.not to i32
  %spec.select = or i32 %and57, %or63
  br label %if.end65

if.end65:                                         ; preds = %if.then56, %if.end50.if.end65_crit_edge
  %val.0 = phi i32 [ %or, %if.end50.if.end65_crit_edge ], [ %spec.select, %if.then56 ]
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55304, i32 noundef %val.0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_set_sao.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_set_sao, %if.then78)) #9
          to label %do.end81 [label %if.then78], !srcloc !89

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_set_sao.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.25, i32 noundef %val.0) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %if.end65
  %call82 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 55436) #9
  %and83 = and i32 %call82, -16711681
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55436, i32 noundef %and83) #9
  %call84 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 53292) #9
  %and85 = and i32 %call84, -4160
  %or86 = or i32 %and85, 15
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 53292, i32 noundef %or86) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_set_refs(ptr nocapture noundef readonly %sess, ptr nocapture noundef readonly %vp9) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %is_10bit = getelementptr inbounds %struct.codec_vp9, ptr %vp9, i32 0, i32 5
  %arrayidx = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 14, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %index4 = getelementptr inbounds %struct.vp9_frame, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index4, align 4
  %mul = shl i32 %7, 1
  %add = or i32 %mul, 1
  %id_y.0 = select i1 %tobool2.not, i32 %mul, i32 %7
  %id_u_v.0 = select i1 %tobool2.not, i32 %add, i32 %7
  %shl = shl i32 %id_u_v.0, 16
  %shl6 = shl i32 %id_u_v.0, 8
  %or = or i32 %shl6, %id_y.0
  %or7 = or i32 %or, %shl
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54020, i32 noundef %or7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.1 = icmp eq i32 %11, 0
  %index4.1 = getelementptr inbounds %struct.vp9_frame, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %index4.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index4.1, align 4
  %mul.1 = shl i32 %13, 1
  %add.1 = or i32 %mul.1, 1
  %id_y.0.1 = select i1 %tobool2.not.1, i32 %mul.1, i32 %13
  %id_u_v.0.1 = select i1 %tobool2.not.1, i32 %add.1, i32 %13
  %shl.1 = shl i32 %id_u_v.0.1, 16
  %shl6.1 = shl i32 %id_u_v.0.1, 8
  %or.1 = or i32 %shl6.1, %id_y.0.1
  %or7.1 = or i32 %or.1, %shl.1
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54020, i32 noundef %or7.1) #9
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.codec_vp9, ptr %vp9, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %is_10bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_10bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.2 = icmp eq i32 %17, 0
  %index4.2 = getelementptr inbounds %struct.vp9_frame, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %index4.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index4.2, align 4
  %mul.2 = shl i32 %19, 1
  %add.2 = or i32 %mul.2, 1
  %id_y.0.2 = select i1 %tobool2.not.2, i32 %mul.2, i32 %19
  %id_u_v.0.2 = select i1 %tobool2.not.2, i32 %add.2, i32 %19
  %shl.2 = shl i32 %id_u_v.0.2, 16
  %shl6.2 = shl i32 %id_u_v.0.2, 8
  %or.2 = or i32 %shl6.2, %id_y.0.2
  %or7.2 = or i32 %or.2, %shl.2
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54020, i32 noundef %or7.2) #9
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_am21c_body_size(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_get_output_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_src_change(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_vp9_show_frame(ptr noundef %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ref_frames_list = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_frames_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_frames_list, align 4
  %cmp.not74 = icmp eq ptr %3, %ref_frames_list
  br i1 %cmp.not74, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cur_frame = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 20
  %frames_num = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 9
  %arrayidx.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 0
  %arrayidx.1.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 1
  %arrayidx.2.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 2
  %arrayidx.3.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 3
  %arrayidx.4.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 4
  %arrayidx.5.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 5
  %arrayidx.6.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 6
  %arrayidx.7.i = getelementptr %struct.codec_vp9, ptr %1, i32 0, i32 12, i32 7
  %prev_frame = getelementptr inbounds %struct.codec_vp9, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.075 = phi ptr [ %3, %for.body.lr.ph ], [ %n.077, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %tmp.075 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.077 = load ptr, ptr %tmp.075, align 4
  %show = getelementptr inbounds %struct.vp9_frame, ptr %tmp.075, i32 0, i32 4
  %5 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %show, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %7 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_frame, align 4
  %cmp8 = icmp eq ptr %tmp.075, %8
  br i1 %cmp8, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %done = getelementptr inbounds %struct.vp9_frame, ptr %tmp.075, i32 0, i32 6
  %9 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %do.body, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_show_frame.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_show_frame, %if.then16)) #9
          to label %do.end [label %if.then16], !srcloc !89

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.vp9_frame, ptr %tmp.075, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_show_frame.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.32, i32 noundef %12) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %vbuf = getelementptr inbounds %struct.vp9_frame, ptr %tmp.075, i32 0, i32 1
  %13 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbuf, align 4
  tail call void @amvdec_dst_buf_done(ptr noundef %sess, ptr noundef %14, i32 noundef 1) #9
  %15 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %done, align 4
  %16 = ptrtoint ptr %frames_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frames_num, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %frames_num, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %index.i = getelementptr inbounds %struct.vp9_frame, ptr %tmp.075, i32 0, i32 2
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp1.i = icmp eq i32 %21, %19
  br i1 %cmp1.i, label %if.end19.for.inc_crit_edge, label %for.cond.i

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.i:                                       ; preds = %if.end19
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp1.1.i = icmp eq i32 %23, %19
  br i1 %cmp1.1.i, label %for.cond.i.for.inc_crit_edge, label %for.cond.1.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.1.i:                                     ; preds = %for.cond.i
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp1.2.i = icmp eq i32 %25, %19
  br i1 %cmp1.2.i, label %for.cond.1.i.for.inc_crit_edge, label %for.cond.2.i

for.cond.1.i.for.inc_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp1.3.i = icmp eq i32 %27, %19
  br i1 %cmp1.3.i, label %for.cond.2.i.for.inc_crit_edge, label %for.cond.3.i

for.cond.2.i.for.inc_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %19)
  %cmp1.4.i = icmp eq i32 %29, %19
  br i1 %cmp1.4.i, label %for.cond.3.i.for.inc_crit_edge, label %for.cond.4.i

for.cond.3.i.for.inc_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %30 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %19)
  %cmp1.5.i = icmp eq i32 %31, %19
  br i1 %cmp1.5.i, label %for.cond.4.i.for.inc_crit_edge, label %for.cond.5.i

for.cond.4.i.for.inc_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %32 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %19)
  %cmp1.6.i = icmp eq i32 %33, %19
  br i1 %cmp1.6.i, label %for.cond.5.i.for.inc_crit_edge, label %codec_vp9_is_ref.exit

for.cond.5.i.for.inc_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

codec_vp9_is_ref.exit:                            ; preds = %for.cond.5.i
  %34 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %19)
  %cmp1.7.i = icmp eq i32 %35, %19
  br i1 %cmp1.7.i, label %codec_vp9_is_ref.exit.for.inc_crit_edge, label %lor.lhs.false21

codec_vp9_is_ref.exit.for.inc_crit_edge:          ; preds = %codec_vp9_is_ref.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false21:                                  ; preds = %codec_vp9_is_ref.exit
  %36 = ptrtoint ptr %prev_frame to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev_frame, align 4
  %cmp22 = icmp eq ptr %tmp.075, %37
  br i1 %cmp22, label %lor.lhs.false21.for.inc_crit_edge, label %do.body25

lor.lhs.false21.for.inc_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body25:                                        ; preds = %lor.lhs.false21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_vp9_show_frame.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_vp9_show_frame, %if.then37)) #9
          to label %do.end41 [label %if.then37], !srcloc !89

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @codec_vp9_show_frame.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.33, i32 noundef %39) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.075) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end41.list_del.exit_crit_edge

do.end41.list_del.exit_crit_edge:                 ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.075, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %tmp.075 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tmp.075, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end41.list_del.exit_crit_edge
  %46 = ptrtoint ptr %tmp.075 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.075, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.075, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.075) #9
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %lor.lhs.false21.for.inc_crit_edge, %codec_vp9_is_ref.exit.for.inc_crit_edge, %for.cond.5.i.for.inc_crit_edge, %for.cond.4.i.for.inc_crit_edge, %for.cond.3.i.for.inc_crit_edge, %for.cond.2.i.for.inc_crit_edge, %for.cond.1.i.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %n.077, %ref_frames_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @codec_vp9_ops, !1, !"codec_vp9_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 2164, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 819, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @codec_vp9_start.__UNIQUE_ID_ddebug314, !3, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!8 = !{ptr @codec_vp9_start.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 826, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 705, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @codec_vp9_alloc_workspace._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @codec_vp9_alloc_workspace._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1273, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @codec_vp9_process_frame.__UNIQUE_ID_ddebug320, !19, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1250, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @codec_vp9_rm_noshow_frame.__UNIQUE_ID_ddebug319, !23, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1201, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @codec_vp9_get_new_frame._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @codec_vp9_get_new_frame._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @codec_vp9_get_new_frame._entry.15, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1212, i32 4}
!33 = !{ptr @codec_vp9_get_new_frame._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1114, i32 4}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @codec_vp9_sync_ref._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @codec_vp9_sync_ref._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1030, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @codec_vp9_update_next_ref.__UNIQUE_ID_ddebug317, !40, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1238, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @codec_vp9_show_existing_frame.__UNIQUE_ID_ddebug318, !44, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 949, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @codec_vp9_set_sao.__UNIQUE_ID_ddebug315, !48, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 963, i32 2}
!53 = !{ptr @codec_vp9_set_sao.__UNIQUE_ID_ddebug316, !52, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 2093, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @codec_vp9_threaded_isr._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @codec_vp9_threaded_isr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 2099, i32 2}
!61 = !{ptr @codec_vp9_threaded_isr.__UNIQUE_ID_ddebug324, !60, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!62 = !{ptr @count_to_update_factor, !63, !"count_to_update_factor", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 338, i32 18}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1400, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @codec_vp9_process_rpm.__UNIQUE_ID_ddebug321, !65, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1427, i32 4}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @codec_vp9_show_frame.__UNIQUE_ID_ddebug322, !69, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1436, i32 3}
!74 = !{ptr @codec_vp9_show_frame.__UNIQUE_ID_ddebug323, !73, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/meson/vdec/codec_vp9.c", i32 1057, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @codec_vp9_save_refs._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @codec_vp9_save_refs._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148863322, i64 2148863327, i64 2148863340, i64 2148863384, i64 2148863418, i64 2148863439}
!90 = !{!"auto-init"}
