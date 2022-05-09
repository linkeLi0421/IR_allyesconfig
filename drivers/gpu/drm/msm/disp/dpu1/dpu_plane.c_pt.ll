; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dpu_csc_cfg = type { [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_multirect_plane_states = type { ptr, ptr }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.dpu_plane = type { %struct.drm_plane, %struct.mutex, i32, ptr, i32, i8, i8, i8, %struct.list_head, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_pipe = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, ptr, ptr, i32, ptr, %struct.dpu_hw_sspp_ops }
%struct.dpu_hw_sspp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.dpu_hw_fmt_layout, %struct.drm_rect, %struct.drm_rect, i32, i32 }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.dpu_hw_pipe_qos_cfg = type { i32, i32, i8, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dpu_sspp_sub_blks = type { i32, i32, i32, i32, i32, i32, i32, %struct.dpu_src_blk, %struct.dpu_scaler_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, ptr, i32, ptr, i32 }
%struct.dpu_src_blk = type { [16 x i8], i32, i32, i32 }
%struct.dpu_scaler_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_hw_scaler3_cfg = type { i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_hw_scaler3_de_cfg, i32 }
%struct.dpu_hw_scaler3_de_cfg = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16] }
%struct.dpu_hw_pixel_ext = type { i8, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.89, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.89 = type { [4 x i8] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.dpu_vbif_set_qos_params = type { i32, i32, i32, i32, i8 }
%struct.dpu_vbif_set_ot_params = type { i32, i32, i32, i32, i32, i8, i8, i32, i32 }
%struct.dpu_hw_pipe_cdp_cfg = type { i8, i8, i8, i32 }
%struct.dpu_qos_lut_entry = type { i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dpu_plane_validate_multirect_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[drm:%s:%d] [dpu error]DPU plane state of plane id %d is NULL\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_plane_validate_multirect_v2\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c\00", [54 x i8] zeroinitializer }, align 32
@dpu_plane_validate_multirect_v2._entry_ptr = internal global ptr @dpu_plane_validate_multirect_v2._entry, section ".printk_index", align 4
@dpu_plane_validate_multirect_v2._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013[drm:%s:%d] [dpu error]plane%d scaling is not supported in multirect mode\0A\00", [51 x i8] zeroinitializer }, align 32
@dpu_plane_validate_multirect_v2._entry_ptr.5 = internal global ptr @dpu_plane_validate_multirect_v2._entry.3, section ".printk_index", align 4
@dpu_plane_validate_multirect_v2._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013[drm:%s:%d] [dpu error]plane%d Unsupported format for multirect mode\0A\00", [56 x i8] zeroinitializer }, align 32
@dpu_plane_validate_multirect_v2._entry_ptr.8 = internal global ptr @dpu_plane_validate_multirect_v2._entry.6, section ".printk_index", align 4
@dpu_plane_validate_multirect_v2._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013[drm:%s:%d] [dpu error]No multirect mode possible for the planes (%d - %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@dpu_plane_validate_multirect_v2._entry_ptr.11 = internal global ptr @dpu_plane_validate_multirect_v2._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"plane%d R0: %d - %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"plane%d R1: %d - %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dpu_plane_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[drm:%s:%d] [dpu error]invalid plane\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpu_plane_flush\00", [16 x i8] zeroinitializer }, align 32
@dpu_plane_flush._entry_ptr = internal global ptr @dpu_plane_flush._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sspp\00", [27 x i8] zeroinitializer }, align 32
@dpu_plane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013[drm:%s:%d] [dpu error][%u]failed to allocate local plane struct\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpu_plane_init\00", [17 x i8] zeroinitializer }, align 32
@dpu_plane_init._entry_ptr = internal global ptr @dpu_plane_init._entry, section ".printk_index", align 4
@dpu_plane_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[drm:%s:%d] [dpu error][%u]SSPP init failed\0A\00", [49 x i8] zeroinitializer }, align 32
@dpu_plane_init._entry_ptr.21 = internal global ptr @dpu_plane_init._entry.19, section ".printk_index", align 4
@dpu_plane_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[drm:%s:%d] [dpu error][%u]SSPP init returned invalid cfg\0A\00", [35 x i8] zeroinitializer }, align 32
@dpu_plane_init._entry_ptr.24 = internal global ptr @dpu_plane_init._entry.22, section ".printk_index", align 4
@dpu_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @dpu_plane_destroy, ptr @dpu_plane_reset, ptr null, ptr @dpu_plane_duplicate_state, ptr @dpu_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @dpu_plane_atomic_print_state, ptr @dpu_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@supported_format_modifiers = internal constant { [3 x i64], [40 x i8] } { [3 x i64] [i64 360287970189639681, i64 0, i64 72057594037927935], [40 x i8] zeroinitializer }, align 32
@dpu_plane_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[drm:%s:%d] [dpu error]failed to install zpos property, rc = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dpu_plane_init._entry_ptr.27 = internal global ptr @dpu_plane_init._entry.25, section ".printk_index", align 4
@dpu_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @dpu_plane_prepare_fb, ptr @dpu_plane_cleanup_fb, ptr @dpu_plane_atomic_check, ptr @dpu_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dpu_plane_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pdpu->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s created for pipe:%u id:%u virtual:%u\0A\00", [55 x i8] zeroinitializer }, align 32
@dpu_plane_init.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.18, ptr @.str.2, ptr @.str.29, i8 1, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[drm:%s:%d] %s created for pipe:%u id:%u virtual:%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plane%d \0A\00", [22 x i8] zeroinitializer }, align 32
@_dpu_plane_get_csc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.33, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_dpu_plane_get_csc\00", [45 x i8] zeroinitializer }, align 32
@_dpu_plane_get_csc._entry_ptr = internal global ptr @_dpu_plane_get_csc._entry, section ".printk_index", align 4
@dpu_csc10_YUV2RGB_601L = internal constant { %struct.dpu_csc_cfg, [52 x i8] } { %struct.dpu_csc_cfg { [9 x i32] [i32 76288, i32 0, i32 104576, i32 76288, i32 -25728, i32 -53248, i32 76288, i32 132224, i32 0], [3 x i32] [i32 65472, i32 65024, i32 65024], [3 x i32] zeroinitializer, [6 x i32] [i32 64, i32 940, i32 64, i32 960, i32 64, i32 960], [6 x i32] [i32 0, i32 1023, i32 0, i32 1023, i32 0, i32 1023] }, [52 x i8] zeroinitializer }, align 32
@dpu_csc_YUV2RGB_601L = internal constant { %struct.dpu_csc_cfg, [52 x i8] } { %struct.dpu_csc_cfg { [9 x i32] [i32 76288, i32 0, i32 104576, i32 76288, i32 -25728, i32 -53248, i32 76288, i32 132224, i32 0], [3 x i32] [i32 65520, i32 65408, i32 65408], [3 x i32] zeroinitializer, [6 x i32] [i32 16, i32 235, i32 16, i32 240, i32 16, i32 240], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }, [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"plane%d using 0x%X 0x%X 0x%X...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"plane%d pnum:%d ds:%d vb:%d pri[0x%x, 0x%x] is_rt:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dpu_plane_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.36, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpu_plane_reset\00", [16 x i8] zeroinitializer }, align 32
@dpu_plane_reset._entry_ptr = internal global ptr @dpu_plane_reset._entry, section ".printk_index", align 4
@dpu_plane_reset._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[drm:%s:%d] [dpu error]plane%d failed to allocate state\0A\00", [37 x i8] zeroinitializer }, align 32
@dpu_plane_reset._entry_ptr.39 = internal global ptr @dpu_plane_reset._entry.37, section ".printk_index", align 4
@dpu_plane_duplicate_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.40, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_plane_duplicate_state\00", [38 x i8] zeroinitializer }, align 32
@dpu_plane_duplicate_state._entry_ptr = internal global ptr @dpu_plane_duplicate_state._entry, section ".printk_index", align 4
@dpu_plane_duplicate_state._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[drm:%s:%d] [dpu error]invalid plane state\0A\00", [50 x i8] zeroinitializer }, align 32
@dpu_plane_duplicate_state._entry_ptr.43 = internal global ptr @dpu_plane_duplicate_state._entry.41, section ".printk_index", align 4
@dpu_plane_duplicate_state._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.40, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dpu_plane_duplicate_state._entry_ptr.45 = internal global ptr @dpu_plane_duplicate_state._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09stage=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09sspp=%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09multirect_mode=%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09multirect_index=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@multirect_mode_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53], [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"parallel\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"time_mx\00", [24 x i8] zeroinitializer }, align 32
@multirect_index_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"solo\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rect_0\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rect_1\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"plane%d FB[%u]\0A\00", [16 x i8] zeroinitializer }, align 32
@dpu_plane_prepare_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s:%d] [dpu error]failed to prepare framebuffer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpu_plane_prepare_fb\00", [43 x i8] zeroinitializer }, align 32
@dpu_plane_prepare_fb._entry_ptr = internal global ptr @dpu_plane_prepare_fb._entry, section ".printk_index", align 4
@dpu_plane_prepare_fb._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[drm:%s:%d] [dpu error]plane%d failed to get format layout, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_plane_prepare_fb._entry_ptr.62 = internal global ptr @dpu_plane_prepare_fb._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"plane%d Check plane state failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"plane%d plane doesn't have scaler/csc for yuv\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"plane%d invalid source %dx%d%+d%+d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"plane%d invalid yuv source %dx%d%+d%+d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"plane%d invalid dest rect %dx%d%+d%+d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"plane%d invalid src %dx%d%+d%+d line:%u\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_plane_disable = external dso_local global %struct.tracepoint, align 4
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_plane_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"plane%d FB[%u] %d.%06ux%d.%06u%+d.%06u%+d.%06u->crtc%u %dx%d%+d%+d, %4.4s ubwc %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"plane%d not updating same src addrs\0A\00", [59 x i8] zeroinitializer }, align 32
@_dpu_plane_set_scanout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.74, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_dpu_plane_set_scanout\00", [41 x i8] zeroinitializer }, align 32
@_dpu_plane_set_scanout._entry_ptr = internal global ptr @_dpu_plane_set_scanout._entry, section ".printk_index", align 4
@__tracepoint_dpu_plane_set_scanout = external dso_local global %struct.tracepoint, align 4
@trace_dpu_plane_set_scanout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"plane%d pnum:%d fmt: %4.4s rt:%d fl:%u lut:0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@_dpu_plane_calc_fill_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[drm:%s:%d] [dpu error]invalid arguments\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_dpu_plane_calc_fill_level\00", [37 x i8] zeroinitializer }, align 32
@_dpu_plane_calc_fill_level._entry_ptr = internal global ptr @_dpu_plane_calc_fill_level._entry, section ".printk_index", align 4
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"plane%d/%d src_width:%d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@_dpu_plane_calc_fill_level.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm:%s:%d] plane%d/%d src_width:%d/%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"plane%d pnum:%d fmt: %4.4s w:%u fl:%u\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_perf_set_qos_luts = external dso_local global %struct.tracepoint, align 4
@trace_dpu_perf_set_qos_luts.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"plane%d pnum:%d fmt: %4.4s mode:%d luts[0x%x, 0x%x]\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_perf_set_danger_luts = external dso_local global %struct.tracepoint, align 4
@trace_dpu_perf_set_danger_luts.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 360287970189639681]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 32, i64 842094158, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 909199170]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 783, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 797, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 803, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 843, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 859, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 861, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1049, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1394, i32 44 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1469, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1490, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1494, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"dpu_plane_funcs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1424, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"supported_format_modifiers\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 112, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1524, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"dpu_plane_helper_funcs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1435, i32 44 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1544, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1546, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 702, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 629, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"dpu_csc10_YUV2RGB_601L\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 609, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"dpu_csc_YUV2RGB_601L\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 594, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 641, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 438, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1354, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1369, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1284, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1287, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1295, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1342, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1343, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1344, i32 16 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1345, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1323, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"multirect_mode_name\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1308, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1309, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1310, i32 34 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1311, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant [21 x i8] c"multirect_index_name\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1314, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1315, i32 25 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1316, i32 22 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1317, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 891, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 907, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 916, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 981, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1006, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1012, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1021, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1027, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1033, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 789, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 108, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1117, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 515, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 517, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 343, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 232, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 246, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 274, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 392, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 494, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @_dpu_plane_calc_fill_level._entry, ptr @_dpu_plane_calc_fill_level._entry_ptr, ptr @_dpu_plane_get_csc._entry, ptr @_dpu_plane_get_csc._entry_ptr, ptr @_dpu_plane_set_scanout._entry, ptr @_dpu_plane_set_scanout._entry_ptr, ptr @dpu_plane_duplicate_state._entry, ptr @dpu_plane_duplicate_state._entry.41, ptr @dpu_plane_duplicate_state._entry.44, ptr @dpu_plane_duplicate_state._entry_ptr, ptr @dpu_plane_duplicate_state._entry_ptr.43, ptr @dpu_plane_duplicate_state._entry_ptr.45, ptr @dpu_plane_flush._entry, ptr @dpu_plane_flush._entry_ptr, ptr @dpu_plane_init._entry, ptr @dpu_plane_init._entry.19, ptr @dpu_plane_init._entry.22, ptr @dpu_plane_init._entry.25, ptr @dpu_plane_init._entry_ptr, ptr @dpu_plane_init._entry_ptr.21, ptr @dpu_plane_init._entry_ptr.24, ptr @dpu_plane_init._entry_ptr.27, ptr @dpu_plane_prepare_fb._entry, ptr @dpu_plane_prepare_fb._entry.60, ptr @dpu_plane_prepare_fb._entry_ptr, ptr @dpu_plane_prepare_fb._entry_ptr.62, ptr @dpu_plane_reset._entry, ptr @dpu_plane_reset._entry.37, ptr @dpu_plane_reset._entry_ptr, ptr @dpu_plane_reset._entry_ptr.39, ptr @dpu_plane_validate_multirect_v2._entry, ptr @dpu_plane_validate_multirect_v2._entry.3, ptr @dpu_plane_validate_multirect_v2._entry.6, ptr @dpu_plane_validate_multirect_v2._entry.9, ptr @dpu_plane_validate_multirect_v2._entry_ptr, ptr @dpu_plane_validate_multirect_v2._entry_ptr.11, ptr @dpu_plane_validate_multirect_v2._entry_ptr.5, ptr @dpu_plane_validate_multirect_v2._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @dpu_plane_funcs, ptr @supported_format_modifiers, ptr @.str.26, ptr @dpu_plane_helper_funcs, ptr @dpu_plane_init.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @dpu_csc10_YUV2RGB_601L, ptr @dpu_csc_YUV2RGB_601L, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @multirect_mode_name, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @multirect_index_name, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_validate_multirect_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_validate_multirect_v2._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_validate_multirect_v2._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_validate_multirect_v2._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_format_modifiers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_plane_get_csc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_csc10_YUV2RGB_601L to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_csc_YUV2RGB_601L to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_reset._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_duplicate_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_duplicate_state._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_duplicate_state._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multirect_mode_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multirect_index_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_prepare_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_plane_prepare_fb._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_plane_set_scanout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_plane_calc_fill_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dpu_plane_clear_multirect(ptr nocapture noundef writeonly %drm_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %multirect_index = getelementptr inbounds %struct.dpu_plane_state, ptr %drm_state, i32 0, i32 4
  %0 = ptrtoint ptr %multirect_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %multirect_index, align 8
  %multirect_mode = getelementptr inbounds %struct.dpu_plane_state, ptr %drm_state, i32 0, i32 5
  %1 = ptrtoint ptr %multirect_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %multirect_mode, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_plane_validate_multirect_v2(ptr nocapture noundef readonly %plane) local_unnamed_addr #2 align 64 {
entry:
  %src = alloca [2 x %struct.drm_rect], align 4
  %dst = alloca [2 x %struct.drm_rect], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %src) #11
  %0 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  %3 = getelementptr inbounds [2 x %struct.drm_rect], ptr %src, i32 0, i32 1
  %4 = getelementptr inbounds [2 x %struct.drm_rect], ptr %src, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [2 x %struct.drm_rect], ptr %src, i32 0, i32 1, i32 2
  %6 = getelementptr inbounds [2 x %struct.drm_rect], ptr %src, i32 0, i32 1, i32 3
  %7 = call ptr @memset(ptr %src, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dst) #11
  %8 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 1
  %9 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 2
  %10 = getelementptr inbounds %struct.drm_rect, ptr %dst, i32 0, i32 3
  %11 = getelementptr inbounds [2 x %struct.drm_rect], ptr %dst, i32 0, i32 1
  %12 = getelementptr inbounds [2 x %struct.drm_rect], ptr %dst, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds [2 x %struct.drm_rect], ptr %dst, i32 0, i32 1, i32 3
  %r1 = getelementptr inbounds %struct.dpu_multirect_plane_states, ptr %plane, i32 0, i32 1
  %14 = call ptr @memset(ptr %dst, i32 255, i32 32)
  %15 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond = load ptr, ptr %plane, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 2
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %call = tail call ptr @msm_framebuffer_format(ptr noundef %17) #11
  %fetch_mode = getelementptr inbounds %struct.dpu_format, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %fetch_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fetch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp4 = icmp eq i32 %19, 2
  br i1 %cmp4, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %flag = getelementptr inbounds %struct.dpu_format, ptr %call, i32 0, i32 12
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flag, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not = icmp eq i32 %22, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %tile_height = getelementptr inbounds %struct.dpu_format, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %tile_height to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tile_height, align 2
  %25 = call i16 @llvm.umax.i16(i16 %24, i16 1)
  %26 = zext i16 %25 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.then, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %has_tiled_rect.1.off0 = phi i1 [ false, %land.lhs.true.if.end15_crit_edge ], [ false, %entry.if.end15_crit_edge ], [ true, %if.then ]
  %max_tile_height.1 = phi i32 [ 1, %land.lhs.true.if.end15_crit_edge ], [ 1, %entry.if.end15_crit_edge ], [ %26, %if.then ]
  %27 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.1 = load ptr, ptr %r1, align 4
  %fb.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 2
  %28 = ptrtoint ptr %fb.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fb.1, align 4
  %call.1 = tail call ptr @msm_framebuffer_format(ptr noundef %29) #11
  %fetch_mode.1 = getelementptr inbounds %struct.dpu_format, ptr %call.1, i32 0, i32 11
  %30 = ptrtoint ptr %fetch_mode.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fetch_mode.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp4.1 = icmp eq i32 %31, 2
  br i1 %cmp4.1, label %land.lhs.true.1, label %if.end15.if.end15.1_crit_edge

if.end15.if.end15.1_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.1

land.lhs.true.1:                                  ; preds = %if.end15
  %flag.1 = getelementptr inbounds %struct.dpu_format, ptr %call.1, i32 0, i32 12
  %32 = ptrtoint ptr %flag.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flag.1, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool7.not.1 = icmp eq i32 %34, 0
  br i1 %tobool7.not.1, label %land.lhs.true.1.if.end15.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end15.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  %tile_height.1 = getelementptr inbounds %struct.dpu_format, ptr %call.1, i32 0, i32 14
  %35 = ptrtoint ptr %tile_height.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tile_height.1, align 2
  %conv.1 = zext i16 %36 to i32
  %37 = tail call i32 @llvm.umax.i32(i32 %max_tile_height.1, i32 %conv.1)
  br label %if.end15.1

if.end15.1:                                       ; preds = %if.then.1, %land.lhs.true.1.if.end15.1_crit_edge, %if.end15.if.end15.1_crit_edge
  %has_tiled_rect.1.off0.1 = phi i1 [ %has_tiled_rect.1.off0, %land.lhs.true.1.if.end15.1_crit_edge ], [ %has_tiled_rect.1.off0, %if.end15.if.end15.1_crit_edge ], [ true, %if.then.1 ]
  %max_tile_height.1.1 = phi i32 [ %max_tile_height.1, %land.lhs.true.1.if.end15.1_crit_edge ], [ %max_tile_height.1, %if.end15.if.end15.1_crit_edge ], [ %37, %if.then.1 ]
  %38 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cond, align 4
  %cmp32 = icmp eq ptr %cond, null
  br i1 %cmp32, label %if.end15.1.do.end_crit_edge, label %if.end39

if.end15.1.do.end_crit_edge:                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.inc121.do.end_crit_edge, %if.end15.1.do.end_crit_edge
  %.lcssa = phi ptr [ %39, %if.end15.1.do.end_crit_edge ], [ %83, %for.inc121.do.end_crit_edge ]
  %base = getelementptr inbounds %struct.drm_plane, ptr %.lcssa, i32 0, i32 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 784, i32 noundef %41) #14
  br label %cleanup204

if.end39:                                         ; preds = %if.end15.1
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 8
  %42 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_x, align 4
  %shr = lshr i32 %43, 16
  %44 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr, ptr %src, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 9
  %45 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_y, align 4
  %shr43 = lshr i32 %46, 16
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr43, ptr %0, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 11
  %48 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %src_w, align 4
  %shr48 = lshr i32 %49, 16
  %add = add nuw nsw i32 %shr48, %shr
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %1, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 10
  %51 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %src_h, align 4
  %shr53 = lshr i32 %52, 16
  %add54 = add nuw nsw i32 %shr53, %shr43
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add54, ptr %2, align 4
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 4
  %54 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_x.i, align 4, !noalias !196
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 5
  %56 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_y.i, align 4, !noalias !196
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 6
  %58 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_w.i, align 4, !noalias !196
  %add.i = add i32 %59, %55
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %cond, i32 0, i32 7
  %60 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %crtc_h.i, align 4, !noalias !196
  %add3.i = add i32 %61, %57
  %62 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %dst, align 4
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %57, ptr %8, align 4
  %64 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i, ptr %9, align 4
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add3.i, ptr %10, align 4
  %call61 = call i32 @drm_rect_calc_hscale(ptr noundef nonnull %src, ptr noundef nonnull %dst, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 1
  br i1 %cmp62.not, label %lor.lhs.false, label %if.end39.do.end72_crit_edge

if.end39.do.end72_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

lor.lhs.false:                                    ; preds = %if.end39
  %call66 = call i32 @drm_rect_calc_vscale(ptr noundef nonnull %src, ptr noundef nonnull %dst, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 1
  br i1 %cmp67.not, label %if.end85, label %lor.lhs.false.do.end72_crit_edge

lor.lhs.false.do.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

do.end72:                                         ; preds = %lor.lhs.false.1.do.end72_crit_edge, %if.end39.1.do.end72_crit_edge, %lor.lhs.false.do.end72_crit_edge, %if.end39.do.end72_crit_edge
  %.lcssa288 = phi ptr [ %39, %if.end39.do.end72_crit_edge ], [ %39, %lor.lhs.false.do.end72_crit_edge ], [ %83, %if.end39.1.do.end72_crit_edge ], [ %83, %lor.lhs.false.1.do.end72_crit_edge ]
  %tobool75.not = icmp eq ptr %.lcssa288, null
  br i1 %tobool75.not, label %do.end72.cond.end82_crit_edge, label %cond.true76

do.end72.cond.end82_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end82

cond.true76:                                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  %base79 = getelementptr inbounds %struct.drm_plane, ptr %.lcssa288, i32 0, i32 4
  %66 = ptrtoint ptr %base79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base79, align 4
  br label %cond.end82

cond.end82:                                       ; preds = %cond.true76, %do.end72.cond.end82_crit_edge
  %cond83 = phi i32 [ %67, %cond.true76 ], [ -1, %do.end72.cond.end82_crit_edge ]
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 798, i32 noundef %cond83) #14
  br label %cleanup204

if.end85:                                         ; preds = %lor.lhs.false
  %flag87 = getelementptr inbounds %struct.dpu_format, ptr %call, i32 0, i32 12
  %68 = ptrtoint ptr %flag87 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flag87, align 4
  %and1.i274 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i274)
  %tobool90.not = icmp eq i32 %and1.i274, 0
  br i1 %tobool90.not, label %for.inc121, label %if.end85.do.end94_crit_edge

if.end85.do.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

do.end94:                                         ; preds = %if.end85.1.do.end94_crit_edge, %if.end85.do.end94_crit_edge
  %.lcssa289 = phi ptr [ %39, %if.end85.do.end94_crit_edge ], [ %83, %if.end85.1.do.end94_crit_edge ]
  %tobool97.not = icmp eq ptr %.lcssa289, null
  br i1 %tobool97.not, label %do.end94.cond.end104_crit_edge, label %cond.true98

do.end94.cond.end104_crit_edge:                   ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end104

cond.true98:                                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  %base101 = getelementptr inbounds %struct.drm_plane, ptr %.lcssa289, i32 0, i32 4
  %70 = ptrtoint ptr %base101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base101, align 4
  br label %cond.end104

cond.end104:                                      ; preds = %cond.true98, %do.end94.cond.end104_crit_edge
  %cond105 = phi i32 [ %71, %cond.true98 ], [ -1, %do.end94.cond.end104_crit_edge ]
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 804, i32 noundef %cond105) #14
  br label %cleanup204

for.inc121:                                       ; preds = %if.end85
  %catalog = getelementptr inbounds %struct.dpu_plane, ptr %39, i32 0, i32 9
  %72 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %catalog, align 4
  %caps = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps, align 4
  %max_linewidth = getelementptr inbounds %struct.dpu_caps, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %max_linewidth to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_linewidth, align 4
  %div = sdiv i32 %77, 2
  %spec.select272 = select i1 %has_tiled_rect.1.off0.1, i32 %div, i32 %77
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %1, align 4
  %80 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %src, align 4
  %sub.i = sub i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %spec.select272)
  %cmp117.not = icmp sgt i32 %sub.i, %spec.select272
  %82 = ptrtoint ptr %cond.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cond.1, align 4
  %cmp32.1 = icmp eq ptr %cond.1, null
  br i1 %cmp32.1, label %for.inc121.do.end_crit_edge, label %if.end39.1

for.inc121.do.end_crit_edge:                      ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end39.1:                                       ; preds = %for.inc121
  %src_x.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 8
  %84 = ptrtoint ptr %src_x.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %src_x.1, align 4
  %shr.1 = lshr i32 %85, 16
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %shr.1, ptr %3, align 4
  %src_y.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 9
  %87 = ptrtoint ptr %src_y.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %src_y.1, align 4
  %shr43.1 = lshr i32 %88, 16
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shr43.1, ptr %4, align 4
  %src_w.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 11
  %90 = ptrtoint ptr %src_w.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src_w.1, align 4
  %shr48.1 = lshr i32 %91, 16
  %add.1 = add nuw nsw i32 %shr48.1, %shr.1
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add.1, ptr %5, align 4
  %src_h.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 10
  %93 = ptrtoint ptr %src_h.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %src_h.1, align 4
  %shr53.1 = lshr i32 %94, 16
  %add54.1 = add nuw nsw i32 %shr53.1, %shr43.1
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add54.1, ptr %6, align 4
  %crtc_x.i.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 4
  %96 = ptrtoint ptr %crtc_x.i.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %crtc_x.i.1, align 4, !noalias !196
  %crtc_y.i.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 5
  %98 = ptrtoint ptr %crtc_y.i.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %crtc_y.i.1, align 4, !noalias !196
  %crtc_w.i.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 6
  %100 = ptrtoint ptr %crtc_w.i.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %crtc_w.i.1, align 4, !noalias !196
  %add.i.1 = add i32 %101, %97
  %crtc_h.i.1 = getelementptr inbounds %struct.drm_plane_state, ptr %cond.1, i32 0, i32 7
  %102 = ptrtoint ptr %crtc_h.i.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %crtc_h.i.1, align 4, !noalias !196
  %add3.i.1 = add i32 %103, %99
  %104 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %97, ptr %11, align 4
  %tmp57.sroa.4.0.arrayidx56.sroa_idx.1 = getelementptr inbounds [2 x %struct.drm_rect], ptr %dst, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %tmp57.sroa.4.0.arrayidx56.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %99, ptr %tmp57.sroa.4.0.arrayidx56.sroa_idx.1, align 4
  %tmp57.sroa.5.0.arrayidx56.sroa_idx.1 = getelementptr inbounds [2 x %struct.drm_rect], ptr %dst, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %tmp57.sroa.5.0.arrayidx56.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add.i.1, ptr %tmp57.sroa.5.0.arrayidx56.sroa_idx.1, align 4
  %tmp57.sroa.6.0.arrayidx56.sroa_idx.1 = getelementptr inbounds [2 x %struct.drm_rect], ptr %dst, i32 0, i32 1, i32 3
  %107 = ptrtoint ptr %tmp57.sroa.6.0.arrayidx56.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add3.i.1, ptr %tmp57.sroa.6.0.arrayidx56.sroa_idx.1, align 4
  %call61.1 = call i32 @drm_rect_calc_hscale(ptr noundef %3, ptr noundef %11, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61.1)
  %cmp62.not.1 = icmp eq i32 %call61.1, 1
  br i1 %cmp62.not.1, label %lor.lhs.false.1, label %if.end39.1.do.end72_crit_edge

if.end39.1.do.end72_crit_edge:                    ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

lor.lhs.false.1:                                  ; preds = %if.end39.1
  %call66.1 = call i32 @drm_rect_calc_vscale(ptr noundef %3, ptr noundef %11, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66.1)
  %cmp67.not.1 = icmp eq i32 %call66.1, 1
  br i1 %cmp67.not.1, label %if.end85.1, label %lor.lhs.false.1.do.end72_crit_edge

lor.lhs.false.1.do.end72_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

if.end85.1:                                       ; preds = %lor.lhs.false.1
  %flag87.1 = getelementptr inbounds %struct.dpu_format, ptr %call.1, i32 0, i32 12
  %108 = ptrtoint ptr %flag87.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flag87.1, align 4
  %and1.i274.1 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i274.1)
  %tobool90.not.1 = icmp eq i32 %and1.i274.1, 0
  br i1 %tobool90.not.1, label %if.end107.1, label %if.end85.1.do.end94_crit_edge

if.end85.1.do.end94_crit_edge:                    ; preds = %if.end85.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end107.1:                                      ; preds = %if.end85.1
  br i1 %cmp117.not, label %if.end107.1.if.end129_crit_edge, label %for.inc121.1

if.end107.1.if.end129_crit_edge:                  ; preds = %if.end107.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.inc121.1:                                     ; preds = %if.end107.1
  %catalog.1 = getelementptr inbounds %struct.dpu_plane, ptr %83, i32 0, i32 9
  %110 = ptrtoint ptr %catalog.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %catalog.1, align 4
  %caps.1 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %caps.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %caps.1, align 4
  %max_linewidth.1 = getelementptr inbounds %struct.dpu_caps, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %max_linewidth.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_linewidth.1, align 4
  %div.1 = sdiv i32 %115, 2
  %spec.select272.1 = select i1 %has_tiled_rect.1.off0.1, i32 %div.1, i32 %115
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %5, align 4
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %3, align 4
  %sub.i.1 = sub i32 %117, %119
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1, i32 %spec.select272.1)
  %cmp117.1.not = icmp sgt i32 %sub.i.1, %spec.select272.1
  br i1 %cmp117.1.not, label %for.inc121.1.if.end129_crit_edge, label %for.inc121.1.done_crit_edge

for.inc121.1.done_crit_edge:                      ; preds = %for.inc121.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

for.inc121.1.if.end129_crit_edge:                 ; preds = %for.inc121.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.end129:                                        ; preds = %for.inc121.1.if.end129_crit_edge, %if.end107.1.if.end129_crit_edge
  %mul = shl nuw nsw i32 %max_tile_height.1.1, 1
  %120 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %12, align 4
  %122 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %10, align 4
  %add134 = add i32 %123, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %add134)
  %cmp135.not = icmp slt i32 %121, %add134
  br i1 %cmp135.not, label %lor.lhs.false137, label %if.end129.done_crit_edge

if.end129.done_crit_edge:                         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

lor.lhs.false137:                                 ; preds = %if.end129
  %124 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %8, align 4
  %126 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %13, align 4
  %add142 = add i32 %127, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %add142)
  %cmp143.not = icmp slt i32 %125, %add142
  br i1 %cmp143.not, label %do.end152, label %lor.lhs.false137.done_crit_edge

lor.lhs.false137.done_crit_edge:                  ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.end152:                                        ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cond, align 4
  %base156 = getelementptr inbounds %struct.drm_plane, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %base156 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %base156, align 4
  %132 = ptrtoint ptr %cond.1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cond.1, align 4
  %base160 = getelementptr inbounds %struct.drm_plane, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %base160 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %base160, align 4
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 846, i32 noundef %131, i32 noundef %135) #14
  br label %cleanup204

done:                                             ; preds = %lor.lhs.false137.done_crit_edge, %if.end129.done_crit_edge, %for.inc121.1.done_crit_edge
  %.sink304 = phi i32 [ 1, %for.inc121.1.done_crit_edge ], [ 2, %lor.lhs.false137.done_crit_edge ], [ 2, %if.end129.done_crit_edge ]
  %multirect_mode147 = getelementptr inbounds %struct.dpu_plane_state, ptr %cond, i32 0, i32 5
  %136 = ptrtoint ptr %multirect_mode147 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %.sink304, ptr %multirect_mode147, align 4
  %multirect_mode149 = getelementptr inbounds %struct.dpu_plane_state, ptr %cond.1, i32 0, i32 5
  %137 = ptrtoint ptr %multirect_mode149 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.sink304, ptr %multirect_mode149, align 4
  %is_virtual = getelementptr inbounds %struct.dpu_plane, ptr %39, i32 0, i32 7
  %138 = ptrtoint ptr %is_virtual to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_virtual, align 2, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool165.not = icmp eq i8 %139, 0
  %.sink301 = select i1 %tobool165.not, i32 1, i32 2
  %.sink = select i1 %tobool165.not, i32 2, i32 1
  %140 = getelementptr inbounds %struct.dpu_plane_state, ptr %cond, i32 0, i32 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %.sink301, ptr %140, align 8
  %142 = getelementptr inbounds %struct.dpu_plane_state, ptr %cond.1, i32 0, i32 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink, ptr %142, align 8
  %tobool177.not = icmp eq ptr %39, null
  br i1 %tobool177.not, label %done.cond.end184_crit_edge, label %cond.true178

done.cond.end184_crit_edge:                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end184

cond.true178:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %base181 = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 4
  %144 = ptrtoint ptr %base181 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %base181, align 4
  br label %cond.end184

cond.end184:                                      ; preds = %cond.true178, %done.cond.end184_crit_edge
  %cond185 = phi i32 [ %145, %cond.true178 ], [ -1, %done.cond.end184_crit_edge ]
  %multirect_mode187 = getelementptr inbounds %struct.dpu_plane_state, ptr %cond, i32 0, i32 5
  %146 = ptrtoint ptr %multirect_mode187 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %multirect_mode187, align 4
  %148 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %140, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %cond185, i32 noundef %147, i32 noundef %149) #11
  %tobool191.not = icmp eq ptr %83, null
  br i1 %tobool191.not, label %cond.end184.cond.end198_crit_edge, label %cond.true192

cond.end184.cond.end198_crit_edge:                ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end198

cond.true192:                                     ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #13
  %base195 = getelementptr inbounds %struct.drm_plane, ptr %83, i32 0, i32 4
  %150 = ptrtoint ptr %base195 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %base195, align 4
  br label %cond.end198

cond.end198:                                      ; preds = %cond.true192, %cond.end184.cond.end198_crit_edge
  %cond199 = phi i32 [ %151, %cond.true192 ], [ -1, %cond.end184.cond.end198_crit_edge ]
  %multirect_mode201 = getelementptr inbounds %struct.dpu_plane_state, ptr %cond.1, i32 0, i32 5
  %152 = ptrtoint ptr %multirect_mode201 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %multirect_mode201, align 4
  %154 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %142, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %cond199, i32 noundef %153, i32 noundef %155) #11
  br label %cleanup204

cleanup204:                                       ; preds = %cond.end198, %do.end152, %cond.end104, %cond.end82, %do.end
  %retval.2 = phi i32 [ 0, %cond.end198 ], [ -22, %do.end152 ], [ -22, %do.end ], [ -22, %cond.end82 ], [ -22, %cond.end104 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dst) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %src) #11
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rect_calc_hscale(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rect_calc_vscale(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_plane_get_ctl_flush(ptr noundef readonly %plane, ptr noundef %ctl, ptr nocapture noundef writeonly %flush_sspp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bitmask_sspp = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctl, i32 0, i32 9, i32 12
  %0 = ptrtoint ptr %get_bitmask_sspp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bitmask_sspp, align 4
  %tobool.not.i = icmp eq ptr %plane, null
  br i1 %tobool.not.i, label %entry.dpu_plane_pipe.exit_crit_edge, label %cond.true.i

entry.dpu_plane_pipe.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_plane_pipe.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pipe.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 2
  %2 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe.i, align 4
  br label %dpu_plane_pipe.exit

dpu_plane_pipe.exit:                              ; preds = %cond.true.i, %entry.dpu_plane_pipe.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ 0, %entry.dpu_plane_pipe.exit_crit_edge ]
  %call1 = tail call i32 %1(ptr noundef %ctl, i32 noundef %cond.i) #11
  %4 = ptrtoint ptr %flush_sspp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %flush_sspp, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dpu_plane_pipe(ptr noundef readonly %plane) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pipe = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 2
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_plane_flush(ptr noundef %plane) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1049) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %is_error = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 5
  %2 = ptrtoint ptr %is_error to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_error, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_dpu_plane_color_fill(ptr noundef nonnull %plane, i32 noundef 16777215)
  br label %if.end34

if.else:                                          ; preds = %if.end
  %color_fill = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 4
  %4 = ptrtoint ptr %color_fill to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color_fill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool10.not = icmp sgt i32 %5, -1
  br i1 %tobool10.not, label %if.else14, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_dpu_plane_color_fill(ptr noundef nonnull %plane, i32 noundef %5)
  br label %if.end34

if.else14:                                        ; preds = %if.else
  %pipe_hw = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %6 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_hw, align 8
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.else14.if.end34_crit_edge, label %land.lhs.true

if.else14.if.end34_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %if.else14
  %setup_csc = getelementptr inbounds %struct.dpu_hw_pipe, ptr %7, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %setup_csc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup_csc, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %land.lhs.true.if.end34_crit_edge, label %if.end.i

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end.i:                                         ; preds = %land.lhs.true
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %call21 = tail call ptr @msm_framebuffer_format(ptr noundef %11) #11
  %flag.i = getelementptr inbounds %struct.dpu_format, ptr %call21, i32 0, i32 12
  %12 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flag.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end34_crit_edge, label %if.then26

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then26:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_hw, align 8
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cap.i, align 4
  %features.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %features.i, align 4
  %and.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %dpu_csc_YUV2RGB_601L.dpu_csc10_YUV2RGB_601L.i = select i1 %tobool5.not.i, ptr @dpu_csc_YUV2RGB_601L, ptr @dpu_csc10_YUV2RGB_601L
  %base9.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %20 = ptrtoint ptr %base9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base9.i, align 4
  %22 = ptrtoint ptr %dpu_csc_YUV2RGB_601L.dpu_csc10_YUV2RGB_601L.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dpu_csc_YUV2RGB_601L.dpu_csc10_YUV2RGB_601L.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %21, i32 noundef %23, i32 noundef 0, i32 noundef 104576) #11
  %24 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe_hw, align 8
  %setup_csc29 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %25, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %setup_csc29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setup_csc29, align 4
  tail call void %27(ptr noundef %25, ptr noundef nonnull %dpu_csc_YUV2RGB_601L.dpu_csc10_YUV2RGB_601L.i) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end.i.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.else14.if.end34_crit_edge, %if.then11, %if.then8
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %tobool36.not = icmp eq ptr %29, null
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %pending = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pending, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_plane_color_fill(ptr noundef readonly %pdpu, i32 noundef %color) unnamed_addr #2 align 64 {
entry:
  %pipe_cfg = alloca %struct.dpu_hw_pipe_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %pdpu, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %pipe_cfg) #11
  %2 = call ptr @memset(ptr %pipe_cfg, i32 255, i32 108)
  %tobool.not = icmp eq ptr %pdpu, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base2 = getelementptr inbounds %struct.drm_plane, ptr %pdpu, i32 0, i32 4
  %3 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %cond) #11
  %call = tail call ptr @dpu_get_dpu_format_ext(i32 noundef 875708993, i64 noundef 0) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %cond.end.if.end37_crit_edge, label %land.lhs.true

cond.end.if.end37_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true:                                    ; preds = %cond.end
  %pipe_hw = getelementptr inbounds %struct.dpu_plane, ptr %pdpu, i32 0, i32 3
  %5 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe_hw, align 8
  %setup_solidfill = getelementptr inbounds %struct.dpu_hw_pipe, ptr %6, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %setup_solidfill to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup_solidfill, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end37_crit_edge, label %if.then

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %color, -16777216
  %multirect_index = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %multirect_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multirect_index, align 8
  tail call void %8(ptr noundef %6, i32 noundef %or, i32 noundef %10) #11
  %dst_rect = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21
  %11 = call ptr @memcpy(ptr %dst_rect, ptr %dst, i32 16)
  %src_rect = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1
  %12 = ptrtoint ptr %src_rect to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_rect, align 4
  %y1 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %y1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %y1, align 4
  %x2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %x2.i, align 4
  %16 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_rect, align 4
  %sub.i = sub i32 %15, %17
  %x2 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %x2, align 4
  %y2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y1.i, align 4
  %sub.i1 = sub i32 %20, %22
  %y2 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %y2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i1, ptr %y2, align 4
  %24 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe_hw, align 8
  %ops19 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops19, align 4
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %multirect_index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %multirect_index, align 8
  tail call void %27(ptr noundef %25, ptr noundef nonnull %call, i32 noundef 16, i32 noundef %29) #11
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %30 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pipe_hw, align 8
  %setup_rects = getelementptr inbounds %struct.dpu_hw_pipe, ptr %31, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %setup_rects to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %setup_rects, align 4
  %tobool29.not = icmp eq ptr %33, null
  br i1 %tobool29.not, label %if.end.if.end36_crit_edge, label %if.then30

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %multirect_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %multirect_index, align 8
  call void %33(ptr noundef %31, ptr noundef nonnull %pipe_cfg, i32 noundef %35) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end.if.end36_crit_edge
  call fastcc void @_dpu_plane_setup_scaler(ptr noundef %pdpu, ptr noundef %1, ptr noundef nonnull %call, ptr noundef nonnull %pipe_cfg)
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true.if.end37_crit_edge, %cond.end.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %pipe_cfg) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dpu_plane_set_error(ptr noundef writeonly %plane, i1 noundef zeroext %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %frombool = zext i1 %error to i8
  %is_error = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 5
  %0 = ptrtoint ptr %is_error to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %is_error, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_plane_danger_signal_ctrl(ptr noundef readonly %plane, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  %pipe_qos_cfg.i = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_rt_pipe = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 6
  %0 = ptrtoint ptr %is_rt_pipe to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_rt_pipe, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %pdev = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pipe_qos_cfg.i) #11
  %10 = call ptr @memset(ptr %pipe_qos_cfg.i, i32 0, i32 12)
  %danger_safe_en.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i, i32 0, i32 3
  %11 = ptrtoint ptr %is_rt_pipe to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_rt_pipe, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not.i = icmp ne i8 %12, 0
  %narrow = and i1 %tobool20.not.i, %enable
  %spec.store.select.i = zext i1 %narrow to i8
  %13 = ptrtoint ptr %danger_safe_en.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.store.select.i, ptr %danger_safe_en.i, align 1
  %tobool25.not.i = icmp eq ptr %plane, null
  br i1 %tobool25.not.i, label %if.end._dpu_plane_set_qos_ctrl.exit_crit_edge, label %cond.true.i

if.end._dpu_plane_set_qos_ctrl.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_qos_ctrl.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base26.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %14 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base26.i, align 4
  br label %_dpu_plane_set_qos_ctrl.exit

_dpu_plane_set_qos_ctrl.exit:                     ; preds = %cond.true.i, %if.end._dpu_plane_set_qos_ctrl.exit_crit_edge
  %cond.i = phi i32 [ %15, %cond.true.i ], [ -1, %if.end._dpu_plane_set_qos_ctrl.exit_crit_edge ]
  %pipe.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 2
  %16 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe.i, align 4
  %sub.i = add i32 %17, -1
  %18 = zext i1 %narrow to i32
  %vblank_en29.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i, i32 0, i32 2
  %19 = ptrtoint ptr %vblank_en29.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vblank_en29.i, align 4, !range !199
  %21 = zext i8 %20 to i32
  %22 = ptrtoint ptr %pipe_qos_cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pipe_qos_cfg.i, align 4
  %danger_vblank33.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i, i32 0, i32 1
  %24 = ptrtoint ptr %danger_vblank33.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %danger_vblank33.i, align 4
  %26 = zext i8 %12 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %cond.i, i32 noundef %sub.i, i32 noundef %18, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %26) #11
  %pipe_hw37.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %27 = ptrtoint ptr %pipe_hw37.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pipe_hw37.i, align 8
  %setup_qos_ctrl.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %28, i32 0, i32 6, i32 10
  %29 = ptrtoint ptr %setup_qos_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup_qos_ctrl.i, align 4
  call void %30(ptr noundef %28, ptr noundef nonnull %pipe_qos_cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pipe_qos_cfg.i) #11
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %call.i10 = call i32 @__pm_runtime_idle(ptr noundef %dev4, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %_dpu_plane_set_qos_ctrl.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_sspp_init(ptr noundef %dpu_kms, ptr noundef %debugfs_root) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef %debugfs_root) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 18
  %2 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn21 = load ptr, ptr %plane_list, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %plane_list
  br i1 %cmp.not23, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn21, %if.end.for.body_crit_edge ]
  %pipe_hw = getelementptr i8, ptr %.pn24, i32 620
  %3 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe_hw, align 8
  %call9 = tail call i32 @_dpu_hw_sspp_init_debugfs(ptr noundef %4, ptr noundef %dpu_kms, ptr noundef %call) #11
  %5 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn24, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %plane_list5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list5
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_dpu_hw_sspp_init_debugfs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_dpu_plane_virtual(ptr noundef readonly %plane) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %is_virtual = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 7
  %0 = ptrtoint ptr %is_virtual to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_virtual, align 2, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1 = icmp ne i8 %1, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %tobool1, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_plane_init(ptr noundef %dev, i32 noundef %pipe, i32 noundef %type, i32 noundef %possible_crtcs, i32 noundef %master_plane_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 648) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 1469, i32 noundef %pipe) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe5 = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pipe5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pipe, ptr %pipe5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master_plane_id)
  %cmp = icmp ne i32 %master_plane_id, 0
  %is_virtual = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 7
  %frombool = zext i1 %cmp to i8
  %6 = ptrtoint ptr %is_virtual to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_virtual, align 2
  %mplane_list = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %mplane_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %mplane_list, ptr %mplane_list, align 4
  %prev.i = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mplane_list, ptr %prev.i, align 8
  %call.i = tail call ptr @drm_mode_object_find(ptr noundef %dev, ptr noundef null, i32 noundef %master_plane_id, i32 noundef -286331154) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -124
  %tobool7.not198 = icmp eq ptr %add.ptr.i, null
  %tobool7.not = or i1 %tobool.not.i, %tobool7.not198
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %mplane_list13 = getelementptr i8, ptr %call.i, i32 512
  %prev.i193 = getelementptr i8, ptr %call.i, i32 516
  %9 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i193, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mplane_list, ptr noundef %10, ptr noundef %mplane_list13) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mplane_list, ptr %prev.i193, align 4
  %12 = ptrtoint ptr %mplane_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mplane_list13, ptr %mplane_list, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %mplane_list, ptr %10, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i, %if.then8.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %mmio = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %catalog = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %catalog, align 8
  %call16 = tail call ptr @dpu_hw_sspp_init(i32 noundef %pipe, ptr noundef %16, ptr noundef %18, i1 noundef zeroext %cmp) #11
  %pipe_hw = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call16, ptr %pipe_hw, align 8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.else

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 1490, i32 noundef %pipe) #14
  %20 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe_hw, align 8
  %22 = ptrtoint ptr %21 to i32
  br label %clean_plane

if.else:                                          ; preds = %if.end14
  %cap = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call16, i32 0, i32 5
  %23 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cap, align 4
  %tobool28.not = icmp eq ptr %24, null
  br i1 %tobool28.not, label %if.else.do.end35_crit_edge, label %lor.lhs.false

if.else.do.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

lor.lhs.false:                                    ; preds = %if.else
  %sblk = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sblk, align 4
  %tobool31.not = icmp eq ptr %26, null
  br i1 %tobool31.not, label %lor.lhs.false.do.end35_crit_edge, label %if.end39

lor.lhs.false.do.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

do.end35:                                         ; preds = %lor.lhs.false.do.end35_crit_edge, %if.else.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef 1494, i32 noundef %pipe) #14
  br label %land.lhs.true118

if.end39:                                         ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %is_virtual to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_virtual, align 2, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool41.not = icmp eq i8 %28, 0
  %virt_format_list = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %26, i32 0, i32 16
  %virt_num_formats = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %26, i32 0, i32 17
  %format_list53 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %26, i32 0, i32 14
  %num_formats57 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %26, i32 0, i32 15
  %num_formats.0.in = select i1 %tobool41.not, ptr %num_formats57, ptr %virt_num_formats
  %format_list.0.in = select i1 %tobool41.not, ptr %format_list53, ptr %virt_format_list
  %29 = ptrtoint ptr %format_list.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %format_list.0 = load ptr, ptr %format_list.0.in, align 4
  %30 = ptrtoint ptr %num_formats.0.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %num_formats.0 = load i32, ptr %num_formats.0.in, align 4
  %call59 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 255, ptr noundef nonnull @dpu_plane_funcs, ptr noundef %format_list.0, i32 noundef %num_formats.0, ptr noundef nonnull @supported_format_modifiers, i32 noundef %type, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end39.land.lhs.true118_crit_edge

if.end39.land.lhs.true118_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true118

if.end62:                                         ; preds = %if.end39
  %31 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %catalog, align 8
  %catalog64 = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %catalog64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %catalog64, align 4
  %34 = load ptr, ptr %catalog, align 8
  %mixer_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mixer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool66.not = icmp eq i32 %36, 0
  br i1 %tobool66.not, label %if.end62.if.end79_crit_edge, label %land.lhs.true

if.end62.if.end79_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end62
  %mixer = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %34, i32 0, i32 9
  %37 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mixer, align 4
  %sblk68 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %sblk68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sblk68, align 4
  %maxblendstages = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %maxblendstages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxblendstages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool69.not = icmp eq i32 %42, 0
  br i1 %tobool69.not, label %land.lhs.true.if.end79_crit_edge, label %if.then70

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %42, -1
  %43 = tail call i32 @llvm.smin.i32(i32 %sub, i32 10)
  br label %if.end79

if.end79:                                         ; preds = %if.then70, %land.lhs.true.if.end79_crit_edge, %if.end62.if.end79_crit_edge
  %zpos_max.0 = phi i32 [ %43, %if.then70 ], [ 255, %land.lhs.true.if.end79_crit_edge ], [ 255, %if.end62.if.end79_crit_edge ]
  %call80 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %zpos_max.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end79.if.end88_crit_edge, label %do.end85

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef 1524, i32 noundef %call80) #14
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %if.end79.if.end88_crit_edge
  %call89 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call7.i.i) #11
  %call90 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call7.i.i, i32 noundef 7) #11
  %call91 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 53) #11
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %call7.i.i) #11
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %44 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dpu_plane_helper_funcs, ptr %helper_private.i, align 8
  %lock = getelementptr inbounds %struct.dpu_plane, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @dpu_plane_init.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %45 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body100, label %if.then97

if.then97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  %base98 = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %base98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base98, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %47, i32 noundef %pipe, i32 noundef %49, i32 noundef %master_plane_id) #11
  br label %cleanup

do.body100:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_plane_init.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_plane_init, %if.then107)) #11
          to label %cleanup [label %if.then107], !srcloc !200

if.then107:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  %name108 = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %name108 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name108, align 4
  %base109 = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %base109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base109, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_plane_init.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.18, i32 noundef 1547, ptr noundef %51, i32 noundef %pipe, i32 noundef %53, i32 noundef %master_plane_id) #11
  br label %cleanup

land.lhs.true118:                                 ; preds = %if.end39.land.lhs.true118_crit_edge, %do.end35
  %ret.0 = phi i32 [ %call59, %if.end39.land.lhs.true118_crit_edge ], [ -22, %do.end35 ]
  %54 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pipe_hw, align 8
  %tobool120.not = icmp eq ptr %55, null
  br i1 %tobool120.not, label %land.lhs.true118.clean_plane_crit_edge, label %if.then121

land.lhs.true118.clean_plane_crit_edge:           ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_plane

if.then121:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dpu_hw_sspp_destroy(ptr noundef nonnull %55) #11
  br label %clean_plane

clean_plane:                                      ; preds = %if.then121, %land.lhs.true118.clean_plane_crit_edge, %do.end22
  %ret.1 = phi i32 [ %22, %do.end22 ], [ %ret.0, %if.then121 ], [ %ret.0, %land.lhs.true118.clean_plane_crit_edge ]
  %call.i.i194 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mplane_list) #11
  br i1 %call.i.i194, label %if.end.i.i195, label %clean_plane.list_del.exit_crit_edge

clean_plane.list_del.exit_crit_edge:              ; preds = %clean_plane
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i195:                                    ; preds = %clean_plane
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 8
  %58 = ptrtoint ptr %mplane_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mplane_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i195, %clean_plane.list_del.exit_crit_edge
  %62 = ptrtoint ptr %mplane_list to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %mplane_list, align 4
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %64 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then107, %do.body100, %if.then97, %do.end
  %retval.0 = phi ptr [ %64, %list_del.exit ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.then107 ], [ %call7.i.i, %if.then97 ], [ %call7.i.i, %do.body100 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_sspp_init(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_sspp_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_get_dpu_format_ext(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_plane_setup_scaler(ptr nocapture noundef readonly %pdpu, ptr nocapture noundef readonly %pstate, ptr noundef %fmt, ptr noundef %pipe_cfg) unnamed_addr #2 align 64 {
entry:
  %scaler3_cfg = alloca %struct.dpu_hw_scaler3_cfg, align 4
  %pixel_ext = alloca %struct.dpu_hw_pixel_ext, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %call = tail call ptr @drm_format_info(i32 noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %scaler3_cfg) #11
  call void @llvm.lifetime.start.p0(i64 324, ptr nonnull %pixel_ext) #11
  %2 = call ptr @memset(ptr %scaler3_cfg, i32 0, i32 252)
  %3 = call ptr @memset(ptr %pixel_ext, i32 0, i32 324)
  %src_rect = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1
  %x2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x2.i, align 4
  %6 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_rect, align 4
  %sub.i = sub i32 %5, %7
  %y2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y1.i, align 4
  %sub.i1 = sub i32 %9, %11
  %dst_rect = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2
  %x2.i2 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %x2.i2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %x2.i2, align 4
  %14 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_rect, align 4
  %sub.i3 = sub i32 %13, %15
  %y2.i4 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %y2.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y2.i4, align 4
  %y1.i5 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %y1.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y1.i5, align 4
  %sub.i6 = sub i32 %17, %19
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hsub, align 2
  %conv = zext i8 %21 to i32
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 7
  %22 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vsub, align 1
  %conv7 = zext i8 %23 to i32
  %sub.i3.frozen = freeze i32 %sub.i3
  %div.i = udiv i32 2097152, %sub.i3.frozen
  %24 = mul i32 %div.i, %sub.i3.frozen
  %rem1.i.decomposed = sub i32 2097152, %24
  %mul.i = mul i32 %div.i, %sub.i
  %mul2.i = mul i32 %rem1.i.decomposed, %sub.i
  %div3.i = udiv i32 %mul2.i, %sub.i3
  %add.i = add i32 %div3.i, %mul.i
  %phase_step_x.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 3
  %25 = ptrtoint ptr %phase_step_x.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %phase_step_x.i, align 4
  %sub.i6.frozen = freeze i32 %sub.i6
  %div5.i = udiv i32 2097152, %sub.i6.frozen
  %26 = mul i32 %div5.i, %sub.i6.frozen
  %rem7.i.decomposed = sub i32 2097152, %26
  %mul9.i = mul i32 %div5.i, %sub.i1
  %mul10.i = mul i32 %rem7.i.decomposed, %sub.i1
  %div11.i = udiv i32 %mul10.i, %sub.i6
  %add12.i = add i32 %div11.i, %mul9.i
  %phase_step_y.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 5
  %27 = ptrtoint ptr %phase_step_y.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add12.i, ptr %phase_step_y.i, align 4
  %div16.i = udiv i32 %add12.i, %conv7
  %arrayidx18.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div16.i, ptr %arrayidx18.i, align 4
  %div21.i = udiv i32 %add.i, %conv
  %arrayidx23.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div21.i, ptr %arrayidx23.i, align 4
  %arrayidx27.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div21.i, ptr %arrayidx27.i, align 4
  %arrayidx31.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div16.i, ptr %arrayidx31.i, align 4
  %arrayidx35.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %arrayidx35.i, align 4
  %arrayidx39.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add12.i, ptr %arrayidx39.i, align 4
  %pipe_hw.i = getelementptr inbounds %struct.dpu_plane, ptr %pdpu, i32 0, i32 3
  %arrayidx40.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 8, i32 0
  %34 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %arrayidx40.i, align 4
  %arrayidx41.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 9, i32 0
  %35 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i1, ptr %arrayidx41.i, align 4
  %36 = ptrtoint ptr %pipe_hw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pipe_hw.i, align 8
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cap.i, align 4
  %features.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %features.i, align 4
  %and.i = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 3, i32 2
  %42 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 6, i32 0
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 7, i32 0
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i, ptr %44, align 4
  %arrayidx60.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 7, i32 0
  %46 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i1, ptr %arrayidx60.i, align 4
  %arrayidx63.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 5, i32 0
  %47 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %arrayidx63.i, align 4
  %arrayidx40.1.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 8, i32 1
  %arrayidx41.1.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 9, i32 1
  %div46.1.i = udiv i32 %sub.i, %conv
  %48 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div46.1.i, ptr %arrayidx40.1.i, align 4
  %div49.1.i = udiv i32 %sub.i1, %conv7
  %49 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div49.1.i, ptr %arrayidx41.1.i, align 4
  %50 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cap.i, align 4
  %features.1.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %features.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %features.1.i, align 4
  %and.1.i = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  %.sink4.i = select i1 %tobool.not.1.i, i32 3, i32 2
  %54 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink4.i, ptr %56, align 4
  %arrayidx60.1.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %arrayidx60.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div49.1.i, ptr %arrayidx60.1.i, align 4
  %arrayidx63.1.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div46.1.i, ptr %arrayidx63.1.i, align 4
  %arrayidx40.2.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 8, i32 2
  %arrayidx41.2.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 9, i32 2
  %60 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div46.1.i, ptr %arrayidx40.2.i, align 4
  %61 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div49.1.i, ptr %arrayidx41.2.i, align 4
  %62 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cap.i, align 4
  %features.2.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %features.2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %features.2.i, align 4
  %and.2.i = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  %.sink5.i = select i1 %tobool.not.2.i, i32 3, i32 2
  %66 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 6, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 7, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink5.i, ptr %68, align 4
  %arrayidx60.2.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %arrayidx60.2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div49.1.i, ptr %arrayidx60.2.i, align 4
  %arrayidx63.2.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div46.1.i, ptr %arrayidx63.2.i, align 4
  %arrayidx40.3.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 8, i32 3
  %72 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.i, ptr %arrayidx40.3.i, align 4
  %arrayidx41.3.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 9, i32 3
  %73 = ptrtoint ptr %arrayidx41.3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.i1, ptr %arrayidx41.3.i, align 4
  %74 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cap.i, align 4
  %features.3.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %features.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %features.3.i, align 4
  %and.3.i = and i32 %77, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  %.sink6.i = select i1 %tobool.not.3.i, i32 3, i32 2
  %78 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 6, i32 3
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %78, align 4
  %80 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 7, i32 3
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink6.i, ptr %80, align 4
  %arrayidx60.3.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 7, i32 3
  %82 = ptrtoint ptr %arrayidx60.3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub.i1, ptr %arrayidx60.3.i, align 4
  %arrayidx63.3.i = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %pixel_ext, i32 0, i32 5, i32 3
  %83 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.i, ptr %arrayidx63.3.i, align 4
  %flag.i = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %84 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flag.i, align 4
  %and1.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool64.not.i = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1, i32 %sub.i6)
  %cmp65.i = icmp eq i32 %sub.i1, %sub.i6
  %or.cond.i = and i1 %cmp65.i, %tobool64.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.i3)
  %cmp67.i = icmp eq i32 %sub.i, %sub.i3
  %or.cond1.i = and i1 %cmp67.i, %or.cond.i
  br i1 %or.cond1.i, label %entry._dpu_plane_setup_scaler3.exit_crit_edge, label %if.end69.i

entry._dpu_plane_setup_scaler3.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_setup_scaler3.exit

if.end69.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst_width.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 10
  %86 = ptrtoint ptr %dst_width.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i3, ptr %dst_width.i, align 4
  %dst_height.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 11
  %87 = ptrtoint ptr %dst_height.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub.i6, ptr %dst_height.i, align 4
  %y_rgb_filter_cfg.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 12
  %88 = ptrtoint ptr %y_rgb_filter_cfg.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %y_rgb_filter_cfg.i, align 4
  %uv_filter_cfg.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 13
  %89 = ptrtoint ptr %uv_filter_cfg.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %uv_filter_cfg.i, align 4
  %alpha_filter_cfg.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 14
  %90 = ptrtoint ptr %alpha_filter_cfg.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %alpha_filter_cfg.i, align 4
  %lut_flag.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 16
  %91 = ptrtoint ptr %lut_flag.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %lut_flag.i, align 4
  %blend_cfg.i = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 15
  %92 = ptrtoint ptr %blend_cfg.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %blend_cfg.i, align 4
  %93 = ptrtoint ptr %scaler3_cfg to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %scaler3_cfg, align 4
  br label %_dpu_plane_setup_scaler3.exit

_dpu_plane_setup_scaler3.exit:                    ; preds = %if.end69.i, %entry._dpu_plane_setup_scaler3.exit_crit_edge
  %setup_pe = getelementptr inbounds %struct.dpu_hw_pipe, ptr %37, i32 0, i32 6, i32 2
  %94 = ptrtoint ptr %setup_pe to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %setup_pe, align 4
  %tobool.not = icmp eq ptr %95, null
  br i1 %tobool.not, label %_dpu_plane_setup_scaler3.exit.if.end_crit_edge, label %if.then

_dpu_plane_setup_scaler3.exit.if.end_crit_edge:   ; preds = %_dpu_plane_setup_scaler3.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %_dpu_plane_setup_scaler3.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void %95(ptr noundef %37, ptr noundef nonnull %pixel_ext) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %_dpu_plane_setup_scaler3.exit.if.end_crit_edge
  %96 = ptrtoint ptr %pipe_hw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pipe_hw.i, align 8
  %setup_scaler = getelementptr inbounds %struct.dpu_hw_pipe, ptr %97, i32 0, i32 6, i32 12
  %98 = ptrtoint ptr %setup_scaler to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %setup_scaler, align 4
  %tobool14.not = icmp eq ptr %99, null
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %multirect_index = getelementptr inbounds %struct.dpu_plane_state, ptr %pstate, i32 0, i32 4
  %100 = ptrtoint ptr %multirect_index to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %multirect_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp.not = icmp eq i32 %101, 2
  br i1 %cmp.not, label %land.lhs.true.if.end21_crit_edge, label %if.then16

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void %99(ptr noundef %97, ptr noundef %pipe_cfg, ptr noundef nonnull %scaler3_cfg) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 324, ptr nonnull %pixel_ext) #11
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %scaler3_cfg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_plane_destroy(ptr noundef %plane) #2 align 64 {
entry:
  %pipe_qos_cfg.i = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %if.end.critedge, label %_dpu_plane_set_qos_ctrl.exit

_dpu_plane_set_qos_ctrl.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base3 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pipe_qos_cfg.i) #11
  %is_rt_pipe.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 6
  %2 = call ptr @memset(ptr %pipe_qos_cfg.i, i32 0, i32 12)
  %3 = ptrtoint ptr %is_rt_pipe.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_rt_pipe.i, align 1, !range !199
  %5 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base3, align 4
  %pipe.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 2
  %7 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe.i, align 4
  %sub.i = add i32 %8, -1
  %9 = zext i8 %4 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %6, i32 noundef %sub.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9) #11
  %pipe_hw37.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %10 = ptrtoint ptr %pipe_hw37.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_hw37.i, align 8
  %setup_qos_ctrl.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %setup_qos_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %setup_qos_ctrl.i, align 4
  call void %13(ptr noundef %11, ptr noundef nonnull %pipe_qos_cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pipe_qos_cfg.i) #11
  %lock = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 1
  call void @mutex_destroy(ptr noundef %lock) #11
  call void @drm_plane_cleanup(ptr noundef nonnull %plane) #11
  %14 = ptrtoint ptr %pipe_hw37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_hw37.i, align 8
  call void @dpu_hw_sspp_destroy(ptr noundef %15) #11
  call void @kfree(ptr noundef nonnull %plane) #11
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef -1) #11
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %_dpu_plane_set_qos_ctrl.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_plane_reset(ptr noundef %plane) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.36, i32 noundef 1354) #14
  br label %cleanup

cond.end:                                         ; preds = %entry
  %base3 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %1) #11
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %cond.end.if.end8_crit_edge, label %if.then5

cond.end.if.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %3) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %cond.end.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 168) #15
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %cond.end22, label %if.end25

cond.end22:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base3, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 1369, i32 noundef %7) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef nonnull %plane, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %cond.end22, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dpu_plane_duplicate_state(ptr noundef %plane) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.40, i32 noundef 1284) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 1287) #14
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %call14 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 168, i32 noundef 3264) #11
  %tobool15.not = icmp eq ptr %call14, null
  %base22 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %2 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base22, align 4
  br i1 %tobool15.not, label %cond.end, label %cond.end31

cond.end:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40, i32 noundef 1295, i32 noundef %3) #14
  br label %cleanup

cond.end31:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %3) #11
  %pending = getelementptr inbounds %struct.dpu_plane_state, ptr %call14, i32 0, i32 6
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pending, align 8
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef nonnull %plane, ptr noundef nonnull %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end31, %cond.end, %do.end5, %do.end
  %retval.0 = phi ptr [ %call14, %cond.end31 ], [ null, %cond.end ], [ null, %do.end5 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_plane_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #11
  tail call void @kfree(ptr noundef %state) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_plane_atomic_print_state(ptr noundef %p, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %stage = getelementptr inbounds %struct.dpu_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stage, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.46, i32 noundef %3) #11
  %pipe_hw = getelementptr inbounds %struct.dpu_plane, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_hw, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_pipe, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.47, ptr noundef %7) #11
  %multirect_mode = getelementptr inbounds %struct.dpu_plane_state, ptr %state, i32 0, i32 5
  %8 = ptrtoint ptr %multirect_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multirect_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp ugt i32 %9, 2
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !201

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1322, i32 noundef 9, ptr noundef null) #11
  br label %dpu_get_multirect_mode.exit

if.end21.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [3 x ptr], ptr @multirect_mode_name, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  br label %dpu_get_multirect_mode.exit

dpu_get_multirect_mode.exit:                      ; preds = %if.end21.i, %do.end.i
  %retval.0.i = phi ptr [ @.str.50, %do.end.i ], [ %11, %if.end21.i ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.48, ptr noundef %retval.0.i) #11
  %multirect_index = getelementptr inbounds %struct.dpu_plane_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %multirect_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %multirect_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i11 = icmp ugt i32 %13, 2
  br i1 %cmp.i11, label %do.end.i12, label %if.end21.i14, !prof !201

do.end.i12:                                       ; preds = %dpu_get_multirect_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1330, i32 noundef 9, ptr noundef null) #11
  br label %dpu_get_multirect_index.exit

if.end21.i14:                                     ; preds = %dpu_get_multirect_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i13 = getelementptr [3 x ptr], ptr @multirect_index_name, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i13, align 4
  br label %dpu_get_multirect_index.exit

dpu_get_multirect_index.exit:                     ; preds = %if.end21.i14, %do.end.i12
  %retval.0.i15 = phi ptr [ @.str.50, %do.end.i12 ], [ %15, %if.end21.i14 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.49, ptr noundef %retval.0.i15) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_plane_format_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_switch(i64 %modifier, ptr @__sancov_gen_cov_switch_values)
  switch i64 %modifier, label %entry.if.end7_crit_edge [
    i64 0, label %entry.return_crit_edge
    i64 360287970189639681, label %for.body.preheader
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %format, label %for.body.preheader.if.end7_crit_edge [
    i32 875708993, label %for.body.preheader.return_crit_edge
    i32 875713089, label %for.body.preheader.return_crit_edge13
    i32 875709016, label %for.body.preheader.return_crit_edge14
    i32 875713112, label %for.body.preheader.return_crit_edge15
    i32 909199170, label %for.body.preheader.return_crit_edge16
    i32 842094158, label %for.body.preheader.return_crit_edge17
  ]

for.body.preheader.return_crit_edge17:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.preheader.return_crit_edge16:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.preheader.return_crit_edge15:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.preheader.return_crit_edge14:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.preheader.return_crit_edge13:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.preheader.return_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.preheader.if.end7_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %for.body.preheader.if.end7_crit_edge, %entry.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %for.body.preheader.return_crit_edge, %for.body.preheader.return_crit_edge13, %for.body.preheader.return_crit_edge14, %for.body.preheader.return_crit_edge15, %for.body.preheader.return_crit_edge16, %for.body.preheader.return_crit_edge17, %entry.return_crit_edge
  %retval.1 = phi i1 [ false, %if.end7 ], [ true, %entry.return_crit_edge ], [ true, %for.body.preheader.return_crit_edge ], [ true, %for.body.preheader.return_crit_edge13 ], [ true, %for.body.preheader.return_crit_edge14 ], [ true, %for.body.preheader.return_crit_edge15 ], [ true, %for.body.preheader.return_crit_edge16 ], [ true, %for.body.preheader.return_crit_edge17 ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_plane_prepare_fb(ptr noundef %plane, ptr noundef %new_state) #2 align 64 {
entry:
  %layout = alloca %struct.dpu_hw_fmt_layout, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %layout) #11
  %2 = call ptr @memset(ptr %layout, i32 255, i32 68)
  %3 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kms.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %plane, null
  br i1 %tobool6.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base8 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %9 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %base9 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.57, i32 noundef %cond, i32 noundef %12) #11
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aspace, align 4
  %aspace12 = getelementptr inbounds %struct.dpu_plane_state, ptr %new_state, i32 0, i32 1
  %15 = ptrtoint ptr %aspace12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %aspace12, align 4
  %call13 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %new_state) #11
  %16 = ptrtoint ptr %aspace12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aspace12, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %cond.end.if.end25_crit_edge, label %if.then16

cond.end.if.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then16:                                        ; preds = %cond.end
  %18 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb1, align 4
  %call19 = tail call i32 @msm_framebuffer_prepare(ptr noundef %19, ptr noundef nonnull %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then16.if.end25_crit_edge, label %do.end

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 907) #14
  br label %cleanup

if.end25:                                         ; preds = %if.then16.if.end25_crit_edge, %cond.end.if.end25_crit_edge
  %20 = ptrtoint ptr %aspace12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aspace12, align 4
  %22 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb1, align 4
  %call28 = call i32 @dpu_format_populate_layout(ptr noundef %21, ptr noundef %23, ptr noundef nonnull %layout) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end25.cleanup_crit_edge, label %do.end33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end33:                                         ; preds = %if.end25
  br i1 %tobool6.not, label %do.end33.cond.end41_crit_edge, label %cond.true36

do.end33.cond.end41_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end41

cond.true36:                                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %base38 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %24 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base38, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true36, %do.end33.cond.end41_crit_edge
  %cond42 = phi i32 [ %25, %cond.true36 ], [ -1, %do.end33.cond.end41_crit_edge ]
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 916, i32 noundef %cond42, i32 noundef %call28) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end41, %if.end25.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end ], [ %call28, %cond.end41 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %layout) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_plane_cleanup_fb(ptr noundef readonly %plane, ptr noundef readonly %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_state, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool5.not = icmp eq ptr %plane, null
  br i1 %tobool5.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base6 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %2 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %base8 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.57, i32 noundef %cond, i32 noundef %5) #11
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %aspace = getelementptr inbounds %struct.dpu_plane_state, ptr %old_state, i32 0, i32 1
  %8 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aspace, align 4
  tail call void @msm_framebuffer_cleanup(ptr noundef %7, ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_plane_atomic_check(ptr noundef readonly %plane, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %src = alloca %struct.drm_rect, align 4
  %fb_rect = alloca %struct.drm_rect, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #11
  %6 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fb_rect) #11
  %9 = ptrtoint ptr %fb_rect to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %fb_rect, align 8
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i, align 4
  %index.i.i196 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i196 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i196, align 4
  %new_state.i197 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 3
  %16 = ptrtoint ptr %new_state.i197 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_state.i197, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crtc_state.0 = phi ptr [ %17, %if.then ], [ null, %entry.if.end_crit_edge ]
  %pipe_hw = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %18 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe_hw, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_pipe, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cap, align 4
  %sblk = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sblk, align 4
  %maxupscale = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %maxupscale to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxupscale, align 4
  %div = udiv i32 65536, %25
  %maxdwnscale = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %maxdwnscale to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxdwnscale, align 4
  %shl = shl i32 %27, 16
  %call9 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %crtc_state.0, i32 noundef %div, i32 noundef %shl, i1 noundef zeroext true, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %tobool12.not = icmp eq ptr %plane, null
  br i1 %tobool12.not, label %if.then11.cond.end_crit_edge, label %cond.true

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %base13 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %28 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base13, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then11.cond.end_crit_edge
  %cond = phi i32 [ %29, %cond.true ], [ -1, %if.then11.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.63, i32 noundef %cond, i32 noundef %call9) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %30 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %visible, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %32 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_x, align 4
  %shr = lshr i32 %33, 16
  %34 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr, ptr %src, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %35 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_y, align 4
  %shr18 = lshr i32 %36, 16
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr18, ptr %6, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %38 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_w, align 4
  %shr20 = lshr i32 %39, 16
  %add = add nuw nsw i32 %shr20, %shr
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %7, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %src_h, align 4
  %shr22 = lshr i32 %42, 16
  %add23 = add nuw nsw i32 %shr22, %shr18
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add23, ptr %8, align 4
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crtc_x.i, align 4, !noalias !202
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %46 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crtc_y.i, align 4, !noalias !202
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %48 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_w.i, align 4, !noalias !202
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %50 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_h.i, align 4, !noalias !202
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %52 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fb, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width, align 8
  %x225 = getelementptr inbounds %struct.drm_rect, ptr %fb_rect, i32 0, i32 2
  %56 = ptrtoint ptr %x225 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %x225, align 8
  %57 = load ptr, ptr %fb, align 4
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %y227 = getelementptr inbounds %struct.drm_rect, ptr %fb_rect, i32 0, i32 3
  %60 = ptrtoint ptr %y227 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %y227, align 4
  %catalog = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 9
  %61 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %catalog, align 4
  %caps = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %caps, align 4
  %max_linewidth28 = getelementptr inbounds %struct.dpu_caps, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %max_linewidth28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_linewidth28, align 4
  %67 = load ptr, ptr %fb, align 4
  %call31 = tail call ptr @msm_framebuffer_format(ptr noundef %67) #11
  %flag = getelementptr inbounds %struct.dpu_format, ptr %call31, i32 0, i32 12
  %68 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool35.not = icmp eq i32 %and1.i, 0
  %cond36 = select i1 %tobool35.not, i32 1, i32 2
  %70 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flag, align 4
  %and1.i194 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i194)
  %tobool40.not = icmp eq i32 %and1.i194, 0
  br i1 %tobool40.not, label %if.end17.if.else_crit_edge, label %land.lhs.true

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %72 = ptrtoint ptr %pipe_hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pipe_hw, align 8
  %cap42 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %cap42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cap42, align 4
  %features = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %features, align 4
  %and = and i32 %77, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  %and47 = and i32 %77, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %or.cond = or i1 %tobool43.not, %tobool48.not
  br i1 %or.cond, label %if.then49, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then49:                                        ; preds = %land.lhs.true
  %tobool50.not = icmp eq ptr %plane, null
  br i1 %tobool50.not, label %if.then49.cond.end56_crit_edge, label %cond.true51

if.then49.cond.end56_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end56

cond.true51:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %base53 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %78 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base53, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.true51, %if.then49.cond.end56_crit_edge
  %cond57 = phi i32 [ %79, %cond.true51 ], [ -1, %if.then49.cond.end56_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %cond57) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end17.if.else_crit_edge
  %80 = ptrtoint ptr %x225 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %x225, align 8
  %82 = ptrtoint ptr %fb_rect to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fb_rect, align 8
  %sub.i.i = sub i32 %81, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub.i.i)
  %cmp.i = icmp sgt i32 %sub.i.i, 16383
  br i1 %cmp.i, label %if.else.if.then59_crit_edge, label %lor.lhs.false.i

if.else.if.then59_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

lor.lhs.false.i:                                  ; preds = %if.else
  %84 = ptrtoint ptr %y227 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %y227, align 4
  %y1.i.i = getelementptr inbounds %struct.drm_rect, ptr %fb_rect, i32 0, i32 1
  %86 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %y1.i.i, align 4
  %sub.i19.i = sub i32 %85, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub.i19.i)
  %cmp2.i = icmp sgt i32 %sub.i19.i, 16383
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then59_crit_edge, label %if.end.i

lor.lhs.false.i.if.then59_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.end.i:                                         ; preds = %lor.lhs.false.i
  %88 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %7, align 4
  %90 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src, align 4
  %sub.i21.i = sub i32 %89, %91
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i21.i, i32 %cond36)
  %cmp4.i = icmp ult i32 %sub.i21.i, %cond36
  br i1 %cmp4.i, label %if.end.i.if.then59_crit_edge, label %lor.lhs.false5.i

if.end.i.if.then59_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %92 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %8, align 4
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %6, align 4
  %sub.i24.i = sub i32 %93, %95
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i24.i, i32 %cond36)
  %cmp7.i = icmp ult i32 %sub.i24.i, %cond36
  br i1 %cmp7.i, label %lor.lhs.false5.i.if.then59_crit_edge, label %if.end9.i

lor.lhs.false5.i.if.then59_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.end9.i:                                        ; preds = %lor.lhs.false5.i
  %call10.i = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %fb_rect, ptr noundef nonnull %src) #11
  br i1 %call10.i, label %land.rhs.i, label %if.end9.i.if.then59_crit_edge

if.end9.i.if.then59_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.rhs.i:                                       ; preds = %if.end9.i
  %96 = ptrtoint ptr %fb_rect to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fb_rect, align 8
  %98 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp.i.i = icmp eq i32 %97, %99
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %land.rhs.i.if.then59_crit_edge

land.rhs.i.if.then59_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true.i.i:                                ; preds = %land.rhs.i
  %100 = ptrtoint ptr %x225 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %x225, align 8
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp3.i.i = icmp eq i32 %101, %103
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.then59_crit_edge

land.lhs.true.i.i.if.then59_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %104 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %y1.i.i, align 4
  %106 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp6.i.i = icmp eq i32 %105, %107
  br i1 %cmp6.i.i, label %dpu_plane_validate_src.exit, label %land.lhs.true4.i.i.if.then59_crit_edge

land.lhs.true4.i.i.if.then59_crit_edge:           ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

dpu_plane_validate_src.exit:                      ; preds = %land.lhs.true4.i.i
  %108 = ptrtoint ptr %y227 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %y227, align 4
  %110 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp8.i.i = icmp eq i32 %109, %111
  br i1 %cmp8.i.i, label %if.else72, label %dpu_plane_validate_src.exit.if.then59_crit_edge

dpu_plane_validate_src.exit.if.then59_crit_edge:  ; preds = %dpu_plane_validate_src.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then59:                                        ; preds = %dpu_plane_validate_src.exit.if.then59_crit_edge, %land.lhs.true4.i.i.if.then59_crit_edge, %land.lhs.true.i.i.if.then59_crit_edge, %land.rhs.i.if.then59_crit_edge, %if.end9.i.if.then59_crit_edge, %lor.lhs.false5.i.if.then59_crit_edge, %if.end.i.if.then59_crit_edge, %lor.lhs.false.i.if.then59_crit_edge, %if.else.if.then59_crit_edge
  %tobool60.not = icmp eq ptr %plane, null
  br i1 %tobool60.not, label %if.then59.cond.end66_crit_edge, label %cond.true61

if.then59.cond.end66_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end66

cond.true61:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %base63 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %112 = ptrtoint ptr %base63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base63, align 4
  br label %cond.end66

cond.end66:                                       ; preds = %cond.true61, %if.then59.cond.end66_crit_edge
  %cond67 = phi i32 [ %113, %cond.true61 ], [ -1, %if.then59.cond.end66_crit_edge ]
  %114 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %7, align 4
  %116 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %src, align 4
  %sub.i = sub i32 %115, %117
  %118 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %8, align 4
  %120 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %6, align 4
  %sub.i198 = sub i32 %119, %121
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %cond67, i32 noundef %sub.i, i32 noundef %sub.i198, i32 noundef %117, i32 noundef %121) #11
  br label %cleanup

if.else72:                                        ; preds = %dpu_plane_validate_src.exit
  %122 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %flag, align 4
  %and1.i195 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i195)
  %tobool76.not = icmp eq i32 %and1.i195, 0
  br i1 %tobool76.not, label %if.else72.if.else106_crit_edge, label %land.lhs.true77

if.else72.if.else106_crit_edge:                   ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else106

land.lhs.true77:                                  ; preds = %if.else72
  %124 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %src, align 4
  %and79 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %lor.lhs.false81, label %land.lhs.true77.if.then93_crit_edge

land.lhs.true77.if.then93_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

lor.lhs.false81:                                  ; preds = %land.lhs.true77
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %6, align 4
  %and83 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %lor.lhs.false85, label %lor.lhs.false81.if.then93_crit_edge

lor.lhs.false81.if.then93_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

lor.lhs.false85:                                  ; preds = %lor.lhs.false81
  %128 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %7, align 4
  %sub.i200 = sub i32 %129, %125
  %and87 = and i32 %sub.i200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false85.if.then93_crit_edge

lor.lhs.false85.if.then93_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %130 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %8, align 4
  %sub.i203 = sub i32 %131, %127
  %and91 = and i32 %sub.i203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %lor.lhs.false89.if.else106_crit_edge, label %lor.lhs.false89.if.then93_crit_edge

lor.lhs.false89.if.then93_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

lor.lhs.false89.if.else106_crit_edge:             ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else106

if.then93:                                        ; preds = %lor.lhs.false89.if.then93_crit_edge, %lor.lhs.false85.if.then93_crit_edge, %lor.lhs.false81.if.then93_crit_edge, %land.lhs.true77.if.then93_crit_edge
  %tobool94.not = icmp eq ptr %plane, null
  br i1 %tobool94.not, label %if.then93.cond.end100_crit_edge, label %cond.true95

if.then93.cond.end100_crit_edge:                  ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end100

cond.true95:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %base97 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %132 = ptrtoint ptr %base97 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %base97, align 4
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true95, %if.then93.cond.end100_crit_edge
  %cond101 = phi i32 [ %133, %cond.true95 ], [ -1, %if.then93.cond.end100_crit_edge ]
  %134 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %7, align 4
  %sub.i205 = sub i32 %135, %125
  %136 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %8, align 4
  %138 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %6, align 4
  %sub.i208 = sub i32 %137, %139
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %cond101, i32 noundef %sub.i205, i32 noundef %sub.i208, i32 noundef %125, i32 noundef %139) #11
  br label %cleanup

if.else106:                                       ; preds = %lor.lhs.false89.if.else106_crit_edge, %if.else72.if.else106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp = icmp slt i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp110 = icmp slt i32 %51, 1
  %or.cond233 = select i1 %cmp, i1 true, i1 %cmp110
  br i1 %or.cond233, label %if.then111, label %if.else124

if.then111:                                       ; preds = %if.else106
  %tobool112.not = icmp eq ptr %plane, null
  br i1 %tobool112.not, label %if.then111.cond.end118_crit_edge, label %cond.true113

if.then111.cond.end118_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end118

cond.true113:                                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  %base115 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %140 = ptrtoint ptr %base115 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %base115, align 4
  br label %cond.end118

cond.end118:                                      ; preds = %cond.true113, %if.then111.cond.end118_crit_edge
  %cond119 = phi i32 [ %141, %cond.true113 ], [ -1, %if.then111.cond.end118_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %cond119, i32 noundef %49, i32 noundef %51, i32 noundef %45, i32 noundef %47) #11
  br label %cleanup

if.else124:                                       ; preds = %if.else106
  %142 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %7, align 4
  %144 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %src, align 4
  %sub.i220 = sub i32 %143, %145
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i220, i32 %66)
  %cmp126 = icmp ugt i32 %sub.i220, %66
  br i1 %cmp126, label %if.then127, label %if.end144

if.then127:                                       ; preds = %if.else124
  %tobool128.not = icmp eq ptr %plane, null
  br i1 %tobool128.not, label %if.then127.cond.end134_crit_edge, label %cond.true129

if.then127.cond.end134_crit_edge:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end134

cond.true129:                                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  %base131 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %146 = ptrtoint ptr %base131 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %base131, align 4
  br label %cond.end134

cond.end134:                                      ; preds = %cond.true129, %if.then127.cond.end134_crit_edge
  %cond135 = phi i32 [ %147, %cond.true129 ], [ -1, %if.then127.cond.end134_crit_edge ]
  %148 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %8, align 4
  %150 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %6, align 4
  %sub.i225 = sub i32 %149, %151
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef %cond135, i32 noundef %sub.i220, i32 noundef %sub.i225, i32 noundef %145, i32 noundef %151, i32 noundef %66) #11
  br label %cleanup

if.end144:                                        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #13
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.0, i32 0, i32 3
  %152 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %153 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %154 = icmp ne i8 %153, 0
  %needs_qos_remap = getelementptr inbounds %struct.dpu_plane_state, ptr %5, i32 0, i32 3
  %frombool = zext i1 %154 to i8
  %155 = ptrtoint ptr %needs_qos_remap to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %frombool, ptr %needs_qos_remap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %cond.end134, %cond.end118, %cond.end100, %cond.end66, %cond.end56, %if.end14.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ %call9, %cond.end ], [ -22, %cond.end100 ], [ -22, %cond.end118 ], [ -7, %cond.end134 ], [ 0, %if.end144 ], [ -7, %cond.end66 ], [ -22, %cond.end56 ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fb_rect) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_plane_atomic_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %qos_params.i.i = alloca %struct.dpu_vbif_set_qos_params, align 4
  %ot_params.i.i = alloca %struct.dpu_vbif_set_ot_params, align 4
  %pipe_qos_cfg.i312.i = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  %pipe_qos_cfg.i.i = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  %pipe_cfg.i = alloca %struct.dpu_hw_pipe_cfg, align 4
  %cdp_cfg.i = alloca %struct.dpu_hw_pipe_cdp_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %is_error = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 5
  %6 = ptrtoint ptr %is_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_error, align 8
  %tobool.not = icmp eq ptr %plane, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %7 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %cond) #11
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %9 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %visible, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  %state1.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %11 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state1.i, align 4
  br i1 %tobool2.not, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  br i1 %tobool.not, label %is_dpu_plane_virtual.exit29.thread.i, label %is_dpu_plane_virtual.exit29.i

is_dpu_plane_virtual.exit29.thread.i:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %multirect_mode34.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %multirect_mode34.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %multirect_mode34.i, align 4
  tail call fastcc void @trace_dpu_plane_disable(i32 noundef -1, i1 noundef zeroext false, i32 noundef %14) #11
  %pending35.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %pending35.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pending35.i, align 8
  br label %if.end

is_dpu_plane_virtual.exit29.i:                    ; preds = %if.then
  %base.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 4
  %is_virtual.i.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 7
  %18 = ptrtoint ptr %is_virtual.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_virtual.i.i, align 2, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.i.i = icmp ne i8 %19, 0
  %multirect_mode.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 5
  %20 = ptrtoint ptr %multirect_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multirect_mode.i, align 4
  tail call fastcc void @trace_dpu_plane_disable(i32 noundef %17, i1 noundef zeroext %tobool1.i.i, i32 noundef %21) #11
  %pending.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 6
  %22 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pending.i, align 8
  %23 = ptrtoint ptr %is_virtual.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_virtual.i.i, align 2, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.i26.not.i = icmp eq i8 %24, 0
  br i1 %tobool1.i26.not.i, label %is_dpu_plane_virtual.exit29.i.if.end_crit_edge, label %land.lhs.true.i

is_dpu_plane_virtual.exit29.i.if.end_crit_edge:   ; preds = %is_dpu_plane_virtual.exit29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %is_dpu_plane_virtual.exit29.i
  %pipe_hw.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %25 = ptrtoint ptr %pipe_hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pipe_hw.i, align 8
  %tobool6.not.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %setup_multirect.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %26, i32 0, i32 6, i32 6
  %27 = ptrtoint ptr %setup_multirect.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %setup_multirect.i, align 4
  %tobool9.not.i = icmp eq ptr %28, null
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.end_crit_edge, label %if.then.i

land.lhs.true7.i.if.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %28(ptr noundef nonnull %26, i32 noundef 0, i32 noundef 0) #11
  br label %if.end

if.else:                                          ; preds = %cond.end
  %crtc5.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 1
  %29 = ptrtoint ptr %crtc5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtc5.i, align 4
  %fb6.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %fb6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb6.i, align 4
  %call.i = tail call ptr @msm_framebuffer_format(ptr noundef %32) #11
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %pipe_cfg.i) #11
  %33 = call ptr @memset(ptr %pipe_cfg.i, i32 0, i32 108)
  %34 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plane, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_private.i.i.i, align 4
  %kms.i.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %kms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kms.i.i.i, align 4
  %aspace2.i.i = getelementptr inbounds %struct.msm_kms, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %aspace2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aspace2.i.i, align 4
  %call3.i.i = call i32 @dpu_format_populate_layout(ptr noundef %41, ptr noundef %32, ptr noundef nonnull %pipe_cfg.i) #11
  %42 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call3.i.i, label %do.end.i.i [
    i32 -11, label %if.then.i.i
    i32 0, label %if.else18.i.i
  ]

if.then.i.i:                                      ; preds = %if.else
  br i1 %tobool.not, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %base5.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %43 = ptrtoint ptr %base5.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base5.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %44, %cond.true.i.i ], [ -1, %if.then.i.i.cond.end.i.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.73, i32 noundef %cond.i.i) #11
  br label %_dpu_plane_set_scanout.exit.i

do.end.i.i:                                       ; preds = %if.else
  br i1 %tobool.not, label %do.end.i.i.cond.end15.i.i_crit_edge, label %cond.true10.i.i

do.end.i.i.cond.end15.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15.i.i

cond.true10.i.i:                                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %base12.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %45 = ptrtoint ptr %base12.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base12.i.i, align 4
  br label %cond.end15.i.i

cond.end15.i.i:                                   ; preds = %cond.true10.i.i, %do.end.i.i.cond.end15.i.i_crit_edge
  %cond16.i.i = phi i32 [ %46, %cond.true10.i.i ], [ -1, %do.end.i.i.cond.end15.i.i_crit_edge ]
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.74, i32 noundef 517, i32 noundef %cond16.i.i, i32 noundef %call3.i.i) #14
  br label %_dpu_plane_set_scanout.exit.i

if.else18.i.i:                                    ; preds = %if.else
  %pipe_hw.i.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %47 = ptrtoint ptr %pipe_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pipe_hw.i.i, align 8
  %setup_sourceaddress.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %48, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %setup_sourceaddress.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %setup_sourceaddress.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %50, null
  br i1 %tobool19.not.i.i, label %if.else18.i.i._dpu_plane_set_scanout.exit.i_crit_edge, label %if.then20.i.i

if.else18.i.i._dpu_plane_set_scanout.exit.i_crit_edge: ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_scanout.exit.i

if.then20.i.i:                                    ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %idx.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx.i.i, align 4
  %multirect_index.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 4
  %53 = ptrtoint ptr %multirect_index.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %multirect_index.i.i, align 8
  call fastcc void @trace_dpu_plane_set_scanout(i32 noundef %52, ptr noundef nonnull %pipe_cfg.i, i32 noundef %54) #11
  %55 = ptrtoint ptr %pipe_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pipe_hw.i.i, align 8
  %setup_sourceaddress25.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %56, i32 0, i32 6, i32 3
  %57 = ptrtoint ptr %setup_sourceaddress25.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %setup_sourceaddress25.i.i, align 4
  %59 = ptrtoint ptr %multirect_index.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %multirect_index.i.i, align 8
  call void %58(ptr noundef %56, ptr noundef nonnull %pipe_cfg.i, i32 noundef %60) #11
  br label %_dpu_plane_set_scanout.exit.i

_dpu_plane_set_scanout.exit.i:                    ; preds = %if.then20.i.i, %if.else18.i.i._dpu_plane_set_scanout.exit.i_crit_edge, %cond.end15.i.i, %cond.end.i.i
  %pending.i9 = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 6
  %61 = ptrtoint ptr %pending.i9 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %pending.i9, align 8
  %tobool.not.i273.i = icmp eq ptr %30, null
  br i1 %tobool.not.i273.i, label %_dpu_plane_set_scanout.exit.i.dpu_crtc_get_client_type.exit.i_crit_edge, label %land.rhs.i.i

_dpu_plane_set_scanout.exit.i.dpu_crtc_get_client_type.exit.i_crit_edge: ; preds = %_dpu_plane_set_scanout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_crtc_get_client_type.exit.i

land.rhs.i.i:                                     ; preds = %_dpu_plane_set_scanout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %state.i.i = getelementptr inbounds %struct.drm_crtc, ptr %30, i32 0, i32 22
  %62 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state.i.i, align 4
  %tobool1.i.i10 = icmp eq ptr %63, null
  %phi.cast.i.i = zext i1 %tobool1.i.i10 to i8
  br label %dpu_crtc_get_client_type.exit.i

dpu_crtc_get_client_type.exit.i:                  ; preds = %land.rhs.i.i, %_dpu_plane_set_scanout.exit.i.dpu_crtc_get_client_type.exit.i_crit_edge
  %64 = phi i8 [ 1, %_dpu_plane_set_scanout.exit.i.dpu_crtc_get_client_type.exit.i_crit_edge ], [ %phi.cast.i.i, %land.rhs.i.i ]
  %65 = xor i8 %64, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pipe_qos_cfg.i.i) #11
  %is_rt_pipe.i.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 6
  %66 = call ptr @memset(ptr %pipe_qos_cfg.i.i, i32 0, i32 12)
  %67 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  br i1 %tobool.not, label %dpu_crtc_get_client_type.exit.i._dpu_plane_set_qos_ctrl.exit.i_crit_edge, label %cond.true.i274.i

dpu_crtc_get_client_type.exit.i._dpu_plane_set_qos_ctrl.exit.i_crit_edge: ; preds = %dpu_crtc_get_client_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_qos_ctrl.exit.i

cond.true.i274.i:                                 ; preds = %dpu_crtc_get_client_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %base26.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %69 = ptrtoint ptr %base26.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base26.i.i, align 4
  br label %_dpu_plane_set_qos_ctrl.exit.i

_dpu_plane_set_qos_ctrl.exit.i:                   ; preds = %cond.true.i274.i, %dpu_crtc_get_client_type.exit.i._dpu_plane_set_qos_ctrl.exit.i_crit_edge
  %cond.i275.i = phi i32 [ %70, %cond.true.i274.i ], [ -1, %dpu_crtc_get_client_type.exit.i._dpu_plane_set_qos_ctrl.exit.i_crit_edge ]
  %pipe.i.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 2
  %71 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pipe.i.i, align 4
  %sub.i.i = add i32 %72, -1
  %vblank_en29.i.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %vblank_en29.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vblank_en29.i.i, align 4, !range !199
  %75 = zext i8 %74 to i32
  %76 = ptrtoint ptr %pipe_qos_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pipe_qos_cfg.i.i, align 4
  %danger_vblank33.i.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %danger_vblank33.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %danger_vblank33.i.i, align 4
  %80 = zext i8 %68 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %cond.i275.i, i32 noundef %sub.i.i, i32 noundef 0, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %80) #11
  %pipe_hw37.i.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 3
  %81 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_qos_ctrl.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %82, i32 0, i32 6, i32 10
  %83 = ptrtoint ptr %setup_qos_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %setup_qos_ctrl.i.i, align 4
  call void %84(ptr noundef %82, ptr noundef nonnull %pipe_qos_cfg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pipe_qos_cfg.i.i) #11
  br i1 %tobool.not, label %_dpu_plane_set_qos_ctrl.exit.i.cond.end.i_crit_edge, label %cond.true.i

_dpu_plane_set_qos_ctrl.exit.i.cond.end.i_crit_edge: ; preds = %_dpu_plane_set_qos_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %_dpu_plane_set_qos_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %base11.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %85 = ptrtoint ptr %base11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base11.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %_dpu_plane_set_qos_ctrl.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %86, %cond.true.i ], [ -1, %_dpu_plane_set_qos_ctrl.exit.i.cond.end.i_crit_edge ]
  %base12.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 2
  %87 = ptrtoint ptr %base12.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base12.i, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 20
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 20, i32 2
  %89 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %x2.i.i, align 4
  %91 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %src.i, align 4
  %sub.i277.i = sub i32 %90, %92
  %shr.i = ashr i32 %sub.i277.i, 16
  %and.i = and i32 %sub.i277.i, 65535
  %mul.i = mul nuw nsw i32 %and.i, 15625
  %93 = lshr i32 %mul.i, 10
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 20, i32 3
  %94 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %y2.i.i, align 4
  %y1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 20, i32 1
  %96 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %y1.i.i, align 4
  %sub.i280.i = sub i32 %95, %97
  %shr20.i = ashr i32 %sub.i280.i, 16
  %and23.i = and i32 %sub.i280.i, 65535
  %mul24.i = mul nuw nsw i32 %and23.i, 15625
  %98 = lshr i32 %mul24.i, 10
  %shr27.i = ashr i32 %92, 16
  %and30.i = and i32 %92, 65535
  %mul31.i = mul nuw nsw i32 %and30.i, 15625
  %99 = lshr i32 %mul31.i, 10
  %shr34.i = ashr i32 %97, 16
  %and37.i = and i32 %97, 65535
  %mul38.i = mul nuw nsw i32 %and37.i, 15625
  %100 = lshr i32 %mul38.i, 10
  %base40.i = getelementptr inbounds %struct.drm_crtc, ptr %30, i32 0, i32 5
  %101 = ptrtoint ptr %base40.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base40.i, align 8
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 21
  %x2.i284.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 21, i32 2
  %103 = ptrtoint ptr %x2.i284.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %x2.i284.i, align 4
  %105 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dst.i, align 4
  %sub.i285.i = sub i32 %104, %106
  %y2.i286.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 21, i32 3
  %107 = ptrtoint ptr %y2.i286.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %y2.i286.i, align 4
  %y1.i287.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 21, i32 1
  %109 = ptrtoint ptr %y1.i287.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %y1.i287.i, align 4
  %sub.i288.i = sub i32 %108, %110
  %fetch_mode.i = getelementptr inbounds %struct.dpu_format, ptr %call.i, i32 0, i32 11
  %111 = ptrtoint ptr %fetch_mode.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fetch_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp50.i = icmp eq i32 %112, 2
  br i1 %cmp50.i, label %land.rhs.i, label %cond.end.i.land.end.i_crit_edge

cond.end.i.land.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i

land.rhs.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %flag.i = getelementptr inbounds %struct.dpu_format, ptr %call.i, i32 0, i32 12
  %113 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %flag.i, align 4
  %115 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool52.i = icmp ne i32 %115, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %cond.end.i.land.end.i_crit_edge
  %116 = phi i1 [ false, %cond.end.i.land.end.i_crit_edge ], [ %tobool52.i, %land.rhs.i ]
  %land.ext.i = zext i1 %116 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.72, i32 noundef %cond.i, i32 noundef %88, i32 noundef %shr.i, i32 noundef %93, i32 noundef %shr20.i, i32 noundef %98, i32 noundef %shr27.i, i32 noundef %99, i32 noundef %shr34.i, i32 noundef %100, i32 noundef %102, i32 noundef %sub.i285.i, i32 noundef %sub.i288.i, i32 noundef %106, i32 noundef %110, ptr noundef %call.i, i32 noundef %land.ext.i) #11
  %src_rect.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 1
  %117 = call ptr @memcpy(ptr %src_rect.i, ptr %src.i, i32 16)
  %118 = ptrtoint ptr %src_rect.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %src_rect.i, align 4
  %shr56.i = ashr i32 %119, 16
  store i32 %shr56.i, ptr %src_rect.i, align 4
  %x2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 1, i32 2
  %120 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %x2.i, align 4
  %shr58.i = ashr i32 %121, 16
  store i32 %shr58.i, ptr %x2.i, align 4
  %y160.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %y160.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %y160.i, align 4
  %shr61.i = ashr i32 %123, 16
  store i32 %shr61.i, ptr %y160.i, align 4
  %y2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 1, i32 3
  %124 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %y2.i, align 4
  %shr63.i = ashr i32 %125, 16
  store i32 %shr63.i, ptr %y2.i, align 4
  %dst_rect.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 2
  %126 = call ptr @memcpy(ptr %dst_rect.i, ptr %dst.i, i32 16)
  %color_fill.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 4
  %127 = ptrtoint ptr %color_fill.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %color_fill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %tobool66.not.i = icmp sgt i32 %128, -1
  br i1 %tobool66.not.i, label %if.end.i, label %land.end.i.dpu_plane_sspp_atomic_update.exit_crit_edge

land.end.i.dpu_plane_sspp_atomic_update.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_plane_sspp_atomic_update.exit

if.end.i:                                         ; preds = %land.end.i
  %129 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_rects.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %130, i32 0, i32 6, i32 1
  %131 = ptrtoint ptr %setup_rects.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %setup_rects.i, align 4
  %tobool67.not.i = icmp eq ptr %132, null
  br i1 %tobool67.not.i, label %if.end.i.if.end73.i_crit_edge, label %if.then68.i

if.end.i.if.end73.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

if.then68.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %multirect_index.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 4
  %133 = ptrtoint ptr %multirect_index.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %multirect_index.i, align 8
  call void %132(ptr noundef %130, ptr noundef nonnull %pipe_cfg.i, i32 noundef %134) #11
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then68.i, %if.end.i.if.end73.i_crit_edge
  call fastcc void @_dpu_plane_setup_scaler(ptr noundef %plane, ptr noundef %12, ptr noundef %call.i, ptr noundef nonnull %pipe_cfg.i) #11
  %135 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_multirect.i11 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %136, i32 0, i32 6, i32 6
  %137 = ptrtoint ptr %setup_multirect.i11 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %setup_multirect.i11, align 4
  %tobool76.not.i = icmp eq ptr %138, null
  br i1 %tobool76.not.i, label %if.end73.i.if.end83.i_crit_edge, label %if.then77.i

if.end73.i.if.end83.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.i

if.then77.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  %multirect_index82.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 4
  %139 = ptrtoint ptr %multirect_index82.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %multirect_index82.i, align 8
  %multirect_mode.i12 = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 5
  %141 = ptrtoint ptr %multirect_mode.i12 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %multirect_mode.i12, align 4
  call void %138(ptr noundef %136, i32 noundef %140, i32 noundef %142) #11
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then77.i, %if.end73.i.if.end83.i_crit_edge
  %143 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pipe_hw37.i.i, align 8
  %ops85.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %144, i32 0, i32 6
  %145 = ptrtoint ptr %ops85.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops85.i, align 4
  %tobool86.not.i = icmp eq ptr %146, null
  br i1 %tobool86.not.i, label %if.end83.i.if.end143.i_crit_edge, label %if.then87.i

if.end83.i.if.end143.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143.i

if.then87.i:                                      ; preds = %if.end83.i
  %rotation88.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 14
  %147 = ptrtoint ptr %rotation88.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rotation88.i, align 4
  %call89.i = call i32 @drm_rotation_simplify(i32 noundef %148, i32 noundef 49) #11
  %and90.i = lshr i32 %call89.i, 4
  %149 = and i32 %and90.i, 3
  %150 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pipe_hw37.i.i, align 8
  %ops100.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %ops100.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops100.i, align 4
  %multirect_index103.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 4
  %154 = ptrtoint ptr %multirect_index103.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %multirect_index103.i, align 8
  call void %153(ptr noundef %151, ptr noundef %call.i, i32 noundef %149, i32 noundef %155) #11
  %156 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_cdp.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %157, i32 0, i32 6, i32 14
  %158 = ptrtoint ptr %setup_cdp.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %setup_cdp.i, align 4
  %tobool106.not.i = icmp eq ptr %159, null
  br i1 %tobool106.not.i, label %if.then87.i.if.end143.i_crit_edge, label %if.then107.i

if.then87.i.if.end143.i_crit_edge:                ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143.i

if.then107.i:                                     ; preds = %if.then87.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cdp_cfg.i) #11
  %160 = ptrtoint ptr %cdp_cfg.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 1, ptr %cdp_cfg.i, align 8
  %catalog.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 9
  %161 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %catalog.i, align 4
  %cdp_cfg108.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %162, i32 0, i32 23, i32 19
  %163 = ptrtoint ptr %cdp_cfg108.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %cdp_cfg108.i, align 4, !range !199
  store i8 %164, ptr %cdp_cfg.i, align 8
  %165 = ptrtoint ptr %fetch_mode.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fetch_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %166)
  %cmp112.i = icmp eq i32 %166, 2
  br i1 %cmp112.i, label %land.lhs.true.i13, label %lor.rhs.thread.i

lor.rhs.thread.i:                                 ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #13
  %ubwc_meta_enable.i = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %cdp_cfg.i, i32 0, i32 1
  %167 = ptrtoint ptr %ubwc_meta_enable.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %ubwc_meta_enable.i, align 1
  br label %lor.end.i

land.lhs.true.i13:                                ; preds = %if.then107.i
  %flag114.i = getelementptr inbounds %struct.dpu_format, ptr %call.i, i32 0, i32 12
  %168 = ptrtoint ptr %flag114.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %flag114.i, align 4
  %ubwc_meta_enable418.i = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %cdp_cfg.i, i32 0, i32 1
  %170 = trunc i32 %169 to i8
  %171 = lshr i8 %170, 2
  %172 = and i8 %171, 1
  %173 = ptrtoint ptr %ubwc_meta_enable418.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %ubwc_meta_enable418.i, align 1
  %174 = load volatile i32, ptr %flag114.i, align 4
  %175 = and i32 %174, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool126.not.i = icmp eq i32 %175, 0
  br i1 %tobool126.not.i, label %land.rhs129.i, label %land.lhs.true.i13.lor.end.i_crit_edge

land.lhs.true.i13.lor.end.i_crit_edge:            ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i

land.rhs129.i:                                    ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %flag114.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %flag114.i, align 4
  %178 = and i32 %177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool133.not.i = icmp eq i32 %178, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %land.rhs129.i, %land.lhs.true.i13.lor.end.i_crit_edge, %lor.rhs.thread.i
  %179 = phi i1 [ true, %land.lhs.true.i13.lor.end.i_crit_edge ], [ %tobool133.not.i, %land.rhs129.i ], [ false, %lor.rhs.thread.i ]
  %tile_amortize_enable.i = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %cdp_cfg.i, i32 0, i32 2
  %frombool136.i = zext i1 %179 to i8
  %180 = ptrtoint ptr %tile_amortize_enable.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %frombool136.i, ptr %tile_amortize_enable.i, align 2
  %181 = ptrtoint ptr %setup_cdp.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %setup_cdp.i, align 4
  %183 = ptrtoint ptr %multirect_index103.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %multirect_index103.i, align 8
  call void %182(ptr noundef %157, ptr noundef nonnull %cdp_cfg.i, i32 noundef %184) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cdp_cfg.i) #11
  br label %if.end143.i

if.end143.i:                                      ; preds = %lor.end.i, %if.then87.i.if.end143.i_crit_edge, %if.end83.i.if.end143.i_crit_edge
  %185 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i290.i = icmp eq i8 %186, 0
  br i1 %tobool.not.i290.i, label %if.end143.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end143.i.if.end7.i.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end143.i
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 4
  %187 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %format.i.i, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  %modifier.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 8
  %191 = ptrtoint ptr %modifier.i.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %modifier.i.i, align 8
  %call.i.i = call ptr @dpu_get_dpu_format_ext(i32 noundef %190, i64 noundef %192) #11
  %193 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %x2.i, align 4
  %195 = ptrtoint ptr %src_rect.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %src_rect.i, align 4
  %sub.i.i.i = sub i32 %194, %196
  %call3.i291.i = call fastcc i32 @_dpu_plane_calc_fill_level(ptr noundef %plane, ptr noundef %call.i.i, i32 noundef %sub.i.i.i) #11
  %tobool4.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.if.else6.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.else6.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else6.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %fetch_mode.i.i = getelementptr inbounds %struct.dpu_format, ptr %call.i.i, i32 0, i32 11
  %197 = ptrtoint ptr %fetch_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %fetch_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp.i.i = icmp eq i32 %198, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.if.else6.i.i_crit_edge

land.lhs.true.i.i.if.else6.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else6.i.i

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.else6.i.i:                                     ; preds = %land.lhs.true.i.i.if.else6.i.i_crit_edge, %if.else.i.i.if.else6.i.i_crit_edge
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else6.i.i, %land.lhs.true.i.i.if.end7.i.i_crit_edge, %if.end143.i.if.end7.i.i_crit_edge
  %fmt.0.i.i = phi ptr [ %call.i.i, %if.else6.i.i ], [ null, %if.end143.i.if.end7.i.i_crit_edge ], [ %call.i.i, %land.lhs.true.i.i.if.end7.i.i_crit_edge ]
  %total_fl.0.i.i = phi i32 [ %call3.i291.i, %if.else6.i.i ], [ 0, %if.end143.i.if.end7.i.i_crit_edge ], [ %call3.i291.i, %land.lhs.true.i.i.if.end7.i.i_crit_edge ]
  %lut_usage.0.i.i = phi i32 [ 1, %if.else6.i.i ], [ 2, %if.end143.i.if.end7.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end7.i.i_crit_edge ]
  %catalog.i.i = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 9
  %199 = ptrtoint ptr %catalog.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %catalog.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %200, i32 0, i32 23, i32 18, i32 %lut_usage.0.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end7.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end7.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_get_qos_lut.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end7.i.i
  %201 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool1.not.i.i.i = icmp eq i32 %202, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_get_qos_lut.exit.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %entries.i.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %200, i32 0, i32 23, i32 18, i32 %lut_usage.0.i.i, i32 1
  %203 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %entries.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %204, null
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false2.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i.for.body.i.i.i_crit_edge

lor.lhs.false2.i.i.i.for.body.i.i.i_crit_edge:    ; preds = %lor.lhs.false2.i.i.i
  br label %for.body.i.i.i

lor.lhs.false2.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_get_qos_lut.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %lor.lhs.false2.i.i.i.for.body.i.i.i_crit_edge
  %i.035.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %lor.lhs.false2.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.dpu_qos_lut_entry, ptr %204, i32 %i.035.i.i.i
  %205 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %total_fl.0.i.i)
  %cmp6.not.i.i.i = icmp ult i32 %206, %total_fl.0.i.i
  br i1 %cmp6.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge

for.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.035.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %202
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %sub.i54.i.i = add i32 %202, -1
  %arrayidx12.i.i.i = getelementptr %struct.dpu_qos_lut_entry, ptr %204, i32 %sub.i54.i.i
  %207 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx12.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool14.not.i.i.i = icmp eq i32 %208, 0
  br i1 %tobool14.not.i.i.i, label %for.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %for.end.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge

for.end.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_get_qos_lut.exit.i.i

for.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %for.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %for.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %sub.sink.i.i.i = phi i32 [ %sub.i54.i.i, %for.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ %i.035.i.i.i, %for.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %lut19.i.i.i = getelementptr %struct.dpu_qos_lut_entry, ptr %204, i32 %sub.sink.i.i.i, i32 1
  %209 = ptrtoint ptr %lut19.i.i.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %lut19.i.i.i, align 8
  br label %_dpu_plane_get_qos_lut.exit.i.i

_dpu_plane_get_qos_lut.exit.i.i:                  ; preds = %cleanup.sink.split.i.i.i, %for.end.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge, %lor.lhs.false2.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge, %lor.lhs.false.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge, %if.end7.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i64 [ 0, %lor.lhs.false2.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge ], [ 0, %if.end7.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge ], [ 0, %for.end.i.i.i._dpu_plane_get_qos_lut.exit.i.i_crit_edge ], [ %210, %cleanup.sink.split.i.i.i ]
  %211 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pipe.i.i, align 4
  %sub.i293.i = add i32 %212, -1
  %tobool9.not.i294.i = icmp eq ptr %fmt.0.i.i, null
  br i1 %tobool9.not.i294.i, label %_dpu_plane_get_qos_lut.exit.i.i.cond.end.i297.i_crit_edge, label %cond.true.i295.i

_dpu_plane_get_qos_lut.exit.i.i.cond.end.i297.i_crit_edge: ; preds = %_dpu_plane_get_qos_lut.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i297.i

cond.true.i295.i:                                 ; preds = %_dpu_plane_get_qos_lut.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %fmt.0.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %fmt.0.i.i, align 4
  br label %cond.end.i297.i

cond.end.i297.i:                                  ; preds = %cond.true.i295.i, %_dpu_plane_get_qos_lut.exit.i.i.cond.end.i297.i_crit_edge
  %cond.i296.i = phi i32 [ %214, %cond.true.i295.i ], [ 0, %_dpu_plane_get_qos_lut.exit.i.i.cond.end.i297.i_crit_edge ]
  %215 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool11.i.i = icmp ne i8 %216, 0
  %conv.i.i = trunc i64 %retval.0.i.i.i to i32
  call fastcc void @trace_dpu_perf_set_qos_luts(i32 noundef %sub.i293.i, i32 noundef %cond.i296.i, i1 noundef zeroext %tobool11.i.i, i32 noundef %total_fl.0.i.i, i32 noundef %conv.i.i, i32 noundef %lut_usage.0.i.i) #11
  br i1 %tobool.not, label %cond.end.i297.i._dpu_plane_set_qos_lut.exit.i_crit_edge, label %cond.true13.i.i

cond.end.i297.i._dpu_plane_set_qos_lut.exit.i_crit_edge: ; preds = %cond.end.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_qos_lut.exit.i

cond.true13.i.i:                                  ; preds = %cond.end.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  %base15.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %217 = ptrtoint ptr %base15.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %base15.i.i, align 4
  br label %_dpu_plane_set_qos_lut.exit.i

_dpu_plane_set_qos_lut.exit.i:                    ; preds = %cond.true13.i.i, %cond.end.i297.i._dpu_plane_set_qos_lut.exit.i_crit_edge
  %cond18.i.i = phi i32 [ %218, %cond.true13.i.i ], [ -1, %cond.end.i297.i._dpu_plane_set_qos_lut.exit.i_crit_edge ]
  %219 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pipe.i.i, align 4
  %sub20.i.i = add i32 %220, -1
  %221 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  %223 = zext i8 %222 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.75, i32 noundef %cond18.i.i, i32 noundef %sub20.i.i, ptr noundef %fmt.0.i.i, i32 noundef %223, i32 noundef %total_fl.0.i.i, i64 noundef %retval.0.i.i.i) #11
  %224 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_creq_lut.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %225, i32 0, i32 6, i32 9
  %226 = ptrtoint ptr %setup_creq_lut.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %setup_creq_lut.i.i, align 4
  call void %227(ptr noundef %225, i64 noundef %retval.0.i.i.i) #11
  %228 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i300.i = icmp eq i8 %229, 0
  br i1 %tobool.not.i300.i, label %cond.end.thread.i.i, label %if.else.i306.i

cond.end.thread.i.i:                              ; preds = %_dpu_plane_set_qos_lut.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %catalog.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %catalog.i.i, align 4
  %arrayidx.i302.i = getelementptr %struct.dpu_mdss_cfg, ptr %231, i32 0, i32 23, i32 17, i32 2
  %arrayidx3.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %231, i32 0, i32 23, i32 16, i32 2
  br label %cond.end30.i.i

if.else.i306.i:                                   ; preds = %_dpu_plane_set_qos_lut.exit.i
  %format.i303.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 4
  %232 = ptrtoint ptr %format.i303.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %format.i303.i, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %modifier.i304.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 8
  %236 = ptrtoint ptr %modifier.i304.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %modifier.i304.i, align 8
  %call.i305.i = call ptr @dpu_get_dpu_format_ext(i32 noundef %235, i64 noundef %237) #11
  %tobool5.not.i.i = icmp eq ptr %call.i305.i, null
  br i1 %tobool5.not.i.i, label %cond.end.i310.i, label %land.lhs.true.i309.i

land.lhs.true.i309.i:                             ; preds = %if.else.i306.i
  call void @__sanitizer_cov_trace_pc() #13
  %fetch_mode.i307.i = getelementptr inbounds %struct.dpu_format, ptr %call.i305.i, i32 0, i32 11
  %238 = ptrtoint ptr %fetch_mode.i307.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %fetch_mode.i307.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp.i308.i = icmp eq i32 %239, 0
  %240 = ptrtoint ptr %catalog.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %catalog.i.i, align 4
  %danger_lut_tbl9.i.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %241, i32 0, i32 23, i32 17
  %safe_lut_tbl13.i.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %241, i32 0, i32 23, i32 16
  %arrayidx19.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %241, i32 0, i32 23, i32 17, i32 1
  %arrayidx23.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %241, i32 0, i32 23, i32 16, i32 1
  %safe_lut.092138.in.i.i = select i1 %cmp.i308.i, ptr %safe_lut_tbl13.i.i, ptr %arrayidx23.i.i
  %danger_lut.093137.in.i.i = select i1 %cmp.i308.i, ptr %danger_lut_tbl9.i.i, ptr %arrayidx19.i.i
  %242 = ptrtoint ptr %call.i305.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %cond140.i.i = load i32, ptr %call.i305.i, align 4
  br label %cond.end30.i.i

cond.end.i310.i:                                  ; preds = %if.else.i306.i
  call void @__sanitizer_cov_trace_pc() #13
  %243 = ptrtoint ptr %catalog.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %catalog.i.i, align 4
  %arrayidx19114.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %244, i32 0, i32 23, i32 17, i32 1
  %arrayidx23115.i.i = getelementptr %struct.dpu_mdss_cfg, ptr %244, i32 0, i32 23, i32 16, i32 1
  br label %cond.end30.i.i

cond.end30.i.i:                                   ; preds = %cond.end.i310.i, %land.lhs.true.i309.i, %cond.end.thread.i.i
  %cond133.i.i = phi i32 [ %cond140.i.i, %land.lhs.true.i309.i ], [ 0, %cond.end.i310.i ], [ 0, %cond.end.thread.i.i ]
  %safe_lut.092132.in.i.i = phi ptr [ %safe_lut.092138.in.i.i, %land.lhs.true.i309.i ], [ %arrayidx23115.i.i, %cond.end.i310.i ], [ %arrayidx3.i.i, %cond.end.thread.i.i ]
  %danger_lut.093131.in.i.i = phi ptr [ %danger_lut.093137.in.i.i, %land.lhs.true.i309.i ], [ %arrayidx19114.i.i, %cond.end.i310.i ], [ %arrayidx.i302.i, %cond.end.thread.i.i ]
  %tobool25.not96128.i.i = phi i1 [ false, %land.lhs.true.i309.i ], [ true, %cond.end.i310.i ], [ true, %cond.end.thread.i.i ]
  %fmt.090.i.i = phi ptr [ %call.i305.i, %land.lhs.true.i309.i ], [ null, %cond.end.i310.i ], [ null, %cond.end.thread.i.i ]
  %cond31.i.i = phi i32 [ %239, %land.lhs.true.i309.i ], [ 0, %cond.end.i310.i ], [ 0, %cond.end.thread.i.i ]
  %245 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %sub95129.in.i.i = load i32, ptr %pipe.i.i, align 4
  %sub95129.i.i = add i32 %sub95129.in.i.i, -1
  %246 = ptrtoint ptr %danger_lut.093131.in.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %danger_lut.093131.i.i = load i32, ptr %danger_lut.093131.in.i.i, align 4
  %247 = ptrtoint ptr %safe_lut.092132.in.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %safe_lut.092132.i.i = load i32, ptr %safe_lut.092132.in.i.i, align 4
  call fastcc void @trace_dpu_perf_set_danger_luts(i32 noundef %sub95129.i.i, i32 noundef %cond133.i.i, i32 noundef %cond31.i.i, i32 noundef %danger_lut.093131.i.i, i32 noundef %safe_lut.092132.i.i) #11
  br i1 %tobool.not, label %cond.end30.i.i.cond.end37.i.i_crit_edge, label %cond.true33.i.i

cond.end30.i.i.cond.end37.i.i_crit_edge:          ; preds = %cond.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end37.i.i

cond.true33.i.i:                                  ; preds = %cond.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %base35.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %248 = ptrtoint ptr %base35.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %base35.i.i, align 4
  br label %cond.end37.i.i

cond.end37.i.i:                                   ; preds = %cond.true33.i.i, %cond.end30.i.i.cond.end37.i.i_crit_edge
  %cond38.i.i = phi i32 [ %249, %cond.true33.i.i ], [ -1, %cond.end30.i.i.cond.end37.i.i_crit_edge ]
  %250 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %pipe.i.i, align 4
  br i1 %tobool25.not96128.i.i, label %cond.end37.i.i._dpu_plane_set_danger_lut.exit.i_crit_edge, label %cond.true49.i.i

cond.end37.i.i._dpu_plane_set_danger_lut.exit.i_crit_edge: ; preds = %cond.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_danger_lut.exit.i

cond.true49.i.i:                                  ; preds = %cond.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fetch_mode50.i.i = getelementptr inbounds %struct.dpu_format, ptr %fmt.090.i.i, i32 0, i32 11
  %252 = ptrtoint ptr %fetch_mode50.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %fetch_mode50.i.i, align 4
  br label %_dpu_plane_set_danger_lut.exit.i

_dpu_plane_set_danger_lut.exit.i:                 ; preds = %cond.true49.i.i, %cond.end37.i.i._dpu_plane_set_danger_lut.exit.i_crit_edge
  %cond53.i.i = phi i32 [ %253, %cond.true49.i.i ], [ -1, %cond.end37.i.i._dpu_plane_set_danger_lut.exit.i_crit_edge ]
  %sub40.i.i = add i32 %251, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.81, i32 noundef %cond38.i.i, i32 noundef %sub40.i.i, ptr noundef %fmt.090.i.i, i32 noundef %cond53.i.i, i32 noundef %danger_lut.093131.i.i, i32 noundef %safe_lut.092132.i.i) #11
  %254 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_danger_safe_lut.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %255, i32 0, i32 6, i32 8
  %256 = ptrtoint ptr %setup_danger_safe_lut.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %setup_danger_safe_lut.i.i, align 4
  call void %257(ptr noundef %255, i32 noundef %danger_lut.093131.i.i, i32 noundef %safe_lut.092132.i.i) #11
  %type.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %258 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %259)
  %cmp144.not.i = icmp eq i32 %259, 2
  br i1 %cmp144.not.i, label %_dpu_plane_set_danger_lut.exit.i.if.end146.i_crit_edge, label %if.then145.i

_dpu_plane_set_danger_lut.exit.i.if.end146.i_crit_edge: ; preds = %_dpu_plane_set_danger_lut.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146.i

if.then145.i:                                     ; preds = %_dpu_plane_set_danger_lut.exit.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pipe_qos_cfg.i312.i) #11
  %260 = call ptr @memset(ptr %pipe_qos_cfg.i312.i, i32 0, i32 12)
  %danger_safe_en.i313.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i312.i, i32 0, i32 3
  %261 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  %263 = ptrtoint ptr %danger_safe_en.i313.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %danger_safe_en.i313.i, align 1
  br i1 %tobool.not, label %if.then145.i._dpu_plane_set_qos_ctrl.exit327.i_crit_edge, label %cond.true.i318.i

if.then145.i._dpu_plane_set_qos_ctrl.exit327.i_crit_edge: ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_qos_ctrl.exit327.i

cond.true.i318.i:                                 ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #13
  %base26.i317.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %264 = ptrtoint ptr %base26.i317.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %base26.i317.i, align 4
  br label %_dpu_plane_set_qos_ctrl.exit327.i

_dpu_plane_set_qos_ctrl.exit327.i:                ; preds = %cond.true.i318.i, %if.then145.i._dpu_plane_set_qos_ctrl.exit327.i_crit_edge
  %cond.i319.i = phi i32 [ %265, %cond.true.i318.i ], [ -1, %if.then145.i._dpu_plane_set_qos_ctrl.exit327.i_crit_edge ]
  %266 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %pipe.i.i, align 4
  %sub.i321.i = add i32 %267, -1
  %268 = zext i8 %262 to i32
  %vblank_en29.i322.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i312.i, i32 0, i32 2
  %269 = ptrtoint ptr %vblank_en29.i322.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %vblank_en29.i322.i, align 4, !range !199
  %271 = zext i8 %270 to i32
  %272 = ptrtoint ptr %pipe_qos_cfg.i312.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %pipe_qos_cfg.i312.i, align 4
  %danger_vblank33.i323.i = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %pipe_qos_cfg.i312.i, i32 0, i32 1
  %274 = ptrtoint ptr %danger_vblank33.i323.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %danger_vblank33.i323.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %cond.i319.i, i32 noundef %sub.i321.i, i32 noundef %268, i32 noundef %271, i32 noundef %273, i32 noundef %275, i32 noundef %268) #11
  %276 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pipe_hw37.i.i, align 8
  %setup_qos_ctrl.i325.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %277, i32 0, i32 6, i32 10
  %278 = ptrtoint ptr %setup_qos_ctrl.i325.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %setup_qos_ctrl.i325.i, align 4
  call void %279(ptr noundef %277, ptr noundef nonnull %pipe_qos_cfg.i312.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pipe_qos_cfg.i312.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ot_params.i.i) #11
  %280 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %plane, align 8
  %dev_private.i.i328.i = getelementptr inbounds %struct.drm_device, ptr %281, i32 0, i32 5
  %282 = ptrtoint ptr %dev_private.i.i328.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev_private.i.i328.i, align 4
  %kms.i.i329.i = getelementptr inbounds %struct.msm_drm_private, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %kms.i.i329.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %kms.i.i329.i, align 4
  %286 = getelementptr inbounds i8, ptr %ot_params.i.i, i32 20
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %286, align 4
  %288 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pipe_hw37.i.i, align 8
  %cap.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %289, i32 0, i32 5
  %290 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cap.i.i, align 4
  %xin_id.i.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %291, i32 0, i32 6
  %292 = ptrtoint ptr %xin_id.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %xin_id.i.i, align 4
  %294 = ptrtoint ptr %ot_params.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %ot_params.i.i, align 4
  %idx.i331.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %289, i32 0, i32 4
  %295 = ptrtoint ptr %idx.i331.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %idx.i331.i, align 4
  %num.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %num.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %num.i.i, align 4
  %298 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %x2.i, align 4
  %300 = ptrtoint ptr %src_rect.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %src_rect.i, align 4
  %sub.i.i334.i = sub i32 %299, %301
  %width.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 2
  %302 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %sub.i.i334.i, ptr %width.i.i, align 4
  %303 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %y2.i, align 4
  %305 = ptrtoint ptr %y160.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %y160.i, align 4
  %sub.i15.i.i = sub i32 %304, %306
  %height.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 3
  %307 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %sub.i15.i.i, ptr %height.i.i, align 4
  %308 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  %is_wfd.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 6
  %310 = xor i8 %309, 1
  %311 = ptrtoint ptr %is_wfd.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %310, ptr %is_wfd.i.i, align 1
  %mode.i.i = getelementptr inbounds %struct.drm_crtc, ptr %30, i32 0, i32 12
  %call6.i.i = call i32 @drm_mode_vrefresh(ptr noundef %mode.i.i) #11
  %frame_rate.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 4
  %312 = ptrtoint ptr %frame_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %call6.i.i, ptr %frame_rate.i.i, align 4
  %vbif_idx.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 7
  %313 = ptrtoint ptr %vbif_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %vbif_idx.i.i, align 4
  %314 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pipe_hw37.i.i, align 8
  %cap8.i.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %315, i32 0, i32 5
  %316 = ptrtoint ptr %cap8.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cap8.i.i, align 4
  %clk_ctrl.i.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %317, i32 0, i32 7
  %318 = ptrtoint ptr %clk_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %clk_ctrl.i.i, align 4
  %clk_ctrl9.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %ot_params.i.i, i32 0, i32 8
  %320 = ptrtoint ptr %clk_ctrl9.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %319, ptr %clk_ctrl9.i.i, align 4
  %321 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %286, align 4
  call void @dpu_vbif_set_ot_limit(ptr noundef %285, ptr noundef nonnull %ot_params.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ot_params.i.i) #11
  br label %if.end146.i

if.end146.i:                                      ; preds = %_dpu_plane_set_qos_ctrl.exit327.i, %_dpu_plane_set_danger_lut.exit.i.if.end146.i_crit_edge
  %322 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  call void @__sanitizer_cov_trace_cmp1(i8 %323, i8 %65)
  %cmp151.not.i = icmp eq i8 %323, %65
  br i1 %cmp151.not.i, label %lor.rhs153.i, label %if.then167.i

lor.rhs153.i:                                     ; preds = %if.end146.i
  %needs_qos_remap.i = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 3
  %324 = ptrtoint ptr %needs_qos_remap.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %needs_qos_remap.i, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool154.not.i = icmp eq i8 %325, 0
  br i1 %tobool154.not.i, label %lor.rhs153.i.if.end177.i_crit_edge, label %if.then173.i

lor.rhs153.i.if.end177.i_crit_edge:               ; preds = %lor.rhs153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177.i

if.then167.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #13
  %326 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %65, ptr %is_rt_pipe.i.i, align 1
  br label %if.end176.i

if.then173.i:                                     ; preds = %lor.rhs153.i
  call void @__sanitizer_cov_trace_pc() #13
  %327 = ptrtoint ptr %needs_qos_remap.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 0, ptr %needs_qos_remap.i, align 4
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.then173.i, %if.then167.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qos_params.i.i) #11
  %328 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %plane, align 8
  %dev_private.i.i336.i = getelementptr inbounds %struct.drm_device, ptr %329, i32 0, i32 5
  %330 = ptrtoint ptr %dev_private.i.i336.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dev_private.i.i336.i, align 4
  %kms.i.i337.i = getelementptr inbounds %struct.msm_drm_private, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %kms.i.i337.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %kms.i.i337.i, align 4
  %334 = call ptr @memset(ptr %qos_params.i.i, i32 0, i32 20)
  %335 = ptrtoint ptr %pipe_hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %pipe_hw37.i.i, align 8
  %cap.i339.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %336, i32 0, i32 5
  %337 = ptrtoint ptr %cap.i339.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cap.i339.i, align 4
  %clk_ctrl.i340.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %338, i32 0, i32 7
  %339 = ptrtoint ptr %clk_ctrl.i340.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %clk_ctrl.i340.i, align 4
  %clk_ctrl1.i.i = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %qos_params.i.i, i32 0, i32 2
  %341 = ptrtoint ptr %clk_ctrl1.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %clk_ctrl1.i.i, align 4
  %xin_id.i341.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %338, i32 0, i32 6
  %342 = ptrtoint ptr %xin_id.i341.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %xin_id.i341.i, align 4
  %xin_id4.i.i = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %qos_params.i.i, i32 0, i32 1
  %344 = ptrtoint ptr %xin_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %xin_id4.i.i, align 4
  %idx.i342.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %336, i32 0, i32 4
  %345 = ptrtoint ptr %idx.i342.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %idx.i342.i, align 4
  %sub.i343.i = add i32 %346, -1
  %num.i344.i = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %qos_params.i.i, i32 0, i32 3
  %347 = ptrtoint ptr %num.i344.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %sub.i343.i, ptr %num.i344.i, align 4
  %348 = ptrtoint ptr %is_rt_pipe.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %is_rt_pipe.i.i, align 1, !range !199
  %is_rt.i.i = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %qos_params.i.i, i32 0, i32 4
  %350 = ptrtoint ptr %is_rt.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %is_rt.i.i, align 4
  br i1 %tobool.not, label %if.end176.i._dpu_plane_set_qos_remap.exit.i_crit_edge, label %cond.true.i346.i

if.end176.i._dpu_plane_set_qos_remap.exit.i_crit_edge: ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_dpu_plane_set_qos_remap.exit.i

cond.true.i346.i:                                 ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #13
  %base7.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %351 = ptrtoint ptr %base7.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %base7.i.i, align 4
  br label %_dpu_plane_set_qos_remap.exit.i

_dpu_plane_set_qos_remap.exit.i:                  ; preds = %cond.true.i346.i, %if.end176.i._dpu_plane_set_qos_remap.exit.i_crit_edge
  %cond.i347.i = phi i32 [ %352, %cond.true.i346.i ], [ -1, %if.end176.i._dpu_plane_set_qos_remap.exit.i_crit_edge ]
  %353 = zext i8 %349 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.82, i32 noundef %cond.i347.i, i32 noundef %sub.i343.i, i32 noundef 0, i32 noundef %343, i32 noundef %353, i32 noundef %340) #11
  call void @dpu_vbif_set_qos_remap(ptr noundef %333, ptr noundef nonnull %qos_params.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qos_params.i.i) #11
  br label %if.end177.i

if.end177.i:                                      ; preds = %_dpu_plane_set_qos_remap.exit.i, %lor.rhs153.i.if.end177.i_crit_edge
  %354 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %plane, align 8
  %dev_private.i.i349.i = getelementptr inbounds %struct.drm_device, ptr %355, i32 0, i32 5
  %356 = ptrtoint ptr %dev_private.i.i349.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dev_private.i.i349.i, align 4
  %kms.i.i350.i = getelementptr inbounds %struct.msm_drm_private, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %kms.i.i350.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %kms.i.i350.i, align 4
  %360 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %state1.i, align 4
  %crtc.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %crtc.i.i, align 4
  %mode2.i.i = getelementptr inbounds %struct.drm_crtc, ptr %363, i32 0, i32 12
  %format.i352.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 4
  %364 = ptrtoint ptr %format.i352.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %format.i352.i, align 8
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %365, align 4
  %modifier.i353.i = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 8
  %368 = ptrtoint ptr %modifier.i353.i to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %modifier.i353.i, align 8
  %call4.i.i = call ptr @dpu_get_dpu_format_ext(i32 noundef %367, i64 noundef %369) #11
  %370 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %x2.i, align 4
  %372 = ptrtoint ptr %src_rect.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %src_rect.i, align 4
  %sub.i.i356.i = sub i32 %371, %373
  %374 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %y2.i, align 4
  %376 = ptrtoint ptr %y160.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %y160.i, align 4
  %sub.i976.i.i = sub i32 %375, %377
  %y2.i977.i.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 2, i32 3
  %378 = ptrtoint ptr %y2.i977.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %y2.i977.i.i, align 4
  %y1.i978.i.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 2, i32 1
  %380 = ptrtoint ptr %y1.i978.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %y1.i978.i.i, align 4
  %sub.i979.i.i = sub i32 %379, %381
  %call9.i.i = call i32 @drm_mode_vrefresh(ptr noundef %mode2.i.i) #11
  %vtotal.i.i = getelementptr inbounds %struct.drm_crtc, ptr %363, i32 0, i32 12, i32 9
  %382 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %vtotal.i.i, align 4
  %conv.i359.i = zext i16 %383 to i32
  %vsync_end.i.i = getelementptr inbounds %struct.drm_crtc, ptr %363, i32 0, i32 12, i32 8
  %384 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %vsync_end.i.i, align 2
  %conv10.i.i = zext i16 %385 to i32
  %sub.i360.i = sub nsw i32 %conv.i359.i, %conv10.i.i
  %vsync_start.i.i = getelementptr inbounds %struct.drm_crtc, ptr %363, i32 0, i32 12, i32 7
  %386 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %vsync_start.i.i, align 4
  %conv13.i.i = zext i16 %387 to i32
  %sub14.i.i = sub nsw i32 %conv10.i.i, %conv13.i.i
  %vdisplay.i.i = getelementptr inbounds %struct.drm_crtc, ptr %363, i32 0, i32 12, i32 6
  %388 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %vdisplay.i.i, align 2
  %conv17.i.i = zext i16 %389 to i32
  %sub18.i.i = sub nsw i32 %conv13.i.i, %conv17.i.i
  %catalog.i361.i = getelementptr inbounds %struct.dpu_kms, ptr %359, i32 0, i32 3
  %390 = ptrtoint ptr %catalog.i361.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %catalog.i361.i, align 8
  %min_prefill_lines.i.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %391, i32 0, i32 23, i32 13
  %392 = ptrtoint ptr %min_prefill_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %min_prefill_lines.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i976.i.i, i32 %sub.i979.i.i)
  %cmp.i362.i = icmp sgt i32 %sub.i976.i.i, %sub.i979.i.i
  br i1 %cmp.i362.i, label %cond.true.i363.i, label %if.end177.i.cond.end.i365.i_crit_edge

if.end177.i.cond.end.i365.i_crit_edge:            ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i365.i

cond.true.i363.i:                                 ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #13
  %div.i.i = sdiv i32 %sub.i976.i.i, %sub.i979.i.i
  br label %cond.end.i365.i

cond.end.i365.i:                                  ; preds = %cond.true.i363.i, %if.end177.i.cond.end.i365.i_crit_edge
  %cond.i364.i = phi i32 [ %div.i.i, %cond.true.i363.i ], [ 1, %if.end177.i.cond.end.i365.i_crit_edge ]
  %conv24.i.i = sext i32 %cond.i364.i to i64
  %bpp.i.i = getelementptr inbounds %struct.dpu_format, ptr %call4.i.i, i32 0, i32 8
  %394 = ptrtoint ptr %bpp.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %bpp.i.i, align 1
  %conv29.i.i = zext i8 %395 to i32
  %mul33.i.i = mul i32 %call9.i.i, %sub.i.i356.i
  %mul34.i.i = mul i32 %mul33.i.i, %conv29.i.i
  %mul37.i.i = mul i32 %mul34.i.i, %393
  %conv38.i.i = zext i32 %mul37.i.i to i64
  %conv41.i.i = zext i16 %383 to i64
  %mul39.i.i = mul nsw i64 %conv24.i.i, %conv41.i.i
  %mul42.i.i = mul i64 %mul39.i.i, %conv38.i.i
  %add43.i.i = add nsw i32 %sub14.i.i, %sub.i360.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add43.i.i, i32 %393)
  %cmp44.i.i = icmp ugt i32 %add43.i.i, %393
  br i1 %cmp44.i.i, label %if.else223.i.i, label %if.else241.i.i

if.else223.i.i:                                   ; preds = %cond.end.i365.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul42.i.i)
  %cmp225.i.i = icmp ult i64 %mul42.i.i, 4294967296
  br i1 %cmp225.i.i, label %if.then229.i.i, label %if.else235.i.i, !prof !205

if.then229.i.i:                                   ; preds = %if.else223.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv230.i.i = trunc i64 %mul42.i.i to i32
  %div233.i.i = udiv i32 %conv230.i.i, %add43.i.i
  %conv234.i.i = zext i32 %div233.i.i to i64
  br label %_dpu_plane_calc_bw.exit.i

if.else235.i.i:                                   ; preds = %if.else223.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %396 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add43.i.i, i64 %mul42.i.i) #16, !srcloc !206
  %asmresult1.i.i.i = extractvalue { i64, i64 } %396, 1
  br label %_dpu_plane_calc_bw.exit.i

if.else241.i.i:                                   ; preds = %cond.end.i365.i
  %add243.i.i = add nsw i32 %add43.i.i, %sub18.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add243.i.i, i32 %393)
  %cmp244.i.i = icmp ult i32 %add243.i.i, %393
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul42.i.i)
  %cmp450.i.i = icmp ult i64 %mul42.i.i, 4294967296
  br i1 %cmp244.i.i, label %if.else448.i.i, label %if.else670.i.i

if.else448.i.i:                                   ; preds = %if.else241.i.i
  br i1 %cmp450.i.i, label %if.then458.i.i, label %if.else464.i.i, !prof !205

if.then458.i.i:                                   ; preds = %if.else448.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv459.i.i = trunc i64 %mul42.i.i to i32
  %div462.i.i = udiv i32 %conv459.i.i, %add243.i.i
  %conv463.i.i = zext i32 %div462.i.i to i64
  br label %_dpu_plane_calc_bw.exit.i

if.else464.i.i:                                   ; preds = %if.else448.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %397 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add243.i.i, i64 %mul42.i.i) #16, !srcloc !206
  %asmresult1.i1006.i.i = extractvalue { i64, i64 } %397, 1
  br label %_dpu_plane_calc_bw.exit.i

if.else670.i.i:                                   ; preds = %if.else241.i.i
  br i1 %cmp450.i.i, label %if.then680.i.i, label %if.else686.i.i, !prof !205

if.then680.i.i:                                   ; preds = %if.else670.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv681.i.i = trunc i64 %mul42.i.i to i32
  %div684.i.i = udiv i32 %conv681.i.i, %393
  %conv685.i.i = zext i32 %div684.i.i to i64
  br label %_dpu_plane_calc_bw.exit.i

if.else686.i.i:                                   ; preds = %if.else670.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %398 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %393, i64 %mul42.i.i) #16, !srcloc !206
  %asmresult1.i1031.i.i = extractvalue { i64, i64 } %398, 1
  br label %_dpu_plane_calc_bw.exit.i

_dpu_plane_calc_bw.exit.i:                        ; preds = %if.else686.i.i, %if.then680.i.i, %if.else464.i.i, %if.then458.i.i, %if.else235.i.i, %if.then229.i.i
  %plane_prefill_bw.0.i.i = phi i64 [ %conv234.i.i, %if.then229.i.i ], [ %asmresult1.i.i.i, %if.else235.i.i ], [ %conv463.i.i, %if.then458.i.i ], [ %asmresult1.i1006.i.i, %if.else464.i.i ], [ %conv685.i.i, %if.then680.i.i ], [ %asmresult1.i1031.i.i, %if.else686.i.i ]
  %mul30.i.i = mul i32 %mul34.i.i, %conv.i359.i
  %conv31.i.i = sext i32 %mul30.i.i to i64
  %mul32.i.i = mul nsw i64 %conv31.i.i, %conv24.i.i
  %399 = call i64 @llvm.umax.i64(i64 %mul32.i.i, i64 %plane_prefill_bw.0.i.i) #11
  %plane_fetch_bw.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %361, i32 0, i32 7
  %400 = ptrtoint ptr %plane_fetch_bw.i.i to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 %399, ptr %plane_fetch_bw.i.i, align 8
  %401 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %state1.i, align 4
  %crtc.i371.i = getelementptr inbounds %struct.drm_plane_state, ptr %402, i32 0, i32 1
  %403 = ptrtoint ptr %crtc.i371.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %crtc.i371.i, align 4
  %mode2.i372.i = getelementptr inbounds %struct.drm_crtc, ptr %404, i32 0, i32 12
  %405 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %y2.i, align 4
  %407 = ptrtoint ptr %y160.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %y160.i, align 4
  %sub.i.i375.i = sub i32 %406, %408
  %x2.i.i376.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %pipe_cfg.i, i32 0, i32 2, i32 2
  %409 = ptrtoint ptr %x2.i.i376.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %x2.i.i376.i, align 4
  %411 = ptrtoint ptr %dst_rect.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %dst_rect.i, align 4
  %sub.i309.i.i = sub i32 %410, %412
  %413 = ptrtoint ptr %y2.i977.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %y2.i977.i.i, align 4
  %415 = ptrtoint ptr %y1.i978.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %y1.i978.i.i, align 4
  %sub.i312.i.i = sub i32 %414, %416
  %call6.i377.i = call i32 @drm_mode_vrefresh(ptr noundef %mode2.i372.i) #11
  %vtotal.i378.i = getelementptr inbounds %struct.drm_crtc, ptr %404, i32 0, i32 12, i32 9
  %417 = ptrtoint ptr %vtotal.i378.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %vtotal.i378.i, align 4
  %conv.i379.i = zext i16 %418 to i32
  %mul.i.i = mul i32 %call6.i377.i, %sub.i309.i.i
  %mul7.i.i = mul i32 %mul.i.i, %conv.i379.i
  %conv8.i.i = sext i32 %mul7.i.i to i64
  %plane_clk.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %402, i32 0, i32 8
  %419 = ptrtoint ptr %plane_clk.i.i to i32
  call void @__asan_store8_noabort(i32 %419)
  store i64 %conv8.i.i, ptr %plane_clk.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i375.i, i32 %sub.i312.i.i)
  %cmp.i380.i = icmp sgt i32 %sub.i.i375.i, %sub.i312.i.i
  br i1 %cmp.i380.i, label %if.then.i384.i, label %_dpu_plane_calc_bw.exit.i.dpu_plane_sspp_atomic_update.exit_crit_edge

_dpu_plane_calc_bw.exit.i.dpu_plane_sspp_atomic_update.exit_crit_edge: ; preds = %_dpu_plane_calc_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dpu_plane_sspp_atomic_update.exit

if.then.i384.i:                                   ; preds = %_dpu_plane_calc_bw.exit.i
  %conv10.i381.i = sext i32 %sub.i.i375.i to i64
  %mul12.i.i = mul nsw i64 %conv8.i.i, %conv10.i381.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul12.i.i)
  %cmp190.i.i = icmp ult i64 %mul12.i.i, 4294967296
  br i1 %cmp190.i.i, label %if.then194.i.i, label %if.else203.i.i, !prof !205

if.then194.i.i:                                   ; preds = %if.then.i384.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv196.i.i = trunc i64 %mul12.i.i to i32
  %div200.i.i = udiv i32 %conv196.i.i, %sub.i312.i.i
  %conv201.i.i = zext i32 %div200.i.i to i64
  br label %if.end210.sink.split.i.i

if.else203.i.i:                                   ; preds = %if.then.i384.i
  call void @__sanitizer_cov_trace_pc() #13
  %420 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i312.i.i, i64 %mul12.i.i) #16, !srcloc !206
  %asmresult1.i.i417.i = extractvalue { i64, i64 } %420, 1
  br label %if.end210.sink.split.i.i

if.end210.sink.split.i.i:                         ; preds = %if.else203.i.i, %if.then194.i.i
  %shr.sink.i.i = phi i64 [ %conv201.i.i, %if.then194.i.i ], [ %asmresult1.i.i417.i, %if.else203.i.i ]
  %421 = ptrtoint ptr %plane_clk.i.i to i32
  call void @__asan_store8_noabort(i32 %421)
  store i64 %shr.sink.i.i, ptr %plane_clk.i.i, align 8
  br label %dpu_plane_sspp_atomic_update.exit

dpu_plane_sspp_atomic_update.exit:                ; preds = %if.end210.sink.split.i.i, %_dpu_plane_calc_bw.exit.i.dpu_plane_sspp_atomic_update.exit_crit_edge, %land.end.i.dpu_plane_sspp_atomic_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %pipe_cfg.i) #11
  br label %if.end

if.end:                                           ; preds = %dpu_plane_sspp_atomic_update.exit, %if.then.i, %land.lhs.true7.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %is_dpu_plane_virtual.exit29.i.if.end_crit_edge, %is_dpu_plane_virtual.exit29.thread.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_format_populate_layout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_plane_disable(i32 noundef %drm_id, i1 noundef zeroext %is_virtual, i32 noundef %multirect_mode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_disable, i32 0, i32 1), ptr blockaddress(@trace_dpu_plane_disable, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !205

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  %call43 = tail call i32 @__traceiter_dpu_plane_disable(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext %is_virtual, i32 noundef %multirect_mode) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !205

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_disable, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_plane_disable.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_plane_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 805, ptr noundef nonnull @.str.70) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_plane_disable(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_plane_set_scanout(i32 noundef %index, ptr noundef %layout, i32 noundef %multirect_index) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_set_scanout, i32 0, i32 1), ptr blockaddress(@trace_dpu_plane_set_scanout, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !205

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !211
  %call42 = tail call i32 @__traceiter_dpu_plane_set_scanout(ptr noundef null, i32 noundef %index, ptr noundef %layout, i32 noundef %multirect_index) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !205

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_set_scanout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_set_scanout, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_plane_set_scanout.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_plane_set_scanout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 787, ptr noundef nonnull @.str.70) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
declare dso_local i32 @__traceiter_dpu_plane_set_scanout(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_plane_calc_fill_level(ptr noundef readonly %plane, ptr noundef %fmt, i32 noundef %src_width) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool1.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_width)
  %tobool3.not = icmp eq i32 %src_width, 0
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %bpp = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 8
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bpp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %lor.lhs.false4.do.end_crit_edge, label %if.end

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 232) #14
  br label %cleanup103

if.end:                                           ; preds = %lor.lhs.false4
  %catalog = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 9
  %4 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %catalog, align 4
  %caps = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps, align 4
  %pixel_ram_size = getelementptr inbounds %struct.dpu_caps, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %pixel_ram_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_ram_size, align 4
  %mplane_list = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 8
  %10 = ptrtoint ptr %mplane_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn150 = load ptr, ptr %mplane_list, align 4
  %cmp.not151 = icmp eq ptr %.pn150, %mplane_list
  br i1 %cmp.not151, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %base28 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn153 = phi ptr [ %.pn150, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %src_width.addr.0152 = phi i32 [ %src_width, %for.body.lr.ph ], [ %src_width.addr.1, %cleanup.for.body_crit_edge ]
  %state17 = getelementptr i8, ptr %.pn153, i32 -144
  %11 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state17, align 4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %visible, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %for.body.cleanup_crit_edge, label %if.end20

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 20
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 20, i32 2
  %15 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %x2.i, align 4
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src, align 4
  %sub.i = sub i32 %16, %18
  %shr = ashr i32 %sub.i, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %19 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body32, label %if.then26

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base28, align 4
  %base30 = getelementptr i8, ptr %.pn153, i32 -512
  %22 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base30, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.78, i32 noundef %21, i32 noundef %23, i32 noundef %src_width.addr.0152, i32 noundef %shr) #11
  br label %do.end51

do.body32:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dpu_plane_calc_fill_level.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_plane_calc_fill_level, %if.then39)) #11
          to label %do.end51 [label %if.then39], !srcloc !200

if.then39:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base28, align 4
  %base44 = getelementptr i8, ptr %.pn153, i32 -512
  %26 = ptrtoint ptr %base44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base44, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_dpu_plane_calc_fill_level.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, i32 noundef 249, i32 noundef %25, i32 noundef %27, i32 noundef %src_width.addr.0152, i32 noundef %shr) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then39, %do.body32, %if.then26
  %28 = tail call i32 @llvm.umax.i32(i32 %src_width.addr.0152, i32 %shr)
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %for.body.cleanup_crit_edge
  %src_width.addr.1 = phi i32 [ %28, %do.end51 ], [ %src_width.addr.0152, %for.body.cleanup_crit_edge ]
  %29 = ptrtoint ptr %.pn153 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn153, align 4
  %cmp.not = icmp eq ptr %.pn, %mplane_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %src_width.addr.0.lcssa = phi i32 [ %src_width, %if.end.for.end_crit_edge ], [ %src_width.addr.1, %cleanup.for.end_crit_edge ]
  %fetch_planes = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 1
  %30 = ptrtoint ptr %fetch_planes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fetch_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp59 = icmp eq i32 %31, 2
  br i1 %cmp59, label %if.then60, label %if.else74

if.then60:                                        ; preds = %for.end
  %chroma_sample = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 4
  %32 = ptrtoint ptr %chroma_sample to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chroma_sample, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp61 = icmp eq i32 %33, 3
  br i1 %cmp61, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %div148 = lshr i32 %9, 1
  br label %if.end93

if.else65:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %div66147 = and i32 %9, -2
  br label %if.end93

if.else74:                                        ; preds = %for.end
  %multirect_mode = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %multirect_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %multirect_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp75 = icmp eq i32 %35, 1
  br i1 %cmp75, label %if.then77, label %if.else85

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %div78146 = and i32 %9, -2
  br label %if.end93

if.else85:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %mul86 = shl i32 %9, 1
  br label %if.end93

if.end93:                                         ; preds = %if.else85, %if.then77, %if.else65, %if.then62
  %div78146.sink = phi i32 [ %div78146, %if.then77 ], [ %mul86, %if.else85 ], [ %div148, %if.then62 ], [ %div66147, %if.else65 ]
  %add80 = add i32 %src_width.addr.0.lcssa, 32
  %36 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bpp, align 1
  %conv82 = zext i8 %37 to i32
  %mul83 = mul i32 %add80, %conv82
  %div84 = udiv i32 %div78146.sink, %mul83
  %tobool94.not = icmp eq ptr %plane, null
  br i1 %tobool94.not, label %if.end93.cond.end100_crit_edge, label %cond.true95

if.end93.cond.end100_crit_edge:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end100

cond.true95:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %base97 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %38 = ptrtoint ptr %base97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base97, align 4
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true95, %if.end93.cond.end100_crit_edge
  %cond101 = phi i32 [ %39, %cond.true95 ], [ -1, %if.end93.cond.end100_crit_edge ]
  %pipe = getelementptr inbounds %struct.dpu_plane, ptr %plane, i32 0, i32 2
  %40 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pipe, align 4
  %sub = add i32 %41, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.80, i32 noundef %cond101, i32 noundef %sub, ptr noundef nonnull %fmt, i32 noundef %src_width.addr.0.lcssa, i32 noundef %div84) #11
  br label %cleanup103

cleanup103:                                       ; preds = %cond.end100, %do.end
  %retval.0 = phi i32 [ %div84, %cond.end100 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_perf_set_qos_luts(i32 noundef %pnum, i32 noundef %fmt, i1 noundef zeroext %rt, i32 noundef %fl, i32 noundef %lut, i32 noundef %lut_usage) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_qos_luts, i32 0, i32 1), ptr blockaddress(@trace_dpu_perf_set_qos_luts, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !205

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !213
  %call43 = tail call i32 @__traceiter_dpu_perf_set_qos_luts(ptr noundef null, i32 noundef %pnum, i32 noundef %fmt, i1 noundef zeroext %rt, i32 noundef %fl, i32 noundef %lut, i32 noundef %lut_usage) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !205

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_qos_luts, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_qos_luts, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_perf_set_qos_luts.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_perf_set_qos_luts.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 48, ptr noundef nonnull @.str.70) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_set_qos_luts(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_perf_set_danger_luts(i32 noundef %pnum, i32 noundef %fmt, i32 noundef %mode, i32 noundef %danger_lut, i32 noundef %safe_lut) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_danger_luts, i32 0, i32 1), ptr blockaddress(@trace_dpu_perf_set_danger_luts, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !205

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !215
  %call42 = tail call i32 @__traceiter_dpu_perf_set_danger_luts(ptr noundef null, i32 noundef %pnum, i32 noundef %fmt, i32 noundef %mode, i32 noundef %danger_lut, i32 noundef %safe_lut) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !216
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !205

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_danger_luts, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_danger_luts, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_perf_set_danger_luts.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dpu_perf_set_danger_luts.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.69, i32 noundef 72, ptr noundef nonnull @.str.70) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #11
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
declare dso_local i32 @__traceiter_dpu_perf_set_danger_luts(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_set_ot_limit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_set_qos_remap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !154, !156, !158, !159, !160, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !179, !181, !183, !184}
!llvm.named.register.sp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 783, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_plane_validate_multirect_v2._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_plane_validate_multirect_v2._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 797, i32 4}
!8 = !{ptr @dpu_plane_validate_multirect_v2._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dpu_plane_validate_multirect_v2._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 803, i32 4}
!12 = !{ptr @dpu_plane_validate_multirect_v2._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dpu_plane_validate_multirect_v2._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 843, i32 3}
!16 = !{ptr @dpu_plane_validate_multirect_v2._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dpu_plane_validate_multirect_v2._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 859, i32 2}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 861, i32 2}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1049, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dpu_plane_flush._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dpu_plane_flush._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1394, i32 44}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1469, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dpu_plane_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dpu_plane_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1490, i32 3}
!36 = !{ptr @dpu_plane_init._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dpu_plane_init._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1494, i32 3}
!40 = !{ptr @dpu_plane_init._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dpu_plane_init._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1524, i32 3}
!44 = !{ptr @dpu_plane_init._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dpu_plane_init._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @dpu_plane_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1544, i32 2}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1546, i32 2}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dpu_plane_init.__UNIQUE_ID_ddebug482, !50, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!53 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 702, i32 2}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 629, i32 3}
!58 = !{ptr @_dpu_plane_get_csc._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @_dpu_plane_get_csc._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 641, i32 2}
!62 = !{ptr @dpu_csc10_YUV2RGB_601L, !63, !"dpu_csc10_YUV2RGB_601L", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 609, i32 33}
!64 = !{ptr @dpu_csc_YUV2RGB_601L, !65, !"dpu_csc_YUV2RGB_601L", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 594, i32 33}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 438, i32 2}
!68 = !{ptr @dpu_plane_funcs, !69, !"dpu_plane_funcs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1424, i32 37}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1354, i32 3}
!72 = !{ptr @dpu_plane_reset._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dpu_plane_reset._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1369, i32 3}
!76 = !{ptr @dpu_plane_reset._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dpu_plane_reset._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1284, i32 3}
!80 = !{ptr @dpu_plane_duplicate_state._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @dpu_plane_duplicate_state._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1287, i32 3}
!84 = !{ptr @dpu_plane_duplicate_state._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @dpu_plane_duplicate_state._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @dpu_plane_duplicate_state._entry.44, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1295, i32 3}
!88 = !{ptr @dpu_plane_duplicate_state._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1342, i32 16}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1343, i32 16}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1344, i32 16}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1345, i32 16}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1323, i32 10}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1309, i32 30}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1310, i32 34}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1311, i32 33}
!105 = !{ptr @multirect_mode_name, !106, !"multirect_mode_name", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1308, i32 27}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1315, i32 25}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1316, i32 22}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1317, i32 22}
!113 = !{ptr @multirect_index_name, !114, !"multirect_index_name", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1314, i32 27}
!115 = distinct !{null, !116, !"qcom_compressed_supported_formats", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 65, i32 23}
!117 = !{ptr @supported_format_modifiers, !118, !"supported_format_modifiers", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 112, i32 23}
!119 = !{ptr @dpu_plane_helper_funcs, !120, !"dpu_plane_helper_funcs", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1435, i32 44}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 891, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 907, i32 4}
!125 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @dpu_plane_prepare_fb._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @dpu_plane_prepare_fb._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 916, i32 3}
!130 = !{ptr @dpu_plane_prepare_fb._entry.60, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @dpu_plane_prepare_fb._entry_ptr.62, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 981, i32 3}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1006, i32 3}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1012, i32 3}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1021, i32 3}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1027, i32 3}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1033, i32 3}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 789, i32 1}
!146 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!147 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!148 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!151 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 1117, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 515, i32 3}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 517, i32 3}
!158 = !{ptr @_dpu_plane_set_scanout._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @_dpu_plane_set_scanout._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 763, i32 1}
!162 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 343, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 232, i32 3}
!167 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @_dpu_plane_calc_fill_level._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @_dpu_plane_calc_fill_level._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 246, i32 3}
!172 = !{ptr @_dpu_plane_calc_fill_level.__UNIQUE_ID_ddebug479, !171, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!173 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 274, i32 2}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 24, i32 1}
!178 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 392, i32 2}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 50, i32 1}
!183 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c", i32 494, i32 2}
!186 = !{!"sp"}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"drm_plane_state_dest: %agg.result"}
!198 = distinct !{!198, !"drm_plane_state_dest"}
!199 = !{i8 0, i8 2}
!200 = !{i64 2148530495, i64 2148530500, i64 2148530513, i64 2148530557, i64 2148530591, i64 2148530612}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{!203}
!203 = distinct !{!203, !204, !"drm_plane_state_dest: %agg.result"}
!204 = distinct !{!204, !"drm_plane_state_dest"}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{i64 2148555682, i64 2148555962, i64 2148556296, i64 2148556630}
!207 = !{i64 2158494683}
!208 = !{i64 2158494948}
!209 = !{i64 2149526902}
!210 = !{i64 2149527938}
!211 = !{i64 2158473001}
!212 = !{i64 2158473266}
!213 = !{i64 2157485025}
!214 = !{i64 2157485296}
!215 = !{i64 2157506963}
!216 = !{i64 2157507248}
