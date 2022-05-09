; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_merge_3d_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_global_state = type { %struct.drm_private_state, [7 x i32], [7 x i32], [6 x i32], [7 x i32], [4 x i32] }
%struct.drm_private_state = type { ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dpu_rm_requirements = type { %struct.msm_display_topology, %struct.dpu_encoder_hw_resources }
%struct.msm_display_topology = type { i32, i32, i32, i32 }
%struct.dpu_encoder_hw_resources = type { [8 x i32] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, ptr, %struct.dpu_hw_lm_ops, %struct.dpu_hw_mixer_cfg }
%struct.dpu_hw_lm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mixer_cfg = type { i32, i32, i8, i32 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dpu_rm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013[drm:%s] [dpu error]invalid kms\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpu_rm_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c\00", [57 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr = internal global ptr @dpu_rm_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"skip mixer %d without pingpong\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_rm_init.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[drm:%s] skip mixer %d without pingpong\0A\00", [55 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s] [dpu error]skip mixer %d with invalid id\0A\00", [43 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.8 = internal global ptr @dpu_rm_init._entry.6, section ".printk_index", align 4
@dpu_rm_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[drm:%s] [dpu error]failed lm object creation: err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.11 = internal global ptr @dpu_rm_init._entry.9, section ".printk_index", align 4
@dpu_rm_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s] [dpu error]unsupported: lm maxwidth differs\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.14 = internal global ptr @dpu_rm_init._entry.12, section ".printk_index", align 4
@dpu_rm_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s] [dpu error]skip merge_3d %d with invalid id\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.17 = internal global ptr @dpu_rm_init._entry.15, section ".printk_index", align 4
@dpu_rm_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[drm:%s] [dpu error]failed merge_3d object creation: err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.20 = internal global ptr @dpu_rm_init._entry.18, section ".printk_index", align 4
@dpu_rm_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s] [dpu error]skip pingpong %d with invalid id\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.23 = internal global ptr @dpu_rm_init._entry.21, section ".printk_index", align 4
@dpu_rm_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013[drm:%s] [dpu error]failed pingpong object creation: err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.26 = internal global ptr @dpu_rm_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"skip intf %d with type none\0A\00", [35 x i8] zeroinitializer }, align 32
@dpu_rm_init.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.27, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[drm:%s] skip intf %d with type none\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[drm:%s] [dpu error]skip intf %d with invalid id\0A\00", [44 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.31 = internal global ptr @dpu_rm_init._entry.29, section ".printk_index", align 4
@dpu_rm_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[drm:%s] [dpu error]failed intf object creation: err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.34 = internal global ptr @dpu_rm_init._entry.32, section ".printk_index", align 4
@dpu_rm_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[drm:%s] [dpu error]skip ctl %d with invalid id\0A\00", [45 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.37 = internal global ptr @dpu_rm_init._entry.35, section ".printk_index", align 4
@dpu_rm_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[drm:%s] [dpu error]failed ctl object creation: err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.40 = internal global ptr @dpu_rm_init._entry.38, section ".printk_index", align 4
@dpu_rm_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[drm:%s] [dpu error]skip dspp %d with invalid id\0A\00", [44 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.43 = internal global ptr @dpu_rm_init._entry.41, section ".printk_index", align 4
@dpu_rm_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[drm:%s] [dpu error]failed dspp object creation: err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dpu_rm_init._entry_ptr.46 = internal global ptr @dpu_rm_init._entry.44, section ".printk_index", align 4
@dpu_rm_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[drm:%s] [dpu error]failed to global state\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpu_rm_reserve\00", [17 x i8] zeroinitializer }, align 32
@dpu_rm_reserve._entry_ptr = internal global ptr @dpu_rm_reserve._entry, section ".printk_index", align 4
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reserving hw for enc %d crtc %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpu_rm_reserve._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[drm:%s] [dpu error]failed to populate hw requirements\0A\00", [38 x i8] zeroinitializer }, align 32
@dpu_rm_reserve._entry_ptr.52 = internal global ptr @dpu_rm_reserve._entry.50, section ".printk_index", align 4
@dpu_rm_reserve._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[drm:%s] [dpu error]failed to reserve hw resources: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpu_rm_reserve._entry_ptr.55 = internal global ptr @dpu_rm_reserve._entry.53, section ".printk_index", align 4
@dpu_rm_get_assigned_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s] [dpu error]blk type %d not managed by rm\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_rm_get_assigned_resources\00", [34 x i8] zeroinitializer }, align 32
@dpu_rm_get_assigned_resources._entry_ptr = internal global ptr @dpu_rm_get_assigned_resources._entry, section ".printk_index", align 4
@dpu_rm_get_assigned_resources._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[drm:%s] [dpu error]More than %d resources assigned to enc %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpu_rm_get_assigned_resources._entry_ptr.60 = internal global ptr @dpu_rm_get_assigned_resources._entry.58, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"num_lm: %d num_enc: %d num_intf: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@_dpu_rm_make_reservation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[drm:%s] [dpu error]unable to find appropriate mixers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_dpu_rm_make_reservation\00", [39 x i8] zeroinitializer }, align 32
@_dpu_rm_make_reservation._entry_ptr = internal global ptr @_dpu_rm_make_reservation._entry, section ".printk_index", align 4
@_dpu_rm_make_reservation._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[drm:%s] [dpu error]unable to find appropriate CTL\0A\00", [42 x i8] zeroinitializer }, align 32
@_dpu_rm_make_reservation._entry_ptr.66 = internal global ptr @_dpu_rm_make_reservation._entry.64, section ".printk_index", align 4
@_dpu_rm_reserve_lms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[drm:%s] [dpu error]invalid number of lm: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_dpu_rm_reserve_lms\00", [44 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_lms._entry_ptr = internal global ptr @_dpu_rm_reserve_lms._entry, section ".printk_index", align 4
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lm %d not peer of lm %d\0A\00", [39 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[drm:%s] lm %d not peer of lm %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to find appropriate mixers\0A\00", [61 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm:%s] unable to find appropriate mixers\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm %d already reserved\0A\00", [40 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.74, ptr @.str.2, ptr @.str.73, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"_dpu_rm_check_lm_and_get_connected_blks\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[drm:%s] lm %d already reserved\0A\00", [63 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s] [dpu error]failed to get pp on lm %d\0A\00", [47 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks._entry_ptr = internal global ptr @_dpu_rm_check_lm_and_get_connected_blks._entry, section ".printk_index", align 4
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lm %d pp %d already reserved\0A\00", [34 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.74, ptr @.str.2, ptr @.str.77, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[drm:%s] lm %d pp %d already reserved\0A\00", [57 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[drm:%s] [dpu error]failed to get dspp on lm %d\0A\00", [45 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks._entry_ptr.81 = internal global ptr @_dpu_rm_check_lm_and_get_connected_blks._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lm %d dspp %d already reserved\0A\00", [32 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.74, ptr @.str.2, ptr @.str.82, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[drm:%s] lm %d dspp %d already reserved\0A\00", [55 x i8] zeroinitializer }, align 32
@_dpu_rm_check_lm_peer.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.84, ptr @.str.2, ptr @.str.69, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_dpu_rm_check_lm_peer\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_rm_reserve_lms = external dso_local global %struct.tracepoint, align 4
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_rm_reserve_lms.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctl %d caps 0x%lX\0A\00", [45 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.89, ptr @.str.2, ptr @.str.88, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_dpu_rm_reserve_ctls\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[drm:%s] ctl %d caps 0x%lX\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctl %d match\0A\00", [18 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.89, ptr @.str.2, ptr @.str.91, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[drm:%s] ctl %d match\0A\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_rm_reserve_ctls = external dso_local global %struct.tracepoint, align 4
@trace_dpu_rm_reserve_ctls.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_dpu_rm_reserve_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[drm:%s] [dpu error]invalid intf id: %d\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_dpu_rm_reserve_intf\00", [43 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_intf._entry_ptr = internal global ptr @_dpu_rm_reserve_intf._entry, section ".printk_index", align 4
@_dpu_rm_reserve_intf._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[drm:%s] [dpu error]couldn't find intf id %d\0A\00", [48 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_intf._entry_ptr.97 = internal global ptr @_dpu_rm_reserve_intf._entry.95, section ".printk_index", align 4
@_dpu_rm_reserve_intf._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[drm:%s] [dpu error]intf id %d already reserved\0A\00", [45 x i8] zeroinitializer }, align 32
@_dpu_rm_reserve_intf._entry_ptr.100 = internal global ptr @_dpu_rm_reserve_intf._entry.98, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 89, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 102, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 107, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 113, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 125, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 136, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 142, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 154, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 160, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 174, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 178, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 184, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 195, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 201, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 212, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 218, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 587, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 591, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 596, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 602, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 644, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 654, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 541, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 513, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 520, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 339, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 367, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 385, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 290, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 297, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 302, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 313, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 318, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 255, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 829, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 108, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 431, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 437, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 464, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 469, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [42 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 474, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @_dpu_rm_check_lm_and_get_connected_blks._entry, ptr @_dpu_rm_check_lm_and_get_connected_blks._entry.79, ptr @_dpu_rm_check_lm_and_get_connected_blks._entry_ptr, ptr @_dpu_rm_check_lm_and_get_connected_blks._entry_ptr.81, ptr @_dpu_rm_make_reservation._entry, ptr @_dpu_rm_make_reservation._entry.64, ptr @_dpu_rm_make_reservation._entry_ptr, ptr @_dpu_rm_make_reservation._entry_ptr.66, ptr @_dpu_rm_reserve_intf._entry, ptr @_dpu_rm_reserve_intf._entry.95, ptr @_dpu_rm_reserve_intf._entry.98, ptr @_dpu_rm_reserve_intf._entry_ptr, ptr @_dpu_rm_reserve_intf._entry_ptr.100, ptr @_dpu_rm_reserve_intf._entry_ptr.97, ptr @_dpu_rm_reserve_lms._entry, ptr @_dpu_rm_reserve_lms._entry_ptr, ptr @dpu_rm_get_assigned_resources._entry, ptr @dpu_rm_get_assigned_resources._entry.58, ptr @dpu_rm_get_assigned_resources._entry_ptr, ptr @dpu_rm_get_assigned_resources._entry_ptr.60, ptr @dpu_rm_init._entry, ptr @dpu_rm_init._entry.12, ptr @dpu_rm_init._entry.15, ptr @dpu_rm_init._entry.18, ptr @dpu_rm_init._entry.21, ptr @dpu_rm_init._entry.24, ptr @dpu_rm_init._entry.29, ptr @dpu_rm_init._entry.32, ptr @dpu_rm_init._entry.35, ptr @dpu_rm_init._entry.38, ptr @dpu_rm_init._entry.41, ptr @dpu_rm_init._entry.44, ptr @dpu_rm_init._entry.6, ptr @dpu_rm_init._entry.9, ptr @dpu_rm_init._entry_ptr, ptr @dpu_rm_init._entry_ptr.11, ptr @dpu_rm_init._entry_ptr.14, ptr @dpu_rm_init._entry_ptr.17, ptr @dpu_rm_init._entry_ptr.20, ptr @dpu_rm_init._entry_ptr.23, ptr @dpu_rm_init._entry_ptr.26, ptr @dpu_rm_init._entry_ptr.31, ptr @dpu_rm_init._entry_ptr.34, ptr @dpu_rm_init._entry_ptr.37, ptr @dpu_rm_init._entry_ptr.40, ptr @dpu_rm_init._entry_ptr.43, ptr @dpu_rm_init._entry_ptr.46, ptr @dpu_rm_init._entry_ptr.8, ptr @dpu_rm_reserve._entry, ptr @dpu_rm_reserve._entry.50, ptr @dpu_rm_reserve._entry.53, ptr @dpu_rm_reserve._entry_ptr, ptr @dpu_rm_reserve._entry_ptr.52, ptr @dpu_rm_reserve._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_reserve._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_reserve._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_get_assigned_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_rm_get_assigned_resources._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_make_reservation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_make_reservation._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_reserve_lms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_check_lm_and_get_connected_blks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_check_lm_and_get_connected_blks._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_reserve_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_reserve_intf._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_rm_reserve_intf._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_destroy(ptr nocapture noundef readonly %rm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %3) #8
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx.2 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %5) #8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx.3 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %7) #8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %arrayidx.4 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %9) #8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %arrayidx.5 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %11) #8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %arrayidx.6 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %13, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %13) #8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %arrayidx7 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end.6.if.end13_crit_edge, label %if.then9

if.end.6.if.end13_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_merge_3d_destroy(ptr noundef nonnull %15) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.6.if.end13_crit_edge
  %arrayidx7.1 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.1, align 4
  %tobool8.not.1 = icmp eq ptr %17, null
  br i1 %tobool8.not.1, label %if.end13.if.end13.1_crit_edge, label %if.then9.1

if.end13.if.end13.1_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.1

if.then9.1:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_merge_3d_destroy(ptr noundef nonnull %17) #8
  br label %if.end13.1

if.end13.1:                                       ; preds = %if.then9.1, %if.end13.if.end13.1_crit_edge
  %arrayidx7.2 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7.2, align 4
  %tobool8.not.2 = icmp eq ptr %19, null
  br i1 %tobool8.not.2, label %if.end13.1.if.end13.2_crit_edge, label %if.then9.2

if.end13.1.if.end13.2_crit_edge:                  ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.2

if.then9.2:                                       ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_merge_3d_destroy(ptr noundef nonnull %19) #8
  br label %if.end13.2

if.end13.2:                                       ; preds = %if.then9.2, %if.end13.1.if.end13.2_crit_edge
  %arrayidx21 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %if.end13.2.if.end27_crit_edge, label %if.then23

if.end13.2.if.end27_crit_edge:                    ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %21) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end13.2.if.end27_crit_edge
  %arrayidx21.1 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21.1, align 4
  %tobool22.not.1 = icmp eq ptr %23, null
  br i1 %tobool22.not.1, label %if.end27.if.end27.1_crit_edge, label %if.then23.1

if.end27.if.end27.1_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.1

if.then23.1:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %23) #8
  br label %if.end27.1

if.end27.1:                                       ; preds = %if.then23.1, %if.end27.if.end27.1_crit_edge
  %arrayidx21.2 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21.2, align 4
  %tobool22.not.2 = icmp eq ptr %25, null
  br i1 %tobool22.not.2, label %if.end27.1.if.end27.2_crit_edge, label %if.then23.2

if.end27.1.if.end27.2_crit_edge:                  ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.2

if.then23.2:                                      ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %25) #8
  br label %if.end27.2

if.end27.2:                                       ; preds = %if.then23.2, %if.end27.1.if.end27.2_crit_edge
  %arrayidx21.3 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx21.3, align 4
  %tobool22.not.3 = icmp eq ptr %27, null
  br i1 %tobool22.not.3, label %if.end27.2.if.end27.3_crit_edge, label %if.then23.3

if.end27.2.if.end27.3_crit_edge:                  ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.3

if.then23.3:                                      ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %27) #8
  br label %if.end27.3

if.end27.3:                                       ; preds = %if.then23.3, %if.end27.2.if.end27.3_crit_edge
  %arrayidx21.4 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx21.4, align 4
  %tobool22.not.4 = icmp eq ptr %29, null
  br i1 %tobool22.not.4, label %if.end27.3.if.end27.4_crit_edge, label %if.then23.4

if.end27.3.if.end27.4_crit_edge:                  ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.4

if.then23.4:                                      ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %29) #8
  br label %if.end27.4

if.end27.4:                                       ; preds = %if.then23.4, %if.end27.3.if.end27.4_crit_edge
  %arrayidx21.5 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx21.5, align 4
  %tobool22.not.5 = icmp eq ptr %31, null
  br i1 %tobool22.not.5, label %if.end27.4.if.end27.5_crit_edge, label %if.then23.5

if.end27.4.if.end27.5_crit_edge:                  ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.5

if.then23.5:                                      ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %31) #8
  br label %if.end27.5

if.end27.5:                                       ; preds = %if.then23.5, %if.end27.4.if.end27.5_crit_edge
  %arrayidx21.6 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx21.6, align 4
  %tobool22.not.6 = icmp eq ptr %33, null
  br i1 %tobool22.not.6, label %if.end27.5.if.end27.6_crit_edge, label %if.then23.6

if.end27.5.if.end27.6_crit_edge:                  ; preds = %if.end27.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.6

if.then23.6:                                      ; preds = %if.end27.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %33) #8
  br label %if.end27.6

if.end27.6:                                       ; preds = %if.then23.6, %if.end27.5.if.end27.6_crit_edge
  %arrayidx35 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 0
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %35, null
  br i1 %tobool36.not, label %if.end27.6.if.end41_crit_edge, label %if.then37

if.end27.6.if.end41_crit_edge:                    ; preds = %if.end27.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then37:                                        ; preds = %if.end27.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %35) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end27.6.if.end41_crit_edge
  %arrayidx35.1 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx35.1, align 4
  %tobool36.not.1 = icmp eq ptr %37, null
  br i1 %tobool36.not.1, label %if.end41.if.end41.1_crit_edge, label %if.then37.1

if.end41.if.end41.1_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.1

if.then37.1:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %37) #8
  br label %if.end41.1

if.end41.1:                                       ; preds = %if.then37.1, %if.end41.if.end41.1_crit_edge
  %arrayidx35.2 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx35.2, align 4
  %tobool36.not.2 = icmp eq ptr %39, null
  br i1 %tobool36.not.2, label %if.end41.1.if.end41.2_crit_edge, label %if.then37.2

if.end41.1.if.end41.2_crit_edge:                  ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.2

if.then37.2:                                      ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %39) #8
  br label %if.end41.2

if.end41.2:                                       ; preds = %if.then37.2, %if.end41.1.if.end41.2_crit_edge
  %arrayidx35.3 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx35.3, align 4
  %tobool36.not.3 = icmp eq ptr %41, null
  br i1 %tobool36.not.3, label %if.end41.2.if.end41.3_crit_edge, label %if.then37.3

if.end41.2.if.end41.3_crit_edge:                  ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.3

if.then37.3:                                      ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %41) #8
  br label %if.end41.3

if.end41.3:                                       ; preds = %if.then37.3, %if.end41.2.if.end41.3_crit_edge
  %arrayidx35.4 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx35.4, align 4
  %tobool36.not.4 = icmp eq ptr %43, null
  br i1 %tobool36.not.4, label %if.end41.3.if.end41.4_crit_edge, label %if.then37.4

if.end41.3.if.end41.4_crit_edge:                  ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.4

if.then37.4:                                      ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %43) #8
  br label %if.end41.4

if.end41.4:                                       ; preds = %if.then37.4, %if.end41.3.if.end41.4_crit_edge
  %arrayidx35.5 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 5
  %44 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx35.5, align 4
  %tobool36.not.5 = icmp eq ptr %45, null
  br i1 %tobool36.not.5, label %if.end41.4.if.end41.5_crit_edge, label %if.then37.5

if.end41.4.if.end41.5_crit_edge:                  ; preds = %if.end41.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.5

if.then37.5:                                      ; preds = %if.end41.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %45) #8
  br label %if.end41.5

if.end41.5:                                       ; preds = %if.then37.5, %if.end41.4.if.end41.5_crit_edge
  %arrayidx49 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 0
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %47, null
  br i1 %tobool50.not, label %if.end41.5.if.end55_crit_edge, label %if.then51

if.end41.5.if.end55_crit_edge:                    ; preds = %if.end41.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.end41.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %47) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end41.5.if.end55_crit_edge
  %arrayidx49.1 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx49.1, align 4
  %tobool50.not.1 = icmp eq ptr %49, null
  br i1 %tobool50.not.1, label %if.end55.if.end55.1_crit_edge, label %if.then51.1

if.end55.if.end55.1_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.1

if.then51.1:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %49) #8
  br label %if.end55.1

if.end55.1:                                       ; preds = %if.then51.1, %if.end55.if.end55.1_crit_edge
  %arrayidx49.2 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx49.2, align 4
  %tobool50.not.2 = icmp eq ptr %51, null
  br i1 %tobool50.not.2, label %if.end55.1.if.end55.2_crit_edge, label %if.then51.2

if.end55.1.if.end55.2_crit_edge:                  ; preds = %if.end55.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.2

if.then51.2:                                      ; preds = %if.end55.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %51) #8
  br label %if.end55.2

if.end55.2:                                       ; preds = %if.then51.2, %if.end55.1.if.end55.2_crit_edge
  %arrayidx49.3 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx49.3, align 4
  %tobool50.not.3 = icmp eq ptr %53, null
  br i1 %tobool50.not.3, label %if.end55.2.if.end55.3_crit_edge, label %if.then51.3

if.end55.2.if.end55.3_crit_edge:                  ; preds = %if.end55.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.3

if.then51.3:                                      ; preds = %if.end55.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %53) #8
  br label %if.end55.3

if.end55.3:                                       ; preds = %if.then51.3, %if.end55.2.if.end55.3_crit_edge
  %arrayidx49.4 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 4
  %54 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx49.4, align 4
  %tobool50.not.4 = icmp eq ptr %55, null
  br i1 %tobool50.not.4, label %if.end55.3.if.end55.4_crit_edge, label %if.then51.4

if.end55.3.if.end55.4_crit_edge:                  ; preds = %if.end55.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.4

if.then51.4:                                      ; preds = %if.end55.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %55) #8
  br label %if.end55.4

if.end55.4:                                       ; preds = %if.then51.4, %if.end55.3.if.end55.4_crit_edge
  %arrayidx49.5 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 5
  %56 = ptrtoint ptr %arrayidx49.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx49.5, align 4
  %tobool50.not.5 = icmp eq ptr %57, null
  br i1 %tobool50.not.5, label %if.end55.4.if.end55.5_crit_edge, label %if.then51.5

if.end55.4.if.end55.5_crit_edge:                  ; preds = %if.end55.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.5

if.then51.5:                                      ; preds = %if.end55.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %57) #8
  br label %if.end55.5

if.end55.5:                                       ; preds = %if.then51.5, %if.end55.4.if.end55.5_crit_edge
  %arrayidx49.6 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx49.6, align 4
  %tobool50.not.6 = icmp eq ptr %59, null
  br i1 %tobool50.not.6, label %if.end55.5.if.end55.6_crit_edge, label %if.then51.6

if.end55.5.if.end55.6_crit_edge:                  ; preds = %if.end55.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.6

if.then51.6:                                      ; preds = %if.end55.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %59) #8
  br label %if.end55.6

if.end55.6:                                       ; preds = %if.then51.6, %if.end55.5.if.end55.6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_pingpong_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_merge_3d_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_lm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_ctl_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_intf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_init(ptr noundef %rm, ptr noundef %cat, ptr noundef %mmio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rm, null
  %tobool1.not = icmp eq ptr %cat, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %mmio, null
  %or.cond448 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond448, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup321

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %rm, i32 0, i32 140)
  %mixer_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 8
  %1 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mixer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp502.not = icmp eq i32 %2, 0
  br i1 %cmp502.not, label %if.end.for.cond76.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond76.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond76.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %mixer = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 9
  %lm_max_width = getelementptr inbounds %struct.dpu_rm, ptr %rm, i32 0, i32 6
  br label %for.body

for.cond76.preheader:                             ; preds = %for.inc.for.cond76.preheader_crit_edge, %if.end.for.cond76.preheader_crit_edge
  %merge_3d_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 12
  %3 = ptrtoint ptr %merge_3d_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %merge_3d_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp77505.not = icmp eq i32 %4, 0
  br i1 %cmp77505.not, label %for.cond76.preheader.for.cond117.preheader_crit_edge, label %for.body78.lr.ph

for.cond76.preheader.for.cond117.preheader_crit_edge: ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond117.preheader

for.body78.lr.ph:                                 ; preds = %for.cond76.preheader
  %merge_3d80 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 13
  br label %for.body78

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0503 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mixer, align 4
  %pingpong = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %i.0503, i32 6
  %7 = ptrtoint ptr %pingpong to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pingpong, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp4 = icmp eq i32 %8, 8
  br i1 %cmp4, label %do.body6, label %if.end23

do.body6:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %9 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %i.0503, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %11) #8
  br label %for.inc

do.body9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_rm_init.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_rm_init, %if.then15)) #8
          to label %for.inc [label %if.then15], !srcloc !182

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %id16 = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %i.0503, i32 1
  %12 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id16, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_rm_init.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %13) #8
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %id24 = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %i.0503, i32 1
  %14 = ptrtoint ptr %id24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id24, align 4
  %16 = add i32 %15, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %16)
  %17 = icmp ult i32 %16, -7
  br i1 %17, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %15) #11
  br label %for.inc

if.end36:                                         ; preds = %if.end23
  %call38 = tail call ptr @dpu_hw_lm_init(i32 noundef %15, ptr noundef nonnull %mmio, ptr noundef nonnull %cat) #8
  %tobool.not.i = icmp eq ptr %call38, null
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %cleanup.thread480, label %if.end47

cleanup.thread480:                                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call38 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %18) #11
  br label %fail

if.end47:                                         ; preds = %if.end36
  %19 = ptrtoint ptr %id24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id24, align 4
  %sub = add i32 %20, -1
  %arrayidx49 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 %sub
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38, ptr %arrayidx49, align 4
  %22 = ptrtoint ptr %lm_max_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lm_max_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not = icmp eq i32 %23, 0
  %sblk = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %i.0503, i32 5
  %24 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sblk, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  br i1 %tobool50.not, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %lm_max_width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %lm_max_width, align 4
  br label %for.inc

if.else53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp57.not = icmp eq i32 %23, %27
  br i1 %cmp57.not, label %if.else53.for.inc_crit_edge, label %do.end61

if.else53.for.inc_crit_edge:                      ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end61:                                         ; preds = %if.else53
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #11
  %29 = ptrtoint ptr %lm_max_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lm_max_width, align 4
  %31 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sblk, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %34)
  %cmp67 = icmp ugt i32 %30, %34
  br i1 %cmp67, label %if.then68, label %do.end61.for.inc_crit_edge

do.end61.for.inc_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then68:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %lm_max_width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lm_max_width, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %do.end61.for.inc_crit_edge, %if.else53.for.inc_crit_edge, %if.then51, %do.end32, %if.then15, %do.body9, %if.then8
  %inc = add nuw i32 %i.0503, 1
  %36 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mixer_count, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond76.preheader_crit_edge

for.inc.for.cond76.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond76.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond117.preheader:                            ; preds = %for.inc114.for.cond117.preheader_crit_edge, %for.cond76.preheader.for.cond117.preheader_crit_edge
  %pingpong_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 10
  %38 = ptrtoint ptr %pingpong_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pingpong_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp118507.not = icmp eq i32 %39, 0
  br i1 %cmp118507.not, label %for.cond117.preheader.for.cond170.preheader_crit_edge, label %for.body119.lr.ph

for.cond117.preheader.for.cond170.preheader_crit_edge: ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond170.preheader

for.body119.lr.ph:                                ; preds = %for.cond117.preheader
  %pingpong121 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 11
  br label %for.body119

for.body78:                                       ; preds = %for.inc114.for.body78_crit_edge, %for.body78.lr.ph
  %i.1506 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc115, %for.inc114.for.body78_crit_edge ]
  %40 = ptrtoint ptr %merge_3d80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %merge_3d80, align 4
  %id82 = getelementptr %struct.dpu_merge_3d_cfg, ptr %41, i32 %i.1506, i32 1
  %42 = ptrtoint ptr %id82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id82, align 4
  %44 = add i32 %43, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %44)
  %45 = icmp ult i32 %44, -3
  br i1 %45, label %do.end90, label %if.end94

do.end90:                                         ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %43) #11
  br label %for.inc114

if.end94:                                         ; preds = %for.body78
  %call96 = tail call ptr @dpu_hw_merge_3d_init(i32 noundef %43, ptr noundef nonnull %mmio, ptr noundef nonnull %cat) #8
  %tobool.not.i459 = icmp eq ptr %call96, null
  %cmp.i460 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  %spec.select.i461 = or i1 %tobool.not.i459, %cmp.i460
  br i1 %spec.select.i461, label %cleanup110, label %if.end105

if.end105:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %id82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id82, align 4
  %sub108 = add i32 %47, -1
  %arrayidx109 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 5, i32 %sub108
  %48 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call96, ptr %arrayidx109, align 4
  br label %for.inc114

cleanup110:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call96 to i32
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef %49) #11
  br label %fail

for.inc114:                                       ; preds = %if.end105, %do.end90
  %inc115 = add nuw i32 %i.1506, 1
  %50 = ptrtoint ptr %merge_3d_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %merge_3d_count, align 4
  %cmp77 = icmp ult i32 %inc115, %51
  br i1 %cmp77, label %for.inc114.for.body78_crit_edge, label %for.inc114.for.cond117.preheader_crit_edge

for.inc114.for.cond117.preheader_crit_edge:       ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond117.preheader

for.inc114.for.body78_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78

for.cond170.preheader:                            ; preds = %for.inc167.for.cond170.preheader_crit_edge, %for.cond117.preheader.for.cond170.preheader_crit_edge
  %intf_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 14
  %52 = ptrtoint ptr %intf_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %intf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp171510.not = icmp eq i32 %53, 0
  br i1 %cmp171510.not, label %for.cond170.preheader.for.cond237.preheader_crit_edge, label %for.body172.lr.ph

for.cond170.preheader.for.cond237.preheader_crit_edge: ; preds = %for.cond170.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond237.preheader

for.body172.lr.ph:                                ; preds = %for.cond170.preheader
  %intf174 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 15
  br label %for.body172

for.body119:                                      ; preds = %for.inc167.for.body119_crit_edge, %for.body119.lr.ph
  %i.2508 = phi i32 [ 0, %for.body119.lr.ph ], [ %inc168, %for.inc167.for.body119_crit_edge ]
  %54 = ptrtoint ptr %pingpong121 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pingpong121, align 4
  %id123 = getelementptr %struct.dpu_pingpong_cfg, ptr %55, i32 %i.2508, i32 1
  %56 = ptrtoint ptr %id123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id123, align 4
  %58 = add i32 %57, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %58)
  %59 = icmp ult i32 %58, -7
  br i1 %59, label %do.end131, label %if.end135

do.end131:                                        ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef %57) #11
  br label %for.inc167

if.end135:                                        ; preds = %for.body119
  %call137 = tail call ptr @dpu_hw_pingpong_init(i32 noundef %57, ptr noundef nonnull %mmio, ptr noundef nonnull %cat) #8
  %tobool.not.i462 = icmp eq ptr %call137, null
  %cmp.i463 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  %spec.select.i464 = or i1 %tobool.not.i462, %cmp.i463
  br i1 %spec.select.i464, label %cleanup163, label %if.end146

if.end146:                                        ; preds = %if.end135
  %merge_3d147 = getelementptr %struct.dpu_pingpong_cfg, ptr %55, i32 %i.2508, i32 5
  %60 = ptrtoint ptr %merge_3d147 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %merge_3d147, align 4
  %62 = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %63 = icmp ult i32 %62, 3
  br i1 %63, label %if.then151, label %if.end146.if.end158_crit_edge

if.end146.if.end158_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx155 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 5, i32 %62
  %64 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx155, align 4
  %merge_3d157 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call137, i32 0, i32 4
  %66 = ptrtoint ptr %merge_3d157 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %merge_3d157, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %if.end146.if.end158_crit_edge
  %67 = ptrtoint ptr %id123 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id123, align 4
  %sub161 = add i32 %68, -1
  %arrayidx162 = getelementptr [7 x ptr], ptr %rm, i32 0, i32 %sub161
  %69 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call137, ptr %arrayidx162, align 4
  br label %for.inc167

cleanup163:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %call137 to i32
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef %70) #11
  br label %fail

for.inc167:                                       ; preds = %if.end158, %do.end131
  %inc168 = add nuw i32 %i.2508, 1
  %71 = ptrtoint ptr %pingpong_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pingpong_count, align 4
  %cmp118 = icmp ult i32 %inc168, %72
  br i1 %cmp118, label %for.inc167.for.body119_crit_edge, label %for.inc167.for.cond170.preheader_crit_edge

for.inc167.for.cond170.preheader_crit_edge:       ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond170.preheader

for.inc167.for.body119_crit_edge:                 ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119

for.cond237.preheader:                            ; preds = %for.inc234.for.cond237.preheader_crit_edge, %for.cond170.preheader.for.cond237.preheader_crit_edge
  %ctl_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 4
  %73 = ptrtoint ptr %ctl_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ctl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp238513.not = icmp eq i32 %74, 0
  br i1 %cmp238513.not, label %for.cond237.preheader.for.cond278.preheader_crit_edge, label %for.body239.lr.ph

for.cond237.preheader.for.cond278.preheader_crit_edge: ; preds = %for.cond237.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond278.preheader

for.body239.lr.ph:                                ; preds = %for.cond237.preheader
  %ctl241 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 5
  br label %for.body239

for.body172:                                      ; preds = %for.inc234.for.body172_crit_edge, %for.body172.lr.ph
  %i.3511 = phi i32 [ 0, %for.body172.lr.ph ], [ %inc235, %for.inc234.for.body172_crit_edge ]
  %75 = ptrtoint ptr %intf174 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %intf174, align 4
  %type = getelementptr %struct.dpu_intf_cfg, ptr %76, i32 %i.3511, i32 5
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp176 = icmp eq i32 %78, 0
  br i1 %cmp176, label %do.body178, label %if.end201

do.body178:                                       ; preds = %for.body172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %79 = load i32, ptr @__drm_debug, align 4
  %and.i465 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i465)
  %tobool.i466.not = icmp eq i32 %and.i465, 0
  br i1 %tobool.i466.not, label %do.body182, label %if.then180

if.then180:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef %i.3511) #8
  br label %for.inc234

do.body182:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_rm_init.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_rm_init, %if.then194)) #8
          to label %for.inc234 [label %if.then194], !srcloc !182

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_rm_init.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef %i.3511) #8
  br label %for.inc234

if.end201:                                        ; preds = %for.body172
  %id202 = getelementptr %struct.dpu_intf_cfg, ptr %76, i32 %i.3511, i32 1
  %80 = ptrtoint ptr %id202 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id202, align 4
  %82 = add i32 %81, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %82)
  %83 = icmp ult i32 %82, -7
  br i1 %83, label %do.end210, label %if.end214

do.end210:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef %81) #11
  br label %for.inc234

if.end214:                                        ; preds = %if.end201
  %call216 = tail call ptr @dpu_hw_intf_init(i32 noundef %81, ptr noundef nonnull %mmio, ptr noundef nonnull %cat) #8
  %tobool.not.i467 = icmp eq ptr %call216, null
  %cmp.i468 = icmp ugt ptr %call216, inttoptr (i32 -4096 to ptr)
  %spec.select.i469 = or i1 %tobool.not.i467, %cmp.i468
  br i1 %spec.select.i469, label %cleanup230.thread493, label %if.end225

cleanup230.thread493:                             ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %call216 to i32
  %call224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef %84) #11
  br label %fail

if.end225:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %id202 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id202, align 4
  %sub228 = add i32 %86, -1
  %arrayidx229 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 %sub228
  %87 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call216, ptr %arrayidx229, align 4
  br label %for.inc234

for.inc234:                                       ; preds = %if.end225, %do.end210, %if.then194, %do.body182, %if.then180
  %inc235 = add nuw i32 %i.3511, 1
  %88 = ptrtoint ptr %intf_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %intf_count, align 4
  %cmp171 = icmp ult i32 %inc235, %89
  br i1 %cmp171, label %for.inc234.for.body172_crit_edge, label %for.inc234.for.cond237.preheader_crit_edge

for.inc234.for.cond237.preheader_crit_edge:       ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond237.preheader

for.inc234.for.body172_crit_edge:                 ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body172

for.cond278.preheader:                            ; preds = %for.inc275.for.cond278.preheader_crit_edge, %for.cond237.preheader.for.cond278.preheader_crit_edge
  %dspp_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 21
  %90 = ptrtoint ptr %dspp_count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dspp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp279515.not = icmp eq i32 %91, 0
  br i1 %cmp279515.not, label %for.cond278.preheader.cleanup321_crit_edge, label %for.body280.lr.ph

for.cond278.preheader.cleanup321_crit_edge:       ; preds = %for.cond278.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup321

for.body280.lr.ph:                                ; preds = %for.cond278.preheader
  %dspp282 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %cat, i32 0, i32 22
  br label %for.body280

for.body239:                                      ; preds = %for.inc275.for.body239_crit_edge, %for.body239.lr.ph
  %i.4514 = phi i32 [ 0, %for.body239.lr.ph ], [ %inc276, %for.inc275.for.body239_crit_edge ]
  %92 = ptrtoint ptr %ctl241 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctl241, align 4
  %id243 = getelementptr %struct.dpu_ctl_cfg, ptr %93, i32 %i.4514, i32 1
  %94 = ptrtoint ptr %id243 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %id243, align 4
  %96 = add i32 %95, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %96)
  %97 = icmp ult i32 %96, -6
  br i1 %97, label %do.end251, label %if.end255

do.end251:                                        ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #10
  %call254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef %95) #11
  br label %for.inc275

if.end255:                                        ; preds = %for.body239
  %call257 = tail call ptr @dpu_hw_ctl_init(i32 noundef %95, ptr noundef nonnull %mmio, ptr noundef nonnull %cat) #8
  %tobool.not.i470 = icmp eq ptr %call257, null
  %cmp.i471 = icmp ugt ptr %call257, inttoptr (i32 -4096 to ptr)
  %spec.select.i472 = or i1 %tobool.not.i470, %cmp.i471
  br i1 %spec.select.i472, label %cleanup271, label %if.end266

if.end266:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %id243 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id243, align 4
  %sub269 = add i32 %99, -1
  %arrayidx270 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 %sub269
  %100 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call257, ptr %arrayidx270, align 4
  br label %for.inc275

cleanup271:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %call257 to i32
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef %101) #11
  br label %fail

for.inc275:                                       ; preds = %if.end266, %do.end251
  %inc276 = add nuw i32 %i.4514, 1
  %102 = ptrtoint ptr %ctl_count to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ctl_count, align 4
  %cmp238 = icmp ult i32 %inc276, %103
  br i1 %cmp238, label %for.inc275.for.body239_crit_edge, label %for.inc275.for.cond278.preheader_crit_edge

for.inc275.for.cond278.preheader_crit_edge:       ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond278.preheader

for.inc275.for.body239_crit_edge:                 ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body239

for.body280:                                      ; preds = %for.inc316.for.body280_crit_edge, %for.body280.lr.ph
  %i.5516 = phi i32 [ 0, %for.body280.lr.ph ], [ %inc317, %for.inc316.for.body280_crit_edge ]
  %104 = ptrtoint ptr %dspp282 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dspp282, align 4
  %id284 = getelementptr %struct.dpu_dspp_cfg, ptr %105, i32 %i.5516, i32 1
  %106 = ptrtoint ptr %id284 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %id284, align 4
  %108 = add i32 %107, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %108)
  %109 = icmp ult i32 %108, -4
  br i1 %109, label %do.end292, label %if.end296

do.end292:                                        ; preds = %for.body280
  call void @__sanitizer_cov_trace_pc() #10
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef %107) #11
  br label %for.inc316

if.end296:                                        ; preds = %for.body280
  %call298 = tail call ptr @dpu_hw_dspp_init(i32 noundef %107, ptr noundef nonnull %mmio, ptr noundef nonnull %cat) #8
  %tobool.not.i473 = icmp eq ptr %call298, null
  %cmp.i474 = icmp ugt ptr %call298, inttoptr (i32 -4096 to ptr)
  %spec.select.i475 = or i1 %tobool.not.i473, %cmp.i474
  br i1 %spec.select.i475, label %cleanup312, label %if.end307

if.end307:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %id284 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %id284, align 4
  %sub310 = add i32 %111, -1
  %arrayidx311 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 4, i32 %sub310
  %112 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call298, ptr %arrayidx311, align 4
  br label %for.inc316

cleanup312:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %call298 to i32
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef %113) #11
  br label %fail

for.inc316:                                       ; preds = %if.end307, %do.end292
  %inc317 = add nuw i32 %i.5516, 1
  %114 = ptrtoint ptr %dspp_count to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dspp_count, align 4
  %cmp279 = icmp ult i32 %inc317, %115
  br i1 %cmp279, label %for.inc316.for.body280_crit_edge, label %for.inc316.cleanup321_crit_edge

for.inc316.cleanup321_crit_edge:                  ; preds = %for.inc316
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup321

for.inc316.for.body280_crit_edge:                 ; preds = %for.inc316
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body280

fail:                                             ; preds = %cleanup312, %cleanup271, %cleanup230.thread493, %cleanup163, %cleanup110, %cleanup.thread480
  %rc.12 = phi i32 [ %49, %cleanup110 ], [ %70, %cleanup163 ], [ %101, %cleanup271 ], [ %113, %cleanup312 ], [ %18, %cleanup.thread480 ], [ %84, %cleanup230.thread493 ]
  %call319 = tail call i32 @dpu_rm_destroy(ptr noundef nonnull %rm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.12)
  %tobool320.not = icmp eq i32 %rc.12, 0
  %spec.select = select i1 %tobool320.not, i32 -14, i32 %rc.12
  br label %cleanup321

cleanup321:                                       ; preds = %fail, %for.inc316.cleanup321_crit_edge, %for.cond278.preheader.cleanup321_crit_edge, %do.end
  %retval.0 = phi i32 [ %spec.select, %fail ], [ -22, %do.end ], [ 0, %for.cond278.preheader.cleanup321_crit_edge ], [ 0, %for.inc316.cleanup321_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_lm_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_merge_3d_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_pingpong_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_intf_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_ctl_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_dspp_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_rm_release(ptr nocapture noundef %global_state, ptr nocapture noundef readonly %enc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pingpong_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 1
  %base = getelementptr inbounds %struct.drm_encoder, ptr %enc, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %2 = ptrtoint ptr %pingpong_to_enc_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pingpong_to_enc_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.i = icmp eq i32 %3, %1
  br i1 %cmp1.i, label %if.then.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %pingpong_to_enc_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pingpong_to_enc_id, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %arrayidx.i.1 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1.i.1 = icmp eq i32 %6, %1
  br i1 %cmp1.i.1, label %if.then.i.1, label %for.inc.i.for.inc.i.1_crit_edge

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx.i.1, align 4
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i.for.inc.i.1_crit_edge
  %arrayidx.i.2 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp1.i.2 = icmp eq i32 %9, %1
  br i1 %cmp1.i.2, label %if.then.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.i.2, align 4
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.inc.i.1.for.inc.i.2_crit_edge
  %arrayidx.i.3 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp1.i.3 = icmp eq i32 %12, %1
  br i1 %cmp1.i.3, label %if.then.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.i.3, align 4
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.3, %for.inc.i.2.for.inc.i.3_crit_edge
  %arrayidx.i.4 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp1.i.4 = icmp eq i32 %15, %1
  br i1 %cmp1.i.4, label %if.then.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.4

if.then.i.4:                                      ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.i.4, align 4
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then.i.4, %for.inc.i.3.for.inc.i.4_crit_edge
  %arrayidx.i.5 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp1.i.5 = icmp eq i32 %18, %1
  br i1 %cmp1.i.5, label %if.then.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.5

if.then.i.5:                                      ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.i.5, align 4
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then.i.5, %for.inc.i.4.for.inc.i.5_crit_edge
  %arrayidx.i.6 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp1.i.6 = icmp eq i32 %21, %1
  br i1 %cmp1.i.6, label %if.then.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.6

if.then.i.6:                                      ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.i.6, align 4
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.then.i.6, %for.inc.i.5.for.inc.i.6_crit_edge
  %mixer_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 2
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 4
  %25 = ptrtoint ptr %mixer_to_enc_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mixer_to_enc_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp1.i18 = icmp eq i32 %26, %24
  br i1 %cmp1.i18, label %if.then.i20, label %for.inc.i.6.for.inc.i23_crit_edge

for.inc.i.6.for.inc.i23_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23

if.then.i20:                                      ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %mixer_to_enc_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mixer_to_enc_id, align 4
  br label %for.inc.i23

for.inc.i23:                                      ; preds = %if.then.i20, %for.inc.i.6.for.inc.i23_crit_edge
  %arrayidx.i17.1 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx.i17.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i17.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %24)
  %cmp1.i18.1 = icmp eq i32 %29, %24
  br i1 %cmp1.i18.1, label %if.then.i20.1, label %for.inc.i23.for.inc.i23.1_crit_edge

for.inc.i23.for.inc.i23.1_crit_edge:              ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23.1

if.then.i20.1:                                    ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %arrayidx.i17.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx.i17.1, align 4
  br label %for.inc.i23.1

for.inc.i23.1:                                    ; preds = %if.then.i20.1, %for.inc.i23.for.inc.i23.1_crit_edge
  %arrayidx.i17.2 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx.i17.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i17.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %24)
  %cmp1.i18.2 = icmp eq i32 %32, %24
  br i1 %cmp1.i18.2, label %if.then.i20.2, label %for.inc.i23.1.for.inc.i23.2_crit_edge

for.inc.i23.1.for.inc.i23.2_crit_edge:            ; preds = %for.inc.i23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23.2

if.then.i20.2:                                    ; preds = %for.inc.i23.1
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %arrayidx.i17.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx.i17.2, align 4
  br label %for.inc.i23.2

for.inc.i23.2:                                    ; preds = %if.then.i20.2, %for.inc.i23.1.for.inc.i23.2_crit_edge
  %arrayidx.i17.3 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx.i17.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i17.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %24)
  %cmp1.i18.3 = icmp eq i32 %35, %24
  br i1 %cmp1.i18.3, label %if.then.i20.3, label %for.inc.i23.2.for.inc.i23.3_crit_edge

for.inc.i23.2.for.inc.i23.3_crit_edge:            ; preds = %for.inc.i23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23.3

if.then.i20.3:                                    ; preds = %for.inc.i23.2
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx.i17.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx.i17.3, align 4
  br label %for.inc.i23.3

for.inc.i23.3:                                    ; preds = %if.then.i20.3, %for.inc.i23.2.for.inc.i23.3_crit_edge
  %arrayidx.i17.4 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %arrayidx.i17.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i17.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %24)
  %cmp1.i18.4 = icmp eq i32 %38, %24
  br i1 %cmp1.i18.4, label %if.then.i20.4, label %for.inc.i23.3.for.inc.i23.4_crit_edge

for.inc.i23.3.for.inc.i23.4_crit_edge:            ; preds = %for.inc.i23.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23.4

if.then.i20.4:                                    ; preds = %for.inc.i23.3
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %arrayidx.i17.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx.i17.4, align 4
  br label %for.inc.i23.4

for.inc.i23.4:                                    ; preds = %if.then.i20.4, %for.inc.i23.3.for.inc.i23.4_crit_edge
  %arrayidx.i17.5 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %arrayidx.i17.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i17.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %24)
  %cmp1.i18.5 = icmp eq i32 %41, %24
  br i1 %cmp1.i18.5, label %if.then.i20.5, label %for.inc.i23.4.for.inc.i23.5_crit_edge

for.inc.i23.4.for.inc.i23.5_crit_edge:            ; preds = %for.inc.i23.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23.5

if.then.i20.5:                                    ; preds = %for.inc.i23.4
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %arrayidx.i17.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx.i17.5, align 4
  br label %for.inc.i23.5

for.inc.i23.5:                                    ; preds = %if.then.i20.5, %for.inc.i23.4.for.inc.i23.5_crit_edge
  %arrayidx.i17.6 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %arrayidx.i17.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i17.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %24)
  %cmp1.i18.6 = icmp eq i32 %44, %24
  br i1 %cmp1.i18.6, label %if.then.i20.6, label %for.inc.i23.5.for.inc.i23.6_crit_edge

for.inc.i23.5.for.inc.i23.6_crit_edge:            ; preds = %for.inc.i23.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23.6

if.then.i20.6:                                    ; preds = %for.inc.i23.5
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %arrayidx.i17.6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx.i17.6, align 4
  br label %for.inc.i23.6

for.inc.i23.6:                                    ; preds = %if.then.i20.6, %for.inc.i23.5.for.inc.i23.6_crit_edge
  %ctl_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 3
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  %48 = ptrtoint ptr %ctl_to_enc_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctl_to_enc_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp1.i27 = icmp eq i32 %49, %47
  br i1 %cmp1.i27, label %if.then.i29, label %for.inc.i23.6.for.inc.i32_crit_edge

for.inc.i23.6.for.inc.i32_crit_edge:              ; preds = %for.inc.i23.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32

if.then.i29:                                      ; preds = %for.inc.i23.6
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %ctl_to_enc_id to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %ctl_to_enc_id, align 4
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.then.i29, %for.inc.i23.6.for.inc.i32_crit_edge
  %arrayidx.i26.1 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx.i26.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i26.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %47)
  %cmp1.i27.1 = icmp eq i32 %52, %47
  br i1 %cmp1.i27.1, label %if.then.i29.1, label %for.inc.i32.for.inc.i32.1_crit_edge

for.inc.i32.for.inc.i32.1_crit_edge:              ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32.1

if.then.i29.1:                                    ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %arrayidx.i26.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx.i26.1, align 4
  br label %for.inc.i32.1

for.inc.i32.1:                                    ; preds = %if.then.i29.1, %for.inc.i32.for.inc.i32.1_crit_edge
  %arrayidx.i26.2 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %arrayidx.i26.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i26.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %47)
  %cmp1.i27.2 = icmp eq i32 %55, %47
  br i1 %cmp1.i27.2, label %if.then.i29.2, label %for.inc.i32.1.for.inc.i32.2_crit_edge

for.inc.i32.1.for.inc.i32.2_crit_edge:            ; preds = %for.inc.i32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32.2

if.then.i29.2:                                    ; preds = %for.inc.i32.1
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %arrayidx.i26.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx.i26.2, align 4
  br label %for.inc.i32.2

for.inc.i32.2:                                    ; preds = %if.then.i29.2, %for.inc.i32.1.for.inc.i32.2_crit_edge
  %arrayidx.i26.3 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx.i26.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i26.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %47)
  %cmp1.i27.3 = icmp eq i32 %58, %47
  br i1 %cmp1.i27.3, label %if.then.i29.3, label %for.inc.i32.2.for.inc.i32.3_crit_edge

for.inc.i32.2.for.inc.i32.3_crit_edge:            ; preds = %for.inc.i32.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32.3

if.then.i29.3:                                    ; preds = %for.inc.i32.2
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %arrayidx.i26.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx.i26.3, align 4
  br label %for.inc.i32.3

for.inc.i32.3:                                    ; preds = %if.then.i29.3, %for.inc.i32.2.for.inc.i32.3_crit_edge
  %arrayidx.i26.4 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 3, i32 4
  %60 = ptrtoint ptr %arrayidx.i26.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i26.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %47)
  %cmp1.i27.4 = icmp eq i32 %61, %47
  br i1 %cmp1.i27.4, label %if.then.i29.4, label %for.inc.i32.3.for.inc.i32.4_crit_edge

for.inc.i32.3.for.inc.i32.4_crit_edge:            ; preds = %for.inc.i32.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32.4

if.then.i29.4:                                    ; preds = %for.inc.i32.3
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %arrayidx.i26.4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx.i26.4, align 4
  br label %for.inc.i32.4

for.inc.i32.4:                                    ; preds = %if.then.i29.4, %for.inc.i32.3.for.inc.i32.4_crit_edge
  %arrayidx.i26.5 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 3, i32 5
  %63 = ptrtoint ptr %arrayidx.i26.5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i26.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %47)
  %cmp1.i27.5 = icmp eq i32 %64, %47
  br i1 %cmp1.i27.5, label %if.then.i29.5, label %for.inc.i32.4.for.inc.i32.5_crit_edge

for.inc.i32.4.for.inc.i32.5_crit_edge:            ; preds = %for.inc.i32.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i32.5

if.then.i29.5:                                    ; preds = %for.inc.i32.4
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %arrayidx.i26.5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx.i26.5, align 4
  br label %for.inc.i32.5

for.inc.i32.5:                                    ; preds = %if.then.i29.5, %for.inc.i32.4.for.inc.i32.5_crit_edge
  %intf_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 4
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base, align 4
  %68 = ptrtoint ptr %intf_to_enc_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %intf_to_enc_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %67)
  %cmp1.i36 = icmp eq i32 %69, %67
  br i1 %cmp1.i36, label %if.then.i38, label %for.inc.i32.5.for.inc.i41_crit_edge

for.inc.i32.5.for.inc.i41_crit_edge:              ; preds = %for.inc.i32.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41

if.then.i38:                                      ; preds = %for.inc.i32.5
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %intf_to_enc_id to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %intf_to_enc_id, align 4
  br label %for.inc.i41

for.inc.i41:                                      ; preds = %if.then.i38, %for.inc.i32.5.for.inc.i41_crit_edge
  %arrayidx.i35.1 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %arrayidx.i35.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i35.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %67)
  %cmp1.i36.1 = icmp eq i32 %72, %67
  br i1 %cmp1.i36.1, label %if.then.i38.1, label %for.inc.i41.for.inc.i41.1_crit_edge

for.inc.i41.for.inc.i41.1_crit_edge:              ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41.1

if.then.i38.1:                                    ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %arrayidx.i35.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx.i35.1, align 4
  br label %for.inc.i41.1

for.inc.i41.1:                                    ; preds = %if.then.i38.1, %for.inc.i41.for.inc.i41.1_crit_edge
  %arrayidx.i35.2 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %arrayidx.i35.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i35.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %67)
  %cmp1.i36.2 = icmp eq i32 %75, %67
  br i1 %cmp1.i36.2, label %if.then.i38.2, label %for.inc.i41.1.for.inc.i41.2_crit_edge

for.inc.i41.1.for.inc.i41.2_crit_edge:            ; preds = %for.inc.i41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41.2

if.then.i38.2:                                    ; preds = %for.inc.i41.1
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx.i35.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx.i35.2, align 4
  br label %for.inc.i41.2

for.inc.i41.2:                                    ; preds = %if.then.i38.2, %for.inc.i41.1.for.inc.i41.2_crit_edge
  %arrayidx.i35.3 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 3
  %77 = ptrtoint ptr %arrayidx.i35.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i35.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %67)
  %cmp1.i36.3 = icmp eq i32 %78, %67
  br i1 %cmp1.i36.3, label %if.then.i38.3, label %for.inc.i41.2.for.inc.i41.3_crit_edge

for.inc.i41.2.for.inc.i41.3_crit_edge:            ; preds = %for.inc.i41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41.3

if.then.i38.3:                                    ; preds = %for.inc.i41.2
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %arrayidx.i35.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx.i35.3, align 4
  br label %for.inc.i41.3

for.inc.i41.3:                                    ; preds = %if.then.i38.3, %for.inc.i41.2.for.inc.i41.3_crit_edge
  %arrayidx.i35.4 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 4
  %80 = ptrtoint ptr %arrayidx.i35.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i35.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %67)
  %cmp1.i36.4 = icmp eq i32 %81, %67
  br i1 %cmp1.i36.4, label %if.then.i38.4, label %for.inc.i41.3.for.inc.i41.4_crit_edge

for.inc.i41.3.for.inc.i41.4_crit_edge:            ; preds = %for.inc.i41.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41.4

if.then.i38.4:                                    ; preds = %for.inc.i41.3
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %arrayidx.i35.4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx.i35.4, align 4
  br label %for.inc.i41.4

for.inc.i41.4:                                    ; preds = %if.then.i38.4, %for.inc.i41.3.for.inc.i41.4_crit_edge
  %arrayidx.i35.5 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 5
  %83 = ptrtoint ptr %arrayidx.i35.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i35.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %67)
  %cmp1.i36.5 = icmp eq i32 %84, %67
  br i1 %cmp1.i36.5, label %if.then.i38.5, label %for.inc.i41.4.for.inc.i41.5_crit_edge

for.inc.i41.4.for.inc.i41.5_crit_edge:            ; preds = %for.inc.i41.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41.5

if.then.i38.5:                                    ; preds = %for.inc.i41.4
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %arrayidx.i35.5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx.i35.5, align 4
  br label %for.inc.i41.5

for.inc.i41.5:                                    ; preds = %if.then.i38.5, %for.inc.i41.4.for.inc.i41.5_crit_edge
  %arrayidx.i35.6 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 6
  %86 = ptrtoint ptr %arrayidx.i35.6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i35.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %67)
  %cmp1.i36.6 = icmp eq i32 %87, %67
  br i1 %cmp1.i36.6, label %if.then.i38.6, label %for.inc.i41.5.for.inc.i41.6_crit_edge

for.inc.i41.5.for.inc.i41.6_crit_edge:            ; preds = %for.inc.i41.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41.6

if.then.i38.6:                                    ; preds = %for.inc.i41.5
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %arrayidx.i35.6 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx.i35.6, align 4
  br label %for.inc.i41.6

for.inc.i41.6:                                    ; preds = %if.then.i38.6, %for.inc.i41.5.for.inc.i41.6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_reserve(ptr nocapture noundef readonly %rm, ptr noundef %global_state, ptr noundef %enc, ptr nocapture noundef readonly %crtc_state, [4 x i32] %topology.coerce) local_unnamed_addr #0 align 64 {
entry:
  %reqs = alloca %struct.dpu_rm_requirements, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %reqs) #8
  %0 = call ptr @memset(ptr %reqs, i32 255, i32 48)
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %1 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %2 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %global_state, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #11
  %3 = ptrtoint ptr %global_state to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.drm_encoder, ptr %enc, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %6 = ptrtoint ptr %crtc_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc_state, align 4
  %base6 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base6, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %5, i32 noundef %9) #8
  %req_topology.coerce.fca.0.extract.i = extractvalue [4 x i32] %topology.coerce, 0
  %req_topology.coerce.fca.1.extract.i = extractvalue [4 x i32] %topology.coerce, 1
  %req_topology.coerce.fca.2.extract.i = extractvalue [4 x i32] %topology.coerce, 2
  %req_topology.coerce.fca.3.extract.i = extractvalue [4 x i32] %topology.coerce, 3
  %hw_res.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1
  call void @dpu_encoder_get_hw_resources(ptr noundef %enc, ptr noundef %hw_res.i) #8
  %10 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %req_topology.coerce.fca.0.extract.i, ptr %reqs, align 4
  %req_topology.sroa.2.0.topology.sroa_idx.i = getelementptr inbounds i8, ptr %reqs, i32 4
  %11 = ptrtoint ptr %req_topology.sroa.2.0.topology.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %req_topology.coerce.fca.1.extract.i, ptr %req_topology.sroa.2.0.topology.sroa_idx.i, align 4
  %req_topology.sroa.3.0.topology.sroa_idx.i = getelementptr inbounds i8, ptr %reqs, i32 8
  %12 = ptrtoint ptr %req_topology.sroa.3.0.topology.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %req_topology.coerce.fca.2.extract.i, ptr %req_topology.sroa.3.0.topology.sroa_idx.i, align 4
  %req_topology.sroa.4.0.topology.sroa_idx.i = getelementptr inbounds i8, ptr %reqs, i32 12
  %13 = ptrtoint ptr %req_topology.sroa.4.0.topology.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %req_topology.coerce.fca.3.extract.i, ptr %req_topology.sroa.4.0.topology.sroa_idx.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %req_topology.coerce.fca.0.extract.i, i32 noundef %req_topology.coerce.fca.1.extract.i, i32 noundef %req_topology.coerce.fca.2.extract.i) #8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %call.i = call fastcc i32 @_dpu_rm_reserve_lms(ptr noundef %rm, ptr noundef %global_state, i32 noundef %15, ptr noundef nonnull %reqs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #11
  br label %do.end21

if.end.i:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %call4.i = call fastcc i32 @_dpu_rm_reserve_ctls(ptr noundef %rm, ptr noundef %global_state, i32 noundef %17, ptr noundef nonnull %reqs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end12.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #11
  br label %do.end21

if.end12.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %intf_to_enc_id.i.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4
  %20 = ptrtoint ptr %hw_res.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.i.i = icmp eq i32 %21, 0
  br i1 %cmp1.i.i, label %if.end12.i.for.inc.i.i_crit_edge, label %if.end.i.i.i

if.end12.i.for.inc.i.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

do.end.i.i.i:                                     ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 8) #11
  br label %do.end21

if.end.i.i.i:                                     ; preds = %if.end12.i
  %arrayidx.i.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.i.i

if.end.i.i.i.do.end5.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

do.end5.i.i.i:                                    ; preds = %if.end.i.6.i.i.do.end5.i.i.i_crit_edge, %if.end.i.5.i.i.do.end5.i.i.i_crit_edge, %if.end.i.4.i.i.do.end5.i.i.i_crit_edge, %if.end.i.3.i.i.do.end5.i.i.i_crit_edge, %if.end.i.2.i.i.do.end5.i.i.i_crit_edge, %if.end.i.1.i.i.do.end5.i.i.i_crit_edge, %if.end.i.i.i.do.end5.i.i.i_crit_edge
  %i.019.lcssa21.i.i = phi i32 [ 1, %if.end.i.i.i.do.end5.i.i.i_crit_edge ], [ 2, %if.end.i.1.i.i.do.end5.i.i.i_crit_edge ], [ 3, %if.end.i.2.i.i.do.end5.i.i.i_crit_edge ], [ 4, %if.end.i.3.i.i.do.end5.i.i.i_crit_edge ], [ 5, %if.end.i.4.i.i.do.end5.i.i.i_crit_edge ], [ 6, %if.end.i.5.i.i.do.end5.i.i.i_crit_edge ], [ 7, %if.end.i.6.i.i.do.end5.i.i.i_crit_edge ]
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef %i.019.lcssa21.i.i) #11
  br label %do.end21

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %24 = ptrtoint ptr %intf_to_enc_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intf_to_enc_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp.i.i.i.i = icmp ne i32 %25, %19
  %spec.select.i.i.i.i = and i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end8.i.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.i.i

if.end8.i.i.i.do.end13.i.i.i_crit_edge:           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

do.end13.i.i.i:                                   ; preds = %if.end8.i.6.i.i.do.end13.i.i.i_crit_edge, %if.end8.i.5.i.i.do.end13.i.i.i_crit_edge, %if.end8.i.4.i.i.do.end13.i.i.i_crit_edge, %if.end8.i.3.i.i.do.end13.i.i.i_crit_edge, %if.end8.i.2.i.i.do.end13.i.i.i_crit_edge, %if.end8.i.1.i.i.do.end13.i.i.i_crit_edge, %if.end8.i.i.i.do.end13.i.i.i_crit_edge
  %i.019.lcssa22.i.i = phi i32 [ 1, %if.end8.i.i.i.do.end13.i.i.i_crit_edge ], [ 2, %if.end8.i.1.i.i.do.end13.i.i.i_crit_edge ], [ 3, %if.end8.i.2.i.i.do.end13.i.i.i_crit_edge ], [ 4, %if.end8.i.3.i.i.do.end13.i.i.i_crit_edge ], [ 5, %if.end8.i.4.i.i.do.end13.i.i.i_crit_edge ], [ 6, %if.end8.i.5.i.i.do.end13.i.i.i_crit_edge ], [ 7, %if.end8.i.6.i.i.do.end13.i.i.i_crit_edge ]
  %call15.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %i.019.lcssa22.i.i) #11
  br label %do.end21

_dpu_rm_reserve_intf.exit.i.i:                    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %intf_to_enc_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %19, ptr %intf_to_enc_id.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %_dpu_rm_reserve_intf.exit.i.i, %if.end12.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.1.i.i = icmp eq i32 %28, 0
  br i1 %cmp1.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.i.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.end.i.1.i.i:                                   ; preds = %for.inc.i.i
  %arrayidx.i.1.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.1.i.i, align 4
  %tobool.not.i.1.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.1.i.i, label %if.end.i.1.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.1.i.i

if.end.i.1.i.i.do.end5.i.i.i_crit_edge:           ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

if.end8.i.1.i.i:                                  ; preds = %if.end.i.1.i.i
  %arrayidx.i.i.1.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %arrayidx.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.1.i.i = icmp ne i32 %32, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %19)
  %cmp.i.i.1.i.i = icmp ne i32 %32, %19
  %spec.select.i.i.1.i.i = and i1 %tobool.not.i.i.1.i.i, %cmp.i.i.1.i.i
  br i1 %spec.select.i.i.1.i.i, label %if.end8.i.1.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.1.i.i

if.end8.i.1.i.i.do.end13.i.i.i_crit_edge:         ; preds = %if.end8.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

_dpu_rm_reserve_intf.exit.1.i.i:                  ; preds = %if.end8.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %arrayidx.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %19, ptr %arrayidx.i.i.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %_dpu_rm_reserve_intf.exit.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.2.i.i = icmp eq i32 %35, 0
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.i.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.end.i.2.i.i:                                   ; preds = %for.inc.1.i.i
  %arrayidx.i.2.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.2.i.i, align 4
  %tobool.not.i.2.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.2.i.i, label %if.end.i.2.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.2.i.i

if.end.i.2.i.i.do.end5.i.i.i_crit_edge:           ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

if.end8.i.2.i.i:                                  ; preds = %if.end.i.2.i.i
  %arrayidx.i.i.2.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.2.i.i = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %19)
  %cmp.i.i.2.i.i = icmp ne i32 %39, %19
  %spec.select.i.i.2.i.i = and i1 %tobool.not.i.i.2.i.i, %cmp.i.i.2.i.i
  br i1 %spec.select.i.i.2.i.i, label %if.end8.i.2.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.2.i.i

if.end8.i.2.i.i.do.end13.i.i.i_crit_edge:         ; preds = %if.end8.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

_dpu_rm_reserve_intf.exit.2.i.i:                  ; preds = %if.end8.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %arrayidx.i.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %19, ptr %arrayidx.i.i.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %_dpu_rm_reserve_intf.exit.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1.3.i.i = icmp eq i32 %42, 0
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end.i.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.end.i.3.i.i:                                   ; preds = %for.inc.2.i.i
  %arrayidx.i.3.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.3.i.i, align 4
  %tobool.not.i.3.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.3.i.i, label %if.end.i.3.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.3.i.i

if.end.i.3.i.i.do.end5.i.i.i_crit_edge:           ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

if.end8.i.3.i.i:                                  ; preds = %if.end.i.3.i.i
  %arrayidx.i.i.3.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %arrayidx.i.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.3.i.i = icmp ne i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %19)
  %cmp.i.i.3.i.i = icmp ne i32 %46, %19
  %spec.select.i.i.3.i.i = and i1 %tobool.not.i.i.3.i.i, %cmp.i.i.3.i.i
  br i1 %spec.select.i.i.3.i.i, label %if.end8.i.3.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.3.i.i

if.end8.i.3.i.i.do.end13.i.i.i_crit_edge:         ; preds = %if.end8.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

_dpu_rm_reserve_intf.exit.3.i.i:                  ; preds = %if.end8.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %arrayidx.i.i.3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %19, ptr %arrayidx.i.i.3.i.i, align 4
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %_dpu_rm_reserve_intf.exit.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %arrayidx.4.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1.4.i.i = icmp eq i32 %49, 0
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.end.i.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.end.i.4.i.i:                                   ; preds = %for.inc.3.i.i
  %arrayidx.i.4.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.4.i.i, align 4
  %tobool.not.i.4.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.4.i.i, label %if.end.i.4.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.4.i.i

if.end.i.4.i.i.do.end5.i.i.i_crit_edge:           ; preds = %if.end.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

if.end8.i.4.i.i:                                  ; preds = %if.end.i.4.i.i
  %arrayidx.i.i.4.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 4
  %52 = ptrtoint ptr %arrayidx.i.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.4.i.i = icmp ne i32 %53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %19)
  %cmp.i.i.4.i.i = icmp ne i32 %53, %19
  %spec.select.i.i.4.i.i = and i1 %tobool.not.i.i.4.i.i, %cmp.i.i.4.i.i
  br i1 %spec.select.i.i.4.i.i, label %if.end8.i.4.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.4.i.i

if.end8.i.4.i.i.do.end13.i.i.i_crit_edge:         ; preds = %if.end8.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

_dpu_rm_reserve_intf.exit.4.i.i:                  ; preds = %if.end8.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %arrayidx.i.i.4.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %19, ptr %arrayidx.i.i.4.i.i, align 4
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %_dpu_rm_reserve_intf.exit.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %arrayidx.5.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1.5.i.i = icmp eq i32 %56, 0
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.end.i.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i.i

if.end.i.5.i.i:                                   ; preds = %for.inc.4.i.i
  %arrayidx.i.5.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 5
  %57 = ptrtoint ptr %arrayidx.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.5.i.i, align 4
  %tobool.not.i.5.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.5.i.i, label %if.end.i.5.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.5.i.i

if.end.i.5.i.i.do.end5.i.i.i_crit_edge:           ; preds = %if.end.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

if.end8.i.5.i.i:                                  ; preds = %if.end.i.5.i.i
  %arrayidx.i.i.5.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 5
  %59 = ptrtoint ptr %arrayidx.i.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i.5.i.i = icmp ne i32 %60, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %19)
  %cmp.i.i.5.i.i = icmp ne i32 %60, %19
  %spec.select.i.i.5.i.i = and i1 %tobool.not.i.i.5.i.i, %cmp.i.i.5.i.i
  br i1 %spec.select.i.i.5.i.i, label %if.end8.i.5.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.5.i.i

if.end8.i.5.i.i.do.end13.i.i.i_crit_edge:         ; preds = %if.end8.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

_dpu_rm_reserve_intf.exit.5.i.i:                  ; preds = %if.end8.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %arrayidx.i.i.5.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %19, ptr %arrayidx.i.i.5.i.i, align 4
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %_dpu_rm_reserve_intf.exit.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %arrayidx.6.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 6
  %62 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp1.6.i.i = icmp eq i32 %63, 0
  br i1 %cmp1.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %if.end.i.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i.i

if.end.i.6.i.i:                                   ; preds = %for.inc.5.i.i
  %arrayidx.i.6.i.i = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 3, i32 6
  %64 = ptrtoint ptr %arrayidx.i.6.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.6.i.i, align 4
  %tobool.not.i.6.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.6.i.i, label %if.end.i.6.i.i.do.end5.i.i.i_crit_edge, label %if.end8.i.6.i.i

if.end.i.6.i.i.do.end5.i.i.i_crit_edge:           ; preds = %if.end.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i.i

if.end8.i.6.i.i:                                  ; preds = %if.end.i.6.i.i
  %arrayidx.i.i.6.i.i = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %arrayidx.i.i.6.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.6.i.i = icmp ne i32 %67, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %19)
  %cmp.i.i.6.i.i = icmp ne i32 %67, %19
  %spec.select.i.i.6.i.i = and i1 %tobool.not.i.i.6.i.i, %cmp.i.i.6.i.i
  br i1 %spec.select.i.i.6.i.i, label %if.end8.i.6.i.i.do.end13.i.i.i_crit_edge, label %_dpu_rm_reserve_intf.exit.6.i.i

if.end8.i.6.i.i.do.end13.i.i.i_crit_edge:         ; preds = %if.end8.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i.i

_dpu_rm_reserve_intf.exit.6.i.i:                  ; preds = %if.end8.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %arrayidx.i.i.6.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %19, ptr %arrayidx.i.i.6.i.i, align 4
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %_dpu_rm_reserve_intf.exit.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %arrayidx.7.i.i = getelementptr inbounds %struct.dpu_rm_requirements, ptr %reqs, i32 0, i32 1, i32 0, i32 7
  %69 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp1.7.i.i = icmp eq i32 %70, 0
  br i1 %cmp1.7.i.i, label %for.inc.6.i.i.cleanup_crit_edge, label %do.end.i.i.i

for.inc.6.i.i.cleanup_crit_edge:                  ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %do.end13.i.i.i, %do.end5.i.i.i, %do.end.i.i.i, %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i.i.i ], [ -119, %do.end13.i.i.i ], [ -22, %do.end5.i.i.i ], [ %call4.i, %do.end9.i ], [ %call.i, %do.end.i ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %for.inc.6.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end21 ], [ 0, %for.inc.6.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %reqs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_get_assigned_resources(ptr nocapture noundef readonly %rm, ptr nocapture noundef readonly %global_state, i32 noundef %enc_id, i32 noundef %type, ptr nocapture noundef writeonly %blks, i32 noundef %blks_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 4, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 5, label %sw.bb8
    i32 7, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pingpong_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 1
  br label %for.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mixer_blks = getelementptr inbounds %struct.dpu_rm, ptr %rm, i32 0, i32 1
  %mixer_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 2
  br label %for.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctl_blks = getelementptr inbounds %struct.dpu_rm, ptr %rm, i32 0, i32 2
  %ctl_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 3
  br label %for.body

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf_blks = getelementptr inbounds %struct.dpu_rm, ptr %rm, i32 0, i32 3
  %intf_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 4
  br label %for.body

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dspp_blks = getelementptr inbounds %struct.dpu_rm, ptr %rm, i32 0, i32 4
  %dspp_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 5
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %type) #11
  br label %cleanup

for.body:                                         ; preds = %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %hw_to_enc_id.0 = phi ptr [ %dspp_to_enc_id, %sw.bb11 ], [ %intf_to_enc_id, %sw.bb8 ], [ %ctl_to_enc_id, %sw.bb5 ], [ %mixer_to_enc_id, %sw.bb2 ], [ %pingpong_to_enc_id, %sw.bb ]
  %exitcond.not.3 = phi i1 [ true, %sw.bb11 ], [ false, %sw.bb8 ], [ false, %sw.bb5 ], [ false, %sw.bb2 ], [ false, %sw.bb ]
  %exitcond.not.5 = phi i1 [ false, %sw.bb11 ], [ false, %sw.bb8 ], [ true, %sw.bb5 ], [ false, %sw.bb2 ], [ false, %sw.bb ]
  %hw_blks.0 = phi ptr [ %dspp_blks, %sw.bb11 ], [ %intf_blks, %sw.bb8 ], [ %ctl_blks, %sw.bb5 ], [ %mixer_blks, %sw.bb2 ], [ %rm, %sw.bb ]
  %1 = ptrtoint ptr %hw_to_enc_id.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_to_enc_id.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enc_id)
  %cmp14.not = icmp eq i32 %2, %enc_id
  br i1 %cmp14.not, label %if.end, label %for.body.for.body.1_crit_edge

for.body.for.body.1_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.1

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blks_size)
  %cmp15 = icmp eq i32 %blks_size, 0
  br i1 %cmp15, label %if.end.do.end19_crit_edge, label %if.end22

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end19:                                         ; preds = %if.end.6.do.end19_crit_edge, %if.end.5.do.end19_crit_edge, %if.end.4.do.end19_crit_edge, %if.end.3.do.end19_crit_edge, %if.end.2.do.end19_crit_edge, %if.end.1.do.end19_crit_edge, %if.end.do.end19_crit_edge
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %blks_size, i32 noundef %enc_id) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %hw_blks.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_blks.0, align 4
  %5 = ptrtoint ptr %blks to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %blks, align 4
  br label %for.body.1

for.body.1:                                       ; preds = %if.end22, %for.body.for.body.1_crit_edge
  %num_blks.1 = phi i32 [ 0, %for.body.for.body.1_crit_edge ], [ 1, %if.end22 ]
  %arrayidx.1 = getelementptr i32, ptr %hw_to_enc_id.0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %enc_id)
  %cmp14.not.1 = icmp eq i32 %7, %enc_id
  br i1 %cmp14.not.1, label %if.end.1, label %for.body.1.for.body.2_crit_edge

for.body.1.for.body.2_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.2

if.end.1:                                         ; preds = %for.body.1
  call void @__sanitizer_cov_trace_cmp4(i32 %num_blks.1, i32 %blks_size)
  %cmp15.1 = icmp eq i32 %num_blks.1, %blks_size
  br i1 %cmp15.1, label %if.end.1.do.end19_crit_edge, label %if.end22.1

if.end.1.do.end19_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end22.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.1 = getelementptr ptr, ptr %hw_blks.0, i32 1
  %8 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx23.1, align 4
  %inc.1 = add nuw nsw i32 %num_blks.1, 1
  %arrayidx24.1 = getelementptr ptr, ptr %blks, i32 %num_blks.1
  %10 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx24.1, align 4
  br label %for.body.2

for.body.2:                                       ; preds = %if.end22.1, %for.body.1.for.body.2_crit_edge
  %num_blks.1.1 = phi i32 [ %num_blks.1, %for.body.1.for.body.2_crit_edge ], [ %inc.1, %if.end22.1 ]
  %arrayidx.2 = getelementptr i32, ptr %hw_to_enc_id.0, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %enc_id)
  %cmp14.not.2 = icmp eq i32 %12, %enc_id
  br i1 %cmp14.not.2, label %if.end.2, label %for.body.2.for.body.3_crit_edge

for.body.2.for.body.3_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.3

if.end.2:                                         ; preds = %for.body.2
  call void @__sanitizer_cov_trace_cmp4(i32 %num_blks.1.1, i32 %blks_size)
  %cmp15.2 = icmp eq i32 %num_blks.1.1, %blks_size
  br i1 %cmp15.2, label %if.end.2.do.end19_crit_edge, label %if.end22.2

if.end.2.do.end19_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end22.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.2 = getelementptr ptr, ptr %hw_blks.0, i32 2
  %13 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23.2, align 4
  %inc.2 = add nsw i32 %num_blks.1.1, 1
  %arrayidx24.2 = getelementptr ptr, ptr %blks, i32 %num_blks.1.1
  %15 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx24.2, align 4
  br label %for.body.3

for.body.3:                                       ; preds = %if.end22.2, %for.body.2.for.body.3_crit_edge
  %num_blks.1.2 = phi i32 [ %num_blks.1.1, %for.body.2.for.body.3_crit_edge ], [ %inc.2, %if.end22.2 ]
  %arrayidx.3 = getelementptr i32, ptr %hw_to_enc_id.0, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %enc_id)
  %cmp14.not.3 = icmp eq i32 %17, %enc_id
  br i1 %cmp14.not.3, label %if.end.3, label %for.body.3.for.inc.3_crit_edge

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.body.3
  call void @__sanitizer_cov_trace_cmp4(i32 %num_blks.1.2, i32 %blks_size)
  %cmp15.3 = icmp eq i32 %num_blks.1.2, %blks_size
  br i1 %cmp15.3, label %if.end.3.do.end19_crit_edge, label %if.end22.3

if.end.3.do.end19_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end22.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.3 = getelementptr ptr, ptr %hw_blks.0, i32 3
  %18 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx23.3, align 4
  %inc.3 = add nsw i32 %num_blks.1.2, 1
  %arrayidx24.3 = getelementptr ptr, ptr %blks, i32 %num_blks.1.2
  %20 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx24.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end22.3, %for.body.3.for.inc.3_crit_edge
  %num_blks.1.3 = phi i32 [ %num_blks.1.2, %for.body.3.for.inc.3_crit_edge ], [ %inc.3, %if.end22.3 ]
  br i1 %exitcond.not.3, label %for.inc.3.cleanup_crit_edge, label %for.body.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr i32, ptr %hw_to_enc_id.0, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %enc_id)
  %cmp14.not.4 = icmp eq i32 %22, %enc_id
  br i1 %cmp14.not.4, label %if.end.4, label %for.body.4.for.body.5_crit_edge

for.body.4.for.body.5_crit_edge:                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.5

if.end.4:                                         ; preds = %for.body.4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_blks.1.3, i32 %blks_size)
  %cmp15.4 = icmp eq i32 %num_blks.1.3, %blks_size
  br i1 %cmp15.4, label %if.end.4.do.end19_crit_edge, label %if.end22.4

if.end.4.do.end19_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end22.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.4 = getelementptr ptr, ptr %hw_blks.0, i32 4
  %23 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx23.4, align 4
  %inc.4 = add i32 %num_blks.1.3, 1
  %arrayidx24.4 = getelementptr ptr, ptr %blks, i32 %num_blks.1.3
  %25 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx24.4, align 4
  br label %for.body.5

for.body.5:                                       ; preds = %if.end22.4, %for.body.4.for.body.5_crit_edge
  %num_blks.1.4 = phi i32 [ %num_blks.1.3, %for.body.4.for.body.5_crit_edge ], [ %inc.4, %if.end22.4 ]
  %arrayidx.5 = getelementptr i32, ptr %hw_to_enc_id.0, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %enc_id)
  %cmp14.not.5 = icmp eq i32 %27, %enc_id
  br i1 %cmp14.not.5, label %if.end.5, label %for.body.5.for.inc.5_crit_edge

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.end.5:                                         ; preds = %for.body.5
  call void @__sanitizer_cov_trace_cmp4(i32 %num_blks.1.4, i32 %blks_size)
  %cmp15.5 = icmp eq i32 %num_blks.1.4, %blks_size
  br i1 %cmp15.5, label %if.end.5.do.end19_crit_edge, label %if.end22.5

if.end.5.do.end19_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end22.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.5 = getelementptr ptr, ptr %hw_blks.0, i32 5
  %28 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx23.5, align 4
  %inc.5 = add i32 %num_blks.1.4, 1
  %arrayidx24.5 = getelementptr ptr, ptr %blks, i32 %num_blks.1.4
  %30 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx24.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end22.5, %for.body.5.for.inc.5_crit_edge
  %num_blks.1.5 = phi i32 [ %num_blks.1.4, %for.body.5.for.inc.5_crit_edge ], [ %inc.5, %if.end22.5 ]
  br i1 %exitcond.not.5, label %for.inc.5.cleanup_crit_edge, label %for.body.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.6:                                       ; preds = %for.inc.5
  %arrayidx.6 = getelementptr i32, ptr %hw_to_enc_id.0, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %enc_id)
  %cmp14.not.6 = icmp eq i32 %32, %enc_id
  br i1 %cmp14.not.6, label %if.end.6, label %for.body.6.cleanup_crit_edge

for.body.6.cleanup_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.6:                                         ; preds = %for.body.6
  call void @__sanitizer_cov_trace_cmp4(i32 %num_blks.1.5, i32 %blks_size)
  %cmp15.6 = icmp eq i32 %num_blks.1.5, %blks_size
  br i1 %cmp15.6, label %if.end.6.do.end19_crit_edge, label %if.end22.6

if.end.6.do.end19_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end22.6:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.6 = getelementptr ptr, ptr %hw_blks.0, i32 6
  %33 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx23.6, align 4
  %inc.6 = add i32 %num_blks.1.5, 1
  %arrayidx24.6 = getelementptr ptr, ptr %blks, i32 %num_blks.1.5
  %35 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx24.6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22.6, %for.body.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %blks_size, %do.end19 ], [ %num_blks.1.3, %for.inc.3.cleanup_crit_edge ], [ %num_blks.1.5, %for.inc.5.cleanup_crit_edge ], [ %num_blks.1.5, %for.body.6.cleanup_crit_edge ], [ %inc.6, %if.end22.6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_get_hw_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_rm_reserve_lms(ptr nocapture noundef readonly %rm, ptr nocapture noundef %global_state, i32 noundef %enc_id, ptr nocapture noundef readonly %reqs) unnamed_addr #0 align 64 {
entry:
  %lm_idx = alloca [12 x i32], align 4
  %pp_idx = alloca [12 x i32], align 4
  %dspp_idx = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %lm_idx) #8
  %0 = call ptr @memset(ptr %lm_idx, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pp_idx) #8
  %1 = call ptr @memset(ptr %pp_idx, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dspp_idx) #8
  %2 = call ptr @memset(ptr %dspp_idx, i32 0, i32 48)
  %3 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 0) #11
  br label %cleanup

land.rhs:                                         ; preds = %for.inc59.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.0180 = phi i32 [ %inc60, %for.inc59.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %lm_count.0179 = phi i32 [ %lm_count.3, %for.inc59.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lm_count.0179, i32 %6)
  %cmp5 = icmp ult i32 %lm_count.0179, %6
  br i1 %cmp5, label %for.body, label %land.rhs.for.end61_crit_edge

land.rhs.for.end61_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end61

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 %i.0180
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %for.body.for.inc59_crit_edge, label %if.end8

for.body.for.inc59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

if.end8:                                          ; preds = %for.body
  %9 = ptrtoint ptr %lm_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.0180, ptr %lm_idx, align 4
  %call12 = call fastcc zeroext i1 @_dpu_rm_check_lm_and_get_connected_blks(ptr noundef %rm, ptr noundef %global_state, i32 noundef %enc_id, i32 noundef %i.0180, ptr noundef nonnull %pp_idx, ptr noundef nonnull %dspp_idx, ptr noundef %reqs)
  br i1 %call12, label %if.end14, label %if.end8.for.inc59_crit_edge

if.end8.for.inc59_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

if.end14:                                         ; preds = %if.end8
  %add = add nuw nsw i32 %i.0180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0180)
  %cmp16174 = icmp ult i32 %i.0180, 6
  br i1 %cmp16174, label %if.end14.land.rhs17_crit_edge, label %if.end14.for.inc59_crit_edge

if.end14.for.inc59_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

if.end14.land.rhs17_crit_edge:                    ; preds = %if.end14
  br label %land.rhs17

land.rhs17:                                       ; preds = %for.inc.land.rhs17_crit_edge, %if.end14.land.rhs17_crit_edge
  %j.0176 = phi i32 [ %inc58, %for.inc.land.rhs17_crit_edge ], [ %add, %if.end14.land.rhs17_crit_edge ]
  %lm_count.1175 = phi i32 [ %lm_count.2, %for.inc.land.rhs17_crit_edge ], [ 1, %if.end14.land.rhs17_crit_edge ]
  %10 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lm_count.1175, i32 %11)
  %cmp20 = icmp ult i32 %lm_count.1175, %11
  br i1 %cmp20, label %for.body22, label %land.rhs17.for.inc59_crit_edge

land.rhs17.for.inc59_crit_edge:                   ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

for.body22:                                       ; preds = %land.rhs17
  %arrayidx24 = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 %j.0176
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %for.body22.for.inc_crit_edge, label %if.end27

for.body22.for.inc_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27:                                         ; preds = %for.body22
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cap.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cap.i, align 4
  %cap4.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %cap4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cap4.i, align 4
  %id.i = getelementptr inbounds %struct.dpu_lm_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %lm_pair_mask.i = getelementptr inbounds %struct.dpu_lm_cfg, ptr %17, i32 0, i32 8
  %div3.i.i = lshr i32 %21, 5
  %arrayidx.i.i = getelementptr i32, ptr %lm_pair_mask.i, i32 %div3.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %21, 31
  %24 = shl nuw i32 1, %and.i.i
  %25 = and i32 %24, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end50

do.body.i:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %26 = load i32, ptr @__drm_debug, align 4
  %and.i28.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28.i)
  %tobool.i.not.i = icmp eq i32 %and.i28.i, 0
  br i1 %tobool.i.not.i, label %do.body10.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.69, i32 noundef %21, i32 noundef %21) #8
  br label %do.body30

do.body10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_check_lm_peer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_reserve_lms, %if.then15.i)) #8
          to label %do.body30 [label %if.then15.i], !srcloc !182

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_check_lm_peer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.84, i32 noundef %28, i32 noundef %28) #8
  br label %do.body30

do.body30:                                        ; preds = %if.then15.i, %do.body10.i, %if.then7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %29 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body35, label %if.then32

if.then32:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %add33 = add nuw nsw i32 %j.0176, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.69, i32 noundef %add33, i32 noundef %add) #8
  br label %for.inc

do.body35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_reserve_lms, %if.then41)) #8
          to label %for.inc [label %if.then41], !srcloc !182

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %add42 = add nuw nsw i32 %j.0176, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %add42, i32 noundef %add) #8
  br label %for.inc

if.end50:                                         ; preds = %if.end27
  %arrayidx51 = getelementptr [12 x i32], ptr %pp_idx, i32 0, i32 %lm_count.1175
  %arrayidx52 = getelementptr [12 x i32], ptr %dspp_idx, i32 0, i32 %lm_count.1175
  %call53 = call fastcc zeroext i1 @_dpu_rm_check_lm_and_get_connected_blks(ptr noundef %rm, ptr noundef %global_state, i32 noundef %enc_id, i32 noundef %j.0176, ptr noundef %arrayidx51, ptr noundef %arrayidx52, ptr noundef %reqs)
  br i1 %call53, label %if.end55, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx56 = getelementptr [12 x i32], ptr %lm_idx, i32 0, i32 %lm_count.1175
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %j.0176, ptr %arrayidx56, align 4
  %inc57 = add nuw i32 %lm_count.1175, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.end50.for.inc_crit_edge, %if.then41, %do.body35, %if.then32, %for.body22.for.inc_crit_edge
  %lm_count.2 = phi i32 [ %inc57, %if.end55 ], [ %lm_count.1175, %if.end50.for.inc_crit_edge ], [ %lm_count.1175, %if.then32 ], [ %lm_count.1175, %if.then41 ], [ %lm_count.1175, %for.body22.for.inc_crit_edge ], [ %lm_count.1175, %do.body35 ]
  %inc58 = add nuw nsw i32 %j.0176, 1
  %exitcond.not = icmp eq i32 %inc58, 7
  br i1 %exitcond.not, label %for.inc.for.inc59_crit_edge, label %for.inc.land.rhs17_crit_edge

for.inc.land.rhs17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs17

for.inc.for.inc59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

for.inc59:                                        ; preds = %for.inc.for.inc59_crit_edge, %land.rhs17.for.inc59_crit_edge, %if.end14.for.inc59_crit_edge, %if.end8.for.inc59_crit_edge, %for.body.for.inc59_crit_edge
  %lm_count.3 = phi i32 [ 0, %if.end8.for.inc59_crit_edge ], [ %lm_count.0179, %for.body.for.inc59_crit_edge ], [ 1, %if.end14.for.inc59_crit_edge ], [ %lm_count.2, %for.inc.for.inc59_crit_edge ], [ %lm_count.1175, %land.rhs17.for.inc59_crit_edge ]
  %inc60 = add nuw nsw i32 %i.0180, 1
  %exitcond184.not = icmp eq i32 %inc60, 7
  br i1 %exitcond184.not, label %for.inc59.for.end61_crit_edge, label %for.inc59.land.rhs_crit_edge

for.inc59.land.rhs_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end61

for.end61:                                        ; preds = %for.inc59.for.end61_crit_edge, %land.rhs.for.end61_crit_edge
  %lm_count.0.lcssa = phi i32 [ %lm_count.3, %for.inc59.for.end61_crit_edge ], [ %lm_count.0179, %land.rhs.for.end61_crit_edge ]
  %31 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lm_count.0.lcssa, i32 %32)
  %cmp64.not = icmp eq i32 %lm_count.0.lcssa, %32
  br i1 %cmp64.not, label %for.cond90.preheader, label %do.body66

for.cond90.preheader:                             ; preds = %for.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lm_count.0.lcssa)
  %cmp91182 = icmp sgt i32 %lm_count.0.lcssa, 0
  br i1 %cmp91182, label %for.body92.lr.ph, label %for.cond90.preheader.cleanup_crit_edge

for.cond90.preheader.cleanup_crit_edge:           ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body92.lr.ph:                                 ; preds = %for.cond90.preheader
  %num_dspp = getelementptr inbounds %struct.msm_display_topology, ptr %reqs, i32 0, i32 3
  br label %for.body92

do.body66:                                        ; preds = %for.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %33 = load i32, ptr @__drm_debug, align 4
  %and.i169 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.i170.not = icmp eq i32 %and.i169, 0
  br i1 %tobool.i170.not, label %do.body70, label %if.then68

if.then68:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.71) #8
  br label %cleanup

do.body70:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_reserve_lms, %if.then82)) #8
          to label %cleanup [label %if.then82], !srcloc !182

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68) #8
  br label %cleanup

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.body92.lr.ph
  %i.1183 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc106, %for.body92.for.body92_crit_edge ]
  %arrayidx93 = getelementptr [12 x i32], ptr %lm_idx, i32 0, i32 %i.1183
  %34 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx93, align 4
  %arrayidx94 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 2, i32 %35
  %36 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %enc_id, ptr %arrayidx94, align 4
  %arrayidx95 = getelementptr [12 x i32], ptr %pp_idx, i32 0, i32 %i.1183
  %37 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx95, align 4
  %arrayidx96 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 1, i32 %38
  %39 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %enc_id, ptr %arrayidx96, align 4
  %40 = ptrtoint ptr %num_dspp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_dspp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool98.not = icmp eq i32 %41, 0
  %spec.select = select i1 %tobool98.not, i32 0, i32 %enc_id
  %arrayidx99 = getelementptr [12 x i32], ptr %dspp_idx, i32 0, i32 %i.1183
  %42 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx99, align 4
  %arrayidx100 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 5, i32 %43
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select, ptr %arrayidx100, align 4
  %add102 = add i32 %35, 1
  %add104 = add i32 %38, 1
  tail call fastcc void @trace_dpu_rm_reserve_lms(i32 noundef %add102, i32 noundef %enc_id, i32 noundef %add104)
  %inc106 = add nuw nsw i32 %i.1183, 1
  %exitcond185.not = icmp eq i32 %inc106, %lm_count.0.lcssa
  br i1 %exitcond185.not, label %for.body92.cleanup_crit_edge, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body92

for.body92.cleanup_crit_edge:                     ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body92.cleanup_crit_edge, %if.then82, %do.body70, %if.then68, %for.cond90.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -119, %if.then82 ], [ -119, %if.then68 ], [ -119, %do.body70 ], [ 0, %for.cond90.preheader.cleanup_crit_edge ], [ 0, %for.body92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dspp_idx) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pp_idx) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lm_idx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_rm_reserve_ctls(ptr nocapture noundef readonly %rm, ptr nocapture noundef %global_state, i32 noundef %enc_id, ptr nocapture noundef readonly %top) unnamed_addr #0 align 64 {
entry:
  %ctl_idx = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ctl_idx) #8
  %0 = call ptr @memset(ptr %ctl_idx, i32 255, i32 48)
  %num_intf = getelementptr inbounds %struct.msm_display_topology, ptr %top, i32 0, i32 2
  %1 = ptrtoint ptr %num_intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_intf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp ugt i32 %2, 1
  %ctl_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0128 = phi i32 [ 0, %entry ], [ %i.1123, %for.inc.for.body_crit_edge ]
  %j.0124 = phi i32 [ 0, %entry ], [ %inc63, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 2, i32 %j.0124
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx.i = getelementptr i32, ptr %ctl_to_enc_id, i32 %j.0124
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %enc_id)
  %cmp.i114 = icmp ne i32 %6, %enc_id
  %spec.select.i = and i1 %tobool.not.i, %cmp.i114
  br i1 %spec.select.i, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end3:                                          ; preds = %if.end
  %caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 4
  %features7 = getelementptr inbounds %struct.dpu_ctl_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %features7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %11 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body12, label %if.then11

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %j.0124, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.88, i32 noundef %add, i32 noundef %10) #8
  br label %do.end23

do.body12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_reserve_ctls, %if.then18)) #8
          to label %do.end23 [label %if.then18], !srcloc !182

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %add19 = add nuw nsw i32 %j.0124, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %add19, i32 noundef %10) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body12, %if.then11
  %12 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  %cmp27.not = xor i1 %cmp.i, %13
  br i1 %cmp27.not, label %if.end30, label %do.end23.for.inc_crit_edge

do.end23.for.inc_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end30:                                         ; preds = %do.end23
  %arrayidx31 = getelementptr [12 x i32], ptr %ctl_idx, i32 0, i32 %i.0128
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %j.0124, ptr %arrayidx31, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %15 = load i32, ptr @__drm_debug, align 4
  %and.i115 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.i116.not = icmp eq i32 %and.i115, 0
  br i1 %tobool.i116.not, label %do.body37, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %add35 = add nuw nsw i32 %j.0124, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.91, i32 noundef %add35) #8
  br label %cleanup

do.body37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_reserve_ctls, %if.then49)) #8
          to label %cleanup [label %if.then49], !srcloc !182

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %add50 = add nuw nsw i32 %j.0124, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.89, i32 noundef %add50) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body37, %if.then34
  %inc = add i32 %i.0128, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %2)
  %cmp57 = icmp eq i32 %inc, %2
  br i1 %cmp57, label %cleanup.for.cond68.preheader_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup.for.cond68.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.preheader

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %do.end23.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1123 = phi i32 [ %inc, %cleanup.for.inc_crit_edge ], [ %i.0128, %for.body.for.inc_crit_edge ], [ %i.0128, %if.end.for.inc_crit_edge ], [ %i.0128, %do.end23.for.inc_crit_edge ]
  %inc63 = add nuw nsw i32 %j.0124, 1
  %exitcond.not = icmp eq i32 %inc63, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1123, i32 %2)
  %cmp64.not = icmp eq i32 %i.1123, %2
  br i1 %cmp64.not, label %for.end.for.cond68.preheader_crit_edge, label %for.end.cleanup81_crit_edge

for.end.cleanup81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

for.end.for.cond68.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.end.for.cond68.preheader_crit_edge, %cleanup.for.cond68.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp71129 = icmp sgt i32 %2, 0
  br i1 %cmp71129, label %for.body73.preheader, label %for.cond68.preheader.cleanup81_crit_edge

for.cond68.preheader.cleanup81_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

for.body73.preheader:                             ; preds = %for.cond68.preheader
  %16 = add nsw i32 %2, -1
  %umin = call i32 @llvm.umin.i32(i32 %16, i32 11)
  br label %for.body73

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.body73.preheader
  %i.3130 = phi i32 [ %add77, %for.body73.for.body73_crit_edge ], [ 0, %for.body73.preheader ]
  %arrayidx75 = getelementptr [12 x i32], ptr %ctl_idx, i32 0, i32 %i.3130
  %17 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx75, align 4
  %arrayidx76 = getelementptr %struct.dpu_global_state, ptr %global_state, i32 0, i32 3, i32 %18
  %19 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %enc_id, ptr %arrayidx76, align 4
  %add77 = add nuw nsw i32 %i.3130, 1
  tail call fastcc void @trace_dpu_rm_reserve_ctls(i32 noundef %add77, i32 noundef %enc_id)
  %exitcond131.not = icmp eq i32 %i.3130, %umin
  br i1 %exitcond131.not, label %for.body73.cleanup81_crit_edge, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body73

for.body73.cleanup81_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

cleanup81:                                        ; preds = %for.body73.cleanup81_crit_edge, %for.cond68.preheader.cleanup81_crit_edge, %for.end.cleanup81_crit_edge
  %retval.0 = phi i32 [ -119, %for.end.cleanup81_crit_edge ], [ 0, %for.cond68.preheader.cleanup81_crit_edge ], [ 0, %for.body73.cleanup81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ctl_idx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_dpu_rm_check_lm_and_get_connected_blks(ptr nocapture noundef readonly %rm, ptr nocapture noundef readonly %global_state, i32 noundef %enc_id, i32 noundef %lm_idx, ptr nocapture noundef writeonly %pp_idx, ptr nocapture noundef writeonly %dspp_idx, ptr nocapture noundef readonly %reqs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 2
  %arrayidx.i = getelementptr i32, ptr %mixer_to_enc_id, i32 %lm_idx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enc_id)
  %cmp.i = icmp ne i32 %1, %enc_id
  %spec.select.i = and i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %2 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %lm_idx, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.73, i32 noundef %add) #8
  br label %cleanup

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_check_lm_and_get_connected_blks, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !182

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %add8 = add i32 %lm_idx, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %add8) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.dpu_rm, ptr %rm, i32 0, i32 1, i32 %lm_idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cap = getelementptr inbounds %struct.dpu_hw_mixer, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cap, align 4
  %pingpong = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %pingpong to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pingpong, align 4
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp14 = icmp ugt i32 %sub, 6
  br i1 %cmp14, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, i32 noundef %8) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %pingpong_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 1
  %arrayidx.i132 = getelementptr i32, ptr %pingpong_to_enc_id, i32 %sub
  %9 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i133 = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %enc_id)
  %cmp.i134 = icmp ne i32 %10, %enc_id
  %spec.select.i135 = and i1 %tobool.not.i133, %cmp.i134
  br i1 %spec.select.i135, label %do.body26, label %if.end52

do.body26:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %11 = load i32, ptr @__drm_debug, align 4
  %and.i136 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.i137.not = icmp eq i32 %and.i136, 0
  br i1 %tobool.i137.not, label %do.body31, label %if.then28

if.then28:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef %13, i32 noundef %8) #8
  br label %cleanup

do.body31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_check_lm_and_get_connected_blks, %if.then43)) #8
          to label %cleanup [label %if.then43], !srcloc !182

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %id44 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %id44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id44, align 4
  %16 = ptrtoint ptr %pingpong to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pingpong, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.74, i32 noundef %15, i32 noundef %17) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %pp_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %pp_idx, align 4
  %num_dspp = getelementptr inbounds %struct.msm_display_topology, ptr %reqs, i32 0, i32 3
  %19 = ptrtoint ptr %num_dspp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_dspp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool53.not = icmp eq i32 %20, 0
  br i1 %tobool53.not, label %if.end52.cleanup_crit_edge, label %if.end55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end52
  %dspp = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 7
  %21 = ptrtoint ptr %dspp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dspp, align 4
  %sub56 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub56)
  %cmp59 = icmp ugt i32 %sub56, 3
  br i1 %cmp59, label %do.end63, label %if.end67

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.74, i32 noundef %22) #11
  br label %cleanup

if.end67:                                         ; preds = %if.end55
  %dspp_to_enc_id = getelementptr inbounds %struct.dpu_global_state, ptr %global_state, i32 0, i32 5
  %arrayidx.i138 = getelementptr i32, ptr %dspp_to_enc_id, i32 %sub56
  %23 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i139 = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %enc_id)
  %cmp.i140 = icmp ne i32 %24, %enc_id
  %spec.select.i141 = and i1 %tobool.not.i139, %cmp.i140
  br i1 %spec.select.i141, label %do.body71, label %if.end98

do.body71:                                        ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %25 = load i32, ptr @__drm_debug, align 4
  %and.i142 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.i143.not = icmp eq i32 %and.i142, 0
  br i1 %tobool.i143.not, label %do.body77, label %if.then73

if.then73:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %id74 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 1
  %26 = ptrtoint ptr %id74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id74, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef %27, i32 noundef %22) #8
  br label %cleanup

do.body77:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_rm_check_lm_and_get_connected_blks, %if.then89)) #8
          to label %cleanup [label %if.then89], !srcloc !182

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %id90 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 1
  %28 = ptrtoint ptr %id90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id90, align 4
  %30 = ptrtoint ptr %dspp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dspp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.74, i32 noundef %29, i32 noundef %31) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dspp_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub56, ptr %dspp_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then89, %do.body77, %if.then73, %do.end63, %if.end52.cleanup_crit_edge, %if.then43, %do.body31, %if.then28, %do.end18, %if.then7, %do.body3, %if.then2
  %retval.0 = phi i1 [ false, %do.end18 ], [ false, %do.end63 ], [ true, %if.end98 ], [ false, %if.then7 ], [ false, %if.then2 ], [ false, %if.then43 ], [ false, %if.then28 ], [ true, %if.end52.cleanup_crit_edge ], [ false, %if.then89 ], [ false, %if.then73 ], [ false, %do.body3 ], [ false, %do.body31 ], [ false, %do.body77 ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_rm_reserve_lms(i32 noundef %id, i32 noundef %enc_id, i32 noundef %pp_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_lms, i32 0, i32 1), ptr blockaddress(@trace_dpu_rm_reserve_lms, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !182

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !183

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  %call42 = tail call i32 @__traceiter_dpu_rm_reserve_lms(ptr noundef null, i32 noundef %id, i32 noundef %enc_id, i32 noundef %pp_id) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !183

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_lms, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_lms, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_rm_reserve_lms.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpu_rm_reserve_lms.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 844, ptr noundef nonnull @.str.86) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !187
  %31 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_rm_reserve_lms(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_rm_reserve_ctls(i32 noundef %id, i32 noundef %enc_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_ctls, i32 0, i32 1), ptr blockaddress(@trace_dpu_rm_reserve_ctls, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !182

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !183

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !188
  %call42 = tail call i32 @__traceiter_dpu_rm_reserve_ctls(ptr noundef null, i32 noundef %id, i32 noundef %enc_id) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !183

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_ctls, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_ctls, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_rm_reserve_ctls.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpu_rm_reserve_ctls.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 827, ptr noundef nonnull @.str.86) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !187
  %31 = tail call i32 @llvm.read_register.i32(metadata !172) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_rm_reserve_ctls(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171}
!llvm.named.register.sp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_rm_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_rm_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 102, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dpu_rm_init.__UNIQUE_ID_ddebug475, !7, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 107, i32 4}
!13 = !{ptr @dpu_rm_init._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @dpu_rm_init._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 113, i32 4}
!17 = !{ptr @dpu_rm_init._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @dpu_rm_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 125, i32 4}
!21 = !{ptr @dpu_rm_init._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dpu_rm_init._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 136, i32 4}
!25 = !{ptr @dpu_rm_init._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dpu_rm_init._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 142, i32 4}
!29 = !{ptr @dpu_rm_init._entry.18, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dpu_rm_init._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 154, i32 4}
!33 = !{ptr @dpu_rm_init._entry.21, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dpu_rm_init._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 160, i32 4}
!37 = !{ptr @dpu_rm_init._entry.24, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dpu_rm_init._entry_ptr.26, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 174, i32 4}
!41 = !{ptr @dpu_rm_init.__UNIQUE_ID_ddebug476, !40, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!42 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 178, i32 4}
!45 = !{ptr @dpu_rm_init._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @dpu_rm_init._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 184, i32 4}
!49 = !{ptr @dpu_rm_init._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dpu_rm_init._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 195, i32 4}
!53 = !{ptr @dpu_rm_init._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @dpu_rm_init._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 201, i32 4}
!57 = !{ptr @dpu_rm_init._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dpu_rm_init._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 212, i32 4}
!61 = !{ptr @dpu_rm_init._entry.41, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dpu_rm_init._entry_ptr.43, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.45, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 218, i32 4}
!65 = !{ptr @dpu_rm_init._entry.44, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dpu_rm_init._entry_ptr.46, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.47, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 587, i32 3}
!69 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dpu_rm_reserve._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @dpu_rm_reserve._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 591, i32 2}
!74 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 596, i32 3}
!76 = !{ptr @dpu_rm_reserve._entry.50, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dpu_rm_reserve._entry_ptr.52, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.54, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 602, i32 3}
!80 = !{ptr @dpu_rm_reserve._entry.53, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @dpu_rm_reserve._entry_ptr.55, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.56, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 644, i32 3}
!84 = !{ptr @.str.57, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dpu_rm_get_assigned_resources._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dpu_rm_get_assigned_resources._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.59, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 654, i32 4}
!89 = !{ptr @dpu_rm_get_assigned_resources._entry.58, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dpu_rm_get_assigned_resources._entry_ptr.60, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.61, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 541, i32 2}
!93 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 513, i32 3}
!95 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @_dpu_rm_make_reservation._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @_dpu_rm_make_reservation._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 520, i32 3}
!100 = !{ptr @_dpu_rm_make_reservation._entry.64, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @_dpu_rm_make_reservation._entry_ptr.66, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.67, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 339, i32 3}
!104 = !{ptr @.str.68, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @_dpu_rm_reserve_lms._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @_dpu_rm_reserve_lms._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.69, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 367, i32 5}
!109 = !{ptr @_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug481, !108, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!110 = !{ptr @.str.70, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.71, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 385, i32 3}
!113 = !{ptr @_dpu_rm_reserve_lms.__UNIQUE_ID_ddebug482, !112, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!114 = !{ptr @.str.72, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.73, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 290, i32 3}
!117 = !{ptr @.str.74, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug478, !116, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!119 = !{ptr @.str.75, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.76, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 297, i32 3}
!122 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 302, i32 3}
!126 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug479, !125, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!127 = !{ptr @.str.78, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 313, i32 3}
!130 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks._entry.79, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks._entry_ptr.81, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.82, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 318, i32 3}
!134 = !{ptr @_dpu_rm_check_lm_and_get_connected_blks.__UNIQUE_ID_ddebug480, !133, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!135 = !{ptr @.str.83, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.84, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 255, i32 3}
!138 = !{ptr @_dpu_rm_check_lm_peer.__UNIQUE_ID_ddebug477, !137, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 829, i32 1}
!141 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!143 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!146 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 431, i32 3}
!149 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug483, !148, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!151 = !{ptr @.str.90, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.91, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 437, i32 3}
!154 = !{ptr @_dpu_rm_reserve_ctls.__UNIQUE_ID_ddebug484, !153, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!155 = !{ptr @.str.92, !153, !"<string literal>", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 824, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = !{ptr @.str.93, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 464, i32 3}
!161 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @_dpu_rm_reserve_intf._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @_dpu_rm_reserve_intf._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.96, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 469, i32 3}
!166 = !{ptr @_dpu_rm_reserve_intf._entry.95, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @_dpu_rm_reserve_intf._entry_ptr.97, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c", i32 474, i32 3}
!170 = !{ptr @_dpu_rm_reserve_intf._entry.98, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @_dpu_rm_reserve_intf._entry_ptr.100, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{!"sp"}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 2148189847, i64 2148189852, i64 2148189865, i64 2148189909, i64 2148189943, i64 2148189964}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 2158455714}
!185 = !{i64 2158455947}
!186 = !{i64 2149981270}
!187 = !{i64 2149982306}
!188 = !{i64 2158438808}
!189 = !{i64 2158439029}
