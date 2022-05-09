; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
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
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@dpu_core_perf_crtc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[drm:%s:%d] [dpu error]invalid crtc\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpu_core_perf_crtc_check\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c\00", [50 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_check._entry_ptr = internal global ptr @dpu_core_perf_crtc_check._entry, section ".printk_index", align 4
@dpu_core_perf_crtc_check._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid parameters\0A\00", [51 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_check._entry_ptr.5 = internal global ptr @dpu_core_perf_crtc_check._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"crtc:%d bw:%llu ctrl:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"calculated bandwidth=%uk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"final threshold bw limit = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_check._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s:%d] [dpu error]no bandwidth limits specified\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_check._entry_ptr.11 = internal global ptr @dpu_core_perf_crtc_check._entry.9, section ".printk_index", align 4
@dpu_core_perf_crtc_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[drm:%s:%d] [dpu error]exceeds bandwidth: %ukb > %ukb\0A\00", [39 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_check._entry_ptr.14 = internal global ptr @dpu_core_perf_crtc_check._entry.12, section ".printk_index", align 4
@dpu_core_perf_crtc_release_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_core_perf_crtc_release_bw\00", [34 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_release_bw._entry_ptr = internal global ptr @dpu_core_perf_crtc_release_bw._entry, section ".printk_index", align 4
@dpu_core_perf_crtc_release_bw._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[drm:%s:%d] [dpu error]invalid kms\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_release_bw._entry_ptr.18 = internal global ptr @dpu_core_perf_crtc_release_bw._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Release BW crtc=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_core_perf_crtc_update\00", [38 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_update._entry_ptr = internal global ptr @dpu_core_perf_crtc_update._entry, section ".printk_index", align 4
@dpu_core_perf_crtc_update._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.20, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_update._entry_ptr.22 = internal global ptr @dpu_core_perf_crtc_update._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"crtc:%d stop_req:%d core_clk:%llu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"crtc=%d p=%d new_bw=%llu,old_bw=%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crtc=%d disable\0A\00", [47 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_update._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]crtc-%d: failed to update bus bw vote\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_update._entry_ptr.28 = internal global ptr @dpu_core_perf_crtc_update._entry.26, section ".printk_index", align 4
@dpu_core_perf_crtc_update._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[drm:%s:%d] [dpu error]failed to set %s clock rate %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@dpu_core_perf_crtc_update._entry_ptr.31 = internal global ptr @dpu_core_perf_crtc_update._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"update clk rate = %lld HZ\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"core_perf\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_core_clk_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_clk_rate\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable_bw_release\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"threshold_low\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"threshold_high\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min_core_ib\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min_llcc_ib\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min_dram_ib\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"perf_mode\00", [22 x i8] zeroinitializer }, align 32
@dpu_core_perf_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @_dpu_core_perf_mode_read, ptr @_dpu_core_perf_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fix_core_clk_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fix_core_ib_vote\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fix_core_ab_vote\00", [47 x i8] zeroinitializer }, align 32
@dpu_core_perf_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.46, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpu_core_perf_destroy\00", [42 x i8] zeroinitializer }, align 32
@dpu_core_perf_destroy._entry_ptr = internal global ptr @dpu_core_perf_destroy._entry, section ".printk_index", align 4
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"optional max core clk rate, use default\0A\00", [55 x i8] zeroinitializer }, align 32
@dpu_core_perf_init.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.49, ptr @.str.2, ptr @.str.47, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpu_core_perf_init\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[drm:%s:%d] optional max core clk rate, use default\0A\00", [43 x i8] zeroinitializer }, align 32
@_dpu_core_perf_calc_crtc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.51, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_dpu_core_perf_calc_crtc\00", [39 x i8] zeroinitializer }, align 32
@_dpu_core_perf_calc_crtc._entry_ptr = internal global ptr @_dpu_core_perf_calc_crtc._entry, section ".printk_index", align 4
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"crtc=%d clk_rate=%llu core_ib=%llu core_ab=%llu\0A\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_cmd_release_bw = external dso_local global %struct.tracepoint, align 4
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_cmd_release_bw.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"crtc=%d bw=%llu paths:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_perf_crtc_update = external dso_local global %struct.tracepoint, align 4
@trace_dpu_perf_crtc_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk:%llu\0A\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_core_perf_update_clk = external dso_local global %struct.tracepoint, align 4
@trace_dpu_core_perf_update_clk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mode %d min_mdp_clk %llu min_bus_vote %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@_dpu_core_perf_mode_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] fix performance mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_dpu_core_perf_mode_write\00", [38 x i8] zeroinitializer }, align 32
@_dpu_core_perf_mode_write._entry_ptr = internal global ptr @_dpu_core_perf_mode_write._entry, section ".printk_index", align 4
@_dpu_core_perf_mode_write._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] minimum performance mode\0A\00", [62 x i8] zeroinitializer }, align 32
@_dpu_core_perf_mode_write._entry_ptr.63 = internal global ptr @_dpu_core_perf_mode_write._entry.61, section ".printk_index", align 4
@_dpu_core_perf_mode_write._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] normal performance mode\0A\00", [63 x i8] zeroinitializer }, align 32
@_dpu_core_perf_mode_write._entry_ptr.66 = internal global ptr @_dpu_core_perf_mode_write._entry.64, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 152, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 158, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 181, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 190, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 194, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 197, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 200, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 263, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 269, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 281, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 334, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 340, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 347, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 365, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 381, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 393, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 410, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 416, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 485, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 487, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 489, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 491, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 493, i32 21 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 495, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 497, i32 21 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 499, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 501, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 503, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [24 x i8] c"dpu_core_perf_mode_fops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 473, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 505, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 507, i32 21 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 509, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 519, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 540, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 115, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 135, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 94, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 108, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 231, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 317, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 465, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 439, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 445, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [49 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 450, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @_dpu_core_perf_calc_crtc._entry, ptr @_dpu_core_perf_calc_crtc._entry_ptr, ptr @_dpu_core_perf_mode_write._entry, ptr @_dpu_core_perf_mode_write._entry.61, ptr @_dpu_core_perf_mode_write._entry.64, ptr @_dpu_core_perf_mode_write._entry_ptr, ptr @_dpu_core_perf_mode_write._entry_ptr.63, ptr @_dpu_core_perf_mode_write._entry_ptr.66, ptr @dpu_core_perf_crtc_check._entry, ptr @dpu_core_perf_crtc_check._entry.12, ptr @dpu_core_perf_crtc_check._entry.3, ptr @dpu_core_perf_crtc_check._entry.9, ptr @dpu_core_perf_crtc_check._entry_ptr, ptr @dpu_core_perf_crtc_check._entry_ptr.11, ptr @dpu_core_perf_crtc_check._entry_ptr.14, ptr @dpu_core_perf_crtc_check._entry_ptr.5, ptr @dpu_core_perf_crtc_release_bw._entry, ptr @dpu_core_perf_crtc_release_bw._entry.16, ptr @dpu_core_perf_crtc_release_bw._entry_ptr, ptr @dpu_core_perf_crtc_release_bw._entry_ptr.18, ptr @dpu_core_perf_crtc_update._entry, ptr @dpu_core_perf_crtc_update._entry.21, ptr @dpu_core_perf_crtc_update._entry.26, ptr @dpu_core_perf_crtc_update._entry.29, ptr @dpu_core_perf_crtc_update._entry_ptr, ptr @dpu_core_perf_crtc_update._entry_ptr.22, ptr @dpu_core_perf_crtc_update._entry_ptr.28, ptr @dpu_core_perf_crtc_update._entry_ptr.31, ptr @dpu_core_perf_destroy._entry, ptr @dpu_core_perf_destroy._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @dpu_core_perf_mode_fops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_check._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_check._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_release_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_release_bw._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_update._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_update._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_crtc_update._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_core_perf_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_core_perf_calc_crtc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_core_perf_mode_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_core_perf_mode_write._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_core_perf_mode_write._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_crtc_check(ptr noundef readonly %crtc, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  %tobool1.not = icmp eq ptr %state, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 152) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %catalog = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %catalog, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end7, label %dpu_crtc_get_client_type.exit

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 158) #11
  br label %cleanup

dpu_crtc_get_client_type.exit:                    ; preds = %if.end
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %tobool1.i = icmp eq ptr %9, null
  br i1 %tobool1.i, label %dpu_crtc_get_client_type.exit.cleanup_crit_edge, label %if.end13

dpu_crtc_get_client_type.exit.cleanup_crit_edge:  ; preds = %dpu_crtc_get_client_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %dpu_crtc_get_client_type.exit
  %new_perf = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5
  %tobool.not.i373 = icmp eq ptr %5, null
  %tobool7.not.i = icmp eq ptr %new_perf, null
  %or.cond387 = select i1 %tobool.not.i373, i1 true, i1 %tobool7.not.i
  br i1 %or.cond387, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.51, i32 noundef 115) #11
  br label %dpu_crtc_get_client_type.exit379

if.end.i:                                         ; preds = %if.end13
  %10 = call ptr @memset(ptr %new_perf, i32 0, i32 24)
  %perf_tune.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 6
  %11 = ptrtoint ptr %perf_tune.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %perf_tune.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.else21.i [
    i32 1, label %if.then9.i
    i32 2, label %if.then14.i
  ]

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memset(ptr %new_perf, i32 0, i32 24)
  br label %if.end30.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %fix_core_ab_vote.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 10
  %15 = ptrtoint ptr %fix_core_ab_vote.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fix_core_ab_vote.i, align 8
  %bw_ctl16.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %bw_ctl16.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %bw_ctl16.i, align 8
  %fix_core_ib_vote.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 9
  %18 = ptrtoint ptr %fix_core_ib_vote.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fix_core_ib_vote.i, align 8
  %20 = ptrtoint ptr %new_perf to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %new_perf, align 8
  %fix_core_clk_rate.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 8
  %21 = ptrtoint ptr %fix_core_clk_rate.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fix_core_clk_rate.i, align 8
  %core_clk_rate20.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %core_clk_rate20.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %core_clk_rate20.i, align 8
  br label %if.end30.i

if.else21.i:                                      ; preds = %if.end.i
  %24 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc, align 8
  %plane_list.i.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 30, i32 18
  %26 = ptrtoint ptr %plane_list.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn299.i.i = load ptr, ptr %plane_list.i.i, align 4
  %cmp.not300.i.i = icmp eq ptr %.pn299.i.i, %plane_list.i.i
  br i1 %cmp.not300.i.i, label %if.else21.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.else21.i.for.end.i.i_crit_edge:                ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.else21.i
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state.i, align 4
  %plane_mask.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %plane_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %plane_mask.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn302.i.i = phi ptr [ %.pn299.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %crtc_plane_bw.0301.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %crtc_plane_bw.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %index.i.i.i.i = getelementptr i8, ptr %.pn302.i.i, i32 480
  %31 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %32
  %and.i.i = and i32 %shl.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %state5.i.i = getelementptr i8, ptr %.pn302.i.i, i32 488
  %33 = ptrtoint ptr %state5.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state5.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %34, null
  br i1 %tobool8.not.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %plane_fetch_bw.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %plane_fetch_bw.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %plane_fetch_bw.i.i, align 8
  %add.i.i = add i64 %36, %crtc_plane_bw.0301.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %crtc_plane_bw.1.i.i = phi i64 [ %add.i.i, %if.end.i.i ], [ %crtc_plane_bw.0301.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %crtc_plane_bw.0301.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %37 = ptrtoint ptr %.pn302.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i = load ptr, ptr %.pn302.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %plane_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.else21.i.for.end.i.i_crit_edge
  %crtc_plane_bw.0.lcssa.i.i = phi i64 [ 0, %if.else21.i.for.end.i.i_crit_edge ], [ %crtc_plane_bw.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %38 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %catalog, align 8
  %bw_inefficiency_factor.i.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %39, i32 0, i32 23, i32 15
  %40 = ptrtoint ptr %bw_inefficiency_factor.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bw_inefficiency_factor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool16.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool16.not.i.i, label %for.end.i.i._dpu_core_perf_calc_bw.exit.i_crit_edge, label %if.end208.i.i

for.end.i.i._dpu_core_perf_calc_bw.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_dpu_core_perf_calc_bw.exit.i

if.end208.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i32 %41 to i64
  %mul.i.i = mul i64 %crtc_plane_bw.0.lcssa.i.i, %conv.i.i
  %42 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i, i32 0) #12, !srcloc !144
  %asmresult.i.i.i = extractvalue { i64, i32 } %42, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %42, 1
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !145
  %asmresult10.i.i.i = extractvalue { i64, i32 } %43, 0
  %crtc_plane_bw.2.i.i = lshr i64 %asmresult10.i.i.i, 6
  br label %_dpu_core_perf_calc_bw.exit.i

_dpu_core_perf_calc_bw.exit.i:                    ; preds = %if.end208.i.i, %for.end.i.i._dpu_core_perf_calc_bw.exit.i_crit_edge
  %crtc_plane_bw.3.i.i = phi i64 [ %crtc_plane_bw.2.i.i, %if.end208.i.i ], [ %crtc_plane_bw.0.lcssa.i.i, %for.end.i.i._dpu_core_perf_calc_bw.exit.i_crit_edge ]
  %bw_ctl23.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %bw_ctl23.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %crtc_plane_bw.3.i.i, ptr %bw_ctl23.i, align 8
  %45 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %catalog, align 8
  %min_dram_ib.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %46, i32 0, i32 23, i32 4
  %47 = ptrtoint ptr %min_dram_ib.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %min_dram_ib.i, align 4
  %conv.i = zext i32 %48 to i64
  %49 = ptrtoint ptr %new_perf to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i, ptr %new_perf, align 8
  %adjusted_mode.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7
  %vtotal.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 9
  %50 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vtotal.i.i, align 4
  %conv.i62.i = zext i16 %51 to i32
  %hdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %state, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hdisplay.i.i, align 4
  %conv1.i.i = zext i16 %53 to i32
  %mul.i63.i = mul nuw i32 %conv1.i.i, %conv.i62.i
  %call.i.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode.i.i) #8
  %mul2.i.i = mul i32 %mul.i63.i, %call.i.i
  %conv3.i.i = sext i32 %mul2.i.i to i64
  %54 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %crtc, align 8
  %plane_list.i64.i = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 30, i32 18
  %56 = ptrtoint ptr %plane_list.i64.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn319.i.i = load ptr, ptr %plane_list.i64.i, align 4
  %cmp.not320.i.i = icmp eq ptr %.pn319.i.i, %plane_list.i64.i
  br i1 %cmp.not320.i.i, label %_dpu_core_perf_calc_bw.exit.i.for.end.i78.i_crit_edge, label %for.body.lr.ph.i66.i

_dpu_core_perf_calc_bw.exit.i.for.end.i78.i_crit_edge: ; preds = %_dpu_core_perf_calc_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i78.i

for.body.lr.ph.i66.i:                             ; preds = %_dpu_core_perf_calc_bw.exit.i
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state.i, align 4
  %plane_mask.i65.i = getelementptr inbounds %struct.drm_crtc_state, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %plane_mask.i65.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %plane_mask.i65.i, align 4
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %for.inc.i76.i.for.body.i71.i_crit_edge, %for.body.lr.ph.i66.i
  %.pn322.i.i = phi ptr [ %.pn319.i.i, %for.body.lr.ph.i66.i ], [ %.pn.i74.i, %for.inc.i76.i.for.body.i71.i_crit_edge ]
  %crtc_clk.0321.i.i = phi i64 [ %conv3.i.i, %for.body.lr.ph.i66.i ], [ %crtc_clk.1.i.i, %for.inc.i76.i.for.body.i71.i_crit_edge ]
  %index.i.i.i67.i = getelementptr i8, ptr %.pn322.i.i, i32 480
  %61 = ptrtoint ptr %index.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index.i.i.i67.i, align 4
  %shl.i.i68.i = shl nuw i32 1, %62
  %and.i69.i = and i32 %shl.i.i68.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69.i)
  %tobool.not.i70.i = icmp eq i32 %and.i69.i, 0
  br i1 %tobool.not.i70.i, label %for.body.i71.i.for.inc.i76.i_crit_edge, label %if.else.i72.i

for.body.i71.i.for.inc.i76.i_crit_edge:           ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i76.i

if.else.i72.i:                                    ; preds = %for.body.i71.i
  %state11.i.i = getelementptr i8, ptr %.pn322.i.i, i32 488
  %63 = ptrtoint ptr %state11.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state11.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %64, null
  br i1 %tobool14.not.i.i, label %if.else.i72.i.for.inc.i76.i_crit_edge, label %if.end.i73.i

if.else.i72.i.for.inc.i76.i_crit_edge:            ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i76.i

if.end.i73.i:                                     ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  %plane_clk.i.i = getelementptr inbounds %struct.dpu_plane_state, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %plane_clk.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %plane_clk.i.i, align 8
  %67 = tail call i64 @llvm.umax.i64(i64 %66, i64 %crtc_clk.0321.i.i) #8
  br label %for.inc.i76.i

for.inc.i76.i:                                    ; preds = %if.end.i73.i, %if.else.i72.i.for.inc.i76.i_crit_edge, %for.body.i71.i.for.inc.i76.i_crit_edge
  %crtc_clk.1.i.i = phi i64 [ %67, %if.end.i73.i ], [ %crtc_clk.0321.i.i, %if.else.i72.i.for.inc.i76.i_crit_edge ], [ %crtc_clk.0321.i.i, %for.body.i71.i.for.inc.i76.i_crit_edge ]
  %68 = ptrtoint ptr %.pn322.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i74.i = load ptr, ptr %.pn322.i.i, align 4
  %cmp.not.i75.i = icmp eq ptr %.pn.i74.i, %plane_list.i64.i
  br i1 %cmp.not.i75.i, label %for.inc.i76.i.for.end.i78.i_crit_edge, label %for.inc.i76.i.for.body.i71.i_crit_edge

for.inc.i76.i.for.body.i71.i_crit_edge:           ; preds = %for.inc.i76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71.i

for.inc.i76.i.for.end.i78.i_crit_edge:            ; preds = %for.inc.i76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i78.i

for.end.i78.i:                                    ; preds = %for.inc.i76.i.for.end.i78.i_crit_edge, %_dpu_core_perf_calc_bw.exit.i.for.end.i78.i_crit_edge
  %crtc_clk.0.lcssa.i.i = phi i64 [ %conv3.i.i, %_dpu_core_perf_calc_bw.exit.i.for.end.i78.i_crit_edge ], [ %crtc_clk.1.i.i, %for.inc.i76.i.for.end.i78.i_crit_edge ]
  %69 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %catalog, align 8
  %clk_inefficiency_factor.i.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %70, i32 0, i32 23, i32 14
  %71 = ptrtoint ptr %clk_inefficiency_factor.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clk_inefficiency_factor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool25.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool25.not.i.i, label %for.end.i78.i._dpu_core_perf_calc_clk.exit.i_crit_edge, label %if.end222.i.i

for.end.i78.i._dpu_core_perf_calc_clk.exit.i_crit_edge: ; preds = %for.end.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_dpu_core_perf_calc_clk.exit.i

if.end222.i.i:                                    ; preds = %for.end.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv27.i.i = zext i32 %72 to i64
  %mul28.i.i = mul i64 %crtc_clk.0.lcssa.i.i, %conv27.i.i
  %73 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul28.i.i, i32 0) #12, !srcloc !144
  %asmresult.i.i79.i = extractvalue { i64, i32 } %73, 0
  %asmresult4.i.i80.i = extractvalue { i64, i32 } %73, 1
  %74 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul28.i.i, i64 %asmresult.i.i79.i, i32 %asmresult4.i.i80.i) #12, !srcloc !145
  %asmresult10.i.i81.i = extractvalue { i64, i32 } %74, 0
  %crtc_clk.2.i.i = lshr i64 %asmresult10.i.i81.i, 6
  br label %_dpu_core_perf_calc_clk.exit.i

_dpu_core_perf_calc_clk.exit.i:                   ; preds = %if.end222.i.i, %for.end.i78.i._dpu_core_perf_calc_clk.exit.i_crit_edge
  %crtc_clk.3.i.i = phi i64 [ %crtc_clk.2.i.i, %if.end222.i.i ], [ %crtc_clk.0.lcssa.i.i, %for.end.i78.i._dpu_core_perf_calc_clk.exit.i_crit_edge ]
  %core_clk_rate28.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %core_clk_rate28.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %crtc_clk.3.i.i, ptr %core_clk_rate28.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %_dpu_core_perf_calc_clk.exit.i, %if.then14.i, %if.then9.i
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base.i, align 8
  %core_clk_rate31.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %core_clk_rate31.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %core_clk_rate31.i, align 8
  %80 = ptrtoint ptr %new_perf to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %new_perf, align 8
  %bw_ctl33.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %bw_ctl33.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %bw_ctl33.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %77, i64 noundef %79, i64 noundef %81, i64 noundef %83) #8
  br label %dpu_crtc_get_client_type.exit379

dpu_crtc_get_client_type.exit379:                 ; preds = %if.end30.i, %do.end.i
  %bw_ctl = getelementptr inbounds %struct.dpu_crtc_state, ptr %state, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %bw_ctl to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %bw_ctl, align 8
  %86 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %state.i, align 4
  %tobool1.i376 = icmp eq ptr %87, null
  %phi.cast.i377 = zext i1 %tobool1.i376 to i32
  %88 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %89, i32 0, i32 30, i32 20
  br label %for.cond

for.cond:                                         ; preds = %if.else242.for.cond_crit_edge, %dpu_crtc_get_client_type.exit379
  %.pn.in = phi ptr [ %crtc_list, %dpu_crtc_get_client_type.exit379 ], [ %.pn, %if.else242.for.cond_crit_edge ]
  %bw_sum_of_intfs.0 = phi i64 [ %85, %dpu_crtc_get_client_type.exit379 ], [ %bw_sum_of_intfs.1, %if.else242.for.cond_crit_edge ]
  %90 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn = load ptr, ptr %.pn.in, align 4
  %tmp_crtc.0 = getelementptr i8, ptr %.pn, i32 -8
  %91 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %crtc, align 8
  %crtc_list22 = getelementptr inbounds %struct.drm_device, ptr %92, i32 0, i32 30, i32 20
  %cmp23.not = icmp eq ptr %.pn, %crtc_list22
  br i1 %cmp23.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %enabled = getelementptr i8, ptr %.pn, i32 160
  %93 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %enabled, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool24.not = icmp eq i8 %94, 0
  br i1 %tobool24.not, label %for.body.if.end230_crit_edge, label %land.lhs.true

for.body.if.end230_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

land.lhs.true:                                    ; preds = %for.body
  %tobool.not.i380 = icmp eq ptr %tmp_crtc.0, null
  br i1 %tobool.not.i380, label %land.lhs.true.dpu_crtc_get_client_type.exit385_crit_edge, label %land.rhs.i384

land.lhs.true.dpu_crtc_get_client_type.exit385_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpu_crtc_get_client_type.exit385

land.rhs.i384:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %state.i381 = getelementptr i8, ptr %.pn, i32 716
  %95 = ptrtoint ptr %state.i381 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %state.i381, align 4
  %tobool1.i382 = icmp eq ptr %96, null
  %phi.cast.i383 = zext i1 %tobool1.i382 to i32
  br label %dpu_crtc_get_client_type.exit385

dpu_crtc_get_client_type.exit385:                 ; preds = %land.rhs.i384, %land.lhs.true.dpu_crtc_get_client_type.exit385_crit_edge
  %97 = phi i32 [ 1, %land.lhs.true.dpu_crtc_get_client_type.exit385_crit_edge ], [ %phi.cast.i383, %land.rhs.i384 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %phi.cast.i377)
  %cmp26 = icmp ne i32 %97, %phi.cast.i377
  %cmp28.not = icmp eq ptr %tmp_crtc.0, %crtc
  %or.cond372 = select i1 %cmp26, i1 true, i1 %cmp28.not
  br i1 %or.cond372, label %dpu_crtc_get_client_type.exit385.if.end230_crit_edge, label %if.then29

dpu_crtc_get_client_type.exit385.if.end230_crit_edge: ; preds = %dpu_crtc_get_client_type.exit385
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

if.then29:                                        ; preds = %dpu_crtc_get_client_type.exit385
  call void @__sanitizer_cov_trace_pc() #10
  %state31 = getelementptr i8, ptr %.pn, i32 716
  %98 = ptrtoint ptr %state31 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %state31, align 4
  %base = getelementptr i8, ptr %.pn, i32 120
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %base, align 8
  %bw_ctl35 = getelementptr inbounds %struct.dpu_crtc_state, ptr %99, i32 0, i32 5, i32 1
  %102 = ptrtoint ptr %bw_ctl35 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %bw_ctl35, align 8
  %bw_control = getelementptr inbounds %struct.dpu_crtc_state, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %bw_control to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bw_control, align 4, !range !146
  %106 = zext i8 %105 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %101, i64 noundef %103, i32 noundef %106) #8
  %107 = ptrtoint ptr %bw_ctl35 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %bw_ctl35, align 8
  %add = add i64 %108, %bw_sum_of_intfs.0
  br label %if.end230

if.end230:                                        ; preds = %if.then29, %dpu_crtc_get_client_type.exit385.if.end230_crit_edge, %for.body.if.end230_crit_edge
  %bw_sum_of_intfs.1 = phi i64 [ %add, %if.then29 ], [ %bw_sum_of_intfs.0, %dpu_crtc_get_client_type.exit385.if.end230_crit_edge ], [ %bw_sum_of_intfs.0, %for.body.if.end230_crit_edge ]
  %sub = add i64 %bw_sum_of_intfs.1, 999
  %109 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i32 0) #12, !srcloc !144
  %asmresult.i = extractvalue { i64, i32 } %109, 0
  %asmresult4.i = extractvalue { i64, i32 } %109, 1
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #12, !srcloc !145
  %asmresult10.i = extractvalue { i64, i32 } %110, 0
  %extract370 = lshr i64 %asmresult10.i, 9
  %extract.t371 = trunc i64 %extract370 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %extract.t371) #8
  %111 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %catalog, align 8
  %max_bw_high = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %112, i32 0, i32 23, i32 1
  %113 = ptrtoint ptr %max_bw_high to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_bw_high, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool235.not = icmp eq i32 %114, 0
  br i1 %tobool235.not, label %do.end239, label %if.else242

do.end239:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 197) #11
  br label %cleanup

if.else242:                                       ; preds = %if.end230
  %cmp243 = icmp ult i32 %114, %extract.t371
  br i1 %cmp243, label %do.end248, label %if.else242.for.cond_crit_edge

if.else242.for.cond_crit_edge:                    ; preds = %if.else242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end248:                                        ; preds = %if.else242
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t371.le = trunc i64 %extract370 to i32
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 201, i32 noundef %extract.t371.le, i32 noundef %114) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end248, %do.end239, %for.cond.cleanup_crit_edge, %dpu_crtc_get_client_type.exit.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -7, %do.end248 ], [ -7, %do.end239 ], [ 0, %do.end7 ], [ -22, %do.end ], [ 0, %dpu_crtc_get_client_type.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_core_perf_crtc_release_bw(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 263) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %catalog = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %catalog, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 269) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %bandwidth_ref = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %bandwidth_ref, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bandwidth_ref, ptr %bandwidth_ref, i32 1, ptr elementtype(i32) %bandwidth_ref) #8, !srcloc !148
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %enable_bw_release = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 7
  %9 = ptrtoint ptr %enable_bw_release to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_bw_release, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 8
  tail call fastcc void @trace_dpu_cmd_release_bw(i32 noundef %12)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %14) #8
  %bw_ctl = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 19, i32 1
  %15 = ptrtoint ptr %bw_ctl to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %bw_ctl, align 8
  tail call fastcc void @_dpu_core_perf_crtc_update_bus(ptr noundef %5, ptr noundef nonnull %crtc)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_cmd_release_bw(i32 noundef %crtc_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_cmd_release_bw, i32 0, i32 1), ptr blockaddress(@trace_dpu_cmd_release_bw, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !150

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !152
  %call42 = tail call i32 @__traceiter_dpu_cmd_release_bw(ptr noundef null, i32 noundef %crtc_id) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !153
  %13 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_cmd_release_bw, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_cmd_release_bw, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_dpu_cmd_release_bw.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpu_cmd_release_bw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 104, ptr noundef nonnull @.str.54) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !155
  %31 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_core_perf_crtc_update_bus(ptr nocapture noundef readonly %kms, ptr noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %crtc, null
  br i1 %tobool.not.i, label %entry.dpu_crtc_get_client_type.exit_crit_edge, label %land.rhs.i

entry.dpu_crtc_get_client_type.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpu_crtc_get_client_type.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %tobool1.i = icmp eq ptr %1, null
  %phi.cast.i = zext i1 %tobool1.i to i32
  br label %dpu_crtc_get_client_type.exit

dpu_crtc_get_client_type.exit:                    ; preds = %land.rhs.i, %entry.dpu_crtc_get_client_type.exit_crit_edge
  %2 = phi i32 [ 1, %entry.dpu_crtc_get_client_type.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %3 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 20
  %5 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn35 = load ptr, ptr %crtc_list, align 4
  %cmp.not38 = icmp eq ptr %.pn35, %crtc_list
  br i1 %cmp.not38, label %dpu_crtc_get_client_type.exit.for.end_crit_edge, label %for.body.lr.ph

dpu_crtc_get_client_type.exit.for.end_crit_edge:  ; preds = %dpu_crtc_get_client_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %dpu_crtc_get_client_type.exit
  %num_paths = getelementptr inbounds %struct.dpu_kms, ptr %kms, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn41 = phi ptr [ %.pn35, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %perf.sroa.0.040 = phi i64 [ 0, %for.body.lr.ph ], [ %perf.sroa.0.1, %for.inc.for.body_crit_edge ]
  %perf.sroa.6.039 = phi i64 [ 0, %for.body.lr.ph ], [ %perf.sroa.6.1, %for.inc.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn41, i32 160
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tmp_crtc.042 = getelementptr i8, ptr %.pn41, i32 -8
  %tobool.not.i2 = icmp eq ptr %tmp_crtc.042, null
  br i1 %tobool.not.i2, label %land.lhs.true.dpu_crtc_get_client_type.exit7_crit_edge, label %land.rhs.i6

land.lhs.true.dpu_crtc_get_client_type.exit7_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpu_crtc_get_client_type.exit7

land.rhs.i6:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %state.i3 = getelementptr i8, ptr %.pn41, i32 716
  %8 = ptrtoint ptr %state.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i3, align 4
  %tobool1.i4 = icmp eq ptr %9, null
  %phi.cast.i5 = zext i1 %tobool1.i4 to i32
  br label %dpu_crtc_get_client_type.exit7

dpu_crtc_get_client_type.exit7:                   ; preds = %land.rhs.i6, %land.lhs.true.dpu_crtc_get_client_type.exit7_crit_edge
  %10 = phi i32 [ 1, %land.lhs.true.dpu_crtc_get_client_type.exit7_crit_edge ], [ %phi.cast.i5, %land.rhs.i6 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %10)
  %cmp5 = icmp eq i32 %2, %10
  br i1 %cmp5, label %if.then, label %dpu_crtc_get_client_type.exit7.for.inc_crit_edge

dpu_crtc_get_client_type.exit7.for.inc_crit_edge: ; preds = %dpu_crtc_get_client_type.exit7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %dpu_crtc_get_client_type.exit7
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %.pn41, i32 716
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %new_perf = getelementptr inbounds %struct.dpu_crtc_state, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %new_perf to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %new_perf, align 8
  %15 = tail call i64 @llvm.umax.i64(i64 %perf.sroa.0.040, i64 %14)
  %bw_ctl = getelementptr inbounds %struct.dpu_crtc_state, ptr %12, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %bw_ctl to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bw_ctl, align 8
  %add = add i64 %17, %perf.sroa.6.039
  %base = getelementptr i8, ptr %.pn41, i32 120
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 8
  %20 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_paths, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.56, i32 noundef %19, i64 noundef %17, i32 noundef %21) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %dpu_crtc_get_client_type.exit7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %perf.sroa.6.1 = phi i64 [ %add, %if.then ], [ %perf.sroa.6.039, %dpu_crtc_get_client_type.exit7.for.inc_crit_edge ], [ %perf.sroa.6.039, %for.body.for.inc_crit_edge ]
  %perf.sroa.0.1 = phi i64 [ %15, %if.then ], [ %perf.sroa.0.040, %dpu_crtc_get_client_type.exit7.for.inc_crit_edge ], [ %perf.sroa.0.040, %for.body.for.inc_crit_edge ]
  %22 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn41, align 4
  %23 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc, align 8
  %crtc_list3 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 20
  %cmp.not = icmp eq ptr %.pn, %crtc_list3
  br i1 %cmp.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t46 = trunc i64 %perf.sroa.0.1 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %dpu_crtc_get_client_type.exit.for.end_crit_edge
  %perf.sroa.6.0.lcssa = phi i64 [ 0, %dpu_crtc_get_client_type.exit.for.end_crit_edge ], [ %perf.sroa.6.1, %for.end.loopexit ]
  %perf.sroa.0.0.lcssa.off0 = phi i32 [ 0, %dpu_crtc_get_client_type.exit.for.end_crit_edge ], [ %extract.t46, %for.end.loopexit ]
  %num_paths22 = getelementptr inbounds %struct.dpu_kms, ptr %kms, i32 0, i32 24
  %25 = ptrtoint ptr %num_paths22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_paths22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  br i1 %tobool23.not, label %for.end.cleanup_crit_edge, label %if.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %mul = mul i32 %26, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %perf.sroa.6.0.lcssa)
  %cmp204 = icmp ult i64 %perf.sroa.6.0.lcssa, 4294967296
  br i1 %cmp204, label %if.then209, label %if.else215, !prof !151

if.then209:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %conv210 = trunc i64 %perf.sroa.6.0.lcssa to i32
  %div213 = udiv i32 %conv210, %mul
  br label %if.end219

if.else215:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %perf.sroa.6.0.lcssa) #12, !srcloc !156
  %asmresult1.i = extractvalue { i64, i64 } %27, 1
  %extract.t33 = trunc i64 %asmresult1.i to i32
  br label %if.end219

if.end219:                                        ; preds = %if.else215, %if.then209
  %avg_bw.0.off0 = phi i32 [ %div213, %if.then209 ], [ %extract.t33, %if.else215 ]
  %28 = ptrtoint ptr %num_paths22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_paths22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22344.not = icmp eq i32 %29, 0
  br i1 %cmp22344.not, label %if.end219.cleanup_crit_edge, label %if.end219.for.body225_crit_edge

if.end219.for.body225_crit_edge:                  ; preds = %if.end219
  br label %for.body225

if.end219.cleanup_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body225:                                      ; preds = %for.body225.for.body225_crit_edge, %if.end219.for.body225_crit_edge
  %i.045 = phi i32 [ %inc, %for.body225.for.body225_crit_edge ], [ 0, %if.end219.for.body225_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_kms, ptr %kms, i32 0, i32 23, i32 %i.045
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call229 = tail call i32 @icc_set_bw(ptr noundef %31, i32 noundef %avg_bw.0.off0, i32 noundef %perf.sroa.0.0.lcssa.off0) #8
  %inc = add nuw i32 %i.045, 1
  %32 = ptrtoint ptr %num_paths22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_paths22, align 4
  %cmp223 = icmp ult i32 %inc, %33
  br i1 %cmp223, label %for.body225.for.body225_crit_edge, label %for.body225.cleanup_crit_edge

for.body225.cleanup_crit_edge:                    ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body225.for.body225_crit_edge:                ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body225

cleanup:                                          ; preds = %for.body225.cleanup_crit_edge, %if.end219.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_crtc_update(ptr noundef %crtc, i32 noundef %params_changed, i1 noundef zeroext %stop_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef 334) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %catalog = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %catalog, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20, i32 noundef 340) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 8
  %conv = zext i1 %stop_req to i32
  %core_clk_rate = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 4
  %12 = ptrtoint ptr %core_clk_rate to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %core_clk_rate, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %conv, i64 noundef %13) #8
  %cur_perf = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 19
  %new_perf = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 11
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  %brmerge = or i1 %tobool15.not, %stop_req
  br i1 %brmerge, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params_changed)
  %tobool19.not = icmp eq i32 %params_changed, 0
  %bw_ctl29 = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %bw_ctl29 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bw_ctl29, align 8
  %bw_ctl30 = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %bw_ctl30 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bw_ctl30, align 8
  br i1 %tobool19.not, label %land.lhs.true28.critedge, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp = icmp ugt i64 %17, %19
  br i1 %cmp, label %land.lhs.true20.land.lhs.true49.sink.split_crit_edge, label %lor.lhs.false

land.lhs.true20.land.lhs.true49.sink.split_crit_edge: ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true49.sink.split

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %20 = ptrtoint ptr %new_perf to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %new_perf, align 8
  %22 = ptrtoint ptr %cur_perf to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cur_perf, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp24 = icmp ugt i64 %21, %23
  br i1 %cmp24, label %lor.lhs.false.land.lhs.true49.sink.split_crit_edge, label %lor.lhs.false.land.lhs.true49_crit_edge

lor.lhs.false.land.lhs.true49_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true49

lor.lhs.false.land.lhs.true49.sink.split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true49.sink.split

land.lhs.true28.critedge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp31 = icmp ult i64 %17, %19
  br i1 %cmp31, label %land.lhs.true28.critedge.land.lhs.true56.critedge.sink.split_crit_edge, label %lor.lhs.false33

land.lhs.true28.critedge.land.lhs.true56.critedge.sink.split_crit_edge: ; preds = %land.lhs.true28.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56.critedge.sink.split

lor.lhs.false33:                                  ; preds = %land.lhs.true28.critedge
  %24 = ptrtoint ptr %new_perf to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %new_perf, align 8
  %26 = ptrtoint ptr %cur_perf to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cur_perf, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp36 = icmp ult i64 %25, %27
  br i1 %cmp36, label %lor.lhs.false33.land.lhs.true56.critedge.sink.split_crit_edge, label %lor.lhs.false33.land.lhs.true56.critedge_crit_edge

lor.lhs.false33.land.lhs.true56.critedge_crit_edge: ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56.critedge

lor.lhs.false33.land.lhs.true56.critedge.sink.split_crit_edge: ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56.critedge.sink.split

land.lhs.true49.sink.split:                       ; preds = %lor.lhs.false.land.lhs.true49.sink.split_crit_edge, %land.lhs.true20.land.lhs.true49.sink.split_crit_edge
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base, align 8
  %30 = ptrtoint ptr %bw_ctl29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bw_ctl29, align 8
  %32 = ptrtoint ptr %bw_ctl30 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bw_ctl30, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %29, i32 noundef %params_changed, i64 noundef %31, i64 noundef %33) #8
  %34 = ptrtoint ptr %bw_ctl29 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bw_ctl29, align 8
  %36 = ptrtoint ptr %bw_ctl30 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %bw_ctl30, align 8
  %37 = ptrtoint ptr %new_perf to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %new_perf, align 8
  %39 = ptrtoint ptr %cur_perf to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %cur_perf, align 8
  br label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true49.sink.split, %lor.lhs.false.land.lhs.true49_crit_edge
  %update_bus.0179 = phi i1 [ false, %lor.lhs.false.land.lhs.true49_crit_edge ], [ true, %land.lhs.true49.sink.split ]
  %core_clk_rate50 = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %core_clk_rate50 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %core_clk_rate50, align 8
  %core_clk_rate51 = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 19, i32 2
  %42 = ptrtoint ptr %core_clk_rate51 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %core_clk_rate51, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp52 = icmp ugt i64 %41, %43
  br i1 %cmp52, label %land.lhs.true49.if.then61_crit_edge, label %land.lhs.true49.if.end67_crit_edge

land.lhs.true49.if.end67_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true49.if.then61_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

land.lhs.true56.critedge.sink.split:              ; preds = %lor.lhs.false33.land.lhs.true56.critedge.sink.split_crit_edge, %land.lhs.true28.critedge.land.lhs.true56.critedge.sink.split_crit_edge
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base, align 8
  %46 = ptrtoint ptr %bw_ctl29 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bw_ctl29, align 8
  %48 = ptrtoint ptr %bw_ctl30 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bw_ctl30, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %45, i32 noundef 0, i64 noundef %47, i64 noundef %49) #8
  %50 = ptrtoint ptr %bw_ctl29 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %bw_ctl29, align 8
  %52 = ptrtoint ptr %bw_ctl30 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %bw_ctl30, align 8
  %53 = ptrtoint ptr %new_perf to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %new_perf, align 8
  %55 = ptrtoint ptr %cur_perf to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %cur_perf, align 8
  br label %land.lhs.true56.critedge

land.lhs.true56.critedge:                         ; preds = %land.lhs.true56.critedge.sink.split, %lor.lhs.false33.land.lhs.true56.critedge_crit_edge
  %update_bus.0176 = phi i1 [ false, %lor.lhs.false33.land.lhs.true56.critedge_crit_edge ], [ true, %land.lhs.true56.critedge.sink.split ]
  %core_clk_rate57 = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %core_clk_rate57 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %core_clk_rate57, align 8
  %core_clk_rate58 = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 19, i32 2
  %58 = ptrtoint ptr %core_clk_rate58 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %core_clk_rate58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %59)
  %cmp59 = icmp ult i64 %57, %59
  br i1 %cmp59, label %land.lhs.true56.critedge.if.then61_crit_edge, label %land.lhs.true56.critedge.if.end67_crit_edge

land.lhs.true56.critedge.if.end67_crit_edge:      ; preds = %land.lhs.true56.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true56.critedge.if.then61_crit_edge:     ; preds = %land.lhs.true56.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true56.critedge.if.then61_crit_edge, %land.lhs.true49.if.then61_crit_edge
  %update_bus.0175 = phi i1 [ %update_bus.0176, %land.lhs.true56.critedge.if.then61_crit_edge ], [ %update_bus.0179, %land.lhs.true49.if.then61_crit_edge ]
  %core_clk_rate62 = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %core_clk_rate62 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %core_clk_rate62, align 8
  %core_clk_rate63 = getelementptr inbounds %struct.dpu_crtc, ptr %crtc, i32 0, i32 19, i32 2
  %62 = ptrtoint ptr %core_clk_rate63 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %core_clk_rate63, align 8
  br label %if.end67

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %64) #8
  %65 = call ptr @memset(ptr %cur_perf, i32 0, i32 24)
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then61, %land.lhs.true56.critedge.if.end67_crit_edge, %land.lhs.true49.if.end67_crit_edge
  %update_clk.0.off0 = phi i1 [ true, %if.else ], [ true, %if.then61 ], [ false, %land.lhs.true56.critedge.if.end67_crit_edge ], [ false, %land.lhs.true49.if.end67_crit_edge ]
  %update_bus.1.off0 = phi i1 [ true, %if.else ], [ %update_bus.0175, %if.then61 ], [ %update_bus.0176, %land.lhs.true56.critedge.if.end67_crit_edge ], [ %update_bus.0179, %land.lhs.true49.if.end67_crit_edge ]
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base, align 8
  %bw_ctl70 = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %bw_ctl70 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bw_ctl70, align 8
  %core_clk_rate71 = getelementptr inbounds %struct.dpu_crtc_state, ptr %9, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %core_clk_rate71 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %core_clk_rate71, align 8
  %conv72 = trunc i64 %71 to i32
  tail call fastcc void @trace_dpu_perf_crtc_update(i32 noundef %67, i64 noundef %69, i32 noundef %conv72, i1 noundef zeroext %stop_req, i1 noundef zeroext %update_bus.1.off0, i1 noundef zeroext %update_clk.0.off0)
  br i1 %update_bus.1.off0, label %if.then77, label %if.end67.if.end89_crit_edge

if.end67.if.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_dpu_core_perf_crtc_update_bus(ptr noundef %5, ptr noundef nonnull %crtc)
  br label %if.end89

if.end89:                                         ; preds = %if.then77, %if.end67.if.end89_crit_edge
  br i1 %update_clk.0.off0, label %if.then91, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91:                                        ; preds = %if.end89
  %perf_tune.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 6
  %min_core_clk.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 6, i32 1
  %72 = ptrtoint ptr %min_core_clk.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %min_core_clk.i, align 8
  %dev.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 1
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 8
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 30, i32 20
  %76 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn37.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not39.i = icmp eq ptr %.pn37.i, %crtc_list.i
  br i1 %cmp.not39.i, label %if.then91.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then91.for.end.i_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then91
  %core_clk.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %clk_rate.040.i = phi i64 [ %73, %for.body.lr.ph.i ], [ %clk_rate.1.i, %for.inc.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr i8, ptr %.pn41.i, i32 160
  %77 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %enabled.i, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr i8, ptr %.pn41.i, i32 716
  %79 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %state.i, align 4
  %core_clk_rate.i = getelementptr inbounds %struct.dpu_crtc_state, ptr %80, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %core_clk_rate.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %core_clk_rate.i, align 8
  %83 = tail call i64 @llvm.umax.i64(i64 %82, i64 %clk_rate.040.i) #8
  %cond.off0.i = trunc i64 %83 to i32
  %84 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %core_clk.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call.i = tail call i32 @clk_round_rate(ptr noundef %87, i32 noundef %cond.off0.i) #8
  %conv10.i = sext i32 %call.i to i64
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %clk_rate.1.i = phi i64 [ %conv10.i, %if.then.i ], [ %clk_rate.040.i, %for.body.i.for.inc.i_crit_edge ]
  %88 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i = load ptr, ptr %.pn41.i, align 4
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 8
  %crtc_list3.i = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 30, i32 20
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list3.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then91.for.end.i_crit_edge
  %clk_rate.0.lcssa.i = phi i64 [ %73, %if.then91.for.end.i_crit_edge ], [ %clk_rate.1.i, %for.inc.i.for.end.i_crit_edge ]
  %91 = ptrtoint ptr %perf_tune.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %perf_tune.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp18.i = icmp eq i32 %92, 2
  br i1 %cmp18.i, label %if.then20.i, label %for.end.i._dpu_core_perf_get_core_clk_rate.exit_crit_edge

for.end.i._dpu_core_perf_get_core_clk_rate.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_dpu_core_perf_get_core_clk_rate.exit

if.then20.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %fix_core_clk_rate.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 8
  %93 = ptrtoint ptr %fix_core_clk_rate.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %fix_core_clk_rate.i, align 8
  br label %_dpu_core_perf_get_core_clk_rate.exit

_dpu_core_perf_get_core_clk_rate.exit:            ; preds = %if.then20.i, %for.end.i._dpu_core_perf_get_core_clk_rate.exit_crit_edge
  %clk_rate.2.i = phi i64 [ %94, %if.then20.i ], [ %clk_rate.0.lcssa.i, %for.end.i._dpu_core_perf_get_core_clk_rate.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.57, i64 noundef %clk_rate.2.i) #8
  %95 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpu_core_perf_update_clk(ptr noundef %96, i1 noundef zeroext %stop_req, i64 noundef %clk_rate.2.i)
  %core_clk1.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 11, i32 3
  %97 = ptrtoint ptr %core_clk1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %core_clk1.i, align 4
  %max_rate.i = getelementptr inbounds %struct.dss_clk, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i171 = icmp eq i32 %100, 0
  %extract.t16.i = trunc i64 %clk_rate.2.i to i32
  %conv.i = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %clk_rate.2.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %clk_rate.2.i, %conv.i
  %spec.select.i = select i1 %cmp.i, i32 %100, i32 %extract.t16.i
  %rate.addr.0.off0.i = select i1 %tobool.not.i171, i32 %extract.t16.i, i32 %spec.select.i
  %rate7.i = getelementptr inbounds %struct.dss_clk, ptr %98, i32 0, i32 3
  %101 = ptrtoint ptr %rate7.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %rate.addr.0.off0.i, ptr %rate7.i, align 4
  %pdev.i = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 19
  %102 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i, align 8
  %dev.i172 = getelementptr inbounds %struct.platform_device, ptr %103, i32 0, i32 3
  %call.i173 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev.i172, i32 noundef %rate.addr.0.off0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool95.not = icmp eq i32 %call.i173, 0
  br i1 %tobool95.not, label %if.end103, label %do.end99

do.end99:                                         ; preds = %_dpu_core_perf_get_core_clk_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %core_clk1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %core_clk1.i, align 4
  %clk_name = getelementptr inbounds %struct.dss_clk, ptr %105, i32 0, i32 1
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.20, i32 noundef 411, ptr noundef %clk_name, i64 noundef %clk_rate.2.i) #11
  br label %cleanup

if.end103:                                        ; preds = %_dpu_core_perf_get_core_clk_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %core_clk_rate to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %clk_rate.2.i, ptr %core_clk_rate, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i64 noundef %clk_rate.2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %do.end99, %if.end89.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i173, %do.end99 ], [ -22, %do.end6 ], [ -22, %do.end ], [ 0, %if.end103 ], [ 0, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_perf_crtc_update(i32 noundef %crtc, i64 noundef %bw_ctl, i32 noundef %core_clk_rate, i1 noundef zeroext %stop_req, i1 noundef zeroext %update_bus, i1 noundef zeroext %update_clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_crtc_update, i32 0, i32 1), ptr blockaddress(@trace_dpu_perf_crtc_update, %do.body)) #8
          to label %if.end53 [label %do.body], !srcloc !150

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i80 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i80
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end74_crit_edge, label %cleanup.thread

cpu_online.exit.if.end74_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !157
  %call47 = tail call i32 @__traceiter_dpu_perf_crtc_update(ptr noundef null, i32 noundef %crtc, i64 noundef %bw_ctl, i32 noundef %core_clk_rate, i1 noundef zeroext %stop_req, i1 noundef zeroext %update_bus, i1 noundef zeroext %update_clk) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !158
  %13 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i78 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i78 to ptr
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i79 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i79, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i79, align 4
  br label %if.end53

if.end53:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i81 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i81 to ptr
  %cpu55 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu55, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i82 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i82, label %if.end53.cpu_online.exit90_crit_edge, label %land.rhs.i.i.i.i84

if.end53.cpu_online.exit90_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit90

land.rhs.i.i.i.i84:                               ; preds = %if.end53
  %.b37.i.i.i.i83 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i83, label %land.rhs.i.i.i.i84.cpu_online.exit90_crit_edge, label %if.then.i.i.i.i85, !prof !151

land.rhs.i.i.i.i84.cpu_online.exit90_crit_edge:   ; preds = %land.rhs.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit90

if.then.i.i.i.i85:                                ; preds = %land.rhs.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit90

cpu_online.exit90:                                ; preds = %if.then.i.i.i.i85, %land.rhs.i.i.i.i84.cpu_online.exit90_crit_edge, %if.end53.cpu_online.exit90_crit_edge
  %div1.i.i.i86 = lshr i32 %20, 5
  %arrayidx.i.i.i87 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i86
  %22 = ptrtoint ptr %arrayidx.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i87, align 4
  %and.i.i.i88 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i88
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i89.not = icmp eq i32 %25, 0
  br i1 %tobool.i89.not, label %cpu_online.exit90.if.end74_crit_edge, label %if.then57

cpu_online.exit90.if.end74_crit_edge:             ; preds = %cpu_online.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then57:                                        ; preds = %cpu_online.exit90
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_crtc_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_crtc_update, i32 0, i32 7), align 4
  %call63 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true, label %if.then57.do.end72_crit_edge

if.then57.do.end72_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

land.lhs.true:                                    ; preds = %if.then57
  %call65 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true.do.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true
  %.b77 = load i1, ptr @trace_dpu_perf_crtc_update.__warned, align 1
  br i1 %.b77, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpu_perf_crtc_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 168, ptr noundef nonnull @.str.54) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true.do.end72_crit_edge, %if.then57.do.end72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !155
  %31 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i91 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i91 to ptr
  %preempt_count.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i92, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i92, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end72, %cpu_online.exit90.if.end74_crit_edge, %cpu_online.exit.if.end74_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_core_perf_update_clk(ptr noundef %dev, i1 noundef zeroext %stop_req, i64 noundef %clk_rate) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_perf_update_clk, i32 0, i32 1), ptr blockaddress(@trace_dpu_core_perf_update_clk, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !150

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !159
  %call43 = tail call i32 @__traceiter_dpu_core_perf_update_clk(ptr noundef null, ptr noundef %dev, i1 noundef zeroext %stop_req, i64 noundef %clk_rate) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !151

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_perf_update_clk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_perf_update_clk, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_core_perf_update_clk.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpu_core_perf_update_clk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 912, ptr noundef nonnull @.str.54) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !155
  %31 = tail call i32 @llvm.read_register.i32(metadata !134) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_debugfs_init(ptr noundef %dpu_kms, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perf1 = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11
  %catalog2 = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %catalog2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog2, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.33, ptr noundef %parent) #8
  %max_core_clk_rate = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 5
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.34, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %max_core_clk_rate) #8
  %core_clk_rate = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.35, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %core_clk_rate) #8
  %enable_bw_release = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 7
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.36, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %enable_bw_release) #8
  %perf4 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 23
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.37, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %perf4) #8
  %max_bw_high = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 23, i32 1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.38, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %max_bw_high) #8
  %min_core_ib = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 23, i32 2
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.39, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %min_core_ib) #8
  %min_llcc_ib = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 23, i32 3
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.40, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %min_llcc_ib) #8
  %min_dram_ib = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 23, i32 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.41, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %min_dram_ib) #8
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %perf1, ptr noundef nonnull @dpu_core_perf_mode_fops) #8
  %fix_core_clk_rate = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 8
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.43, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %fix_core_clk_rate) #8
  %fix_core_ib_vote = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 9
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.44, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %fix_core_ib_vote) #8
  %fix_core_ab_vote = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 11, i32 10
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.45, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %fix_core_ab_vote) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_core_perf_destroy(ptr noundef writeonly %perf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %perf, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef 519) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_core_clk_rate = getelementptr inbounds %struct.dpu_core_perf, ptr %perf, i32 0, i32 5
  %0 = ptrtoint ptr %max_core_clk_rate to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %max_core_clk_rate, align 8
  %core_clk = getelementptr inbounds %struct.dpu_core_perf, ptr %perf, i32 0, i32 3
  %1 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %core_clk, align 4
  %catalog = getelementptr inbounds %struct.dpu_core_perf, ptr %perf, i32 0, i32 2
  %2 = ptrtoint ptr %catalog to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %catalog, align 8
  %3 = ptrtoint ptr %perf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %perf, align 8
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_init(ptr nocapture noundef writeonly %perf, ptr noundef %dev, ptr noundef %catalog, ptr noundef %core_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %perf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %perf, align 8
  %catalog2 = getelementptr inbounds %struct.dpu_core_perf, ptr %perf, i32 0, i32 2
  %1 = ptrtoint ptr %catalog2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %catalog, ptr %catalog2, align 8
  %core_clk3 = getelementptr inbounds %struct.dpu_core_perf, ptr %perf, i32 0, i32 3
  %2 = ptrtoint ptr %core_clk3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %core_clk, ptr %core_clk3, align 4
  %max_rate = getelementptr inbounds %struct.dss_clk, ptr %core_clk, i32 0, i32 4
  %3 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_rate, align 4
  %conv = zext i32 %4 to i64
  %max_core_clk_rate = getelementptr inbounds %struct.dpu_core_perf, ptr %perf, i32 0, i32 5
  %5 = ptrtoint ptr %max_core_clk_rate to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %max_core_clk_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %6 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body6, label %if.then5

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.47) #8
  br label %do.end13

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_core_perf_init.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_core_perf_init, %if.then11)) #8
          to label %do.end13 [label %if.then11], !srcloc !150

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_core_perf_init.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef 540) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %do.body6, %if.then5
  %7 = ptrtoint ptr %max_core_clk_rate to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 412500000, ptr %max_core_clk_rate, align 8
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_cmd_release_bw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_crtc_update(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_core_perf_update_clk(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_core_perf_mode_read(ptr nocapture noundef readonly %file, ptr noundef %buff, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %perf_tune = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %perf_tune to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %perf_tune, align 8
  %min_core_clk = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %min_core_clk to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %min_core_clk, align 8
  %min_bus_vote = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %min_bus_vote to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %min_bus_vote, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.58, i32 noundef %4, i64 noundef %6, i64 noundef %8) #8
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buff, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_core_perf_mode_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %perf_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %catalog = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catalog, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %perf_mode) #8
  %4 = ptrtoint ptr %perf_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %perf_mode, align 4
  %call = call i32 @kstrtouint_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %perf_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %perf_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %perf_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp ugt i32 %6, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %6, label %if.then18 [
    i32 2, label %if.end3.if.end30_crit_edge
    i32 1, label %if.then8
  ]

if.end3.if.end30_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %max_core_clk_rate = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %max_core_clk_rate to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_core_clk_rate, align 8
  %min_core_clk = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %min_core_clk to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %min_core_clk, align 8
  %max_bw_high = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %3, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %max_bw_high to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_bw_high, align 4
  %conv = zext i32 %12 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %min_bus_vote = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %min_bus_vote to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul, ptr %min_bus_vote, align 8
  br label %if.end30

if.then18:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %min_core_clk20 = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6, i32 1
  %14 = call ptr @memset(ptr %min_core_clk20, i32 0, i32 16)
  br label %if.end30

if.end30:                                         ; preds = %if.then18, %if.then8, %if.end3.if.end30_crit_edge
  %.str.62.sink = phi ptr [ @.str.62, %if.then8 ], [ @.str.65, %if.then18 ], [ @.str.59, %if.end3.if.end30_crit_edge ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.62.sink) #11
  %15 = ptrtoint ptr %perf_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %perf_mode, align 4
  %perf_tune31 = getelementptr inbounds %struct.dpu_core_perf, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %perf_tune31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %perf_tune31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end30 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %perf_mode) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !109, !111, !112, !114, !116, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 152, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_core_perf_crtc_check._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_core_perf_crtc_check._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 158, i32 3}
!8 = !{ptr @dpu_core_perf_crtc_check._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dpu_core_perf_crtc_check._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 181, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 190, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 194, i32 3}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 197, i32 4}
!18 = !{ptr @dpu_core_perf_crtc_check._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dpu_core_perf_crtc_check._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 200, i32 4}
!22 = !{ptr @dpu_core_perf_crtc_check._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dpu_core_perf_crtc_check._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 263, i32 3}
!26 = !{ptr @dpu_core_perf_crtc_release_bw._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dpu_core_perf_crtc_release_bw._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 269, i32 3}
!30 = !{ptr @dpu_core_perf_crtc_release_bw._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dpu_core_perf_crtc_release_bw._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 281, i32 3}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 334, i32 3}
!36 = !{ptr @dpu_core_perf_crtc_update._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dpu_core_perf_crtc_update._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dpu_core_perf_crtc_update._entry.21, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 340, i32 3}
!40 = !{ptr @dpu_core_perf_crtc_update._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 347, i32 2}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 365, i32 4}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 381, i32 3}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 393, i32 4}
!49 = !{ptr @dpu_core_perf_crtc_update._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dpu_core_perf_crtc_update._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 410, i32 4}
!53 = !{ptr @dpu_core_perf_crtc_update._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @dpu_core_perf_crtc_update._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 416, i32 3}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 485, i32 29}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 487, i32 21}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 489, i32 21}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 491, i32 21}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 493, i32 21}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 495, i32 21}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 497, i32 21}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 499, i32 21}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 501, i32 21}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 503, i32 22}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 505, i32 21}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 507, i32 21}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 509, i32 21}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 519, i32 3}
!85 = !{ptr @dpu_core_perf_destroy._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dpu_core_perf_destroy._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 540, i32 3}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dpu_core_perf_init.__UNIQUE_ID_ddebug481, !88, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!92 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 115, i32 3}
!95 = !{ptr @_dpu_core_perf_calc_crtc._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @_dpu_core_perf_calc_crtc._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 135, i32 2}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 94, i32 1}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!103 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 231, i32 4}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 140, i32 1}
!111 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 317, i32 2}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 897, i32 1}
!116 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!117 = !{ptr @dpu_core_perf_mode_fops, !118, !"dpu_core_perf_mode_fops", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 473, i32 37}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 465, i32 4}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 439, i32 3}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @_dpu_core_perf_mode_write._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @_dpu_core_perf_mode_write._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 445, i32 3}
!128 = !{ptr @_dpu_core_perf_mode_write._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @_dpu_core_perf_mode_write._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c", i32 450, i32 3}
!132 = !{ptr @_dpu_core_perf_mode_write._entry.64, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @_dpu_core_perf_mode_write._entry_ptr.66, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 1040411, i64 1040438, i64 1040460, i64 1040488}
!145 = !{i64 1040819, i64 1040846, i64 1040879, i64 1040900, i64 1040927, i64 1040953}
!146 = !{i8 0, i8 2}
!147 = !{i64 2148764646}
!148 = !{i64 2148679355, i64 2148679387, i64 2148679416, i64 2148679450, i64 2148679481, i64 2148679504}
!149 = !{i64 2148764875}
!150 = !{i64 2148500768, i64 2148500773, i64 2148500786, i64 2148500830, i64 2148500864, i64 2148500885}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2157418615}
!153 = !{i64 2157418828}
!154 = !{i64 2149497175}
!155 = !{i64 2149498211}
!156 = !{i64 2148525955, i64 2148526235, i64 2148526569, i64 2148526903}
!157 = !{i64 2157474216}
!158 = !{i64 2157474541}
!159 = !{i64 2158518959}
!160 = !{i64 2158519216}
