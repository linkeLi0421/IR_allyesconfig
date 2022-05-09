; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.mdp5_plane_state = type { %struct.drm_plane_state, ptr, ptr, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.mdp5_plane = type { %struct.drm_plane, i32, [32 x i32] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.phase_step = type { [3 x i32], [3 x i32] }
%struct.pixel_ext = type { [3 x i32], [3 x i32], [3 x i32], [3 x i32] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
%struct.csc_cfg = type { i32, [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c\00", [53 x i8] zeroinitializer }, align 32
@mdp5_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @mdp5_plane_destroy, ptr @mdp5_plane_reset, ptr null, ptr @mdp5_plane_duplicate_state, ptr @mdp5_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_plane_atomic_print_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdp5_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @msm_atomic_prepare_fb, ptr @mdp5_plane_cleanup_fb, ptr @mdp5_plane_atomic_check, ptr @mdp5_plane_atomic_update, ptr null, ptr @mdp5_plane_atomic_async_check, ptr @mdp5_plane_atomic_async_update }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09hwpipe=%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09right-hwpipe=%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09blend_mode=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09zpos=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09normalized_zpos=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09alpha=%u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09stage=%s\0A\00", [21 x i8] zeroinitializer }, align 32
@stage2name.names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null, ptr @.str.16], [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STAGE_UNUSED\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STAGE_BASE\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STAGE0\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STAGE1\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STAGE2\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STAGE3\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STAGE4\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STAGE6\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: cleanup: FB[%u]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: check (%d -> %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid source size %d.%06ux%d.%06u%+d.%06u%+d.%06u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to assign hwpipe(s)!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: update\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: FB[%u] %u,%u,%u,%u -> CRTC[%u] %d,%d,%u,%u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scale config = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* X scaling (%d->%d) failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Y scaling (%d->%d) failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"comp-%d (L/R): rpt=%d/%d, ovf=%d/%d, req=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"comp-%d (T/B): rpt=%d/%d, ovf=%d/%d, req=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.mdp5_plane_mode_set = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.30 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.31 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.34 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.35 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.37 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.38 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.39 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.40 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.41 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.42 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.43 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.44 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.45 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.46 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.48 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.50 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.52 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.53 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.54 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.55 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.56 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.57 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.58 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.60 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.61 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.62 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.63 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.64 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 947, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"mdp5_plane_funcs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 133, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"mdp5_plane_helper_funcs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 439, i32 44 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 72, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 73, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 75, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 78, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 79, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 80, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 81, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 82, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 181, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 183, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 183, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 184, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 184, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 184, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 185, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 185, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 185, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 153, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 172, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 197, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 280, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 337, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 879, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 915, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 571, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 594, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 169, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 702, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [46 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 709, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [33 x i8] c"switch.table.mdp5_plane_mode_set\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @mdp5_plane_funcs, ptr @mdp5_plane_helper_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @stage2name.names, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.mdp5_plane_mode_set], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stage2name.names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_plane_mode_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_plane_pipe(ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwpipe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 947, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pipe = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %5, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp5_plane_right_pipe(ptr nocapture noundef readonly %plane) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %r_hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_hwpipe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pipe = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_plane_get_flush(ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwpipe, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %flush_mask = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flush_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flush_mask, align 4
  %r_hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_hwpipe, align 4
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %flush_mask29 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %flush_mask29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flush_mask29, align 4
  %or = or i32 %9, %5
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %or, %if.then27 ], [ %5, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_plane_init(ptr noundef %dev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 664) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %formats = getelementptr inbounds %struct.mdp5_plane, ptr %call7.i.i, i32 0, i32 2
  %call1 = tail call i32 @mdp_get_formats(ptr noundef %formats, i32 noundef 32, i1 noundef zeroext false) #6
  %nformats = getelementptr inbounds %struct.mdp5_plane, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %nformats to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %nformats, align 8
  %call5 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 255, ptr noundef nonnull @mdp5_plane_funcs, ptr noundef %formats, i32 noundef %call1, ptr noundef null, i32 noundef %type, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then11

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mdp5_plane_helper_funcs, ptr %helper_private.i, align 8
  %call.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 53) #6
  %call1.i = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call7.i.i) #6
  %call2.i = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call7.i.i, i32 noundef 7) #6
  %call3.i = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 255) #6
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %phi.cast = inttoptr i32 %call5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end8 ], [ %phi.cast, %if.then11 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_get_formats(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #6
  tail call void @kfree(ptr noundef %plane) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #9
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.end.if.end7_crit_edge, label %if.else

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %index.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %add = add i32 %8, 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %add.sink = phi i32 [ %add, %if.else ], [ 1, %if.end.if.end7_crit_edge ]
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.sink, ptr %9, align 8
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.sink, ptr %normalized_zpos, align 4
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef %call7.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdp5_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 136, i32 noundef 3264) #6
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end28 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %state) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_atomic_print_state(ptr noundef %p, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwpipe, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ @.str.2, %entry.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.1, ptr noundef %cond) #6
  %caps = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 8
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end
  %r_hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %r_hwpipe, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.then.cond.end8_crit_edge, label %cond.true4

if.then.cond.end8_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

cond.true4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %name6 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name6, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %if.then.cond.end8_crit_edge
  %cond9 = phi ptr [ %17, %cond.true4 ], [ @.str.2, %if.then.cond.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.3, ptr noundef %cond9) #6
  br label %if.end

if.end:                                           ; preds = %cond.end8, %cond.end.if.end_crit_edge
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 13
  %18 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pixel_blend_mode, align 2
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 15
  %20 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zpos, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.5, i32 noundef %21) #6
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 16
  %22 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %normalized_zpos, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %23) #6
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 12
  %24 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %alpha, align 4
  %conv13 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.7, i32 noundef %conv13) #6
  %stage = getelementptr inbounds %struct.mdp5_plane_state, ptr %state, i32 0, i32 3
  %26 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stage, align 4
  %arrayidx.i = getelementptr [9 x ptr], ptr @stage2name.names, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.8, ptr noundef %29) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_cleanup_fb(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %base3 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef %9, i32 noundef %11) #6
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aspace, align 4
  tail call void @msm_framebuffer_cleanup(ptr noundef nonnull %1, ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %new_hwpipe135.i = alloca ptr, align 4
  %new_right_hwpipe.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %crtc2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end:                                         ; preds = %entry
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 4
  %crtc4 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond50 = phi ptr [ %11, %cond.end.if.end_crit_edge ], [ %7, %entry.if.end_crit_edge ]
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i, align 4
  %index.i.i47 = getelementptr inbounds %struct.drm_crtc, ptr %cond50, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i47, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state1.i, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %do.end, label %if.end32, !prof !74

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %state2.i = getelementptr inbounds %struct.drm_plane, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state2.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kms.i.i, align 4
  %cfg.i = getelementptr inbounds %struct.mdp5_kms, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 4
  %call3.i = tail call ptr @mdp5_cfg_get_config(ptr noundef %29) #6
  %name.i = getelementptr inbounds %struct.drm_plane, ptr %19, i32 0, i32 2
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %visible.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 22
  %32 = ptrtoint ptr %visible.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %visible.i.i, align 4, !range !75
  %34 = zext i8 %33 to i32
  %visible.i258.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %35 = ptrtoint ptr %visible.i258.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %visible.i258.i, align 4, !range !75
  %37 = zext i8 %36 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %31, i32 noundef %34, i32 noundef %37) #6
  %38 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call3.i, align 4
  %max_width7.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 8, i32 4
  %40 = ptrtoint ptr %max_width7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_width7.i, align 4
  %shl.i = shl i32 %41, 16
  %max_height10.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 8, i32 5
  %42 = ptrtoint ptr %max_height10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_height10.i, align 4
  %shl11.i = shl i32 %43, 16
  %src_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %44 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %shl11.i)
  %cmp.i = icmp ugt i32 %45, %shl11.i
  %src_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %46 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_w.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %shl.i)
  %cmp13.i = icmp ugt i32 %47, %shl.i
  br i1 %cmp13.i, label %if.then15.i, label %if.end23.i

if.then15.i:                                      ; preds = %if.end32
  %caps17.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %caps17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps17.i, align 4
  %and.i = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %mul.i = shl i32 %41, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mul.i)
  %cmp19.not.i = icmp ugt i32 %47, %mul.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp19.not.i
  %spec.select256.i = select i1 %or.cond.i, i1 true, i1 %cmp.i
  %not.or.cond.i = xor i1 %or.cond.i, true
  br i1 %spec.select256.i, label %if.then15.i.if.then25.i_crit_edge, label %if.then15.i.if.end47.i_crit_edge

if.then15.i.if.end47.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then15.i.if.then25.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

if.end23.i:                                       ; preds = %if.end32
  br i1 %cmp.i, label %if.end23.i.if.then25.i_crit_edge, label %if.end23.i.if.end47.i_crit_edge

if.end23.i.if.end47.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.end23.i.if.then25.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.i.if.then25.i_crit_edge, %if.then15.i.if.then25.i_crit_edge
  %src_x.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %50 = ptrtoint ptr %src_x.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_x.i.i, align 4, !noalias !76
  %src_y.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %52 = ptrtoint ptr %src_y.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %src_y.i.i, align 4, !noalias !76
  %shr.i = ashr i32 %47, 16
  %and28.i = and i32 %47, 65535
  %mul29.i = mul nuw nsw i32 %and28.i, 15625
  %54 = lshr i32 %mul29.i, 10
  %shr32.i = ashr i32 %45, 16
  %and34.i = and i32 %45, 65535
  %mul35.i = mul nuw nsw i32 %and34.i, 15625
  %55 = lshr i32 %mul35.i, 10
  %shr37.i = ashr i32 %51, 16
  %and39.i = and i32 %51, 65535
  %mul40.i = mul nuw nsw i32 %and39.i, 15625
  %56 = lshr i32 %mul40.i, 10
  %shr42.i = ashr i32 %53, 16
  %and44.i = and i32 %53, 65535
  %mul45.i = mul nuw nsw i32 %and44.i, 15625
  %57 = lshr i32 %mul45.i, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %shr.i, i32 noundef %54, i32 noundef %shr32.i, i32 noundef %55, i32 noundef %shr37.i, i32 noundef %56, i32 noundef %shr42.i, i32 noundef %57) #6
  br label %cleanup

if.end47.i:                                       ; preds = %if.end23.i.if.end47.i_crit_edge, %if.then15.i.if.end47.i_crit_edge
  %need_right_hwpipe.0.off0276.i = phi i1 [ %not.or.cond.i, %if.then15.i.if.end47.i_crit_edge ], [ false, %if.end23.i.if.end47.i_crit_edge ]
  %call48.i = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %17, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end47.i.cleanup_crit_edge

if.end47.i.cleanup_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51.i:                                       ; preds = %if.end47.i
  %58 = ptrtoint ptr %visible.i258.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %visible.i258.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.i267.not.i = icmp eq i8 %59, 0
  br i1 %tobool.i267.not.i, label %if.else163.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end51.i
  %60 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %19, align 8
  %dev_private.i268.i = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %dev_private.i268.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_private.i268.i, align 4
  %kms.i269.i = getelementptr inbounds %struct.msm_drm_private, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %kms.i269.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %kms.i269.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %66 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fb.i, align 4
  %call56.i = tail call ptr @msm_framebuffer_format(ptr noundef %67) #6
  %is_yuv.i = getelementptr inbounds %struct.mdp_format, ptr %call56.i, i32 0, i32 12
  %68 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_yuv.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool59.not.i = icmp eq i8 %69, 0
  %spec.select.i = select i1 %tobool59.not.i, i32 0, i32 12
  %70 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_w.i, align 4
  %shr63.i = lshr i32 %71, 16
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %72 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %crtc_w.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr63.i, i32 %73)
  %cmp64.not.i = icmp eq i32 %shr63.i, %73
  br i1 %cmp64.not.i, label %lor.lhs.false.i, label %if.then53.i.if.then70.i_crit_edge

if.then53.i.if.then70.i_crit_edge:                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i

lor.lhs.false.i:                                  ; preds = %if.then53.i
  %74 = ptrtoint ptr %src_h.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %src_h.i, align 4
  %shr67.i = lshr i32 %75, 16
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %76 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %crtc_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr67.i, i32 %77)
  %cmp68.not.i = icmp eq i32 %shr67.i, %77
  br i1 %cmp68.not.i, label %lor.lhs.false.i.if.end72.i_crit_edge, label %lor.lhs.false.i.if.then70.i_crit_edge

lor.lhs.false.i.if.then70.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i

lor.lhs.false.i.if.end72.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

if.then70.i:                                      ; preds = %lor.lhs.false.i.if.then70.i_crit_edge, %if.then53.i.if.then70.i_crit_edge
  %or71.i = or i32 %spec.select.i, 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then70.i, %lor.lhs.false.i.if.end72.i_crit_edge
  %caps.1.i = phi i32 [ %or71.i, %if.then70.i ], [ %spec.select.i, %lor.lhs.false.i.if.end72.i_crit_edge ]
  %rotation73.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %78 = ptrtoint ptr %rotation73.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rotation73.i, align 4
  %call74.i = tail call i32 @drm_rotation_simplify(i32 noundef %79, i32 noundef 49) #6
  %and75.i = lshr i32 %call74.i, 4
  %80 = and i32 %and75.i, 1
  %81 = or i32 %80, %caps.1.i
  %82 = and i32 %and75.i, 2
  %83 = or i32 %81, %82
  %type.i = getelementptr inbounds %struct.drm_plane, ptr %19, i32 0, i32 16
  %84 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp85.i = icmp eq i32 %85, 2
  %or88.i = or i32 %83, 64
  %caps.4.i = select i1 %cmp85.i, i32 %or88.i, i32 %83
  %hwpipe.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %5, i32 0, i32 1
  %86 = ptrtoint ptr %hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hwpipe.i, align 4
  %tobool90.not.i = icmp eq ptr %87, null
  br i1 %tobool90.not.i, label %if.end72.i.if.then96.i_crit_edge, label %lor.lhs.false91.i

if.end72.i.if.then96.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.i

lor.lhs.false91.i:                                ; preds = %if.end72.i
  %caps93.i = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %caps93.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %caps93.i, align 4
  %neg.i = xor i32 %89, -1
  %and94.i = and i32 %caps.4.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %lor.lhs.false91.i.if.end97.i_crit_edge, label %lor.lhs.false91.i.if.then96.i_crit_edge

lor.lhs.false91.i.if.then96.i_crit_edge:          ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.i

lor.lhs.false91.i.if.end97.i_crit_edge:           ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then96.i:                                      ; preds = %lor.lhs.false91.i.if.then96.i_crit_edge, %if.end72.i.if.then96.i_crit_edge
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then96.i, %lor.lhs.false91.i.if.end97.i_crit_edge
  %new_hwpipe.0.off0.i = phi i1 [ true, %if.then96.i ], [ false, %lor.lhs.false91.i.if.end97.i_crit_edge ]
  %r_hwpipe.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %5, i32 0, i32 2
  %90 = ptrtoint ptr %r_hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %r_hwpipe.i, align 4
  %tobool101.not.i = icmp eq ptr %91, null
  br i1 %need_right_hwpipe.0.off0276.i, label %land.lhs.true100.i, label %land.lhs.true104.critedge.i

land.lhs.true100.i:                               ; preds = %if.end97.i
  br i1 %tobool101.not.i, label %land.lhs.true100.i.if.then107.i_crit_edge, label %land.lhs.true100.i.if.end108.i_crit_edge

land.lhs.true100.i.if.end108.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

land.lhs.true100.i.if.then107.i_crit_edge:        ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107.i

land.lhs.true104.critedge.i:                      ; preds = %if.end97.i
  br i1 %tobool101.not.i, label %land.lhs.true104.critedge.i.if.end108.i_crit_edge, label %land.lhs.true104.critedge.i.if.then107.i_crit_edge

land.lhs.true104.critedge.i.if.then107.i_crit_edge: ; preds = %land.lhs.true104.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107.i

land.lhs.true104.critedge.i.if.end108.i_crit_edge: ; preds = %land.lhs.true104.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

if.then107.i:                                     ; preds = %land.lhs.true104.critedge.i.if.then107.i_crit_edge, %land.lhs.true100.i.if.then107.i_crit_edge
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then107.i, %land.lhs.true104.critedge.i.if.end108.i_crit_edge, %land.lhs.true100.i.if.end108.i_crit_edge
  %new_hwpipe.1.off0.i = phi i1 [ true, %if.then107.i ], [ %new_hwpipe.0.off0.i, %land.lhs.true104.critedge.i.if.end108.i_crit_edge ], [ %new_hwpipe.0.off0.i, %land.lhs.true100.i.if.end108.i_crit_edge ]
  %smp.i = getelementptr inbounds %struct.mdp5_kms, ptr %65, i32 0, i32 13
  %92 = ptrtoint ptr %smp.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %smp.i, align 4
  %tobool109.not.i = icmp eq ptr %93, null
  br i1 %tobool109.not.i, label %if.end108.i.if.end130.i_crit_edge, label %if.then110.i

if.end108.i.if.end130.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then110.i:                                     ; preds = %if.end108.i
  %94 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fb.i, align 4
  %call114.i = tail call ptr @msm_framebuffer_format(ptr noundef %95) #6
  %96 = ptrtoint ptr %smp.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %smp.i, align 4
  %98 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %src_w.i, align 4
  %shr119.i = lshr i32 %99, 16
  %call120.i = tail call i32 @mdp5_smp_calculate(ptr noundef %97, ptr noundef %call114.i, i32 noundef %shr119.i, i1 noundef zeroext false) #6
  %100 = ptrtoint ptr %hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hwpipe.i, align 4
  %tobool122.not.i = icmp eq ptr %101, null
  br i1 %tobool122.not.i, label %if.then110.i.if.end130.i_crit_edge, label %land.lhs.true123.i

if.then110.i.if.end130.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

land.lhs.true123.i:                               ; preds = %if.then110.i
  %blkcfg125.i = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %blkcfg125.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %blkcfg125.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %call120.i)
  %cmp126.not.i = icmp ne i32 %103, %call120.i
  %spec.select255.i = or i1 %new_hwpipe.1.off0.i, %cmp126.not.i
  br i1 %spec.select255.i, label %land.lhs.true123.i.if.then132.i_crit_edge, label %land.lhs.true123.i.cleanup_crit_edge

land.lhs.true123.i.cleanup_crit_edge:             ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true123.i.if.then132.i_crit_edge:        ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132.i

if.end130.i:                                      ; preds = %if.then110.i.if.end130.i_crit_edge, %if.end108.i.if.end130.i_crit_edge
  %blkcfg.0.i = phi i32 [ 0, %if.end108.i.if.end130.i_crit_edge ], [ %call120.i, %if.then110.i.if.end130.i_crit_edge ]
  br i1 %new_hwpipe.1.off0.i, label %if.end130.i.if.then132.i_crit_edge, label %if.end130.i.cleanup_crit_edge

if.end130.i.cleanup_crit_edge:                    ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end130.i.if.then132.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132.i

if.then132.i:                                     ; preds = %if.end130.i.if.then132.i_crit_edge, %land.lhs.true123.i.if.then132.i_crit_edge
  %blkcfg.0277.i = phi i32 [ %call120.i, %land.lhs.true123.i.if.then132.i_crit_edge ], [ %blkcfg.0.i, %if.end130.i.if.then132.i_crit_edge ]
  %104 = ptrtoint ptr %hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hwpipe.i, align 4
  %106 = ptrtoint ptr %r_hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %r_hwpipe.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_hwpipe135.i) #6
  %108 = ptrtoint ptr %new_hwpipe135.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %new_hwpipe135.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_right_hwpipe.i) #6
  %109 = ptrtoint ptr %new_right_hwpipe.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %new_right_hwpipe.i, align 4
  %state136.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 25
  %110 = ptrtoint ptr %state136.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %state136.i, align 4
  %new_right_hwpipe..i = select i1 %need_right_hwpipe.0.off0276.i, ptr %new_right_hwpipe.i, ptr null
  %call139.i = call i32 @mdp5_pipe_assign(ptr noundef %111, ptr noundef %19, i32 noundef %caps.4.i, i32 noundef %blkcfg.0277.i, ptr noundef nonnull %new_hwpipe135.i, ptr noundef %new_right_hwpipe..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool140.not.i, label %if.end143.i, label %cleanup157.i

if.end143.i:                                      ; preds = %if.then132.i
  %112 = ptrtoint ptr %new_hwpipe135.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %new_hwpipe135.i, align 4
  %114 = ptrtoint ptr %hwpipe.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %hwpipe.i, align 4
  br i1 %need_right_hwpipe.0.off0276.i, label %if.then146.i, label %if.end143.i.if.end150.i_crit_edge

if.end143.i.if.end150.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150.i

if.then146.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %new_right_hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %new_right_hwpipe.i, align 4
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then146.i, %if.end143.i.if.end150.i_crit_edge
  %storemerge.i = phi ptr [ %116, %if.then146.i ], [ null, %if.end143.i.if.end150.i_crit_edge ]
  %117 = ptrtoint ptr %r_hwpipe.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %storemerge.i, ptr %r_hwpipe.i, align 4
  %118 = ptrtoint ptr %state136.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %state136.i, align 4
  call void @mdp5_pipe_release(ptr noundef %119, ptr noundef %105) #6
  %120 = ptrtoint ptr %state136.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %state136.i, align 4
  call void @mdp5_pipe_release(ptr noundef %121, ptr noundef %107) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_right_hwpipe.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_hwpipe135.i) #6
  br label %cleanup

cleanup157.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef %123) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_right_hwpipe.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_hwpipe135.i) #6
  br label %cleanup

if.else163.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %state164.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 25
  %124 = ptrtoint ptr %state164.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state164.i, align 4
  %hwpipe165.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %5, i32 0, i32 1
  %126 = ptrtoint ptr %hwpipe165.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hwpipe165.i, align 4
  tail call void @mdp5_pipe_release(ptr noundef %125, ptr noundef %127) #6
  %128 = ptrtoint ptr %state164.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %state164.i, align 4
  %r_hwpipe167.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %5, i32 0, i32 2
  %130 = ptrtoint ptr %r_hwpipe167.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %r_hwpipe167.i, align 4
  tail call void @mdp5_pipe_release(ptr noundef %129, ptr noundef %131) #6
  %132 = ptrtoint ptr %r_hwpipe167.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %r_hwpipe167.i, align 4
  %133 = ptrtoint ptr %hwpipe165.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %hwpipe165.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else163.i, %cleanup157.i, %if.end150.i, %if.end130.i.cleanup_crit_edge, %land.lhs.true123.i.cleanup_crit_edge, %if.end47.i.cleanup_crit_edge, %if.then25.i, %do.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end.cleanup_crit_edge ], [ -34, %if.then25.i ], [ %call139.i, %cleanup157.i ], [ %call48.i, %if.end47.i.cleanup_crit_edge ], [ 0, %if.else163.i ], [ 0, %if.end150.i ], [ 0, %if.end130.i.cleanup_crit_edge ], [ 0, %land.lhs.true123.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %7) #6
  %visible.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %visible.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb, align 4
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %call2 = tail call fastcc i32 @mdp5_plane_mode_set(ptr noundef %plane, ptr noundef %11, ptr noundef %13, ptr noundef %src, ptr noundef %dst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.then.if.end22_crit_edge, !prof !74

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #6
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_plane_atomic_async_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs.i, align 4
  %index.i.i104 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %index.i.i104 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i104, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %11, i32 1
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %hwpipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwpipe, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %state35 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %18 = ptrtoint ptr %state35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state35, align 4
  %crtc36 = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %crtc36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc36, align 4
  %cmp.not = icmp eq ptr %21, %7
  br i1 %cmp.not, label %lor.lhs.false, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end34
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 11
  %22 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_w, align 4
  %src_w39 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %src_w39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_w39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp40.not = icmp eq i32 %23, %25
  br i1 %cmp40.not, label %lor.lhs.false41, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 10
  %26 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_h, align 4
  %src_h43 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %28 = ptrtoint ptr %src_h43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_h43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp44.not = icmp eq i32 %27, %29
  br i1 %cmp44.not, label %lor.lhs.false45, label %lor.lhs.false41.cleanup_crit_edge

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 6
  %30 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_w, align 4
  %crtc_w47 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %crtc_w47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_w47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp48.not = icmp eq i32 %31, %33
  br i1 %cmp48.not, label %lor.lhs.false49, label %lor.lhs.false45.cleanup_crit_edge

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 7
  %34 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_h, align 4
  %crtc_h51 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %36 = ptrtoint ptr %crtc_h51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_h51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp52.not = icmp eq i32 %35, %37
  br i1 %cmp52.not, label %lor.lhs.false53, label %lor.lhs.false49.cleanup_crit_edge

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false53:                                  ; preds = %lor.lhs.false49
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 2
  %38 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fb, align 4
  %tobool55.not = icmp eq ptr %39, null
  br i1 %tobool55.not, label %lor.lhs.false53.cleanup_crit_edge, label %lor.lhs.false56

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %fb59 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %fb59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fb59, align 4
  %cmp60.not = icmp eq ptr %39, %41
  br i1 %cmp60.not, label %if.end62, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false56
  %call63 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %13, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %42 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %visible, align 4, !range !75
  %44 = ptrtoint ptr %state35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state35, align 4
  %visible69 = getelementptr inbounds %struct.drm_plane_state, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %visible69 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %visible69, align 4, !range !75
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %47)
  %cmp72.not = icmp eq i8 %43, %47
  %. = select i1 %cmp72.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end62.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false53.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %lor.lhs.false45.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end25.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %lor.lhs.false56.cleanup_crit_edge ], [ -22, %lor.lhs.false53.cleanup_crit_edge ], [ -22, %lor.lhs.false49.cleanup_crit_edge ], [ -22, %lor.lhs.false45.cleanup_crit_edge ], [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ %call63, %if.end62.cleanup_crit_edge ], [ %., %if.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_plane_atomic_async_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_x, align 4
  %src_x3 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %src_x3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %src_x3, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_y, align 4
  %15 = load ptr, ptr %state1, align 4
  %src_y5 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %src_y5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %src_y5, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc_x, align 4
  %19 = load ptr, ptr %state1, align 4
  %crtc_x7 = getelementptr inbounds %struct.drm_plane_state, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %crtc_x7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %crtc_x7, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_y, align 4
  %23 = load ptr, ptr %state1, align 4
  %crtc_y9 = getelementptr inbounds %struct.drm_plane_state, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %crtc_y9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %crtc_y9, align 4
  %visible.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %25 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %visible.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then:                                          ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc, align 4
  %call11 = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %28) #6
  %29 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtc, align 4
  %fb13 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %fb13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb13, align 4
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %call14 = tail call fastcc i32 @mdp5_plane_mode_set(ptr noundef %plane, ptr noundef %30, ptr noundef %32, ptr noundef %src, ptr noundef %dst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge, !prof !74

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %33 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc, align 4
  %call35 = tail call ptr @mdp5_crtc_get_ctl(ptr noundef %34) #6
  %35 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state1, align 4
  %hwpipe.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwpipe.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end24.i, !prof !74

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_plane_get_flush.exit

if.end24.i:                                       ; preds = %if.end
  %flush_mask.i = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %flush_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flush_mask.i, align 4
  %r_hwpipe.i = getelementptr inbounds %struct.mdp5_plane_state, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %r_hwpipe.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %r_hwpipe.i, align 4
  %tobool26.not.i = icmp eq ptr %42, null
  br i1 %tobool26.not.i, label %if.end24.i.mdp5_plane_get_flush.exit_crit_edge, label %if.then27.i

if.end24.i.mdp5_plane_get_flush.exit_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_plane_get_flush.exit

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %flush_mask29.i = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %flush_mask29.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flush_mask29.i, align 4
  %or.i = or i32 %44, %40
  br label %mdp5_plane_get_flush.exit

mdp5_plane_get_flush.exit:                        ; preds = %if.then27.i, %if.end24.i.mdp5_plane_get_flush.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %or.i, %if.then27.i ], [ %40, %if.end24.i.mdp5_plane_get_flush.exit_crit_edge ]
  %call37 = tail call i32 @mdp5_ctl_commit(ptr noundef %call35, ptr noundef %call11, i32 noundef %retval.0.i, i1 noundef zeroext true) #6
  br label %if.end38

if.end38:                                         ; preds = %mdp5_plane_get_flush.exit, %entry.if.end38_crit_edge
  %45 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state1, align 4
  %47 = call ptr @memcpy(ptr %46, ptr %5, i32 136)
  %fb44 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %fb44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %9, ptr %fb44, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_smp_calculate(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_pipe_assign(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_pipe_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdp5_plane_mode_set(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %crtc, ptr noundef %fb, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dest) unnamed_addr #0 align 64 {
entry:
  %step = alloca %struct.phase_step, align 4
  %pe = alloca %struct.pixel_ext, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %hwpipe1 = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwpipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwpipe1, align 4
  %4 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kms.i, align 4
  %pipe2 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %step) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pe) #6
  %12 = call ptr @memset(ptr %pe, i32 0, i32 48)
  %format3 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %13 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %format3, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %16 to i32
  %switch.tableidx = add i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 7
  br i1 %17, label %switch.lookup, label %entry.pipe2nclients.exit_crit_edge

entry.pipe2nclients.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pipe2nclients.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_plane_mode_set, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pipe2nclients.exit

pipe2nclients.exit:                               ; preds = %switch.lookup, %entry.pipe2nclients.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %entry.pipe2nclients.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp = icmp ult i32 %retval.0.i, %conv
  br i1 %cmp, label %do.end, label %if.end27, !prof !74

do.end:                                           ; preds = %pipe2nclients.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end27:                                         ; preds = %pipe2nclients.exit
  %call29 = tail call ptr @msm_framebuffer_format(ptr noundef %fb) #6
  %19 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call29, align 4
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src, align 4
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 1
  %23 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y1, align 4
  %x2.i = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 2
  %25 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %x2.i, align 4
  %sub.i = sub i32 %26, %22
  %y2.i = getelementptr inbounds %struct.drm_rect, ptr %src, i32 0, i32 3
  %27 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %y2.i, align 4
  %sub.i226 = sub i32 %28, %24
  %29 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dest, align 4
  %y135 = getelementptr inbounds %struct.drm_rect, ptr %dest, i32 0, i32 1
  %31 = ptrtoint ptr %y135 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y135, align 4
  %x2.i227 = getelementptr inbounds %struct.drm_rect, ptr %dest, i32 0, i32 2
  %33 = ptrtoint ptr %x2.i227 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %x2.i227, align 4
  %sub.i228 = sub i32 %34, %30
  %y2.i229 = getelementptr inbounds %struct.drm_rect, ptr %dest, i32 0, i32 3
  %35 = ptrtoint ptr %y2.i229 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y2.i229, align 4
  %sub.i231 = sub i32 %36, %32
  %shr = lshr i32 %22, 16
  %shr38 = lshr i32 %24, 16
  %shr39 = lshr i32 %sub.i, 16
  %shr40 = lshr i32 %sub.i226, 16
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %37 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width, align 8
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %shr39)
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %shr40)
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %base51 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  %45 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base51, align 4
  %base52 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %47 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base52, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef %44, i32 noundef %46, i32 noundef %shr, i32 noundef %shr38, i32 noundef %shr39, i32 noundef %shr40, i32 noundef %48, i32 noundef %30, i32 noundef %32, i32 noundef %sub.i228, i32 noundef %sub.i231) #6
  %r_hwpipe = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %r_hwpipe to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %r_hwpipe, align 4
  %tobool57.not = icmp eq ptr %50, null
  %div59224 = lshr i32 %sub.i, 17
  %not.tobool57.not = xor i1 %tobool57.not, true
  %div223 = zext i1 %not.tobool57.not to i32
  %crtc_w.0 = lshr i32 %sub.i228, %div223
  %src_w.0 = select i1 %tobool57.not, i32 %shr39, i32 %div59224
  %src_img_w.0 = lshr i32 %39, %div223
  %call.i = tail call ptr @drm_format_info(i32 noundef %20) #6
  %51 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %plane, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %kms.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.mdp5_kms, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2.i, align 8
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_w.0)
  %cmp.i.i = icmp eq i32 %src_w.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc_w.0)
  %cmp1.i.i = icmp eq i32 %crtc_w.0, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.end27.calc_scalex_steps.exit_crit_edge, label %if.end.i.i

if.end27.calc_scalex_steps.exit_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_scalex_steps.exit

if.end.i.i:                                       ; preds = %if.end27
  %mul.i.i = shl i32 %crtc_w.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %src_w.0)
  %cmp2.i.i = icmp ult i32 %mul.i.i, %src_w.0
  br i1 %cmp2.i.i, label %if.end.i.i.calc_scalex_steps.exit_crit_edge, label %if.end65

if.end.i.i.calc_scalex_steps.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_scalex_steps.exit

calc_scalex_steps.exit:                           ; preds = %if.end.i.i.calc_scalex_steps.exit_crit_edge, %if.end27.calc_scalex_steps.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ -75, %if.end.i.i.calc_scalex_steps.exit_crit_edge ], [ -22, %if.end27.calc_scalex_steps.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %60, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %src_w.0, i32 noundef %crtc_w.0, i32 noundef %retval.0.i.ph.i) #6
  br label %cleanup

if.end65:                                         ; preds = %if.end.i.i
  %crtc_w.0.frozen = freeze i32 %crtc_w.0
  %div.i.i = udiv i32 2097152, %crtc_w.0.frozen
  %61 = mul i32 %div.i.i, %crtc_w.0.frozen
  %rem5.i.i.decomposed = sub i32 2097152, %61
  %mul6.i.i = mul i32 %div.i.i, %src_w.0
  %mul7.i.i = mul i32 %rem5.i.i.decomposed, %src_w.0
  %div8.i.i = udiv i32 %mul7.i.i, %crtc_w.0
  %add.i.i = add i32 %div8.i.i, %mul6.i.i
  %62 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i.i, ptr %step, align 4
  %arrayidx5.i = getelementptr inbounds i32, ptr %step, i32 2
  %63 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i.i, ptr %arrayidx5.i, align 4
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 6
  %64 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hsub.i, align 2
  %conv.i = zext i8 %65 to i32
  %div.i = udiv i32 %add.i.i, %conv.i
  %arrayidx6.i = getelementptr inbounds i32, ptr %step, i32 1
  %66 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div.i, ptr %arrayidx6.i, align 4
  %y = getelementptr inbounds %struct.phase_step, ptr %step, i32 0, i32 1
  %call.i233 = tail call ptr @drm_format_info(i32 noundef %20) #6
  %67 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %plane, align 8
  %dev_private.i.i234 = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %dev_private.i.i234 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_private.i.i234, align 4
  %kms.i.i235 = getelementptr inbounds %struct.msm_drm_private, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %kms.i.i235 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %kms.i.i235, align 4
  %dev2.i236 = getelementptr inbounds %struct.mdp5_kms, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %dev2.i236 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev2.i236, align 8
  %dev3.i237 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dev3.i237 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev3.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sub.i226)
  %cmp.i.i238 = icmp ult i32 %sub.i226, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %32)
  %cmp1.i.i239 = icmp eq i32 %36, %32
  %or.cond.i.i240 = or i1 %cmp.i.i238, %cmp1.i.i239
  br i1 %or.cond.i.i240, label %if.end65.calc_scaley_steps.exit_crit_edge, label %if.end.i.i243

if.end65.calc_scaley_steps.exit_crit_edge:        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_scaley_steps.exit

if.end.i.i243:                                    ; preds = %if.end65
  %mul.i.i241 = shl i32 %sub.i231, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i241, i32 %shr40)
  %cmp2.i.i242 = icmp ult i32 %mul.i.i241, %shr40
  br i1 %cmp2.i.i242, label %if.end.i.i243.calc_scaley_steps.exit_crit_edge, label %if.end70

if.end.i.i243.calc_scaley_steps.exit_crit_edge:   ; preds = %if.end.i.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_scaley_steps.exit

calc_scaley_steps.exit:                           ; preds = %if.end.i.i243.calc_scaley_steps.exit_crit_edge, %if.end65.calc_scaley_steps.exit_crit_edge
  %retval.0.i.ph.i244 = phi i32 [ -75, %if.end.i.i243.calc_scaley_steps.exit_crit_edge ], [ -22, %if.end65.calc_scaley_steps.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %76, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %shr40, i32 noundef %sub.i231, i32 noundef %retval.0.i.ph.i244) #6
  br label %cleanup

if.end70:                                         ; preds = %if.end.i.i243
  %div.i.i246 = udiv i32 2097152, %sub.i231
  %77 = mul i32 %div.i.i246, %sub.i231
  %rem5.i.i247.decomposed = sub i32 2097152, %77
  %mul6.i.i248 = mul i32 %div.i.i246, %shr40
  %mul7.i.i249 = mul i32 %rem5.i.i247.decomposed, %shr40
  %div8.i.i250 = udiv i32 %mul7.i.i249, %sub.i231
  %add.i.i251 = add i32 %div8.i.i250, %mul6.i.i248
  %78 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add.i.i251, ptr %y, align 4
  %arrayidx5.i252 = getelementptr inbounds %struct.phase_step, ptr %step, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %arrayidx5.i252 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.i.i251, ptr %arrayidx5.i252, align 4
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %call.i233, i32 0, i32 7
  %80 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vsub.i, align 1
  %conv.i253 = zext i8 %81 to i32
  %div.i254 = udiv i32 %add.i.i251, %conv.i253
  %arrayidx6.i255 = getelementptr inbounds %struct.phase_step, ptr %step, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %arrayidx6.i255 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div.i254, ptr %arrayidx6.i255, align 4
  %caps = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %3, i32 0, i32 4
  %83 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %caps, align 4
  %and = and i32 %84, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %if.end70.if.end81_crit_edge, label %if.then72

if.end70.if.end81_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %right = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 1
  %is_yuv.i = getelementptr inbounds %struct.mdp_format, ptr %call29, i32 0, i32 12
  %85 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_yuv.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i = icmp ne i8 %86, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.0, i32 %crtc_w.0)
  %cmp.not.i = icmp ne i32 %src_w.0, %crtc_w.0
  %narrow.i = or i1 %cmp.not.i, %tobool.not.i
  %cond.i = zext i1 %narrow.i to i32
  %87 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %pe, align 4
  %88 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond.i, ptr %right, align 4
  %arrayidx.1.i = getelementptr inbounds i32, ptr %pe, i32 1
  %89 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx.1.i, align 4
  %arrayidx8.1.i = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond.i, ptr %arrayidx8.1.i, align 4
  %arrayidx.2.i = getelementptr inbounds i32, ptr %pe, i32 2
  %91 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx.2.i, align 4
  %arrayidx8.2.i = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond.i, ptr %arrayidx8.2.i, align 4
  %top = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 2
  %bottom = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr40, i32 %sub.i231)
  %cmp.not.i260 = icmp ne i32 %shr40, %sub.i231
  %narrow.i261 = or i1 %cmp.not.i260, %tobool.not.i
  %cond.i262 = zext i1 %narrow.i261 to i32
  %93 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %top, align 4
  %94 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond.i262, ptr %bottom, align 4
  %arrayidx.1.i263 = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %arrayidx.1.i263 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx.1.i263, align 4
  %arrayidx8.1.i264 = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %arrayidx8.1.i264 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond.i262, ptr %arrayidx8.1.i264, align 4
  %arrayidx.2.i265 = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 2, i32 2
  %97 = ptrtoint ptr %arrayidx.2.i265 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx.2.i265, align 4
  %arrayidx8.2.i266 = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 3, i32 2
  %98 = ptrtoint ptr %arrayidx8.2.i266 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cond.i262, ptr %arrayidx8.2.i266, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then72, %if.end70.if.end81_crit_edge
  %99 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %call29, align 4
  %call.i267 = tail call ptr @drm_format_info(i32 noundef %100) #6
  %is_yuv.i268 = getelementptr inbounds %struct.mdp_format, ptr %call29, i32 0, i32 12
  %101 = ptrtoint ptr %is_yuv.i268 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_yuv.i268, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i269 = icmp eq i8 %102, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.0, i32 %crtc_w.0)
  %cmp.not.i270 = icmp eq i32 %src_w.0, %crtc_w.0
  %spec.select.i = and i1 %cmp.not.i270, %tobool.not.i269
  br i1 %spec.select.i, label %if.end81.get_scale_config.exit_crit_edge, label %if.end.i271

if.end81.get_scale_config.exit_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_scale_config.exit

if.end.i271:                                      ; preds = %if.end81
  br i1 %tobool.not.i269, label %if.end20.i, label %if.end20.thread.i

if.end20.i:                                       ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.0, i32 %crtc_w.0)
  %cmp21.not.i = icmp ugt i32 %src_w.0, %crtc_w.0
  %cond23.i = select i1 %cmp21.not.i, i32 2, i32 1
  br label %cond.end34.i

if.end20.thread.i:                                ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #8
  %hsub.i272 = getelementptr inbounds %struct.drm_format_info, ptr %call.i267, i32 0, i32 6
  %103 = ptrtoint ptr %hsub.i272 to i32
  call void @__asan_load1_noabort(i32 %103)
  %cond16.in.i = load i8, ptr %hsub.i272, align 1
  %div.i274.lhs.trunc = trunc i32 %src_w.0 to i16
  %div.i274.rhs.trunc = zext i8 %cond16.in.i to i16
  %div.i274302 = udiv i16 %div.i274.lhs.trunc, %div.i274.rhs.trunc
  %div.i274.zext = zext i16 %div.i274302 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %crtc_w.0, i32 %div.i274.zext)
  %cmp17.not.i = icmp ult i32 %crtc_w.0, %div.i274.zext
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.0, i32 %crtc_w.0)
  %cmp21.not79.i = icmp ugt i32 %src_w.0, %crtc_w.0
  %cond2380.i = select i1 %cmp21.not79.i, i32 2, i32 1
  %phi.bo = select i1 %cmp17.not.i, i32 8193, i32 4097
  br label %cond.end34.i

cond.end34.i:                                     ; preds = %if.end20.thread.i, %if.end20.i
  %or94.in.i = phi i32 [ %cond2380.i, %if.end20.thread.i ], [ %cond23.i, %if.end20.i ]
  %cond35.i = phi i32 [ %phi.bo, %if.end20.thread.i ], [ 1, %if.end20.i ]
  %or94.i = mul nuw nsw i32 %or94.in.i, 65792
  %or36.i = or i32 %cond35.i, %or94.i
  br label %get_scale_config.exit

get_scale_config.exit:                            ; preds = %cond.end34.i, %if.end81.get_scale_config.exit_crit_edge
  %retval.0.i275 = phi i32 [ %or36.i, %cond.end34.i ], [ 0, %if.end81.get_scale_config.exit_crit_edge ]
  %104 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %call29, align 4
  %call.i276 = tail call ptr @drm_format_info(i32 noundef %105) #6
  %106 = ptrtoint ptr %is_yuv.i268 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %is_yuv.i268, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i278 = icmp eq i8 %107, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr40, i32 %sub.i231)
  %cmp.not.i279 = icmp eq i32 %shr40, %sub.i231
  %spec.select.i280 = and i1 %cmp.not.i279, %tobool.not.i278
  br i1 %spec.select.i280, label %get_scale_config.exit.get_scale_config.exit296_crit_edge, label %if.end.i281

get_scale_config.exit.get_scale_config.exit296_crit_edge: ; preds = %get_scale_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_scale_config.exit296

if.end.i281:                                      ; preds = %get_scale_config.exit
  br i1 %tobool.not.i278, label %if.end20.i284, label %if.end20.thread.i294

if.end20.i284:                                    ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr40, i32 %sub.i231)
  %cmp21.not.i282 = icmp ugt i32 %shr40, %sub.i231
  %cond23.i283 = select i1 %cmp21.not.i282, i32 2, i32 1
  br label %cond.end46.i

if.end20.thread.i294:                             ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #8
  %vsub.i286 = getelementptr inbounds %struct.drm_format_info, ptr %call.i276, i32 0, i32 7
  %108 = ptrtoint ptr %vsub.i286 to i32
  call void @__asan_load1_noabort(i32 %108)
  %cond16.in.i287 = load i8, ptr %vsub.i286, align 1
  %div.i289.lhs.trunc = trunc i32 %shr40 to i16
  %div.i289.rhs.trunc = zext i8 %cond16.in.i287 to i16
  %div.i289301 = udiv i16 %div.i289.lhs.trunc, %div.i289.rhs.trunc
  %div.i289.zext = zext i16 %div.i289301 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i231, i32 %div.i289.zext)
  %cmp17.not.i290 = icmp ult i32 %sub.i231, %div.i289.zext
  call void @__sanitizer_cov_trace_cmp4(i32 %shr40, i32 %sub.i231)
  %cmp21.not79.i292 = icmp ugt i32 %shr40, %sub.i231
  %cond2380.i293 = select i1 %cmp21.not79.i292, i32 2, i32 1
  %phi.bo304 = select i1 %cmp17.not.i290, i32 32770, i32 16386
  br label %cond.end46.i

cond.end46.i:                                     ; preds = %if.end20.thread.i294, %if.end20.i284
  %or38104.in.i = phi i32 [ %cond2380.i293, %if.end20.thread.i294 ], [ %cond23.i283, %if.end20.i284 ]
  %cond47.i = phi i32 [ %phi.bo304, %if.end20.thread.i294 ], [ 2, %if.end20.i284 ]
  %or38104.i = mul nuw nsw i32 %or38104.in.i, 263168
  %or48.i = or i32 %cond47.i, %or38104.i
  br label %get_scale_config.exit296

get_scale_config.exit296:                         ; preds = %cond.end46.i, %get_scale_config.exit.get_scale_config.exit296_crit_edge
  %retval.0.i295 = phi i32 [ %or48.i, %cond.end46.i ], [ 0, %get_scale_config.exit.get_scale_config.exit296_crit_edge ]
  %or84 = or i32 %retval.0.i295, %retval.0.i275
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %or84) #6
  %rotation85 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 14
  %109 = ptrtoint ptr %rotation85 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rotation85, align 4
  %call86 = tail call i32 @drm_rotation_simplify(i32 noundef %110, i32 noundef 49) #6
  %and87 = and i32 %call86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88 = icmp ne i32 %and87, 0
  %and93 = and i32 %call86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94 = icmp ne i32 %and93, 0
  call fastcc void @mdp5_hwpipe_mode_set(ptr noundef %9, ptr noundef %3, ptr noundef %fb, ptr noundef nonnull %step, ptr noundef nonnull %pe, i32 noundef %or84, i1 noundef zeroext %tobool88, i1 noundef zeroext %tobool94, i32 noundef %30, i32 noundef %32, i32 noundef %crtc_w.0, i32 noundef %sub.i231, i32 noundef %src_img_w.0, i32 noundef %42, i32 noundef %shr, i32 noundef %shr38, i32 noundef %src_w.0, i32 noundef %shr40)
  br i1 %tobool57.not, label %get_scale_config.exit296.cleanup_crit_edge, label %if.then103

get_scale_config.exit296.cleanup_crit_edge:       ; preds = %get_scale_config.exit296
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %get_scale_config.exit296
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %crtc_w.0, %30
  %add106 = add nuw nsw i32 %src_w.0, %shr
  call fastcc void @mdp5_hwpipe_mode_set(ptr noundef %9, ptr noundef nonnull %50, ptr noundef %fb, ptr noundef nonnull %step, ptr noundef nonnull %pe, i32 noundef %or84, i1 noundef zeroext %tobool88, i1 noundef zeroext %tobool94, i32 noundef %add, i32 noundef %32, i32 noundef %crtc_w.0, i32 noundef %sub.i231, i32 noundef %src_img_w.0, i32 noundef %42, i32 noundef %add106, i32 noundef %shr38, i32 noundef %src_w.0, i32 noundef %shr40)
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %get_scale_config.exit296.cleanup_crit_edge, %calc_scaley_steps.exit, %calc_scalex_steps.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i.ph.i, %calc_scalex_steps.exit ], [ %retval.0.i.ph.i244, %calc_scaley_steps.exit ], [ 0, %if.then103 ], [ 0, %get_scale_config.exit296.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pe) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %step) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdp5_hwpipe_mode_set(ptr noundef readonly %mdp5_kms, ptr nocapture noundef readonly %hwpipe, ptr noundef %fb, ptr nocapture noundef readonly %step, ptr nocapture noundef readonly %pe, i32 noundef %scale_config, i1 noundef zeroext %hflip, i1 noundef zeroext %vflip, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_img_w, i32 noundef %src_img_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe2 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %hwpipe, i32 0, i32 2
  %0 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe2, align 4
  %caps = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %hwpipe, i32 0, i32 4
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %call = tail call ptr @msm_framebuffer_format(ptr noundef %fb) #6
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body45.i.i [
    i32 0, label %do.body.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb4.i.i
    i32 3, label %sw.bb8.i.i
    i32 4, label %sw.bb12.i.i
    i32 5, label %sw.bb15.i.i
    i32 6, label %sw.bb19.i.i
    i32 7, label %sw.bb23.i.i
    i32 8, label %sw.bb26.i.i
    i32 9, label %sw.bb30.i.i
    i32 10, label %sw.bb34.i.i
    i32 11, label %sw.bb38.i.i
    i32 12, label %sw.bb41.i.i
  ]

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #6, !srcloc !79
  unreachable

sw.bb3.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %5 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %5, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %6 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %6, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb8.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %7 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %7, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb12.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %8 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %8, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb15.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %9 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %9, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb19.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %10 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %10, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb23.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %11 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %11, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb26.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb30.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb34.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %14 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %14, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb38.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

sw.bb41.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %16 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %16, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit

do.body45.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_IMG_SIZE.exit:                  ; preds = %sw.bb41.i.i, %sw.bb38.i.i, %sw.bb34.i.i, %sw.bb30.i.i, %sw.bb26.i.i, %sw.bb23.i.i, %sw.bb19.i.i, %sw.bb15.i.i, %sw.bb12.i.i, %sw.bb8.i.i, %sw.bb4.i.i, %sw.bb3.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx44.i.i, %sw.bb41.i.i ], [ %base39.i.i, %sw.bb38.i.i ], [ %arrayidx37.i.i, %sw.bb34.i.i ], [ %arrayidx33.i.i, %sw.bb30.i.i ], [ %arrayidx29.i.i, %sw.bb26.i.i ], [ %base24.i.i, %sw.bb23.i.i ], [ %arrayidx22.i.i, %sw.bb19.i.i ], [ %arrayidx18.i.i, %sw.bb15.i.i ], [ %base13.i.i, %sw.bb12.i.i ], [ %arrayidx11.i.i, %sw.bb8.i.i ], [ %arrayidx7.i.i, %sw.bb4.i.i ], [ %base.i.i, %sw.bb3.i.i ]
  %17 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.i = add i32 %retval.0.i.i, 4
  %and.i = and i32 %src_img_w, 65535
  %shl.i = shl i32 %src_img_h, 16
  %or = or i32 %shl.i, %and.i
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %mdp5_kms, i32 0, i32 26
  %18 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp slt i32 %19, 1
  br i1 %cmp.i, label %do.end.i, label %REG_MDP5_PIPE_SRC_IMG_SIZE.exit.mdp5_write.exit_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_IMG_SIZE.exit.mdp5_write.exit_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_IMG_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %REG_MDP5_PIPE_SRC_IMG_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %REG_MDP5_PIPE_SRC_IMG_SIZE.exit.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %mdp5_kms, i32 0, i32 15
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add.i
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i) #6
  %22 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %do.body45.i.i26 [
    i32 12, label %sw.bb41.i.i25
    i32 1, label %sw.bb3.i.i3
    i32 2, label %sw.bb4.i.i5
    i32 3, label %sw.bb8.i.i7
    i32 4, label %sw.bb12.i.i9
    i32 5, label %sw.bb15.i.i11
    i32 6, label %sw.bb19.i.i13
    i32 7, label %sw.bb23.i.i15
    i32 8, label %sw.bb26.i.i17
    i32 9, label %sw.bb30.i.i19
    i32 10, label %sw.bb34.i.i21
    i32 11, label %sw.bb38.i.i23
  ]

sw.bb3.i.i3:                                      ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %23 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i2 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %23, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb4.i.i5:                                      ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i4 = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb8.i.i7:                                      ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %25 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i6 = getelementptr %struct.mdp5_cfg_hw, ptr %25, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb12.i.i9:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %26 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i8 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %26, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb15.i.i11:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %27 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i10 = getelementptr %struct.mdp5_cfg_hw, ptr %27, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb19.i.i13:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %28 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i12 = getelementptr %struct.mdp5_cfg_hw, ptr %28, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb23.i.i15:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %29 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i14 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %29, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb26.i.i17:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %30 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i16 = getelementptr %struct.mdp5_cfg_hw, ptr %30, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb30.i.i19:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %31 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i18 = getelementptr %struct.mdp5_cfg_hw, ptr %31, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb34.i.i21:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %32 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i20 = getelementptr %struct.mdp5_cfg_hw, ptr %32, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb38.i.i23:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i22 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

sw.bb41.i.i25:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %34 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i24 = getelementptr %struct.mdp5_cfg_hw, ptr %34, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_SIZE.exit

do.body45.i.i26:                                  ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_SIZE.exit:                      ; preds = %sw.bb41.i.i25, %sw.bb38.i.i23, %sw.bb34.i.i21, %sw.bb30.i.i19, %sw.bb26.i.i17, %sw.bb23.i.i15, %sw.bb19.i.i13, %sw.bb15.i.i11, %sw.bb12.i.i9, %sw.bb8.i.i7, %sw.bb4.i.i5, %sw.bb3.i.i3
  %retval.0.in.i.i27 = phi ptr [ %arrayidx44.i.i24, %sw.bb41.i.i25 ], [ %base39.i.i22, %sw.bb38.i.i23 ], [ %arrayidx37.i.i20, %sw.bb34.i.i21 ], [ %arrayidx33.i.i18, %sw.bb30.i.i19 ], [ %arrayidx29.i.i16, %sw.bb26.i.i17 ], [ %base24.i.i14, %sw.bb23.i.i15 ], [ %arrayidx22.i.i12, %sw.bb19.i.i13 ], [ %arrayidx18.i.i10, %sw.bb15.i.i11 ], [ %base13.i.i8, %sw.bb12.i.i9 ], [ %arrayidx11.i.i6, %sw.bb8.i.i7 ], [ %arrayidx7.i.i4, %sw.bb4.i.i5 ], [ %base.i.i2, %sw.bb3.i.i3 ]
  %35 = ptrtoint ptr %retval.0.in.i.i27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %retval.0.i.i28 = load i32, ptr %retval.0.in.i.i27, align 4
  %and.i29 = and i32 %src_w, 65535
  %shl.i30 = shl i32 %src_h, 16
  %or10 = or i32 %shl.i30, %and.i29
  %36 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i32 = icmp slt i32 %37, 1
  br i1 %cmp.i32, label %do.end.i33, label %REG_MDP5_PIPE_SRC_SIZE.exit.mdp5_write.exit36_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_SIZE.exit.mdp5_write.exit36_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit36

do.end.i33:                                       ; preds = %REG_MDP5_PIPE_SRC_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit36

mdp5_write.exit36:                                ; preds = %do.end.i33, %REG_MDP5_PIPE_SRC_SIZE.exit.mdp5_write.exit36_crit_edge
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %39, i32 %retval.0.i.i28
  tail call void @msm_writel(i32 noundef %or10, ptr noundef %add.ptr.i35) #6
  %40 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %1, label %do.body45.i.i62 [
    i32 12, label %sw.bb41.i.i61
    i32 1, label %sw.bb3.i.i39
    i32 2, label %sw.bb4.i.i41
    i32 3, label %sw.bb8.i.i43
    i32 4, label %sw.bb12.i.i45
    i32 5, label %sw.bb15.i.i47
    i32 6, label %sw.bb19.i.i49
    i32 7, label %sw.bb23.i.i51
    i32 8, label %sw.bb26.i.i53
    i32 9, label %sw.bb30.i.i55
    i32 10, label %sw.bb34.i.i57
    i32 11, label %sw.bb38.i.i59
  ]

sw.bb3.i.i39:                                     ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i38 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb4.i.i41:                                     ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %42 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i40 = getelementptr %struct.mdp5_cfg_hw, ptr %42, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb8.i.i43:                                     ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %43 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i42 = getelementptr %struct.mdp5_cfg_hw, ptr %43, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb12.i.i45:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %44 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i44 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %44, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb15.i.i47:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %45 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i46 = getelementptr %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb19.i.i49:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %46 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i48 = getelementptr %struct.mdp5_cfg_hw, ptr %46, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb23.i.i51:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %47 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i50 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %47, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb26.i.i53:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %48 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i52 = getelementptr %struct.mdp5_cfg_hw, ptr %48, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb30.i.i55:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %49 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i54 = getelementptr %struct.mdp5_cfg_hw, ptr %49, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb34.i.i57:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %50 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i56 = getelementptr %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb38.i.i59:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %51 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i58 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %51, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

sw.bb41.i.i61:                                    ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %52 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i60 = getelementptr %struct.mdp5_cfg_hw, ptr %52, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_XY.exit

do.body45.i.i62:                                  ; preds = %mdp5_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_XY.exit:                        ; preds = %sw.bb41.i.i61, %sw.bb38.i.i59, %sw.bb34.i.i57, %sw.bb30.i.i55, %sw.bb26.i.i53, %sw.bb23.i.i51, %sw.bb19.i.i49, %sw.bb15.i.i47, %sw.bb12.i.i45, %sw.bb8.i.i43, %sw.bb4.i.i41, %sw.bb3.i.i39
  %retval.0.in.i.i63 = phi ptr [ %arrayidx44.i.i60, %sw.bb41.i.i61 ], [ %base39.i.i58, %sw.bb38.i.i59 ], [ %arrayidx37.i.i56, %sw.bb34.i.i57 ], [ %arrayidx33.i.i54, %sw.bb30.i.i55 ], [ %arrayidx29.i.i52, %sw.bb26.i.i53 ], [ %base24.i.i50, %sw.bb23.i.i51 ], [ %arrayidx22.i.i48, %sw.bb19.i.i49 ], [ %arrayidx18.i.i46, %sw.bb15.i.i47 ], [ %base13.i.i44, %sw.bb12.i.i45 ], [ %arrayidx11.i.i42, %sw.bb8.i.i43 ], [ %arrayidx7.i.i40, %sw.bb4.i.i41 ], [ %base.i.i38, %sw.bb3.i.i39 ]
  %53 = ptrtoint ptr %retval.0.in.i.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i.i64 = load i32, ptr %retval.0.in.i.i63, align 4
  %add.i65 = add i32 %retval.0.i.i64, 8
  %and.i66 = and i32 %src_x, 65535
  %shl.i67 = shl i32 %src_y, 16
  %or14 = or i32 %shl.i67, %and.i66
  %54 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i69 = icmp slt i32 %55, 1
  br i1 %cmp.i69, label %do.end.i70, label %REG_MDP5_PIPE_SRC_XY.exit.mdp5_write.exit73_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_XY.exit.mdp5_write.exit73_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_XY.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit73

do.end.i70:                                       ; preds = %REG_MDP5_PIPE_SRC_XY.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit73

mdp5_write.exit73:                                ; preds = %do.end.i70, %REG_MDP5_PIPE_SRC_XY.exit.mdp5_write.exit73_crit_edge
  %56 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %57, i32 %add.i65
  tail call void @msm_writel(i32 noundef %or14, ptr noundef %add.ptr.i72) #6
  %58 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %do.body45.i.i99 [
    i32 12, label %sw.bb41.i.i98
    i32 1, label %sw.bb3.i.i76
    i32 2, label %sw.bb4.i.i78
    i32 3, label %sw.bb8.i.i80
    i32 4, label %sw.bb12.i.i82
    i32 5, label %sw.bb15.i.i84
    i32 6, label %sw.bb19.i.i86
    i32 7, label %sw.bb23.i.i88
    i32 8, label %sw.bb26.i.i90
    i32 9, label %sw.bb30.i.i92
    i32 10, label %sw.bb34.i.i94
    i32 11, label %sw.bb38.i.i96
  ]

sw.bb3.i.i76:                                     ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %59 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i75 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %59, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb4.i.i78:                                     ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %60 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i77 = getelementptr %struct.mdp5_cfg_hw, ptr %60, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb8.i.i80:                                     ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %61 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i79 = getelementptr %struct.mdp5_cfg_hw, ptr %61, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb12.i.i82:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %62 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i81 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %62, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb15.i.i84:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %63 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i83 = getelementptr %struct.mdp5_cfg_hw, ptr %63, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb19.i.i86:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %64 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i85 = getelementptr %struct.mdp5_cfg_hw, ptr %64, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb23.i.i88:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %65 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i87 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %65, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb26.i.i90:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %66 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i89 = getelementptr %struct.mdp5_cfg_hw, ptr %66, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb30.i.i92:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %67 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i91 = getelementptr %struct.mdp5_cfg_hw, ptr %67, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb34.i.i94:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %68 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i93 = getelementptr %struct.mdp5_cfg_hw, ptr %68, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb38.i.i96:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %69 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i95 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %69, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

sw.bb41.i.i98:                                    ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %70 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i97 = getelementptr %struct.mdp5_cfg_hw, ptr %70, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_SIZE.exit

do.body45.i.i99:                                  ; preds = %mdp5_write.exit73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_OUT_SIZE.exit:                      ; preds = %sw.bb41.i.i98, %sw.bb38.i.i96, %sw.bb34.i.i94, %sw.bb30.i.i92, %sw.bb26.i.i90, %sw.bb23.i.i88, %sw.bb19.i.i86, %sw.bb15.i.i84, %sw.bb12.i.i82, %sw.bb8.i.i80, %sw.bb4.i.i78, %sw.bb3.i.i76
  %retval.0.in.i.i100 = phi ptr [ %arrayidx44.i.i97, %sw.bb41.i.i98 ], [ %base39.i.i95, %sw.bb38.i.i96 ], [ %arrayidx37.i.i93, %sw.bb34.i.i94 ], [ %arrayidx33.i.i91, %sw.bb30.i.i92 ], [ %arrayidx29.i.i89, %sw.bb26.i.i90 ], [ %base24.i.i87, %sw.bb23.i.i88 ], [ %arrayidx22.i.i85, %sw.bb19.i.i86 ], [ %arrayidx18.i.i83, %sw.bb15.i.i84 ], [ %base13.i.i81, %sw.bb12.i.i82 ], [ %arrayidx11.i.i79, %sw.bb8.i.i80 ], [ %arrayidx7.i.i77, %sw.bb4.i.i78 ], [ %base.i.i75, %sw.bb3.i.i76 ]
  %71 = ptrtoint ptr %retval.0.in.i.i100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i.i101 = load i32, ptr %retval.0.in.i.i100, align 4
  %add.i102 = add i32 %retval.0.i.i101, 12
  %and.i103 = and i32 %crtc_w, 65535
  %shl.i104 = shl i32 %crtc_h, 16
  %or18 = or i32 %shl.i104, %and.i103
  %72 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i106 = icmp slt i32 %73, 1
  br i1 %cmp.i106, label %do.end.i107, label %REG_MDP5_PIPE_OUT_SIZE.exit.mdp5_write.exit110_crit_edge, !prof !74

REG_MDP5_PIPE_OUT_SIZE.exit.mdp5_write.exit110_crit_edge: ; preds = %REG_MDP5_PIPE_OUT_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit110

do.end.i107:                                      ; preds = %REG_MDP5_PIPE_OUT_SIZE.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit110

mdp5_write.exit110:                               ; preds = %do.end.i107, %REG_MDP5_PIPE_OUT_SIZE.exit.mdp5_write.exit110_crit_edge
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %75, i32 %add.i102
  tail call void @msm_writel(i32 noundef %or18, ptr noundef %add.ptr.i109) #6
  %76 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %do.body45.i.i136 [
    i32 12, label %sw.bb41.i.i135
    i32 1, label %sw.bb3.i.i113
    i32 2, label %sw.bb4.i.i115
    i32 3, label %sw.bb8.i.i117
    i32 4, label %sw.bb12.i.i119
    i32 5, label %sw.bb15.i.i121
    i32 6, label %sw.bb19.i.i123
    i32 7, label %sw.bb23.i.i125
    i32 8, label %sw.bb26.i.i127
    i32 9, label %sw.bb30.i.i129
    i32 10, label %sw.bb34.i.i131
    i32 11, label %sw.bb38.i.i133
  ]

sw.bb3.i.i113:                                    ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %77 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i112 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %77, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb4.i.i115:                                    ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %78 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i114 = getelementptr %struct.mdp5_cfg_hw, ptr %78, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb8.i.i117:                                    ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %79 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i116 = getelementptr %struct.mdp5_cfg_hw, ptr %79, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb12.i.i119:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %80 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i118 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %80, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb15.i.i121:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %81 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i120 = getelementptr %struct.mdp5_cfg_hw, ptr %81, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb19.i.i123:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %82 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i122 = getelementptr %struct.mdp5_cfg_hw, ptr %82, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb23.i.i125:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %83 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i124 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %83, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb26.i.i127:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %84 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i126 = getelementptr %struct.mdp5_cfg_hw, ptr %84, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb30.i.i129:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %85 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i128 = getelementptr %struct.mdp5_cfg_hw, ptr %85, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb34.i.i131:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %86 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i130 = getelementptr %struct.mdp5_cfg_hw, ptr %86, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb38.i.i133:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %87 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i132 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %87, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

sw.bb41.i.i135:                                   ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %88 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i134 = getelementptr %struct.mdp5_cfg_hw, ptr %88, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_OUT_XY.exit

do.body45.i.i136:                                 ; preds = %mdp5_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_OUT_XY.exit:                        ; preds = %sw.bb41.i.i135, %sw.bb38.i.i133, %sw.bb34.i.i131, %sw.bb30.i.i129, %sw.bb26.i.i127, %sw.bb23.i.i125, %sw.bb19.i.i123, %sw.bb15.i.i121, %sw.bb12.i.i119, %sw.bb8.i.i117, %sw.bb4.i.i115, %sw.bb3.i.i113
  %retval.0.in.i.i137 = phi ptr [ %arrayidx44.i.i134, %sw.bb41.i.i135 ], [ %base39.i.i132, %sw.bb38.i.i133 ], [ %arrayidx37.i.i130, %sw.bb34.i.i131 ], [ %arrayidx33.i.i128, %sw.bb30.i.i129 ], [ %arrayidx29.i.i126, %sw.bb26.i.i127 ], [ %base24.i.i124, %sw.bb23.i.i125 ], [ %arrayidx22.i.i122, %sw.bb19.i.i123 ], [ %arrayidx18.i.i120, %sw.bb15.i.i121 ], [ %base13.i.i118, %sw.bb12.i.i119 ], [ %arrayidx11.i.i116, %sw.bb8.i.i117 ], [ %arrayidx7.i.i114, %sw.bb4.i.i115 ], [ %base.i.i112, %sw.bb3.i.i113 ]
  %89 = ptrtoint ptr %retval.0.in.i.i137 to i32
  call void @__asan_load4_noabort(i32 %89)
  %retval.0.i.i138 = load i32, ptr %retval.0.in.i.i137, align 4
  %add.i139 = add i32 %retval.0.i.i138, 16
  %and.i140 = and i32 %crtc_x, 65535
  %shl.i141 = shl i32 %crtc_y, 16
  %or22 = or i32 %shl.i141, %and.i140
  %90 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i143 = icmp slt i32 %91, 1
  br i1 %cmp.i143, label %do.end.i144, label %REG_MDP5_PIPE_OUT_XY.exit.mdp5_write.exit147_crit_edge, !prof !74

REG_MDP5_PIPE_OUT_XY.exit.mdp5_write.exit147_crit_edge: ; preds = %REG_MDP5_PIPE_OUT_XY.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit147

do.end.i144:                                      ; preds = %REG_MDP5_PIPE_OUT_XY.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit147

mdp5_write.exit147:                               ; preds = %do.end.i144, %REG_MDP5_PIPE_OUT_XY.exit.mdp5_write.exit147_crit_edge
  %92 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %93, i32 %add.i139
  tail call void @msm_writel(i32 noundef %or22, ptr noundef %add.ptr.i146) #6
  %94 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %1, label %do.body45.i.i173 [
    i32 12, label %sw.bb41.i.i172
    i32 1, label %sw.bb3.i.i150
    i32 2, label %sw.bb4.i.i152
    i32 3, label %sw.bb8.i.i154
    i32 4, label %sw.bb12.i.i156
    i32 5, label %sw.bb15.i.i158
    i32 6, label %sw.bb19.i.i160
    i32 7, label %sw.bb23.i.i162
    i32 8, label %sw.bb26.i.i164
    i32 9, label %sw.bb30.i.i166
    i32 10, label %sw.bb34.i.i168
    i32 11, label %sw.bb38.i.i170
  ]

sw.bb3.i.i150:                                    ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %95 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i149 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %95, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb4.i.i152:                                    ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %96 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i151 = getelementptr %struct.mdp5_cfg_hw, ptr %96, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb8.i.i154:                                    ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i153 = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb12.i.i156:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %98 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i155 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %98, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb15.i.i158:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i157 = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb19.i.i160:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i159 = getelementptr %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb23.i.i162:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %101 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i161 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %101, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb26.i.i164:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %102 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i163 = getelementptr %struct.mdp5_cfg_hw, ptr %102, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb30.i.i166:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %103 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i165 = getelementptr %struct.mdp5_cfg_hw, ptr %103, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb34.i.i168:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %104 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i167 = getelementptr %struct.mdp5_cfg_hw, ptr %104, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb38.i.i170:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %105 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i169 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %105, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

sw.bb41.i.i172:                                   ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %106 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i171 = getelementptr %struct.mdp5_cfg_hw, ptr %106, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_FORMAT.exit

do.body45.i.i173:                                 ; preds = %mdp5_write.exit147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_FORMAT.exit:                    ; preds = %sw.bb41.i.i172, %sw.bb38.i.i170, %sw.bb34.i.i168, %sw.bb30.i.i166, %sw.bb26.i.i164, %sw.bb23.i.i162, %sw.bb19.i.i160, %sw.bb15.i.i158, %sw.bb12.i.i156, %sw.bb8.i.i154, %sw.bb4.i.i152, %sw.bb3.i.i150
  %retval.0.in.i.i174 = phi ptr [ %arrayidx44.i.i171, %sw.bb41.i.i172 ], [ %base39.i.i169, %sw.bb38.i.i170 ], [ %arrayidx37.i.i167, %sw.bb34.i.i168 ], [ %arrayidx33.i.i165, %sw.bb30.i.i166 ], [ %arrayidx29.i.i163, %sw.bb26.i.i164 ], [ %base24.i.i161, %sw.bb23.i.i162 ], [ %arrayidx22.i.i159, %sw.bb19.i.i160 ], [ %arrayidx18.i.i157, %sw.bb15.i.i158 ], [ %base13.i.i155, %sw.bb12.i.i156 ], [ %arrayidx11.i.i153, %sw.bb8.i.i154 ], [ %arrayidx7.i.i151, %sw.bb4.i.i152 ], [ %base.i.i149, %sw.bb3.i.i150 ]
  %107 = ptrtoint ptr %retval.0.in.i.i174 to i32
  call void @__asan_load4_noabort(i32 %107)
  %retval.0.i.i175 = load i32, ptr %retval.0.in.i.i174, align 4
  %add.i176 = add i32 %retval.0.i.i175, 48
  %bpc_a = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 4
  %108 = ptrtoint ptr %bpc_a to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bpc_a, align 4
  %shl.i177 = shl i32 %109, 6
  %and.i178 = and i32 %shl.i177, 192
  %bpc_r = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 1
  %110 = ptrtoint ptr %bpc_r to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bpc_r, align 4
  %shl.i179 = shl i32 %111, 4
  %and.i180 = and i32 %shl.i179, 48
  %or26 = or i32 %and.i180, %and.i178
  %bpc_g = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 2
  %112 = ptrtoint ptr %bpc_g to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bpc_g, align 4
  %and.i181 = and i32 %113, 3
  %or28 = or i32 %or26, %and.i181
  %bpc_b = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 3
  %114 = ptrtoint ptr %bpc_b to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bpc_b, align 4
  %shl.i182 = shl i32 %115, 2
  %and.i183 = and i32 %shl.i182, 12
  %or30 = or i32 %or28, %and.i183
  %alpha_enable = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 6
  %116 = ptrtoint ptr %alpha_enable to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %alpha_enable, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool31.not = icmp eq i8 %117, 0
  %cond = select i1 %tobool31.not, i32 0, i32 256
  %or32 = or i32 %or30, %cond
  %cpp = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 8
  %118 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %cpp, align 2
  %conv = zext i8 %119 to i32
  %sub = shl nuw nsw i32 %conv, 9
  %shl.i184 = add nuw nsw i32 %sub, 1536
  %and.i185 = and i32 %shl.i184, 1536
  %or34 = or i32 %or32, %and.i185
  %unpack_count = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 9
  %120 = ptrtoint ptr %unpack_count to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %unpack_count, align 1
  %conv35 = zext i8 %121 to i32
  %sub36 = shl nuw nsw i32 %conv35, 12
  %shl.i186 = add nuw nsw i32 %sub36, 12288
  %and.i187 = and i32 %shl.i186, 12288
  %unpack_tight = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 7
  %122 = ptrtoint ptr %unpack_tight to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %unpack_tight, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool39.not = icmp eq i8 %123, 0
  %cond41 = select i1 %tobool39.not, i32 0, i32 131072
  %fetch_type = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 10
  %124 = ptrtoint ptr %fetch_type to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fetch_type, align 4
  %shl.i188 = shl i32 %125, 19
  %and.i189 = and i32 %shl.i188, 1572864
  %chroma_sample = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 11
  %126 = ptrtoint ptr %chroma_sample to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %chroma_sample, align 4
  %shl.i190 = shl i32 %127, 23
  %and.i191 = and i32 %shl.i190, 25165824
  %or38 = or i32 %or34, %cond41
  %or42 = or i32 %or38, %and.i187
  %or44 = or i32 %or42, %and.i189
  %or46 = or i32 %or44, %and.i191
  %128 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp.i193 = icmp slt i32 %129, 1
  br i1 %cmp.i193, label %do.end.i194, label %REG_MDP5_PIPE_SRC_FORMAT.exit.mdp5_write.exit197_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_FORMAT.exit.mdp5_write.exit197_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_FORMAT.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit197

do.end.i194:                                      ; preds = %REG_MDP5_PIPE_SRC_FORMAT.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit197

mdp5_write.exit197:                               ; preds = %do.end.i194, %REG_MDP5_PIPE_SRC_FORMAT.exit.mdp5_write.exit197_crit_edge
  %130 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %131, i32 %add.i176
  tail call void @msm_writel(i32 noundef %or46, ptr noundef %add.ptr.i196) #6
  %132 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %do.body45.i.i223 [
    i32 12, label %sw.bb41.i.i222
    i32 1, label %sw.bb3.i.i200
    i32 2, label %sw.bb4.i.i202
    i32 3, label %sw.bb8.i.i204
    i32 4, label %sw.bb12.i.i206
    i32 5, label %sw.bb15.i.i208
    i32 6, label %sw.bb19.i.i210
    i32 7, label %sw.bb23.i.i212
    i32 8, label %sw.bb26.i.i214
    i32 9, label %sw.bb30.i.i216
    i32 10, label %sw.bb34.i.i218
    i32 11, label %sw.bb38.i.i220
  ]

sw.bb3.i.i200:                                    ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %133 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i199 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %133, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb4.i.i202:                                    ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %134 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i201 = getelementptr %struct.mdp5_cfg_hw, ptr %134, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb8.i.i204:                                    ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %135 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i203 = getelementptr %struct.mdp5_cfg_hw, ptr %135, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb12.i.i206:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %136 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i205 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %136, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb15.i.i208:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %137 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i207 = getelementptr %struct.mdp5_cfg_hw, ptr %137, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb19.i.i210:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %138 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i209 = getelementptr %struct.mdp5_cfg_hw, ptr %138, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb23.i.i212:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %139 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i211 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %139, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb26.i.i214:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %140 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i213 = getelementptr %struct.mdp5_cfg_hw, ptr %140, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb30.i.i216:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %141 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i215 = getelementptr %struct.mdp5_cfg_hw, ptr %141, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb34.i.i218:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %142 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i217 = getelementptr %struct.mdp5_cfg_hw, ptr %142, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb38.i.i220:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %143 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i219 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %143, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

sw.bb41.i.i222:                                   ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %144 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i221 = getelementptr %struct.mdp5_cfg_hw, ptr %144, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_UNPACK.exit

do.body45.i.i223:                                 ; preds = %mdp5_write.exit197
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_UNPACK.exit:                    ; preds = %sw.bb41.i.i222, %sw.bb38.i.i220, %sw.bb34.i.i218, %sw.bb30.i.i216, %sw.bb26.i.i214, %sw.bb23.i.i212, %sw.bb19.i.i210, %sw.bb15.i.i208, %sw.bb12.i.i206, %sw.bb8.i.i204, %sw.bb4.i.i202, %sw.bb3.i.i200
  %retval.0.in.i.i224 = phi ptr [ %arrayidx44.i.i221, %sw.bb41.i.i222 ], [ %base39.i.i219, %sw.bb38.i.i220 ], [ %arrayidx37.i.i217, %sw.bb34.i.i218 ], [ %arrayidx33.i.i215, %sw.bb30.i.i216 ], [ %arrayidx29.i.i213, %sw.bb26.i.i214 ], [ %base24.i.i211, %sw.bb23.i.i212 ], [ %arrayidx22.i.i209, %sw.bb19.i.i210 ], [ %arrayidx18.i.i207, %sw.bb15.i.i208 ], [ %base13.i.i205, %sw.bb12.i.i206 ], [ %arrayidx11.i.i203, %sw.bb8.i.i204 ], [ %arrayidx7.i.i201, %sw.bb4.i.i202 ], [ %base.i.i199, %sw.bb3.i.i200 ]
  %145 = ptrtoint ptr %retval.0.in.i.i224 to i32
  call void @__asan_load4_noabort(i32 %145)
  %retval.0.i.i225 = load i32, ptr %retval.0.in.i.i224, align 4
  %add.i226 = add i32 %retval.0.i.i225, 52
  %unpack = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 5
  %146 = ptrtoint ptr %unpack to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %unpack, align 4
  %conv48 = zext i8 %147 to i32
  %arrayidx51 = getelementptr %struct.mdp_format, ptr %call, i32 0, i32 5, i32 1
  %148 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %149 to i32
  %shl.i228 = shl nuw nsw i32 %conv52, 8
  %or54 = or i32 %shl.i228, %conv48
  %arrayidx56 = getelementptr %struct.mdp_format, ptr %call, i32 0, i32 5, i32 2
  %150 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx56, align 2
  %conv57 = zext i8 %151 to i32
  %shl.i230 = shl nuw nsw i32 %conv57, 16
  %or59 = or i32 %or54, %shl.i230
  %arrayidx61 = getelementptr %struct.mdp_format, ptr %call, i32 0, i32 5, i32 3
  %152 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %153 to i32
  %shl.i232 = shl nuw i32 %conv62, 24
  %or64 = or i32 %or59, %shl.i232
  %154 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp.i234 = icmp slt i32 %155, 1
  br i1 %cmp.i234, label %do.end.i235, label %REG_MDP5_PIPE_SRC_UNPACK.exit.mdp5_write.exit238_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_UNPACK.exit.mdp5_write.exit238_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_UNPACK.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit238

do.end.i235:                                      ; preds = %REG_MDP5_PIPE_SRC_UNPACK.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit238

mdp5_write.exit238:                               ; preds = %do.end.i235, %REG_MDP5_PIPE_SRC_UNPACK.exit.mdp5_write.exit238_crit_edge
  %156 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i237 = getelementptr i8, ptr %157, i32 %add.i226
  tail call void @msm_writel(i32 noundef %or64, ptr noundef %add.ptr.i237) #6
  %158 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %do.body45.i.i264 [
    i32 12, label %sw.bb41.i.i263
    i32 1, label %sw.bb3.i.i241
    i32 2, label %sw.bb4.i.i243
    i32 3, label %sw.bb8.i.i245
    i32 4, label %sw.bb12.i.i247
    i32 5, label %sw.bb15.i.i249
    i32 6, label %sw.bb19.i.i251
    i32 7, label %sw.bb23.i.i253
    i32 8, label %sw.bb26.i.i255
    i32 9, label %sw.bb30.i.i257
    i32 10, label %sw.bb34.i.i259
    i32 11, label %sw.bb38.i.i261
  ]

sw.bb3.i.i241:                                    ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %159 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i240 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %159, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb4.i.i243:                                    ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %160 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i242 = getelementptr %struct.mdp5_cfg_hw, ptr %160, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb8.i.i245:                                    ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %161 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i244 = getelementptr %struct.mdp5_cfg_hw, ptr %161, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb12.i.i247:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %162 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i246 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %162, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb15.i.i249:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %163 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i248 = getelementptr %struct.mdp5_cfg_hw, ptr %163, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb19.i.i251:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %164 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i250 = getelementptr %struct.mdp5_cfg_hw, ptr %164, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb23.i.i253:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %165 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i252 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %165, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb26.i.i255:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %166 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i254 = getelementptr %struct.mdp5_cfg_hw, ptr %166, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb30.i.i257:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %167 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i256 = getelementptr %struct.mdp5_cfg_hw, ptr %167, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb34.i.i259:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %168 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i258 = getelementptr %struct.mdp5_cfg_hw, ptr %168, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb38.i.i261:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %169 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i260 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %169, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

sw.bb41.i.i263:                                   ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %170 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i262 = getelementptr %struct.mdp5_cfg_hw, ptr %170, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_OP_MODE.exit

do.body45.i.i264:                                 ; preds = %mdp5_write.exit238
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_OP_MODE.exit:                   ; preds = %sw.bb41.i.i263, %sw.bb38.i.i261, %sw.bb34.i.i259, %sw.bb30.i.i257, %sw.bb26.i.i255, %sw.bb23.i.i253, %sw.bb19.i.i251, %sw.bb15.i.i249, %sw.bb12.i.i247, %sw.bb8.i.i245, %sw.bb4.i.i243, %sw.bb3.i.i241
  %retval.0.in.i.i265 = phi ptr [ %arrayidx44.i.i262, %sw.bb41.i.i263 ], [ %base39.i.i260, %sw.bb38.i.i261 ], [ %arrayidx37.i.i258, %sw.bb34.i.i259 ], [ %arrayidx33.i.i256, %sw.bb30.i.i257 ], [ %arrayidx29.i.i254, %sw.bb26.i.i255 ], [ %base24.i.i252, %sw.bb23.i.i253 ], [ %arrayidx22.i.i250, %sw.bb19.i.i251 ], [ %arrayidx18.i.i248, %sw.bb15.i.i249 ], [ %base13.i.i246, %sw.bb12.i.i247 ], [ %arrayidx11.i.i244, %sw.bb8.i.i245 ], [ %arrayidx7.i.i242, %sw.bb4.i.i243 ], [ %base.i.i240, %sw.bb3.i.i241 ]
  %171 = ptrtoint ptr %retval.0.in.i.i265 to i32
  call void @__asan_load4_noabort(i32 %171)
  %retval.0.i.i266 = load i32, ptr %retval.0.in.i.i265, align 4
  %add.i267 = add i32 %retval.0.i.i266, 56
  %cond68 = select i1 %hflip, i32 8192, i32 0
  %cond71 = select i1 %vflip, i32 16384, i32 0
  %or72 = or i32 %cond71, %cond68
  %and = shl i32 %3, 26
  %172 = and i32 %and, -2147483648
  %or76 = or i32 %or72, %172
  %173 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.i269 = icmp slt i32 %174, 1
  br i1 %cmp.i269, label %do.end.i270, label %REG_MDP5_PIPE_SRC_OP_MODE.exit.mdp5_write.exit273_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_OP_MODE.exit.mdp5_write.exit273_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_OP_MODE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit273

do.end.i270:                                      ; preds = %REG_MDP5_PIPE_SRC_OP_MODE.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit273

mdp5_write.exit273:                               ; preds = %do.end.i270, %REG_MDP5_PIPE_SRC_OP_MODE.exit.mdp5_write.exit273_crit_edge
  %175 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i272 = getelementptr i8, ptr %176, i32 %add.i267
  tail call void @msm_writel(i32 noundef %or76, ptr noundef %add.ptr.i272) #6
  %177 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %1, label %do.body45.i.i299 [
    i32 12, label %sw.bb41.i.i298
    i32 1, label %sw.bb3.i.i276
    i32 2, label %sw.bb4.i.i278
    i32 3, label %sw.bb8.i.i280
    i32 4, label %sw.bb12.i.i282
    i32 5, label %sw.bb15.i.i284
    i32 6, label %sw.bb19.i.i286
    i32 7, label %sw.bb23.i.i288
    i32 8, label %sw.bb26.i.i290
    i32 9, label %sw.bb30.i.i292
    i32 10, label %sw.bb34.i.i294
    i32 11, label %sw.bb38.i.i296
  ]

sw.bb3.i.i276:                                    ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %178 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i275 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %178, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb4.i.i278:                                    ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %179 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i277 = getelementptr %struct.mdp5_cfg_hw, ptr %179, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb8.i.i280:                                    ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %180 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i279 = getelementptr %struct.mdp5_cfg_hw, ptr %180, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb12.i.i282:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %181 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i281 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %181, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb15.i.i284:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %182 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i283 = getelementptr %struct.mdp5_cfg_hw, ptr %182, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb19.i.i286:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %183 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i285 = getelementptr %struct.mdp5_cfg_hw, ptr %183, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb23.i.i288:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %184 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i287 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %184, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb26.i.i290:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %185 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i289 = getelementptr %struct.mdp5_cfg_hw, ptr %185, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb30.i.i292:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %186 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i291 = getelementptr %struct.mdp5_cfg_hw, ptr %186, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb34.i.i294:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %187 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i293 = getelementptr %struct.mdp5_cfg_hw, ptr %187, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb38.i.i296:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %188 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i295 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %188, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

sw.bb41.i.i298:                                   ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %189 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i297 = getelementptr %struct.mdp5_cfg_hw, ptr %189, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit

do.body45.i.i299:                                 ; preds = %mdp5_write.exit273
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit:            ; preds = %sw.bb41.i.i298, %sw.bb38.i.i296, %sw.bb34.i.i294, %sw.bb30.i.i292, %sw.bb26.i.i290, %sw.bb23.i.i288, %sw.bb19.i.i286, %sw.bb15.i.i284, %sw.bb12.i.i282, %sw.bb8.i.i280, %sw.bb4.i.i278, %sw.bb3.i.i276
  %retval.0.in.i.i300 = phi ptr [ %arrayidx44.i.i297, %sw.bb41.i.i298 ], [ %base39.i.i295, %sw.bb38.i.i296 ], [ %arrayidx37.i.i293, %sw.bb34.i.i294 ], [ %arrayidx33.i.i291, %sw.bb30.i.i292 ], [ %arrayidx29.i.i289, %sw.bb26.i.i290 ], [ %base24.i.i287, %sw.bb23.i.i288 ], [ %arrayidx22.i.i285, %sw.bb19.i.i286 ], [ %arrayidx18.i.i283, %sw.bb15.i.i284 ], [ %base13.i.i281, %sw.bb12.i.i282 ], [ %arrayidx11.i.i279, %sw.bb8.i.i280 ], [ %arrayidx7.i.i277, %sw.bb4.i.i278 ], [ %base.i.i275, %sw.bb3.i.i276 ]
  %190 = ptrtoint ptr %retval.0.in.i.i300 to i32
  call void @__asan_load4_noabort(i32 %190)
  %retval.0.i.i301 = load i32, ptr %retval.0.in.i.i300, align 4
  %add.i302 = add i32 %retval.0.i.i301, 112
  %191 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp.i304 = icmp slt i32 %192, 1
  br i1 %cmp.i304, label %do.end.i305, label %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit.mdp5_write.exit308_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit.mdp5_write.exit308_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit308

do.end.i305:                                      ; preds = %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit308

mdp5_write.exit308:                               ; preds = %do.end.i305, %REG_MDP5_PIPE_SRC_ADDR_SW_STATUS.exit.mdp5_write.exit308_crit_edge
  %193 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %194, i32 %add.i302
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i307) #6
  %195 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %caps, align 4
  %and81 = and i32 %196, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %mdp5_write.exit308.if.end_crit_edge, label %if.then

mdp5_write.exit308.if.end_crit_edge:              ; preds = %mdp5_write.exit308
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %mdp5_write.exit308
  %right = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 1
  %top = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 2
  %bottom = getelementptr inbounds %struct.pixel_ext, ptr %pe, i32 0, i32 3
  %197 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %call, align 4
  %call.i = tail call ptr @drm_format_info(i32 noundef %198) #6
  %is_yuv.i = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 12
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 6
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %mdp5_write.exit229.i.for.body.i_crit_edge, %if.then
  %i.0234.i = phi i32 [ 0, %if.then ], [ %inc.i, %mdp5_write.exit229.i.for.body.i_crit_edge ]
  %199 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %is_yuv.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i = icmp ne i8 %200, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0234.i)
  %cmp1.i = icmp eq i32 %i.0234.i, 1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %hsub.i, align 2
  %conv.i = zext i8 %202 to i32
  %div.i = udiv i32 %src_w, %conv.i
  %203 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %vsub.i, align 1
  %conv2.i = zext i8 %204 to i32
  %div3.i = udiv i32 %src_h, %conv2.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %roi_w.0.i = phi i32 [ %div.i, %if.then.i ], [ %src_w, %for.body.i.if.end.i_crit_edge ]
  %roi_h.0.i = phi i32 [ %div3.i, %if.then.i ], [ %src_h, %for.body.i.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %pe, i32 %i.0234.i
  %205 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %206, 255
  %shl.i.i = shl i32 %206, 8
  %and.i137.i = and i32 %shl.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp4230.i = icmp slt i32 %206, 0
  %cond.i = select i1 %cmp4230.i, i32 %and.i137.i, i32 %and.i.i
  %arrayidx10.i = getelementptr i32, ptr %right, i32 %i.0234.i
  %207 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx10.i, align 4
  %shl.i138.i = shl i32 %208, 16
  %and.i139.i = and i32 %shl.i138.i, 16711680
  %shl.i140.i = shl i32 %208, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp11231.i = icmp slt i32 %208, 0
  %cond20.i = select i1 %cmp11231.i, i32 %shl.i140.i, i32 %and.i139.i
  %or.i = or i32 %cond20.i, %cond.i
  %arrayidx21.i = getelementptr i32, ptr %top, i32 %i.0234.i
  %209 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx21.i, align 4
  %and.i141.i = and i32 %210, 255
  %shl.i142.i = shl i32 %210, 8
  %and.i143.i = and i32 %shl.i142.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp22232.i = icmp slt i32 %210, 0
  %cond31.i = select i1 %cmp22232.i, i32 %and.i143.i, i32 %and.i141.i
  %arrayidx32.i = getelementptr i32, ptr %bottom, i32 %i.0234.i
  %211 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx32.i, align 4
  %shl.i144.i = shl i32 %212, 16
  %and.i145.i = and i32 %shl.i144.i, 16711680
  %shl.i146.i = shl i32 %212, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp33233.i = icmp slt i32 %212, 0
  %cond42.i = select i1 %cmp33233.i, i32 %shl.i146.i, i32 %and.i145.i
  %or43.i = or i32 %cond42.i, %cond31.i
  %add.i309 = add i32 %206, %roi_w.0.i
  %add46.i = add i32 %add.i309, %208
  %and.i147.i = and i32 %add46.i, 65535
  %add49.i = add i32 %210, %roi_h.0.i
  %add51.i = add i32 %add49.i, %212
  %shl.i148.i = shl i32 %add51.i, 16
  %or53.i = or i32 %shl.i148.i, %and.i147.i
  %213 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %do.body45.i.i.i [
    i32 12, label %sw.bb41.i.i.i
    i32 1, label %sw.bb3.i.i.i
    i32 2, label %sw.bb4.i.i.i
    i32 3, label %sw.bb8.i.i.i
    i32 4, label %sw.bb12.i.i.i
    i32 5, label %sw.bb15.i.i.i
    i32 6, label %sw.bb19.i.i.i
    i32 7, label %sw.bb23.i.i.i
    i32 8, label %sw.bb26.i.i.i
    i32 9, label %sw.bb30.i.i.i
    i32 10, label %sw.bb34.i.i.i
    i32 11, label %sw.bb38.i.i.i
  ]

sw.bb3.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %214 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %214, i32 0, i32 4, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %215 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %215, i32 0, i32 4, i32 1, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %216 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %216, i32 0, i32 4, i32 1, i32 2
  br label %__offset_PIPE.exit.i.i

sw.bb12.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %217 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %217, i32 0, i32 5, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb15.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %218 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %218, i32 0, i32 5, i32 1, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb19.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %219 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %219, i32 0, i32 5, i32 1, i32 2
  br label %__offset_PIPE.exit.i.i

sw.bb23.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %220 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %220, i32 0, i32 6, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb26.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %221 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %221, i32 0, i32 6, i32 1, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb30.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %222 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %222, i32 0, i32 4, i32 1, i32 3
  br label %__offset_PIPE.exit.i.i

sw.bb34.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %223 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %223, i32 0, i32 5, i32 1, i32 3
  br label %__offset_PIPE.exit.i.i

sw.bb38.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %224 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %224, i32 0, i32 7, i32 1
  br label %__offset_PIPE.exit.i.i

sw.bb41.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %225 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %225, i32 0, i32 7, i32 1, i32 1
  br label %__offset_PIPE.exit.i.i

do.body45.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

__offset_PIPE.exit.i.i:                           ; preds = %sw.bb41.i.i.i, %sw.bb38.i.i.i, %sw.bb34.i.i.i, %sw.bb30.i.i.i, %sw.bb26.i.i.i, %sw.bb23.i.i.i, %sw.bb19.i.i.i, %sw.bb15.i.i.i, %sw.bb12.i.i.i, %sw.bb8.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx44.i.i.i, %sw.bb41.i.i.i ], [ %base39.i.i.i, %sw.bb38.i.i.i ], [ %arrayidx37.i.i.i, %sw.bb34.i.i.i ], [ %arrayidx33.i.i.i, %sw.bb30.i.i.i ], [ %arrayidx29.i.i.i, %sw.bb26.i.i.i ], [ %base24.i.i.i, %sw.bb23.i.i.i ], [ %arrayidx22.i.i.i, %sw.bb19.i.i.i ], [ %arrayidx18.i.i.i, %sw.bb15.i.i.i ], [ %base13.i.i.i, %sw.bb12.i.i.i ], [ %arrayidx11.i.i.i, %sw.bb8.i.i.i ], [ %arrayidx7.i.i.i, %sw.bb4.i.i.i ], [ %base.i.i.i, %sw.bb3.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0234.i)
  %226 = icmp ult i32 %i.0234.i, 3
  br i1 %226, label %switch.lookup, label %do.body.i3.i.i

do.body.i3.i.i:                                   ; preds = %__offset_PIPE.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #6, !srcloc !81
  unreachable

switch.lookup:                                    ; preds = %__offset_PIPE.exit.i.i
  %227 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %switch.idx.mult = shl i32 %i.0234.i, 4
  %switch.offset = add i32 %switch.idx.mult, 256
  %add2.i.i = add i32 %switch.offset, %retval.0.i.i.i
  %228 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %229)
  %cmp.i.i = icmp slt i32 %229, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %switch.lookup.mdp5_write.exit.i_crit_edge, !prof !74

switch.lookup.mdp5_write.exit.i_crit_edge:        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit.i

do.end.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit.i

mdp5_write.exit.i:                                ; preds = %do.end.i.i, %switch.lookup.mdp5_write.exit.i_crit_edge
  %230 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %231, i32 %add2.i.i
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i.i) #6
  %232 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %do.body45.i.i174.i [
    i32 12, label %sw.bb41.i.i173.i
    i32 1, label %sw.bb3.i.i151.i
    i32 2, label %sw.bb4.i.i153.i
    i32 3, label %sw.bb8.i.i155.i
    i32 4, label %sw.bb12.i.i157.i
    i32 5, label %sw.bb15.i.i159.i
    i32 6, label %sw.bb19.i.i161.i
    i32 7, label %sw.bb23.i.i163.i
    i32 8, label %sw.bb26.i.i165.i
    i32 9, label %sw.bb30.i.i167.i
    i32 10, label %sw.bb34.i.i169.i
    i32 11, label %sw.bb38.i.i171.i
  ]

sw.bb3.i.i151.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %233 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i150.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %233, i32 0, i32 4, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb4.i.i153.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %234 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i152.i = getelementptr %struct.mdp5_cfg_hw, ptr %234, i32 0, i32 4, i32 1, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb8.i.i155.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %235 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i154.i = getelementptr %struct.mdp5_cfg_hw, ptr %235, i32 0, i32 4, i32 1, i32 2
  br label %__offset_PIPE.exit.i177.i

sw.bb12.i.i157.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %236 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i156.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %236, i32 0, i32 5, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb15.i.i159.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %237 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i158.i = getelementptr %struct.mdp5_cfg_hw, ptr %237, i32 0, i32 5, i32 1, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb19.i.i161.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %238 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i160.i = getelementptr %struct.mdp5_cfg_hw, ptr %238, i32 0, i32 5, i32 1, i32 2
  br label %__offset_PIPE.exit.i177.i

sw.bb23.i.i163.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %239 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i162.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %239, i32 0, i32 6, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb26.i.i165.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %240 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i164.i = getelementptr %struct.mdp5_cfg_hw, ptr %240, i32 0, i32 6, i32 1, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb30.i.i167.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %241 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i166.i = getelementptr %struct.mdp5_cfg_hw, ptr %241, i32 0, i32 4, i32 1, i32 3
  br label %__offset_PIPE.exit.i177.i

sw.bb34.i.i169.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %242 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i168.i = getelementptr %struct.mdp5_cfg_hw, ptr %242, i32 0, i32 5, i32 1, i32 3
  br label %__offset_PIPE.exit.i177.i

sw.bb38.i.i171.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %243 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i170.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %243, i32 0, i32 7, i32 1
  br label %__offset_PIPE.exit.i177.i

sw.bb41.i.i173.i:                                 ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %244 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i172.i = getelementptr %struct.mdp5_cfg_hw, ptr %244, i32 0, i32 7, i32 1, i32 1
  br label %__offset_PIPE.exit.i177.i

do.body45.i.i174.i:                               ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

__offset_PIPE.exit.i177.i:                        ; preds = %sw.bb41.i.i173.i, %sw.bb38.i.i171.i, %sw.bb34.i.i169.i, %sw.bb30.i.i167.i, %sw.bb26.i.i165.i, %sw.bb23.i.i163.i, %sw.bb19.i.i161.i, %sw.bb15.i.i159.i, %sw.bb12.i.i157.i, %sw.bb8.i.i155.i, %sw.bb4.i.i153.i, %sw.bb3.i.i151.i
  %retval.0.in.i.i175.i = phi ptr [ %arrayidx44.i.i172.i, %sw.bb41.i.i173.i ], [ %base39.i.i170.i, %sw.bb38.i.i171.i ], [ %arrayidx37.i.i168.i, %sw.bb34.i.i169.i ], [ %arrayidx33.i.i166.i, %sw.bb30.i.i167.i ], [ %arrayidx29.i.i164.i, %sw.bb26.i.i165.i ], [ %base24.i.i162.i, %sw.bb23.i.i163.i ], [ %arrayidx22.i.i160.i, %sw.bb19.i.i161.i ], [ %arrayidx18.i.i158.i, %sw.bb15.i.i159.i ], [ %base13.i.i156.i, %sw.bb12.i.i157.i ], [ %arrayidx11.i.i154.i, %sw.bb8.i.i155.i ], [ %arrayidx7.i.i152.i, %sw.bb4.i.i153.i ], [ %base.i.i150.i, %sw.bb3.i.i151.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0234.i)
  %245 = icmp ult i32 %i.0234.i, 3
  br i1 %245, label %switch.lookup646, label %do.body.i3.i180.i

do.body.i3.i180.i:                                ; preds = %__offset_PIPE.exit.i177.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #6, !srcloc !81
  unreachable

switch.lookup646:                                 ; preds = %__offset_PIPE.exit.i177.i
  %246 = ptrtoint ptr %retval.0.in.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %retval.0.i.i176.i = load i32, ptr %retval.0.in.i.i175.i, align 4
  %switch.idx.mult647 = shl i32 %i.0234.i, 4
  %switch.offset648 = add i32 %retval.0.i.i176.i, %switch.idx.mult647
  %add2.i182.i = add i32 %switch.offset648, 260
  %247 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp.i184.i = icmp slt i32 %248, 1
  br i1 %cmp.i184.i, label %do.end.i185.i, label %switch.lookup646.mdp5_write.exit188.i_crit_edge, !prof !74

switch.lookup646.mdp5_write.exit188.i_crit_edge:  ; preds = %switch.lookup646
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit188.i

do.end.i185.i:                                    ; preds = %switch.lookup646
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit188.i

mdp5_write.exit188.i:                             ; preds = %do.end.i185.i, %switch.lookup646.mdp5_write.exit188.i_crit_edge
  %249 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %250, i32 %add2.i182.i
  tail call void @msm_writel(i32 noundef %or43.i, ptr noundef %add.ptr.i187.i) #6
  %251 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %do.body45.i.i214.i [
    i32 12, label %sw.bb41.i.i213.i
    i32 1, label %sw.bb3.i.i191.i
    i32 2, label %sw.bb4.i.i193.i
    i32 3, label %sw.bb8.i.i195.i
    i32 4, label %sw.bb12.i.i197.i
    i32 5, label %sw.bb15.i.i199.i
    i32 6, label %sw.bb19.i.i201.i
    i32 7, label %sw.bb23.i.i203.i
    i32 8, label %sw.bb26.i.i205.i
    i32 9, label %sw.bb30.i.i207.i
    i32 10, label %sw.bb34.i.i209.i
    i32 11, label %sw.bb38.i.i211.i
  ]

sw.bb3.i.i191.i:                                  ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %252 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i190.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %252, i32 0, i32 4, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb4.i.i193.i:                                  ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %253 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i192.i = getelementptr %struct.mdp5_cfg_hw, ptr %253, i32 0, i32 4, i32 1, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb8.i.i195.i:                                  ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %254 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i194.i = getelementptr %struct.mdp5_cfg_hw, ptr %254, i32 0, i32 4, i32 1, i32 2
  br label %__offset_PIPE.exit.i217.i

sw.bb12.i.i197.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %255 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i196.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %255, i32 0, i32 5, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb15.i.i199.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %256 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i198.i = getelementptr %struct.mdp5_cfg_hw, ptr %256, i32 0, i32 5, i32 1, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb19.i.i201.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %257 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i200.i = getelementptr %struct.mdp5_cfg_hw, ptr %257, i32 0, i32 5, i32 1, i32 2
  br label %__offset_PIPE.exit.i217.i

sw.bb23.i.i203.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %258 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i202.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %258, i32 0, i32 6, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb26.i.i205.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %259 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i204.i = getelementptr %struct.mdp5_cfg_hw, ptr %259, i32 0, i32 6, i32 1, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb30.i.i207.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %260 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i206.i = getelementptr %struct.mdp5_cfg_hw, ptr %260, i32 0, i32 4, i32 1, i32 3
  br label %__offset_PIPE.exit.i217.i

sw.bb34.i.i209.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %261 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i208.i = getelementptr %struct.mdp5_cfg_hw, ptr %261, i32 0, i32 5, i32 1, i32 3
  br label %__offset_PIPE.exit.i217.i

sw.bb38.i.i211.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %262 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i210.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %262, i32 0, i32 7, i32 1
  br label %__offset_PIPE.exit.i217.i

sw.bb41.i.i213.i:                                 ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %263 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i212.i = getelementptr %struct.mdp5_cfg_hw, ptr %263, i32 0, i32 7, i32 1, i32 1
  br label %__offset_PIPE.exit.i217.i

do.body45.i.i214.i:                               ; preds = %mdp5_write.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

__offset_PIPE.exit.i217.i:                        ; preds = %sw.bb41.i.i213.i, %sw.bb38.i.i211.i, %sw.bb34.i.i209.i, %sw.bb30.i.i207.i, %sw.bb26.i.i205.i, %sw.bb23.i.i203.i, %sw.bb19.i.i201.i, %sw.bb15.i.i199.i, %sw.bb12.i.i197.i, %sw.bb8.i.i195.i, %sw.bb4.i.i193.i, %sw.bb3.i.i191.i
  %retval.0.in.i.i215.i = phi ptr [ %arrayidx44.i.i212.i, %sw.bb41.i.i213.i ], [ %base39.i.i210.i, %sw.bb38.i.i211.i ], [ %arrayidx37.i.i208.i, %sw.bb34.i.i209.i ], [ %arrayidx33.i.i206.i, %sw.bb30.i.i207.i ], [ %arrayidx29.i.i204.i, %sw.bb26.i.i205.i ], [ %base24.i.i202.i, %sw.bb23.i.i203.i ], [ %arrayidx22.i.i200.i, %sw.bb19.i.i201.i ], [ %arrayidx18.i.i198.i, %sw.bb15.i.i199.i ], [ %base13.i.i196.i, %sw.bb12.i.i197.i ], [ %arrayidx11.i.i194.i, %sw.bb8.i.i195.i ], [ %arrayidx7.i.i192.i, %sw.bb4.i.i193.i ], [ %base.i.i190.i, %sw.bb3.i.i191.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0234.i)
  %264 = icmp ult i32 %i.0234.i, 3
  br i1 %264, label %switch.lookup649, label %do.body.i3.i220.i

do.body.i3.i220.i:                                ; preds = %__offset_PIPE.exit.i217.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #6, !srcloc !81
  unreachable

switch.lookup649:                                 ; preds = %__offset_PIPE.exit.i217.i
  %265 = ptrtoint ptr %retval.0.in.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %retval.0.i.i216.i = load i32, ptr %retval.0.in.i.i215.i, align 4
  %switch.idx.mult650 = shl i32 %i.0234.i, 4
  %switch.offset651 = add i32 %retval.0.i.i216.i, %switch.idx.mult650
  %add2.i223.i = add i32 %switch.offset651, 264
  %266 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %267)
  %cmp.i225.i = icmp slt i32 %267, 1
  br i1 %cmp.i225.i, label %do.end.i226.i, label %switch.lookup649.mdp5_write.exit229.i_crit_edge, !prof !74

switch.lookup649.mdp5_write.exit229.i_crit_edge:  ; preds = %switch.lookup649
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit229.i

do.end.i226.i:                                    ; preds = %switch.lookup649
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit229.i

mdp5_write.exit229.i:                             ; preds = %do.end.i226.i, %switch.lookup649.mdp5_write.exit229.i_crit_edge
  %268 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %269, i32 %add2.i223.i
  tail call void @msm_writel(i32 noundef %or53.i, ptr noundef %add.ptr.i228.i) #6
  %and.i310 = and i32 %cond.i, 255
  %and57.i = lshr exact i32 %cond20.i, 16
  %shr58.i = and i32 %and57.i, 255
  %and59.i = lshr i32 %cond.i, 8
  %shr62.i = lshr i32 %cond20.i, 24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %i.0234.i, i32 noundef %and.i310, i32 noundef %shr58.i, i32 noundef %and59.i, i32 noundef %shr62.i, i32 noundef %and.i147.i) #6
  %and65.i = and i32 %cond31.i, 255
  %and67.i = lshr exact i32 %cond42.i, 16
  %shr68.i = and i32 %and67.i, 255
  %and69.i = lshr i32 %cond31.i, 8
  %shr72.i = lshr i32 %cond42.i, 24
  %shr74.i = and i32 %add51.i, 65535
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %i.0234.i, i32 noundef %and65.i, i32 noundef %shr68.i, i32 noundef %and69.i, i32 noundef %shr72.i, i32 noundef %shr74.i) #6
  %inc.i = add nuw nsw i32 %i.0234.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %mdp5_write.exit229.i.if.end_crit_edge, label %mdp5_write.exit229.i.for.body.i_crit_edge

mdp5_write.exit229.i.for.body.i_crit_edge:        ; preds = %mdp5_write.exit229.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mdp5_write.exit229.i.if.end_crit_edge:            ; preds = %mdp5_write.exit229.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %mdp5_write.exit229.i.if.end_crit_edge, %mdp5_write.exit308.if.end_crit_edge
  %270 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %caps, align 4
  %and87 = and i32 %271, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end.if.end105_crit_edge, label %if.then89

if.end.if.end105_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then89:                                        ; preds = %if.end
  %272 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %272, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %1, label %do.body45.i.i336 [
    i32 12, label %sw.bb41.i.i335
    i32 1, label %sw.bb3.i.i313
    i32 2, label %sw.bb4.i.i315
    i32 3, label %sw.bb8.i.i317
    i32 4, label %sw.bb12.i.i319
    i32 5, label %sw.bb15.i.i321
    i32 6, label %sw.bb19.i.i323
    i32 7, label %sw.bb23.i.i325
    i32 8, label %sw.bb26.i.i327
    i32 9, label %sw.bb30.i.i329
    i32 10, label %sw.bb34.i.i331
    i32 11, label %sw.bb38.i.i333
  ]

sw.bb3.i.i313:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %273 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i312 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %273, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb4.i.i315:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %274 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i314 = getelementptr %struct.mdp5_cfg_hw, ptr %274, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb8.i.i317:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %275 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i316 = getelementptr %struct.mdp5_cfg_hw, ptr %275, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb12.i.i319:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %276 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i318 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %276, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb15.i.i321:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %277 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i320 = getelementptr %struct.mdp5_cfg_hw, ptr %277, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb19.i.i323:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %278 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i322 = getelementptr %struct.mdp5_cfg_hw, ptr %278, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb23.i.i325:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %279 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i324 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %279, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb26.i.i327:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %280 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i326 = getelementptr %struct.mdp5_cfg_hw, ptr %280, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb30.i.i329:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %281 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i328 = getelementptr %struct.mdp5_cfg_hw, ptr %281, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb34.i.i331:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %282 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i330 = getelementptr %struct.mdp5_cfg_hw, ptr %282, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb38.i.i333:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %283 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i332 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %283, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

sw.bb41.i.i335:                                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %284 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i334 = getelementptr %struct.mdp5_cfg_hw, ptr %284, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit

do.body45.i.i336:                                 ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit:            ; preds = %sw.bb41.i.i335, %sw.bb38.i.i333, %sw.bb34.i.i331, %sw.bb30.i.i329, %sw.bb26.i.i327, %sw.bb23.i.i325, %sw.bb19.i.i323, %sw.bb15.i.i321, %sw.bb12.i.i319, %sw.bb8.i.i317, %sw.bb4.i.i315, %sw.bb3.i.i313
  %retval.0.in.i.i337 = phi ptr [ %arrayidx44.i.i334, %sw.bb41.i.i335 ], [ %base39.i.i332, %sw.bb38.i.i333 ], [ %arrayidx37.i.i330, %sw.bb34.i.i331 ], [ %arrayidx33.i.i328, %sw.bb30.i.i329 ], [ %arrayidx29.i.i326, %sw.bb26.i.i327 ], [ %base24.i.i324, %sw.bb23.i.i325 ], [ %arrayidx22.i.i322, %sw.bb19.i.i323 ], [ %arrayidx18.i.i320, %sw.bb15.i.i321 ], [ %base13.i.i318, %sw.bb12.i.i319 ], [ %arrayidx11.i.i316, %sw.bb8.i.i317 ], [ %arrayidx7.i.i314, %sw.bb4.i.i315 ], [ %base.i.i312, %sw.bb3.i.i313 ]
  %285 = ptrtoint ptr %retval.0.in.i.i337 to i32
  call void @__asan_load4_noabort(i32 %285)
  %retval.0.i.i338 = load i32, ptr %retval.0.in.i.i337, align 4
  %add.i339 = add i32 %retval.0.i.i338, 528
  %286 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %step, align 4
  %288 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %289)
  %cmp.i341 = icmp slt i32 %289, 1
  br i1 %cmp.i341, label %do.end.i342, label %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit.mdp5_write.exit346_crit_edge, !prof !74

REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit.mdp5_write.exit346_crit_edge: ; preds = %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit346

do.end.i342:                                      ; preds = %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit346

mdp5_write.exit346:                               ; preds = %do.end.i342, %REG_MDP5_PIPE_SCALE_PHASE_STEP_X.exit.mdp5_write.exit346_crit_edge
  %290 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i344 = getelementptr i8, ptr %291, i32 %add.i339
  tail call void @msm_writel(i32 noundef %287, ptr noundef %add.ptr.i344) #6
  %292 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %292, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %do.body45.i.i372 [
    i32 12, label %sw.bb41.i.i371
    i32 1, label %sw.bb3.i.i349
    i32 2, label %sw.bb4.i.i351
    i32 3, label %sw.bb8.i.i353
    i32 4, label %sw.bb12.i.i355
    i32 5, label %sw.bb15.i.i357
    i32 6, label %sw.bb19.i.i359
    i32 7, label %sw.bb23.i.i361
    i32 8, label %sw.bb26.i.i363
    i32 9, label %sw.bb30.i.i365
    i32 10, label %sw.bb34.i.i367
    i32 11, label %sw.bb38.i.i369
  ]

sw.bb3.i.i349:                                    ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %293 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i348 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %293, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb4.i.i351:                                    ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %294 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i350 = getelementptr %struct.mdp5_cfg_hw, ptr %294, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb8.i.i353:                                    ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %295 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i352 = getelementptr %struct.mdp5_cfg_hw, ptr %295, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb12.i.i355:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %296 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i354 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %296, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb15.i.i357:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %297 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i356 = getelementptr %struct.mdp5_cfg_hw, ptr %297, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb19.i.i359:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %298 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i358 = getelementptr %struct.mdp5_cfg_hw, ptr %298, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb23.i.i361:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %299 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i360 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %299, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb26.i.i363:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %300 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i362 = getelementptr %struct.mdp5_cfg_hw, ptr %300, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb30.i.i365:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %301 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i364 = getelementptr %struct.mdp5_cfg_hw, ptr %301, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb34.i.i367:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %302 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i366 = getelementptr %struct.mdp5_cfg_hw, ptr %302, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb38.i.i369:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %303 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i368 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %303, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

sw.bb41.i.i371:                                   ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %304 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i370 = getelementptr %struct.mdp5_cfg_hw, ptr %304, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit

do.body45.i.i372:                                 ; preds = %mdp5_write.exit346
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit:            ; preds = %sw.bb41.i.i371, %sw.bb38.i.i369, %sw.bb34.i.i367, %sw.bb30.i.i365, %sw.bb26.i.i363, %sw.bb23.i.i361, %sw.bb19.i.i359, %sw.bb15.i.i357, %sw.bb12.i.i355, %sw.bb8.i.i353, %sw.bb4.i.i351, %sw.bb3.i.i349
  %retval.0.in.i.i373 = phi ptr [ %arrayidx44.i.i370, %sw.bb41.i.i371 ], [ %base39.i.i368, %sw.bb38.i.i369 ], [ %arrayidx37.i.i366, %sw.bb34.i.i367 ], [ %arrayidx33.i.i364, %sw.bb30.i.i365 ], [ %arrayidx29.i.i362, %sw.bb26.i.i363 ], [ %base24.i.i360, %sw.bb23.i.i361 ], [ %arrayidx22.i.i358, %sw.bb19.i.i359 ], [ %arrayidx18.i.i356, %sw.bb15.i.i357 ], [ %base13.i.i354, %sw.bb12.i.i355 ], [ %arrayidx11.i.i352, %sw.bb8.i.i353 ], [ %arrayidx7.i.i350, %sw.bb4.i.i351 ], [ %base.i.i348, %sw.bb3.i.i349 ]
  %305 = ptrtoint ptr %retval.0.in.i.i373 to i32
  call void @__asan_load4_noabort(i32 %305)
  %retval.0.i.i374 = load i32, ptr %retval.0.in.i.i373, align 4
  %add.i375 = add i32 %retval.0.i.i374, 532
  %y = getelementptr inbounds %struct.phase_step, ptr %step, i32 0, i32 1
  %306 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %y, align 4
  %308 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %309)
  %cmp.i377 = icmp slt i32 %309, 1
  br i1 %cmp.i377, label %do.end.i378, label %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit.mdp5_write.exit382_crit_edge, !prof !74

REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit.mdp5_write.exit382_crit_edge: ; preds = %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit382

do.end.i378:                                      ; preds = %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit382

mdp5_write.exit382:                               ; preds = %do.end.i378, %REG_MDP5_PIPE_SCALE_PHASE_STEP_Y.exit.mdp5_write.exit382_crit_edge
  %310 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i380 = getelementptr i8, ptr %311, i32 %add.i375
  tail call void @msm_writel(i32 noundef %307, ptr noundef %add.ptr.i380) #6
  %312 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %312, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %do.body45.i.i408 [
    i32 12, label %sw.bb41.i.i407
    i32 1, label %sw.bb3.i.i385
    i32 2, label %sw.bb4.i.i387
    i32 3, label %sw.bb8.i.i389
    i32 4, label %sw.bb12.i.i391
    i32 5, label %sw.bb15.i.i393
    i32 6, label %sw.bb19.i.i395
    i32 7, label %sw.bb23.i.i397
    i32 8, label %sw.bb26.i.i399
    i32 9, label %sw.bb30.i.i401
    i32 10, label %sw.bb34.i.i403
    i32 11, label %sw.bb38.i.i405
  ]

sw.bb3.i.i385:                                    ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %313 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i384 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %313, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb4.i.i387:                                    ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %314 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i386 = getelementptr %struct.mdp5_cfg_hw, ptr %314, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb8.i.i389:                                    ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %315 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i388 = getelementptr %struct.mdp5_cfg_hw, ptr %315, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb12.i.i391:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %316 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i390 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %316, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb15.i.i393:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %317 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i392 = getelementptr %struct.mdp5_cfg_hw, ptr %317, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb19.i.i395:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %318 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i394 = getelementptr %struct.mdp5_cfg_hw, ptr %318, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb23.i.i397:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %319 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i396 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %319, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb26.i.i399:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %320 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i398 = getelementptr %struct.mdp5_cfg_hw, ptr %320, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb30.i.i401:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %321 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i400 = getelementptr %struct.mdp5_cfg_hw, ptr %321, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb34.i.i403:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %322 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i402 = getelementptr %struct.mdp5_cfg_hw, ptr %322, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb38.i.i405:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %323 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i404 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %323, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

sw.bb41.i.i407:                                   ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %324 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i406 = getelementptr %struct.mdp5_cfg_hw, ptr %324, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit

do.body45.i.i408:                                 ; preds = %mdp5_write.exit382
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit:         ; preds = %sw.bb41.i.i407, %sw.bb38.i.i405, %sw.bb34.i.i403, %sw.bb30.i.i401, %sw.bb26.i.i399, %sw.bb23.i.i397, %sw.bb19.i.i395, %sw.bb15.i.i393, %sw.bb12.i.i391, %sw.bb8.i.i389, %sw.bb4.i.i387, %sw.bb3.i.i385
  %retval.0.in.i.i409 = phi ptr [ %arrayidx44.i.i406, %sw.bb41.i.i407 ], [ %base39.i.i404, %sw.bb38.i.i405 ], [ %arrayidx37.i.i402, %sw.bb34.i.i403 ], [ %arrayidx33.i.i400, %sw.bb30.i.i401 ], [ %arrayidx29.i.i398, %sw.bb26.i.i399 ], [ %base24.i.i396, %sw.bb23.i.i397 ], [ %arrayidx22.i.i394, %sw.bb19.i.i395 ], [ %arrayidx18.i.i392, %sw.bb15.i.i393 ], [ %base13.i.i390, %sw.bb12.i.i391 ], [ %arrayidx11.i.i388, %sw.bb8.i.i389 ], [ %arrayidx7.i.i386, %sw.bb4.i.i387 ], [ %base.i.i384, %sw.bb3.i.i385 ]
  %325 = ptrtoint ptr %retval.0.in.i.i409 to i32
  call void @__asan_load4_noabort(i32 %325)
  %retval.0.i.i410 = load i32, ptr %retval.0.in.i.i409, align 4
  %add.i411 = add i32 %retval.0.i.i410, 536
  %arrayidx96 = getelementptr [3 x i32], ptr %step, i32 0, i32 1
  %326 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx96, align 4
  %328 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %329)
  %cmp.i413 = icmp slt i32 %329, 1
  br i1 %cmp.i413, label %do.end.i414, label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit.mdp5_write.exit418_crit_edge, !prof !74

REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit.mdp5_write.exit418_crit_edge: ; preds = %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit418

do.end.i414:                                      ; preds = %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit418

mdp5_write.exit418:                               ; preds = %do.end.i414, %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X.exit.mdp5_write.exit418_crit_edge
  %330 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i416 = getelementptr i8, ptr %331, i32 %add.i411
  tail call void @msm_writel(i32 noundef %327, ptr noundef %add.ptr.i416) #6
  %332 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %332, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %do.body45.i.i444 [
    i32 12, label %sw.bb41.i.i443
    i32 1, label %sw.bb3.i.i421
    i32 2, label %sw.bb4.i.i423
    i32 3, label %sw.bb8.i.i425
    i32 4, label %sw.bb12.i.i427
    i32 5, label %sw.bb15.i.i429
    i32 6, label %sw.bb19.i.i431
    i32 7, label %sw.bb23.i.i433
    i32 8, label %sw.bb26.i.i435
    i32 9, label %sw.bb30.i.i437
    i32 10, label %sw.bb34.i.i439
    i32 11, label %sw.bb38.i.i441
  ]

sw.bb3.i.i421:                                    ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %333 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i420 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %333, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb4.i.i423:                                    ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %334 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i422 = getelementptr %struct.mdp5_cfg_hw, ptr %334, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb8.i.i425:                                    ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %335 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i424 = getelementptr %struct.mdp5_cfg_hw, ptr %335, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb12.i.i427:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %336 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i426 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %336, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb15.i.i429:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %337 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i428 = getelementptr %struct.mdp5_cfg_hw, ptr %337, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb19.i.i431:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %338 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i430 = getelementptr %struct.mdp5_cfg_hw, ptr %338, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb23.i.i433:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %339 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i432 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %339, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb26.i.i435:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %340 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i434 = getelementptr %struct.mdp5_cfg_hw, ptr %340, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb30.i.i437:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %341 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i436 = getelementptr %struct.mdp5_cfg_hw, ptr %341, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb34.i.i439:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %342 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i438 = getelementptr %struct.mdp5_cfg_hw, ptr %342, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb38.i.i441:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %343 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i440 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %343, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

sw.bb41.i.i443:                                   ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %344 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i442 = getelementptr %struct.mdp5_cfg_hw, ptr %344, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit

do.body45.i.i444:                                 ; preds = %mdp5_write.exit418
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit:         ; preds = %sw.bb41.i.i443, %sw.bb38.i.i441, %sw.bb34.i.i439, %sw.bb30.i.i437, %sw.bb26.i.i435, %sw.bb23.i.i433, %sw.bb19.i.i431, %sw.bb15.i.i429, %sw.bb12.i.i427, %sw.bb8.i.i425, %sw.bb4.i.i423, %sw.bb3.i.i421
  %retval.0.in.i.i445 = phi ptr [ %arrayidx44.i.i442, %sw.bb41.i.i443 ], [ %base39.i.i440, %sw.bb38.i.i441 ], [ %arrayidx37.i.i438, %sw.bb34.i.i439 ], [ %arrayidx33.i.i436, %sw.bb30.i.i437 ], [ %arrayidx29.i.i434, %sw.bb26.i.i435 ], [ %base24.i.i432, %sw.bb23.i.i433 ], [ %arrayidx22.i.i430, %sw.bb19.i.i431 ], [ %arrayidx18.i.i428, %sw.bb15.i.i429 ], [ %base13.i.i426, %sw.bb12.i.i427 ], [ %arrayidx11.i.i424, %sw.bb8.i.i425 ], [ %arrayidx7.i.i422, %sw.bb4.i.i423 ], [ %base.i.i420, %sw.bb3.i.i421 ]
  %345 = ptrtoint ptr %retval.0.in.i.i445 to i32
  call void @__asan_load4_noabort(i32 %345)
  %retval.0.i.i446 = load i32, ptr %retval.0.in.i.i445, align 4
  %add.i447 = add i32 %retval.0.i.i446, 540
  %arrayidx99 = getelementptr %struct.phase_step, ptr %step, i32 0, i32 1, i32 1
  %346 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx99, align 4
  %348 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %349)
  %cmp.i449 = icmp slt i32 %349, 1
  br i1 %cmp.i449, label %do.end.i450, label %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit.mdp5_write.exit454_crit_edge, !prof !74

REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit.mdp5_write.exit454_crit_edge: ; preds = %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit454

do.end.i450:                                      ; preds = %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit454

mdp5_write.exit454:                               ; preds = %do.end.i450, %REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y.exit.mdp5_write.exit454_crit_edge
  %350 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i452 = getelementptr i8, ptr %351, i32 %add.i447
  tail call void @msm_writel(i32 noundef %347, ptr noundef %add.ptr.i452) #6
  %352 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %do.body45.i.i480 [
    i32 12, label %sw.bb41.i.i479
    i32 1, label %sw.bb3.i.i457
    i32 2, label %sw.bb4.i.i459
    i32 3, label %sw.bb8.i.i461
    i32 4, label %sw.bb12.i.i463
    i32 5, label %sw.bb15.i.i465
    i32 6, label %sw.bb19.i.i467
    i32 7, label %sw.bb23.i.i469
    i32 8, label %sw.bb26.i.i471
    i32 9, label %sw.bb30.i.i473
    i32 10, label %sw.bb34.i.i475
    i32 11, label %sw.bb38.i.i477
  ]

sw.bb3.i.i457:                                    ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %353 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i456 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %353, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb4.i.i459:                                    ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %354 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i458 = getelementptr %struct.mdp5_cfg_hw, ptr %354, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb8.i.i461:                                    ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %355 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i460 = getelementptr %struct.mdp5_cfg_hw, ptr %355, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb12.i.i463:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %356 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i462 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %356, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb15.i.i465:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %357 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i464 = getelementptr %struct.mdp5_cfg_hw, ptr %357, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb19.i.i467:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %358 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i466 = getelementptr %struct.mdp5_cfg_hw, ptr %358, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb23.i.i469:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %359 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i468 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %359, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb26.i.i471:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %360 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i470 = getelementptr %struct.mdp5_cfg_hw, ptr %360, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb30.i.i473:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %361 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i472 = getelementptr %struct.mdp5_cfg_hw, ptr %361, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb34.i.i475:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %362 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i474 = getelementptr %struct.mdp5_cfg_hw, ptr %362, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb38.i.i477:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %363 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i476 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %363, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

sw.bb41.i.i479:                                   ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %364 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i478 = getelementptr %struct.mdp5_cfg_hw, ptr %364, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_DECIMATION.exit

do.body45.i.i480:                                 ; preds = %mdp5_write.exit454
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_DECIMATION.exit:                    ; preds = %sw.bb41.i.i479, %sw.bb38.i.i477, %sw.bb34.i.i475, %sw.bb30.i.i473, %sw.bb26.i.i471, %sw.bb23.i.i469, %sw.bb19.i.i467, %sw.bb15.i.i465, %sw.bb12.i.i463, %sw.bb8.i.i461, %sw.bb4.i.i459, %sw.bb3.i.i457
  %retval.0.in.i.i481 = phi ptr [ %arrayidx44.i.i478, %sw.bb41.i.i479 ], [ %base39.i.i476, %sw.bb38.i.i477 ], [ %arrayidx37.i.i474, %sw.bb34.i.i475 ], [ %arrayidx33.i.i472, %sw.bb30.i.i473 ], [ %arrayidx29.i.i470, %sw.bb26.i.i471 ], [ %base24.i.i468, %sw.bb23.i.i469 ], [ %arrayidx22.i.i466, %sw.bb19.i.i467 ], [ %arrayidx18.i.i464, %sw.bb15.i.i465 ], [ %base13.i.i462, %sw.bb12.i.i463 ], [ %arrayidx11.i.i460, %sw.bb8.i.i461 ], [ %arrayidx7.i.i458, %sw.bb4.i.i459 ], [ %base.i.i456, %sw.bb3.i.i457 ]
  %365 = ptrtoint ptr %retval.0.in.i.i481 to i32
  call void @__asan_load4_noabort(i32 %365)
  %retval.0.i.i482 = load i32, ptr %retval.0.in.i.i481, align 4
  %add.i483 = add i32 %retval.0.i.i482, 180
  %366 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %367)
  %cmp.i485 = icmp slt i32 %367, 1
  br i1 %cmp.i485, label %do.end.i486, label %REG_MDP5_PIPE_DECIMATION.exit.mdp5_write.exit490_crit_edge, !prof !74

REG_MDP5_PIPE_DECIMATION.exit.mdp5_write.exit490_crit_edge: ; preds = %REG_MDP5_PIPE_DECIMATION.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit490

do.end.i486:                                      ; preds = %REG_MDP5_PIPE_DECIMATION.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit490

mdp5_write.exit490:                               ; preds = %do.end.i486, %REG_MDP5_PIPE_DECIMATION.exit.mdp5_write.exit490_crit_edge
  %368 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i488 = getelementptr i8, ptr %369, i32 %add.i483
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i488) #6
  %370 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %370, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %1, label %do.body45.i.i516 [
    i32 12, label %sw.bb41.i.i515
    i32 1, label %sw.bb3.i.i493
    i32 2, label %sw.bb4.i.i495
    i32 3, label %sw.bb8.i.i497
    i32 4, label %sw.bb12.i.i499
    i32 5, label %sw.bb15.i.i501
    i32 6, label %sw.bb19.i.i503
    i32 7, label %sw.bb23.i.i505
    i32 8, label %sw.bb26.i.i507
    i32 9, label %sw.bb30.i.i509
    i32 10, label %sw.bb34.i.i511
    i32 11, label %sw.bb38.i.i513
  ]

sw.bb3.i.i493:                                    ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %371 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i492 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %371, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb4.i.i495:                                    ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %372 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i494 = getelementptr %struct.mdp5_cfg_hw, ptr %372, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb8.i.i497:                                    ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %373 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i496 = getelementptr %struct.mdp5_cfg_hw, ptr %373, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb12.i.i499:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %374 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i498 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %374, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb15.i.i501:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %375 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i500 = getelementptr %struct.mdp5_cfg_hw, ptr %375, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb19.i.i503:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %376 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i502 = getelementptr %struct.mdp5_cfg_hw, ptr %376, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb23.i.i505:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %377 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i504 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %377, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb26.i.i507:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %378 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i506 = getelementptr %struct.mdp5_cfg_hw, ptr %378, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb30.i.i509:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %379 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i508 = getelementptr %struct.mdp5_cfg_hw, ptr %379, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb34.i.i511:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %380 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i510 = getelementptr %struct.mdp5_cfg_hw, ptr %380, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb38.i.i513:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %381 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i512 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %381, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

sw.bb41.i.i515:                                   ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %382 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i514 = getelementptr %struct.mdp5_cfg_hw, ptr %382, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SCALE_CONFIG.exit

do.body45.i.i516:                                 ; preds = %mdp5_write.exit490
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SCALE_CONFIG.exit:                  ; preds = %sw.bb41.i.i515, %sw.bb38.i.i513, %sw.bb34.i.i511, %sw.bb30.i.i509, %sw.bb26.i.i507, %sw.bb23.i.i505, %sw.bb19.i.i503, %sw.bb15.i.i501, %sw.bb12.i.i499, %sw.bb8.i.i497, %sw.bb4.i.i495, %sw.bb3.i.i493
  %retval.0.in.i.i517 = phi ptr [ %arrayidx44.i.i514, %sw.bb41.i.i515 ], [ %base39.i.i512, %sw.bb38.i.i513 ], [ %arrayidx37.i.i510, %sw.bb34.i.i511 ], [ %arrayidx33.i.i508, %sw.bb30.i.i509 ], [ %arrayidx29.i.i506, %sw.bb26.i.i507 ], [ %base24.i.i504, %sw.bb23.i.i505 ], [ %arrayidx22.i.i502, %sw.bb19.i.i503 ], [ %arrayidx18.i.i500, %sw.bb15.i.i501 ], [ %base13.i.i498, %sw.bb12.i.i499 ], [ %arrayidx11.i.i496, %sw.bb8.i.i497 ], [ %arrayidx7.i.i494, %sw.bb4.i.i495 ], [ %base.i.i492, %sw.bb3.i.i493 ]
  %383 = ptrtoint ptr %retval.0.in.i.i517 to i32
  call void @__asan_load4_noabort(i32 %383)
  %retval.0.i.i518 = load i32, ptr %retval.0.in.i.i517, align 4
  %add.i519 = add i32 %retval.0.i.i518, 516
  %384 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %385)
  %cmp.i521 = icmp slt i32 %385, 1
  br i1 %cmp.i521, label %do.end.i522, label %REG_MDP5_PIPE_SCALE_CONFIG.exit.mdp5_write.exit526_crit_edge, !prof !74

REG_MDP5_PIPE_SCALE_CONFIG.exit.mdp5_write.exit526_crit_edge: ; preds = %REG_MDP5_PIPE_SCALE_CONFIG.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit526

do.end.i522:                                      ; preds = %REG_MDP5_PIPE_SCALE_CONFIG.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit526

mdp5_write.exit526:                               ; preds = %do.end.i522, %REG_MDP5_PIPE_SCALE_CONFIG.exit.mdp5_write.exit526_crit_edge
  %386 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i524 = getelementptr i8, ptr %387, i32 %add.i519
  tail call void @msm_writel(i32 noundef %scale_config, ptr noundef %add.ptr.i524) #6
  br label %if.end105

if.end105:                                        ; preds = %mdp5_write.exit526, %if.end.if.end105_crit_edge
  %388 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %caps, align 4
  %and107 = and i32 %389, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.if.end114_crit_edge, label %if.then109

if.end105.if.end114_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then109:                                       ; preds = %if.end105
  %is_yuv = getelementptr inbounds %struct.mdp_format, ptr %call, i32 0, i32 12
  %390 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %is_yuv, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool110.not = icmp eq i8 %391, 0
  br i1 %tobool110.not, label %if.else, label %if.then111

if.then111:                                       ; preds = %if.then109
  %call112 = tail call ptr @mdp_get_default_csc_cfg(i32 noundef 1) #6
  %tobool.not.i527 = icmp eq ptr %call112, null
  br i1 %tobool.not.i527, label %if.then111.if.end114_crit_edge, label %if.end.i528, !prof !74

if.then111.if.end114_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.end.i528:                                      ; preds = %if.then111
  %392 = ptrtoint ptr %call112 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %call112, align 4
  %394 = add i32 %393, -1
  %switch.and.i = and i32 %394, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %395 = select i1 %switch.selectcmp.i, i32 262144, i32 0
  %396 = and i32 %393, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %396)
  %switch.i = icmp eq i32 %396, 2
  %or15.i = or i32 %395, 524288
  %mode.1.i = select i1 %switch.i, i32 %or15.i, i32 %395
  %or17.i = or i32 %mode.1.i, 131072
  %397 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %397, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %1, label %do.body45.i.i.i554 [
    i32 12, label %sw.bb41.i.i.i553
    i32 1, label %sw.bb3.i.i.i531
    i32 2, label %sw.bb4.i.i.i533
    i32 3, label %sw.bb8.i.i.i535
    i32 4, label %sw.bb12.i.i.i537
    i32 5, label %sw.bb15.i.i.i539
    i32 6, label %sw.bb19.i.i.i541
    i32 7, label %sw.bb23.i.i.i543
    i32 8, label %sw.bb26.i.i.i545
    i32 9, label %sw.bb30.i.i.i547
    i32 10, label %sw.bb34.i.i.i549
    i32 11, label %sw.bb38.i.i.i551
  ]

sw.bb3.i.i.i531:                                  ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %398 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i530 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %398, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb4.i.i.i533:                                  ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %399 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i.i532 = getelementptr %struct.mdp5_cfg_hw, ptr %399, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb8.i.i.i535:                                  ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %400 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i.i534 = getelementptr %struct.mdp5_cfg_hw, ptr %400, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb12.i.i.i537:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %401 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i.i536 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %401, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb15.i.i.i539:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %402 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i.i538 = getelementptr %struct.mdp5_cfg_hw, ptr %402, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb19.i.i.i541:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %403 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i.i540 = getelementptr %struct.mdp5_cfg_hw, ptr %403, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb23.i.i.i543:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %404 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i.i542 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %404, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb26.i.i.i545:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %405 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i.i544 = getelementptr %struct.mdp5_cfg_hw, ptr %405, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb30.i.i.i547:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %406 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i.i546 = getelementptr %struct.mdp5_cfg_hw, ptr %406, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb34.i.i.i549:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %407 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i.i548 = getelementptr %struct.mdp5_cfg_hw, ptr %407, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb38.i.i.i551:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %408 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i.i550 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %408, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

sw.bb41.i.i.i553:                                 ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %409 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i.i552 = getelementptr %struct.mdp5_cfg_hw, ptr %409, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i

do.body45.i.i.i554:                               ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_OP_MODE.exit.i:                     ; preds = %sw.bb41.i.i.i553, %sw.bb38.i.i.i551, %sw.bb34.i.i.i549, %sw.bb30.i.i.i547, %sw.bb26.i.i.i545, %sw.bb23.i.i.i543, %sw.bb19.i.i.i541, %sw.bb15.i.i.i539, %sw.bb12.i.i.i537, %sw.bb8.i.i.i535, %sw.bb4.i.i.i533, %sw.bb3.i.i.i531
  %retval.0.in.i.i.i555 = phi ptr [ %arrayidx44.i.i.i552, %sw.bb41.i.i.i553 ], [ %base39.i.i.i550, %sw.bb38.i.i.i551 ], [ %arrayidx37.i.i.i548, %sw.bb34.i.i.i549 ], [ %arrayidx33.i.i.i546, %sw.bb30.i.i.i547 ], [ %arrayidx29.i.i.i544, %sw.bb26.i.i.i545 ], [ %base24.i.i.i542, %sw.bb23.i.i.i543 ], [ %arrayidx22.i.i.i540, %sw.bb19.i.i.i541 ], [ %arrayidx18.i.i.i538, %sw.bb15.i.i.i539 ], [ %base13.i.i.i536, %sw.bb12.i.i.i537 ], [ %arrayidx11.i.i.i534, %sw.bb8.i.i.i535 ], [ %arrayidx7.i.i.i532, %sw.bb4.i.i.i533 ], [ %base.i.i.i530, %sw.bb3.i.i.i531 ]
  %410 = ptrtoint ptr %retval.0.in.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %410)
  %retval.0.i.i.i556 = load i32, ptr %retval.0.in.i.i.i555, align 4
  %add.i.i557 = add i32 %retval.0.i.i.i556, 512
  %411 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %412)
  %cmp.i.i559 = icmp slt i32 %412, 1
  br i1 %cmp.i.i559, label %do.end.i.i560, label %REG_MDP5_PIPE_OP_MODE.exit.i.mdp5_write.exit.i563_crit_edge, !prof !74

REG_MDP5_PIPE_OP_MODE.exit.i.mdp5_write.exit.i563_crit_edge: ; preds = %REG_MDP5_PIPE_OP_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit.i563

do.end.i.i560:                                    ; preds = %REG_MDP5_PIPE_OP_MODE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit.i563

mdp5_write.exit.i563:                             ; preds = %do.end.i.i560, %REG_MDP5_PIPE_OP_MODE.exit.i.mdp5_write.exit.i563_crit_edge
  %413 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i562 = getelementptr i8, ptr %414, i32 %add.i.i557
  tail call void @msm_writel(i32 noundef %or17.i, ptr noundef %add.ptr.i.i562) #6
  %matrix19.i = getelementptr inbounds %struct.csc_cfg, ptr %call112, i32 0, i32 1
  %415 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %415, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %do.body45.i.i152.i [
    i32 12, label %sw.bb41.i.i151.i
    i32 1, label %sw.bb3.i.i129.i
    i32 2, label %sw.bb4.i.i131.i
    i32 3, label %sw.bb8.i.i133.i
    i32 4, label %sw.bb12.i.i135.i
    i32 5, label %sw.bb15.i.i137.i
    i32 6, label %sw.bb19.i.i139.i
    i32 7, label %sw.bb23.i.i141.i
    i32 8, label %sw.bb26.i.i143.i
    i32 9, label %sw.bb30.i.i145.i
    i32 10, label %sw.bb34.i.i147.i
    i32 11, label %sw.bb38.i.i149.i
  ]

sw.bb3.i.i129.i:                                  ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %416 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i128.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %416, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb4.i.i131.i:                                  ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %417 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i130.i = getelementptr %struct.mdp5_cfg_hw, ptr %417, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb8.i.i133.i:                                  ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %418 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i132.i = getelementptr %struct.mdp5_cfg_hw, ptr %418, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb12.i.i135.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %419 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i134.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %419, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb15.i.i137.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %420 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i136.i = getelementptr %struct.mdp5_cfg_hw, ptr %420, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb19.i.i139.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %421 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i138.i = getelementptr %struct.mdp5_cfg_hw, ptr %421, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb23.i.i141.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %422 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i140.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %422, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb26.i.i143.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %423 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i142.i = getelementptr %struct.mdp5_cfg_hw, ptr %423, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb30.i.i145.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %424 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i144.i = getelementptr %struct.mdp5_cfg_hw, ptr %424, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb34.i.i147.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %425 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i146.i = getelementptr %struct.mdp5_cfg_hw, ptr %425, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb38.i.i149.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %426 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i148.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %426, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

sw.bb41.i.i151.i:                                 ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %427 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i150.i = getelementptr %struct.mdp5_cfg_hw, ptr %427, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i

do.body45.i.i152.i:                               ; preds = %mdp5_write.exit.i563
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i:        ; preds = %sw.bb41.i.i151.i, %sw.bb38.i.i149.i, %sw.bb34.i.i147.i, %sw.bb30.i.i145.i, %sw.bb26.i.i143.i, %sw.bb23.i.i141.i, %sw.bb19.i.i139.i, %sw.bb15.i.i137.i, %sw.bb12.i.i135.i, %sw.bb8.i.i133.i, %sw.bb4.i.i131.i, %sw.bb3.i.i129.i
  %retval.0.in.i.i153.i = phi ptr [ %arrayidx44.i.i150.i, %sw.bb41.i.i151.i ], [ %base39.i.i148.i, %sw.bb38.i.i149.i ], [ %arrayidx37.i.i146.i, %sw.bb34.i.i147.i ], [ %arrayidx33.i.i144.i, %sw.bb30.i.i145.i ], [ %arrayidx29.i.i142.i, %sw.bb26.i.i143.i ], [ %base24.i.i140.i, %sw.bb23.i.i141.i ], [ %arrayidx22.i.i138.i, %sw.bb19.i.i139.i ], [ %arrayidx18.i.i136.i, %sw.bb15.i.i137.i ], [ %base13.i.i134.i, %sw.bb12.i.i135.i ], [ %arrayidx11.i.i132.i, %sw.bb8.i.i133.i ], [ %arrayidx7.i.i130.i, %sw.bb4.i.i131.i ], [ %base.i.i128.i, %sw.bb3.i.i129.i ]
  %428 = ptrtoint ptr %retval.0.in.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %retval.0.i.i154.i = load i32, ptr %retval.0.in.i.i153.i, align 4
  %add.i155.i = add i32 %retval.0.i.i154.i, 800
  %429 = ptrtoint ptr %matrix19.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %matrix19.i, align 4
  %and.i.i564 = and i32 %430, 8191
  %arrayidx22.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 1
  %431 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx22.i, align 4
  %shl.i.i565 = shl i32 %432, 16
  %and.i156.i = and i32 %shl.i.i565, 536805376
  %or24.i = or i32 %and.i156.i, %and.i.i564
  %433 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %434)
  %cmp.i158.i = icmp slt i32 %434, 1
  br i1 %cmp.i158.i, label %do.end.i159.i, label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i.mdp5_write.exit162.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i.mdp5_write.exit162.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit162.i

do.end.i159.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit162.i

mdp5_write.exit162.i:                             ; preds = %do.end.i159.i, %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0.exit.i.mdp5_write.exit162.i_crit_edge
  %435 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %436, i32 %add.i155.i
  tail call void @msm_writel(i32 noundef %or24.i, ptr noundef %add.ptr.i161.i) #6
  %437 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %437, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %do.body45.i.i188.i [
    i32 12, label %sw.bb41.i.i187.i
    i32 1, label %sw.bb3.i.i165.i
    i32 2, label %sw.bb4.i.i167.i
    i32 3, label %sw.bb8.i.i169.i
    i32 4, label %sw.bb12.i.i171.i
    i32 5, label %sw.bb15.i.i173.i
    i32 6, label %sw.bb19.i.i175.i
    i32 7, label %sw.bb23.i.i177.i
    i32 8, label %sw.bb26.i.i179.i
    i32 9, label %sw.bb30.i.i181.i
    i32 10, label %sw.bb34.i.i183.i
    i32 11, label %sw.bb38.i.i185.i
  ]

sw.bb3.i.i165.i:                                  ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %438 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i164.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %438, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb4.i.i167.i:                                  ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %439 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i166.i = getelementptr %struct.mdp5_cfg_hw, ptr %439, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb8.i.i169.i:                                  ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %440 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i168.i = getelementptr %struct.mdp5_cfg_hw, ptr %440, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb12.i.i171.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %441 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i170.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %441, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb15.i.i173.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %442 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i172.i = getelementptr %struct.mdp5_cfg_hw, ptr %442, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb19.i.i175.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %443 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i174.i = getelementptr %struct.mdp5_cfg_hw, ptr %443, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb23.i.i177.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %444 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i176.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %444, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb26.i.i179.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %445 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i178.i = getelementptr %struct.mdp5_cfg_hw, ptr %445, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb30.i.i181.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %446 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i180.i = getelementptr %struct.mdp5_cfg_hw, ptr %446, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb34.i.i183.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %447 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i182.i = getelementptr %struct.mdp5_cfg_hw, ptr %447, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb38.i.i185.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %448 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i184.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %448, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

sw.bb41.i.i187.i:                                 ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %449 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i186.i = getelementptr %struct.mdp5_cfg_hw, ptr %449, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i

do.body45.i.i188.i:                               ; preds = %mdp5_write.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i:        ; preds = %sw.bb41.i.i187.i, %sw.bb38.i.i185.i, %sw.bb34.i.i183.i, %sw.bb30.i.i181.i, %sw.bb26.i.i179.i, %sw.bb23.i.i177.i, %sw.bb19.i.i175.i, %sw.bb15.i.i173.i, %sw.bb12.i.i171.i, %sw.bb8.i.i169.i, %sw.bb4.i.i167.i, %sw.bb3.i.i165.i
  %retval.0.in.i.i189.i = phi ptr [ %arrayidx44.i.i186.i, %sw.bb41.i.i187.i ], [ %base39.i.i184.i, %sw.bb38.i.i185.i ], [ %arrayidx37.i.i182.i, %sw.bb34.i.i183.i ], [ %arrayidx33.i.i180.i, %sw.bb30.i.i181.i ], [ %arrayidx29.i.i178.i, %sw.bb26.i.i179.i ], [ %base24.i.i176.i, %sw.bb23.i.i177.i ], [ %arrayidx22.i.i174.i, %sw.bb19.i.i175.i ], [ %arrayidx18.i.i172.i, %sw.bb15.i.i173.i ], [ %base13.i.i170.i, %sw.bb12.i.i171.i ], [ %arrayidx11.i.i168.i, %sw.bb8.i.i169.i ], [ %arrayidx7.i.i166.i, %sw.bb4.i.i167.i ], [ %base.i.i164.i, %sw.bb3.i.i165.i ]
  %450 = ptrtoint ptr %retval.0.in.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %retval.0.i.i190.i = load i32, ptr %retval.0.in.i.i189.i, align 4
  %add.i191.i = add i32 %retval.0.i.i190.i, 804
  %arrayidx26.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 2
  %451 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %arrayidx26.i, align 4
  %and.i192.i = and i32 %452, 8191
  %arrayidx28.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 3
  %453 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %arrayidx28.i, align 4
  %shl.i193.i = shl i32 %454, 16
  %and.i194.i = and i32 %shl.i193.i, 536805376
  %or30.i = or i32 %and.i194.i, %and.i192.i
  %455 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %456)
  %cmp.i196.i = icmp slt i32 %456, 1
  br i1 %cmp.i196.i, label %do.end.i197.i, label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i.mdp5_write.exit200.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i.mdp5_write.exit200.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit200.i

do.end.i197.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit200.i

mdp5_write.exit200.i:                             ; preds = %do.end.i197.i, %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1.exit.i.mdp5_write.exit200.i_crit_edge
  %457 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i199.i = getelementptr i8, ptr %458, i32 %add.i191.i
  tail call void @msm_writel(i32 noundef %or30.i, ptr noundef %add.ptr.i199.i) #6
  %459 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %459, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %1, label %do.body45.i.i226.i [
    i32 12, label %sw.bb41.i.i225.i
    i32 1, label %sw.bb3.i.i203.i
    i32 2, label %sw.bb4.i.i205.i
    i32 3, label %sw.bb8.i.i207.i
    i32 4, label %sw.bb12.i.i209.i
    i32 5, label %sw.bb15.i.i211.i
    i32 6, label %sw.bb19.i.i213.i
    i32 7, label %sw.bb23.i.i215.i
    i32 8, label %sw.bb26.i.i217.i
    i32 9, label %sw.bb30.i.i219.i
    i32 10, label %sw.bb34.i.i221.i
    i32 11, label %sw.bb38.i.i223.i
  ]

sw.bb3.i.i203.i:                                  ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %460 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i202.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %460, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb4.i.i205.i:                                  ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %461 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i204.i = getelementptr %struct.mdp5_cfg_hw, ptr %461, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb8.i.i207.i:                                  ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %462 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i206.i = getelementptr %struct.mdp5_cfg_hw, ptr %462, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb12.i.i209.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %463 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i208.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %463, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb15.i.i211.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %464 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i210.i = getelementptr %struct.mdp5_cfg_hw, ptr %464, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb19.i.i213.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %465 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i212.i = getelementptr %struct.mdp5_cfg_hw, ptr %465, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb23.i.i215.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %466 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i214.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %466, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb26.i.i217.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %467 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i216.i = getelementptr %struct.mdp5_cfg_hw, ptr %467, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb30.i.i219.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %468 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i218.i = getelementptr %struct.mdp5_cfg_hw, ptr %468, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb34.i.i221.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %469 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i220.i = getelementptr %struct.mdp5_cfg_hw, ptr %469, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb38.i.i223.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %470 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i222.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %470, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

sw.bb41.i.i225.i:                                 ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %471 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i224.i = getelementptr %struct.mdp5_cfg_hw, ptr %471, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i

do.body45.i.i226.i:                               ; preds = %mdp5_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i:        ; preds = %sw.bb41.i.i225.i, %sw.bb38.i.i223.i, %sw.bb34.i.i221.i, %sw.bb30.i.i219.i, %sw.bb26.i.i217.i, %sw.bb23.i.i215.i, %sw.bb19.i.i213.i, %sw.bb15.i.i211.i, %sw.bb12.i.i209.i, %sw.bb8.i.i207.i, %sw.bb4.i.i205.i, %sw.bb3.i.i203.i
  %retval.0.in.i.i227.i = phi ptr [ %arrayidx44.i.i224.i, %sw.bb41.i.i225.i ], [ %base39.i.i222.i, %sw.bb38.i.i223.i ], [ %arrayidx37.i.i220.i, %sw.bb34.i.i221.i ], [ %arrayidx33.i.i218.i, %sw.bb30.i.i219.i ], [ %arrayidx29.i.i216.i, %sw.bb26.i.i217.i ], [ %base24.i.i214.i, %sw.bb23.i.i215.i ], [ %arrayidx22.i.i212.i, %sw.bb19.i.i213.i ], [ %arrayidx18.i.i210.i, %sw.bb15.i.i211.i ], [ %base13.i.i208.i, %sw.bb12.i.i209.i ], [ %arrayidx11.i.i206.i, %sw.bb8.i.i207.i ], [ %arrayidx7.i.i204.i, %sw.bb4.i.i205.i ], [ %base.i.i202.i, %sw.bb3.i.i203.i ]
  %472 = ptrtoint ptr %retval.0.in.i.i227.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %retval.0.i.i228.i = load i32, ptr %retval.0.in.i.i227.i, align 4
  %add.i229.i = add i32 %retval.0.i.i228.i, 808
  %arrayidx32.i566 = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 4
  %473 = ptrtoint ptr %arrayidx32.i566 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %arrayidx32.i566, align 4
  %and.i230.i = and i32 %474, 8191
  %arrayidx34.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 5
  %475 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %arrayidx34.i, align 4
  %shl.i231.i = shl i32 %476, 16
  %and.i232.i = and i32 %shl.i231.i, 536805376
  %or36.i = or i32 %and.i232.i, %and.i230.i
  %477 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %478)
  %cmp.i234.i = icmp slt i32 %478, 1
  br i1 %cmp.i234.i, label %do.end.i235.i, label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i.mdp5_write.exit238.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i.mdp5_write.exit238.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit238.i

do.end.i235.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit238.i

mdp5_write.exit238.i:                             ; preds = %do.end.i235.i, %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2.exit.i.mdp5_write.exit238.i_crit_edge
  %479 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i237.i = getelementptr i8, ptr %480, i32 %add.i229.i
  tail call void @msm_writel(i32 noundef %or36.i, ptr noundef %add.ptr.i237.i) #6
  %481 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %481, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %do.body45.i.i264.i [
    i32 12, label %sw.bb41.i.i263.i
    i32 1, label %sw.bb3.i.i241.i
    i32 2, label %sw.bb4.i.i243.i
    i32 3, label %sw.bb8.i.i245.i
    i32 4, label %sw.bb12.i.i247.i
    i32 5, label %sw.bb15.i.i249.i
    i32 6, label %sw.bb19.i.i251.i
    i32 7, label %sw.bb23.i.i253.i
    i32 8, label %sw.bb26.i.i255.i
    i32 9, label %sw.bb30.i.i257.i
    i32 10, label %sw.bb34.i.i259.i
    i32 11, label %sw.bb38.i.i261.i
  ]

sw.bb3.i.i241.i:                                  ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %482 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i240.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %482, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb4.i.i243.i:                                  ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %483 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i242.i = getelementptr %struct.mdp5_cfg_hw, ptr %483, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb8.i.i245.i:                                  ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %484 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i244.i = getelementptr %struct.mdp5_cfg_hw, ptr %484, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb12.i.i247.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %485 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i246.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %485, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb15.i.i249.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %486 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i248.i = getelementptr %struct.mdp5_cfg_hw, ptr %486, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb19.i.i251.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %487 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i250.i = getelementptr %struct.mdp5_cfg_hw, ptr %487, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb23.i.i253.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %488 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i252.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %488, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb26.i.i255.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %489 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i254.i = getelementptr %struct.mdp5_cfg_hw, ptr %489, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb30.i.i257.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %490 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i256.i = getelementptr %struct.mdp5_cfg_hw, ptr %490, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb34.i.i259.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %491 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i258.i = getelementptr %struct.mdp5_cfg_hw, ptr %491, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb38.i.i261.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %492 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i260.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %492, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

sw.bb41.i.i263.i:                                 ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %493 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i262.i = getelementptr %struct.mdp5_cfg_hw, ptr %493, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i

do.body45.i.i264.i:                               ; preds = %mdp5_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i:        ; preds = %sw.bb41.i.i263.i, %sw.bb38.i.i261.i, %sw.bb34.i.i259.i, %sw.bb30.i.i257.i, %sw.bb26.i.i255.i, %sw.bb23.i.i253.i, %sw.bb19.i.i251.i, %sw.bb15.i.i249.i, %sw.bb12.i.i247.i, %sw.bb8.i.i245.i, %sw.bb4.i.i243.i, %sw.bb3.i.i241.i
  %retval.0.in.i.i265.i = phi ptr [ %arrayidx44.i.i262.i, %sw.bb41.i.i263.i ], [ %base39.i.i260.i, %sw.bb38.i.i261.i ], [ %arrayidx37.i.i258.i, %sw.bb34.i.i259.i ], [ %arrayidx33.i.i256.i, %sw.bb30.i.i257.i ], [ %arrayidx29.i.i254.i, %sw.bb26.i.i255.i ], [ %base24.i.i252.i, %sw.bb23.i.i253.i ], [ %arrayidx22.i.i250.i, %sw.bb19.i.i251.i ], [ %arrayidx18.i.i248.i, %sw.bb15.i.i249.i ], [ %base13.i.i246.i, %sw.bb12.i.i247.i ], [ %arrayidx11.i.i244.i, %sw.bb8.i.i245.i ], [ %arrayidx7.i.i242.i, %sw.bb4.i.i243.i ], [ %base.i.i240.i, %sw.bb3.i.i241.i ]
  %494 = ptrtoint ptr %retval.0.in.i.i265.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %retval.0.i.i266.i = load i32, ptr %retval.0.in.i.i265.i, align 4
  %add.i267.i = add i32 %retval.0.i.i266.i, 812
  %arrayidx38.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 6
  %495 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx38.i, align 4
  %and.i268.i = and i32 %496, 8191
  %arrayidx40.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 7
  %497 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %arrayidx40.i, align 4
  %shl.i269.i = shl i32 %498, 16
  %and.i270.i = and i32 %shl.i269.i, 536805376
  %or42.i = or i32 %and.i270.i, %and.i268.i
  %499 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %500)
  %cmp.i272.i = icmp slt i32 %500, 1
  br i1 %cmp.i272.i, label %do.end.i273.i, label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i.mdp5_write.exit276.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i.mdp5_write.exit276.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit276.i

do.end.i273.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit276.i

mdp5_write.exit276.i:                             ; preds = %do.end.i273.i, %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3.exit.i.mdp5_write.exit276.i_crit_edge
  %501 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i275.i = getelementptr i8, ptr %502, i32 %add.i267.i
  tail call void @msm_writel(i32 noundef %or42.i, ptr noundef %add.ptr.i275.i) #6
  %503 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %503, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %1, label %do.body45.i.i302.i [
    i32 12, label %sw.bb41.i.i301.i
    i32 1, label %sw.bb3.i.i279.i
    i32 2, label %sw.bb4.i.i281.i
    i32 3, label %sw.bb8.i.i283.i
    i32 4, label %sw.bb12.i.i285.i
    i32 5, label %sw.bb15.i.i287.i
    i32 6, label %sw.bb19.i.i289.i
    i32 7, label %sw.bb23.i.i291.i
    i32 8, label %sw.bb26.i.i293.i
    i32 9, label %sw.bb30.i.i295.i
    i32 10, label %sw.bb34.i.i297.i
    i32 11, label %sw.bb38.i.i299.i
  ]

sw.bb3.i.i279.i:                                  ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %504 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i278.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %504, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb4.i.i281.i:                                  ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %505 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i280.i = getelementptr %struct.mdp5_cfg_hw, ptr %505, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb8.i.i283.i:                                  ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %506 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i282.i = getelementptr %struct.mdp5_cfg_hw, ptr %506, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb12.i.i285.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %507 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i284.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %507, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb15.i.i287.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %508 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i286.i = getelementptr %struct.mdp5_cfg_hw, ptr %508, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb19.i.i289.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %509 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i288.i = getelementptr %struct.mdp5_cfg_hw, ptr %509, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb23.i.i291.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %510 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i290.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %510, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb26.i.i293.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %511 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i292.i = getelementptr %struct.mdp5_cfg_hw, ptr %511, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb30.i.i295.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %512 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i294.i = getelementptr %struct.mdp5_cfg_hw, ptr %512, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb34.i.i297.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %513 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i296.i = getelementptr %struct.mdp5_cfg_hw, ptr %513, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb38.i.i299.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %514 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i298.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %514, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

sw.bb41.i.i301.i:                                 ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %515 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i300.i = getelementptr %struct.mdp5_cfg_hw, ptr %515, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i

do.body45.i.i302.i:                               ; preds = %mdp5_write.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i:        ; preds = %sw.bb41.i.i301.i, %sw.bb38.i.i299.i, %sw.bb34.i.i297.i, %sw.bb30.i.i295.i, %sw.bb26.i.i293.i, %sw.bb23.i.i291.i, %sw.bb19.i.i289.i, %sw.bb15.i.i287.i, %sw.bb12.i.i285.i, %sw.bb8.i.i283.i, %sw.bb4.i.i281.i, %sw.bb3.i.i279.i
  %retval.0.in.i.i303.i = phi ptr [ %arrayidx44.i.i300.i, %sw.bb41.i.i301.i ], [ %base39.i.i298.i, %sw.bb38.i.i299.i ], [ %arrayidx37.i.i296.i, %sw.bb34.i.i297.i ], [ %arrayidx33.i.i294.i, %sw.bb30.i.i295.i ], [ %arrayidx29.i.i292.i, %sw.bb26.i.i293.i ], [ %base24.i.i290.i, %sw.bb23.i.i291.i ], [ %arrayidx22.i.i288.i, %sw.bb19.i.i289.i ], [ %arrayidx18.i.i286.i, %sw.bb15.i.i287.i ], [ %base13.i.i284.i, %sw.bb12.i.i285.i ], [ %arrayidx11.i.i282.i, %sw.bb8.i.i283.i ], [ %arrayidx7.i.i280.i, %sw.bb4.i.i281.i ], [ %base.i.i278.i, %sw.bb3.i.i279.i ]
  %516 = ptrtoint ptr %retval.0.in.i.i303.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %retval.0.i.i304.i = load i32, ptr %retval.0.in.i.i303.i, align 4
  %add.i305.i = add i32 %retval.0.i.i304.i, 816
  %arrayidx44.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 1, i32 8
  %517 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx44.i, align 4
  %and.i306.i = and i32 %518, 8191
  %519 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %520)
  %cmp.i308.i = icmp slt i32 %520, 1
  br i1 %cmp.i308.i, label %do.end.i309.i, label %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i.for.body.preheader.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i.for.body.preheader.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i

do.end.i309.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %do.end.i309.i, %REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4.exit.i.for.body.preheader.i_crit_edge
  %521 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i311.i = getelementptr i8, ptr %522, i32 %add.i305.i
  tail call void @msm_writel(i32 noundef %and.i306.i, ptr noundef %add.ptr.i311.i) #6
  %pre_clamp47.i = getelementptr inbounds %struct.csc_cfg, ptr %call112, i32 0, i32 4
  %post_clamp49.i = getelementptr inbounds %struct.csc_cfg, ptr %call112, i32 0, i32 5
  br label %for.body.i567

for.body.i567:                                    ; preds = %mdp5_write.exit466.i.for.body.i567_crit_edge, %for.body.preheader.i
  %i.0467.i = phi i32 [ %inc.i569, %mdp5_write.exit466.i.for.body.i567_crit_edge ], [ 0, %for.body.preheader.i ]
  %523 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %523, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %1, label %sw.bb38.i.i335.i [
    i32 12, label %sw.bb41.i.i337.i
    i32 1, label %sw.bb3.i.i315.i
    i32 2, label %sw.bb4.i.i317.i
    i32 3, label %sw.bb8.i.i319.i
    i32 4, label %sw.bb12.i.i321.i
    i32 5, label %sw.bb15.i.i323.i
    i32 6, label %sw.bb19.i.i325.i
    i32 7, label %sw.bb23.i.i327.i
    i32 8, label %sw.bb26.i.i329.i
    i32 9, label %sw.bb30.i.i331.i
    i32 10, label %sw.bb34.i.i333.i
  ]

sw.bb3.i.i315.i:                                  ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %524 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i314.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %524, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb4.i.i317.i:                                  ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %525 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i316.i = getelementptr %struct.mdp5_cfg_hw, ptr %525, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb8.i.i319.i:                                  ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %526 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i318.i = getelementptr %struct.mdp5_cfg_hw, ptr %526, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb12.i.i321.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %527 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i320.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %527, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb15.i.i323.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %528 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i322.i = getelementptr %struct.mdp5_cfg_hw, ptr %528, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb19.i.i325.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %529 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i324.i = getelementptr %struct.mdp5_cfg_hw, ptr %529, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb23.i.i327.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %530 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i326.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %530, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb26.i.i329.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %531 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i328.i = getelementptr %struct.mdp5_cfg_hw, ptr %531, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb30.i.i331.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %532 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i330.i = getelementptr %struct.mdp5_cfg_hw, ptr %532, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb34.i.i333.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %533 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i332.i = getelementptr %struct.mdp5_cfg_hw, ptr %533, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb38.i.i335.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %534 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i334.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %534, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

sw.bb41.i.i337.i:                                 ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %535 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i336.i = getelementptr %struct.mdp5_cfg_hw, ptr %535, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i

REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i:             ; preds = %sw.bb41.i.i337.i, %sw.bb38.i.i335.i, %sw.bb34.i.i333.i, %sw.bb30.i.i331.i, %sw.bb26.i.i329.i, %sw.bb23.i.i327.i, %sw.bb19.i.i325.i, %sw.bb15.i.i323.i, %sw.bb12.i.i321.i, %sw.bb8.i.i319.i, %sw.bb4.i.i317.i, %sw.bb3.i.i315.i
  %retval.0.in.i.i339.i = phi ptr [ %arrayidx44.i.i336.i, %sw.bb41.i.i337.i ], [ %base39.i.i334.i, %sw.bb38.i.i335.i ], [ %arrayidx37.i.i332.i, %sw.bb34.i.i333.i ], [ %arrayidx33.i.i330.i, %sw.bb30.i.i331.i ], [ %arrayidx29.i.i328.i, %sw.bb26.i.i329.i ], [ %base24.i.i326.i, %sw.bb23.i.i327.i ], [ %arrayidx22.i.i324.i, %sw.bb19.i.i325.i ], [ %arrayidx18.i.i322.i, %sw.bb15.i.i323.i ], [ %base13.i.i320.i, %sw.bb12.i.i321.i ], [ %arrayidx11.i.i318.i, %sw.bb8.i.i319.i ], [ %arrayidx7.i.i316.i, %sw.bb4.i.i317.i ], [ %base.i.i314.i, %sw.bb3.i.i315.i ]
  %536 = ptrtoint ptr %retval.0.in.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %retval.0.i.i340.i = load i32, ptr %retval.0.in.i.i339.i, align 4
  %mul.i.i = shl nuw nsw i32 %i.0467.i, 2
  %add.i341.i = add nuw nsw i32 %mul.i.i, 820
  %add1.i.i = add i32 %add.i341.i, %retval.0.i.i340.i
  %mul.i = shl nuw nsw i32 %i.0467.i, 1
  %add.i568 = or i32 %mul.i, 1
  %arrayidx52.i = getelementptr i32, ptr %pre_clamp47.i, i32 %add.i568
  %537 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %arrayidx52.i, align 4
  %and.i342.i = and i32 %538, 255
  %arrayidx55.i = getelementptr i32, ptr %pre_clamp47.i, i32 %mul.i
  %539 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx55.i, align 4
  %shl.i343.i = shl i32 %540, 8
  %and.i344.i = and i32 %shl.i343.i, 65280
  %or57.i = or i32 %and.i344.i, %and.i342.i
  %541 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %542)
  %cmp.i346.i = icmp slt i32 %542, 1
  br i1 %cmp.i346.i, label %do.end.i347.i, label %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i.mdp5_write.exit350.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i.mdp5_write.exit350.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit350.i

do.end.i347.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit350.i

mdp5_write.exit350.i:                             ; preds = %do.end.i347.i, %REG_MDP5_PIPE_CSC_1_PRE_CLAMP.exit.i.mdp5_write.exit350.i_crit_edge
  %543 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i349.i = getelementptr i8, ptr %544, i32 %add1.i.i
  tail call void @msm_writel(i32 noundef %or57.i, ptr noundef %add.ptr.i349.i) #6
  %545 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %545, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %1, label %do.body45.i.i376.i [
    i32 12, label %sw.bb41.i.i375.i
    i32 1, label %sw.bb3.i.i353.i
    i32 2, label %sw.bb4.i.i355.i
    i32 3, label %sw.bb8.i.i357.i
    i32 4, label %sw.bb12.i.i359.i
    i32 5, label %sw.bb15.i.i361.i
    i32 6, label %sw.bb19.i.i363.i
    i32 7, label %sw.bb23.i.i365.i
    i32 8, label %sw.bb26.i.i367.i
    i32 9, label %sw.bb30.i.i369.i
    i32 10, label %sw.bb34.i.i371.i
    i32 11, label %sw.bb38.i.i373.i
  ]

sw.bb3.i.i353.i:                                  ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %546 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i352.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %546, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb4.i.i355.i:                                  ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %547 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i354.i = getelementptr %struct.mdp5_cfg_hw, ptr %547, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb8.i.i357.i:                                  ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %548 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i356.i = getelementptr %struct.mdp5_cfg_hw, ptr %548, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb12.i.i359.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %549 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i358.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %549, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb15.i.i361.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %550 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i360.i = getelementptr %struct.mdp5_cfg_hw, ptr %550, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb19.i.i363.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %551 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i362.i = getelementptr %struct.mdp5_cfg_hw, ptr %551, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb23.i.i365.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %552 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i364.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %552, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb26.i.i367.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %553 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i366.i = getelementptr %struct.mdp5_cfg_hw, ptr %553, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb30.i.i369.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %554 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i368.i = getelementptr %struct.mdp5_cfg_hw, ptr %554, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb34.i.i371.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %555 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i370.i = getelementptr %struct.mdp5_cfg_hw, ptr %555, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb38.i.i373.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %556 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i372.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %556, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

sw.bb41.i.i375.i:                                 ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %557 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i374.i = getelementptr %struct.mdp5_cfg_hw, ptr %557, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i

do.body45.i.i376.i:                               ; preds = %mdp5_write.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i:            ; preds = %sw.bb41.i.i375.i, %sw.bb38.i.i373.i, %sw.bb34.i.i371.i, %sw.bb30.i.i369.i, %sw.bb26.i.i367.i, %sw.bb23.i.i365.i, %sw.bb19.i.i363.i, %sw.bb15.i.i361.i, %sw.bb12.i.i359.i, %sw.bb8.i.i357.i, %sw.bb4.i.i355.i, %sw.bb3.i.i353.i
  %retval.0.in.i.i377.i = phi ptr [ %arrayidx44.i.i374.i, %sw.bb41.i.i375.i ], [ %base39.i.i372.i, %sw.bb38.i.i373.i ], [ %arrayidx37.i.i370.i, %sw.bb34.i.i371.i ], [ %arrayidx33.i.i368.i, %sw.bb30.i.i369.i ], [ %arrayidx29.i.i366.i, %sw.bb26.i.i367.i ], [ %base24.i.i364.i, %sw.bb23.i.i365.i ], [ %arrayidx22.i.i362.i, %sw.bb19.i.i363.i ], [ %arrayidx18.i.i360.i, %sw.bb15.i.i361.i ], [ %base13.i.i358.i, %sw.bb12.i.i359.i ], [ %arrayidx11.i.i356.i, %sw.bb8.i.i357.i ], [ %arrayidx7.i.i354.i, %sw.bb4.i.i355.i ], [ %base.i.i352.i, %sw.bb3.i.i353.i ]
  %558 = ptrtoint ptr %retval.0.in.i.i377.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %retval.0.i.i378.i = load i32, ptr %retval.0.in.i.i377.i, align 4
  %add.i380.i = add nuw nsw i32 %mul.i.i, 832
  %add1.i381.i = add i32 %add.i380.i, %retval.0.i.i378.i
  %arrayidx61.i = getelementptr i32, ptr %post_clamp49.i, i32 %add.i568
  %559 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %arrayidx61.i, align 4
  %and.i382.i = and i32 %560, 255
  %arrayidx64.i = getelementptr i32, ptr %post_clamp49.i, i32 %mul.i
  %561 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %arrayidx64.i, align 4
  %shl.i383.i = shl i32 %562, 8
  %and.i384.i = and i32 %shl.i383.i, 65280
  %or66.i = or i32 %and.i384.i, %and.i382.i
  %563 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %564)
  %cmp.i386.i = icmp slt i32 %564, 1
  br i1 %cmp.i386.i, label %do.end.i387.i, label %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i.mdp5_write.exit390.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i.mdp5_write.exit390.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit390.i

do.end.i387.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit390.i

mdp5_write.exit390.i:                             ; preds = %do.end.i387.i, %REG_MDP5_PIPE_CSC_1_POST_CLAMP.exit.i.mdp5_write.exit390.i_crit_edge
  %565 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i389.i = getelementptr i8, ptr %566, i32 %add1.i381.i
  tail call void @msm_writel(i32 noundef %or66.i, ptr noundef %add.ptr.i389.i) #6
  %567 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %567, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %do.body45.i.i416.i [
    i32 12, label %sw.bb41.i.i415.i
    i32 1, label %sw.bb3.i.i393.i
    i32 2, label %sw.bb4.i.i395.i
    i32 3, label %sw.bb8.i.i397.i
    i32 4, label %sw.bb12.i.i399.i
    i32 5, label %sw.bb15.i.i401.i
    i32 6, label %sw.bb19.i.i403.i
    i32 7, label %sw.bb23.i.i405.i
    i32 8, label %sw.bb26.i.i407.i
    i32 9, label %sw.bb30.i.i409.i
    i32 10, label %sw.bb34.i.i411.i
    i32 11, label %sw.bb38.i.i413.i
  ]

sw.bb3.i.i393.i:                                  ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %568 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i392.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %568, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb4.i.i395.i:                                  ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %569 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i394.i = getelementptr %struct.mdp5_cfg_hw, ptr %569, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb8.i.i397.i:                                  ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %570 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i396.i = getelementptr %struct.mdp5_cfg_hw, ptr %570, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb12.i.i399.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %571 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i398.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %571, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb15.i.i401.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %572 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i400.i = getelementptr %struct.mdp5_cfg_hw, ptr %572, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb19.i.i403.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %573 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i402.i = getelementptr %struct.mdp5_cfg_hw, ptr %573, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb23.i.i405.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %574 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i404.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %574, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb26.i.i407.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %575 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i406.i = getelementptr %struct.mdp5_cfg_hw, ptr %575, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb30.i.i409.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %576 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i408.i = getelementptr %struct.mdp5_cfg_hw, ptr %576, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb34.i.i411.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %577 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i410.i = getelementptr %struct.mdp5_cfg_hw, ptr %577, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb38.i.i413.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %578 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i412.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %578, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

sw.bb41.i.i415.i:                                 ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %579 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i414.i = getelementptr %struct.mdp5_cfg_hw, ptr %579, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i

do.body45.i.i416.i:                               ; preds = %mdp5_write.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i:              ; preds = %sw.bb41.i.i415.i, %sw.bb38.i.i413.i, %sw.bb34.i.i411.i, %sw.bb30.i.i409.i, %sw.bb26.i.i407.i, %sw.bb23.i.i405.i, %sw.bb19.i.i403.i, %sw.bb15.i.i401.i, %sw.bb12.i.i399.i, %sw.bb8.i.i397.i, %sw.bb4.i.i395.i, %sw.bb3.i.i393.i
  %retval.0.in.i.i417.i = phi ptr [ %arrayidx44.i.i414.i, %sw.bb41.i.i415.i ], [ %base39.i.i412.i, %sw.bb38.i.i413.i ], [ %arrayidx37.i.i410.i, %sw.bb34.i.i411.i ], [ %arrayidx33.i.i408.i, %sw.bb30.i.i409.i ], [ %arrayidx29.i.i406.i, %sw.bb26.i.i407.i ], [ %base24.i.i404.i, %sw.bb23.i.i405.i ], [ %arrayidx22.i.i402.i, %sw.bb19.i.i403.i ], [ %arrayidx18.i.i400.i, %sw.bb15.i.i401.i ], [ %base13.i.i398.i, %sw.bb12.i.i399.i ], [ %arrayidx11.i.i396.i, %sw.bb8.i.i397.i ], [ %arrayidx7.i.i394.i, %sw.bb4.i.i395.i ], [ %base.i.i392.i, %sw.bb3.i.i393.i ]
  %580 = ptrtoint ptr %retval.0.in.i.i417.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %retval.0.i.i418.i = load i32, ptr %retval.0.in.i.i417.i, align 4
  %add.i420.i = add nuw nsw i32 %mul.i.i, 844
  %add1.i421.i = add i32 %add.i420.i, %retval.0.i.i418.i
  %arrayidx68.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 2, i32 %i.0467.i
  %581 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %arrayidx68.i, align 4
  %and.i422.i = and i32 %582, 511
  %583 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %584)
  %cmp.i424.i = icmp slt i32 %584, 1
  br i1 %cmp.i424.i, label %do.end.i425.i, label %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i.mdp5_write.exit428.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i.mdp5_write.exit428.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit428.i

do.end.i425.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit428.i

mdp5_write.exit428.i:                             ; preds = %do.end.i425.i, %REG_MDP5_PIPE_CSC_1_PRE_BIAS.exit.i.mdp5_write.exit428.i_crit_edge
  %585 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i427.i = getelementptr i8, ptr %586, i32 %add1.i421.i
  tail call void @msm_writel(i32 noundef %and.i422.i, ptr noundef %add.ptr.i427.i) #6
  %587 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %587, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %1, label %do.body45.i.i454.i [
    i32 12, label %sw.bb41.i.i453.i
    i32 1, label %sw.bb3.i.i431.i
    i32 2, label %sw.bb4.i.i433.i
    i32 3, label %sw.bb8.i.i435.i
    i32 4, label %sw.bb12.i.i437.i
    i32 5, label %sw.bb15.i.i439.i
    i32 6, label %sw.bb19.i.i441.i
    i32 7, label %sw.bb23.i.i443.i
    i32 8, label %sw.bb26.i.i445.i
    i32 9, label %sw.bb30.i.i447.i
    i32 10, label %sw.bb34.i.i449.i
    i32 11, label %sw.bb38.i.i451.i
  ]

sw.bb3.i.i431.i:                                  ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %588 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i430.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %588, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb4.i.i433.i:                                  ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %589 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i432.i = getelementptr %struct.mdp5_cfg_hw, ptr %589, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb8.i.i435.i:                                  ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %590 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i434.i = getelementptr %struct.mdp5_cfg_hw, ptr %590, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb12.i.i437.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %591 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i436.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %591, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb15.i.i439.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %592 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i438.i = getelementptr %struct.mdp5_cfg_hw, ptr %592, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb19.i.i441.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %593 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i440.i = getelementptr %struct.mdp5_cfg_hw, ptr %593, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb23.i.i443.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %594 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i442.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %594, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb26.i.i445.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %595 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i444.i = getelementptr %struct.mdp5_cfg_hw, ptr %595, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb30.i.i447.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %596 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i446.i = getelementptr %struct.mdp5_cfg_hw, ptr %596, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb34.i.i449.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %597 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i448.i = getelementptr %struct.mdp5_cfg_hw, ptr %597, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb38.i.i451.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %598 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i450.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %598, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

sw.bb41.i.i453.i:                                 ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %599 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i452.i = getelementptr %struct.mdp5_cfg_hw, ptr %599, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i

do.body45.i.i454.i:                               ; preds = %mdp5_write.exit428.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i:             ; preds = %sw.bb41.i.i453.i, %sw.bb38.i.i451.i, %sw.bb34.i.i449.i, %sw.bb30.i.i447.i, %sw.bb26.i.i445.i, %sw.bb23.i.i443.i, %sw.bb19.i.i441.i, %sw.bb15.i.i439.i, %sw.bb12.i.i437.i, %sw.bb8.i.i435.i, %sw.bb4.i.i433.i, %sw.bb3.i.i431.i
  %retval.0.in.i.i455.i = phi ptr [ %arrayidx44.i.i452.i, %sw.bb41.i.i453.i ], [ %base39.i.i450.i, %sw.bb38.i.i451.i ], [ %arrayidx37.i.i448.i, %sw.bb34.i.i449.i ], [ %arrayidx33.i.i446.i, %sw.bb30.i.i447.i ], [ %arrayidx29.i.i444.i, %sw.bb26.i.i445.i ], [ %base24.i.i442.i, %sw.bb23.i.i443.i ], [ %arrayidx22.i.i440.i, %sw.bb19.i.i441.i ], [ %arrayidx18.i.i438.i, %sw.bb15.i.i439.i ], [ %base13.i.i436.i, %sw.bb12.i.i437.i ], [ %arrayidx11.i.i434.i, %sw.bb8.i.i435.i ], [ %arrayidx7.i.i432.i, %sw.bb4.i.i433.i ], [ %base.i.i430.i, %sw.bb3.i.i431.i ]
  %600 = ptrtoint ptr %retval.0.in.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %retval.0.i.i456.i = load i32, ptr %retval.0.in.i.i455.i, align 4
  %add.i458.i = add nuw nsw i32 %mul.i.i, 856
  %add1.i459.i = add i32 %add.i458.i, %retval.0.i.i456.i
  %arrayidx71.i = getelementptr %struct.csc_cfg, ptr %call112, i32 0, i32 3, i32 %i.0467.i
  %601 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %arrayidx71.i, align 4
  %and.i460.i = and i32 %602, 511
  %603 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %604)
  %cmp.i462.i = icmp slt i32 %604, 1
  br i1 %cmp.i462.i, label %do.end.i463.i, label %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i.mdp5_write.exit466.i_crit_edge, !prof !74

REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i.mdp5_write.exit466.i_crit_edge: ; preds = %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit466.i

do.end.i463.i:                                    ; preds = %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit466.i

mdp5_write.exit466.i:                             ; preds = %do.end.i463.i, %REG_MDP5_PIPE_CSC_1_POST_BIAS.exit.i.mdp5_write.exit466.i_crit_edge
  %605 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i465.i = getelementptr i8, ptr %606, i32 %add1.i459.i
  tail call void @msm_writel(i32 noundef %and.i460.i, ptr noundef %add.ptr.i465.i) #6
  %inc.i569 = add nuw nsw i32 %i.0467.i, 1
  %exitcond.not.i570 = icmp eq i32 %inc.i569, 3
  br i1 %exitcond.not.i570, label %mdp5_write.exit466.i.if.end114_crit_edge, label %mdp5_write.exit466.i.for.body.i567_crit_edge

mdp5_write.exit466.i.for.body.i567_crit_edge:     ; preds = %mdp5_write.exit466.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i567

mdp5_write.exit466.i.if.end114_crit_edge:         ; preds = %mdp5_write.exit466.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.else:                                          ; preds = %if.then109
  %607 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %607, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %do.body45.i.i.i596 [
    i32 12, label %sw.bb41.i.i.i595
    i32 1, label %sw.bb3.i.i.i573
    i32 2, label %sw.bb4.i.i.i575
    i32 3, label %sw.bb8.i.i.i577
    i32 4, label %sw.bb12.i.i.i579
    i32 5, label %sw.bb15.i.i.i581
    i32 6, label %sw.bb19.i.i.i583
    i32 7, label %sw.bb23.i.i.i585
    i32 8, label %sw.bb26.i.i.i587
    i32 9, label %sw.bb30.i.i.i589
    i32 10, label %sw.bb34.i.i.i591
    i32 11, label %sw.bb38.i.i.i593
  ]

sw.bb3.i.i.i573:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %608 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i572 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %608, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb4.i.i.i575:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %609 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i.i574 = getelementptr %struct.mdp5_cfg_hw, ptr %609, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb8.i.i.i577:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %610 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i.i576 = getelementptr %struct.mdp5_cfg_hw, ptr %610, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb12.i.i.i579:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %611 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i.i578 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %611, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb15.i.i.i581:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %612 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i.i580 = getelementptr %struct.mdp5_cfg_hw, ptr %612, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb19.i.i.i583:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %613 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i.i582 = getelementptr %struct.mdp5_cfg_hw, ptr %613, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb23.i.i.i585:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %614 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i.i584 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %614, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb26.i.i.i587:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %615 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i.i586 = getelementptr %struct.mdp5_cfg_hw, ptr %615, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb30.i.i.i589:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %616 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i.i588 = getelementptr %struct.mdp5_cfg_hw, ptr %616, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb34.i.i.i591:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %617 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i.i590 = getelementptr %struct.mdp5_cfg_hw, ptr %617, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb38.i.i.i593:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %618 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i.i592 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %618, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

sw.bb41.i.i.i595:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %619 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i.i594 = getelementptr %struct.mdp5_cfg_hw, ptr %619, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit.i602

do.body45.i.i.i596:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_OP_MODE.exit.i602:                  ; preds = %sw.bb41.i.i.i595, %sw.bb38.i.i.i593, %sw.bb34.i.i.i591, %sw.bb30.i.i.i589, %sw.bb26.i.i.i587, %sw.bb23.i.i.i585, %sw.bb19.i.i.i583, %sw.bb15.i.i.i581, %sw.bb12.i.i.i579, %sw.bb8.i.i.i577, %sw.bb4.i.i.i575, %sw.bb3.i.i.i573
  %retval.0.in.i.i.i597 = phi ptr [ %arrayidx44.i.i.i594, %sw.bb41.i.i.i595 ], [ %base39.i.i.i592, %sw.bb38.i.i.i593 ], [ %arrayidx37.i.i.i590, %sw.bb34.i.i.i591 ], [ %arrayidx33.i.i.i588, %sw.bb30.i.i.i589 ], [ %arrayidx29.i.i.i586, %sw.bb26.i.i.i587 ], [ %base24.i.i.i584, %sw.bb23.i.i.i585 ], [ %arrayidx22.i.i.i582, %sw.bb19.i.i.i583 ], [ %arrayidx18.i.i.i580, %sw.bb15.i.i.i581 ], [ %base13.i.i.i578, %sw.bb12.i.i.i579 ], [ %arrayidx11.i.i.i576, %sw.bb8.i.i.i577 ], [ %arrayidx7.i.i.i574, %sw.bb4.i.i.i575 ], [ %base.i.i.i572, %sw.bb3.i.i.i573 ]
  %620 = ptrtoint ptr %retval.0.in.i.i.i597 to i32
  call void @__asan_load4_noabort(i32 %620)
  %retval.0.i.i.i598 = load i32, ptr %retval.0.in.i.i.i597, align 4
  %add.i.i599 = add i32 %retval.0.i.i.i598, 512
  %621 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %622)
  %cmp.i.i601 = icmp slt i32 %622, 1
  br i1 %cmp.i.i601, label %do.end.i.i603, label %REG_MDP5_PIPE_OP_MODE.exit.i602.mdp5_read.exit.i_crit_edge, !prof !74

REG_MDP5_PIPE_OP_MODE.exit.i602.mdp5_read.exit.i_crit_edge: ; preds = %REG_MDP5_PIPE_OP_MODE.exit.i602
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_read.exit.i

do.end.i.i603:                                    ; preds = %REG_MDP5_PIPE_OP_MODE.exit.i602
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_read.exit.i

mdp5_read.exit.i:                                 ; preds = %do.end.i.i603, %REG_MDP5_PIPE_OP_MODE.exit.i602.mdp5_read.exit.i_crit_edge
  %623 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i605 = getelementptr i8, ptr %624, i32 %add.i.i599
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i605) #6
  %625 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %625, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %do.body45.i.i30.i [
    i32 12, label %sw.bb41.i.i29.i
    i32 1, label %sw.bb3.i.i7.i
    i32 2, label %sw.bb4.i.i9.i
    i32 3, label %sw.bb8.i.i11.i
    i32 4, label %sw.bb12.i.i13.i
    i32 5, label %sw.bb15.i.i15.i
    i32 6, label %sw.bb19.i.i17.i
    i32 7, label %sw.bb23.i.i19.i
    i32 8, label %sw.bb26.i.i21.i
    i32 9, label %sw.bb30.i.i23.i
    i32 10, label %sw.bb34.i.i25.i
    i32 11, label %sw.bb38.i.i27.i
  ]

sw.bb3.i.i7.i:                                    ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %626 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i6.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %626, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb4.i.i9.i:                                    ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %627 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i8.i = getelementptr %struct.mdp5_cfg_hw, ptr %627, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb8.i.i11.i:                                   ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %628 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i10.i = getelementptr %struct.mdp5_cfg_hw, ptr %628, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb12.i.i13.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %629 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i12.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %629, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb15.i.i15.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %630 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i14.i = getelementptr %struct.mdp5_cfg_hw, ptr %630, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb19.i.i17.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %631 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i16.i = getelementptr %struct.mdp5_cfg_hw, ptr %631, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb23.i.i19.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %632 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i18.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %632, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb26.i.i21.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %633 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i20.i = getelementptr %struct.mdp5_cfg_hw, ptr %633, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb30.i.i23.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %634 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i22.i = getelementptr %struct.mdp5_cfg_hw, ptr %634, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb34.i.i25.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %635 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i24.i = getelementptr %struct.mdp5_cfg_hw, ptr %635, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb38.i.i27.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %636 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i26.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %636, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

sw.bb41.i.i29.i:                                  ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %637 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i28.i = getelementptr %struct.mdp5_cfg_hw, ptr %637, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_OP_MODE.exit34.i

do.body45.i.i30.i:                                ; preds = %mdp5_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_OP_MODE.exit34.i:                   ; preds = %sw.bb41.i.i29.i, %sw.bb38.i.i27.i, %sw.bb34.i.i25.i, %sw.bb30.i.i23.i, %sw.bb26.i.i21.i, %sw.bb23.i.i19.i, %sw.bb19.i.i17.i, %sw.bb15.i.i15.i, %sw.bb12.i.i13.i, %sw.bb8.i.i11.i, %sw.bb4.i.i9.i, %sw.bb3.i.i7.i
  %retval.0.in.i.i31.i = phi ptr [ %arrayidx44.i.i28.i, %sw.bb41.i.i29.i ], [ %base39.i.i26.i, %sw.bb38.i.i27.i ], [ %arrayidx37.i.i24.i, %sw.bb34.i.i25.i ], [ %arrayidx33.i.i22.i, %sw.bb30.i.i23.i ], [ %arrayidx29.i.i20.i, %sw.bb26.i.i21.i ], [ %base24.i.i18.i, %sw.bb23.i.i19.i ], [ %arrayidx22.i.i16.i, %sw.bb19.i.i17.i ], [ %arrayidx18.i.i14.i, %sw.bb15.i.i15.i ], [ %base13.i.i12.i, %sw.bb12.i.i13.i ], [ %arrayidx11.i.i10.i, %sw.bb8.i.i11.i ], [ %arrayidx7.i.i8.i, %sw.bb4.i.i9.i ], [ %base.i.i6.i, %sw.bb3.i.i7.i ]
  %638 = ptrtoint ptr %retval.0.in.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %retval.0.i.i32.i = load i32, ptr %retval.0.in.i.i31.i, align 4
  %639 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %640)
  %cmp.i36.i = icmp slt i32 %640, 1
  br i1 %cmp.i36.i, label %do.end.i37.i, label %REG_MDP5_PIPE_OP_MODE.exit34.i.csc_disable.exit_crit_edge, !prof !74

REG_MDP5_PIPE_OP_MODE.exit34.i.csc_disable.exit_crit_edge: ; preds = %REG_MDP5_PIPE_OP_MODE.exit34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %csc_disable.exit

do.end.i37.i:                                     ; preds = %REG_MDP5_PIPE_OP_MODE.exit34.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %csc_disable.exit

csc_disable.exit:                                 ; preds = %do.end.i37.i, %REG_MDP5_PIPE_OP_MODE.exit34.i.csc_disable.exit_crit_edge
  %add.i33.i = add i32 %retval.0.i.i32.i, 512
  %and.i606 = and i32 %call.i.i, -131073
  %641 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %642, i32 %add.i33.i
  tail call void @msm_writel(i32 noundef %and.i606, ptr noundef %add.ptr.i39.i) #6
  br label %if.end114

if.end114:                                        ; preds = %csc_disable.exit, %mdp5_write.exit466.i.if.end114_crit_edge, %if.then111.if.end114_crit_edge, %if.end105.if.end114_crit_edge
  %643 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %643, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %do.body45.i.i.i633 [
    i32 12, label %sw.bb41.i.i.i632
    i32 1, label %sw.bb3.i.i.i610
    i32 2, label %sw.bb4.i.i.i612
    i32 3, label %sw.bb8.i.i.i614
    i32 4, label %sw.bb12.i.i.i616
    i32 5, label %sw.bb15.i.i.i618
    i32 6, label %sw.bb19.i.i.i620
    i32 7, label %sw.bb23.i.i.i622
    i32 8, label %sw.bb26.i.i.i624
    i32 9, label %sw.bb30.i.i.i626
    i32 10, label %sw.bb34.i.i.i628
    i32 11, label %sw.bb38.i.i.i630
  ]

sw.bb3.i.i.i610:                                  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %644 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i609 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %644, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb4.i.i.i612:                                  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %645 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i.i611 = getelementptr %struct.mdp5_cfg_hw, ptr %645, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb8.i.i.i614:                                  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %646 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i.i613 = getelementptr %struct.mdp5_cfg_hw, ptr %646, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb12.i.i.i616:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %647 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i.i615 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %647, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb15.i.i.i618:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %648 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i.i617 = getelementptr %struct.mdp5_cfg_hw, ptr %648, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb19.i.i.i620:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %649 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i.i619 = getelementptr %struct.mdp5_cfg_hw, ptr %649, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb23.i.i.i622:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %650 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i.i621 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %650, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb26.i.i.i624:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %651 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i.i623 = getelementptr %struct.mdp5_cfg_hw, ptr %651, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb30.i.i.i626:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %652 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i.i625 = getelementptr %struct.mdp5_cfg_hw, ptr %652, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb34.i.i.i628:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %653 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i.i627 = getelementptr %struct.mdp5_cfg_hw, ptr %653, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb38.i.i.i630:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %654 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i.i629 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %654, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

sw.bb41.i.i.i632:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %655 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i.i631 = getelementptr %struct.mdp5_cfg_hw, ptr %655, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i

do.body45.i.i.i633:                               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_STRIDE_A.exit.i:                ; preds = %sw.bb41.i.i.i632, %sw.bb38.i.i.i630, %sw.bb34.i.i.i628, %sw.bb30.i.i.i626, %sw.bb26.i.i.i624, %sw.bb23.i.i.i622, %sw.bb19.i.i.i620, %sw.bb15.i.i.i618, %sw.bb12.i.i.i616, %sw.bb8.i.i.i614, %sw.bb4.i.i.i612, %sw.bb3.i.i.i610
  %retval.0.in.i.i.i634 = phi ptr [ %arrayidx44.i.i.i631, %sw.bb41.i.i.i632 ], [ %base39.i.i.i629, %sw.bb38.i.i.i630 ], [ %arrayidx37.i.i.i627, %sw.bb34.i.i.i628 ], [ %arrayidx33.i.i.i625, %sw.bb30.i.i.i626 ], [ %arrayidx29.i.i.i623, %sw.bb26.i.i.i624 ], [ %base24.i.i.i621, %sw.bb23.i.i.i622 ], [ %arrayidx22.i.i.i619, %sw.bb19.i.i.i620 ], [ %arrayidx18.i.i.i617, %sw.bb15.i.i.i618 ], [ %base13.i.i.i615, %sw.bb12.i.i.i616 ], [ %arrayidx11.i.i.i613, %sw.bb8.i.i.i614 ], [ %arrayidx7.i.i.i611, %sw.bb4.i.i.i612 ], [ %base.i.i.i609, %sw.bb3.i.i.i610 ]
  %656 = ptrtoint ptr %retval.0.in.i.i.i634 to i32
  call void @__asan_load4_noabort(i32 %656)
  %retval.0.i.i.i635 = load i32, ptr %retval.0.in.i.i.i634, align 4
  %add.i.i636 = add i32 %retval.0.i.i.i635, 36
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %657 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %pitches.i, align 8
  %and.i.i637 = and i32 %658, 65535
  %arrayidx4.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 1
  %659 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %arrayidx4.i, align 4
  %shl.i.i638 = shl i32 %660, 16
  %or.i639 = or i32 %shl.i.i638, %and.i.i637
  %661 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %662)
  %cmp.i.i641 = icmp slt i32 %662, 1
  br i1 %cmp.i.i641, label %do.end.i.i642, label %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i.mdp5_write.exit.i645_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_STRIDE_A.exit.i.mdp5_write.exit.i645_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit.i645

do.end.i.i642:                                    ; preds = %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit.i645

mdp5_write.exit.i645:                             ; preds = %do.end.i.i642, %REG_MDP5_PIPE_SRC_STRIDE_A.exit.i.mdp5_write.exit.i645_crit_edge
  %663 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i644 = getelementptr i8, ptr %664, i32 %add.i.i636
  tail call void @msm_writel(i32 noundef %or.i639, ptr noundef %add.ptr.i.i644) #6
  %665 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %665, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %do.body45.i.i71.i [
    i32 12, label %sw.bb41.i.i70.i
    i32 1, label %sw.bb3.i.i48.i
    i32 2, label %sw.bb4.i.i50.i
    i32 3, label %sw.bb8.i.i52.i
    i32 4, label %sw.bb12.i.i54.i
    i32 5, label %sw.bb15.i.i56.i
    i32 6, label %sw.bb19.i.i58.i
    i32 7, label %sw.bb23.i.i60.i
    i32 8, label %sw.bb26.i.i62.i
    i32 9, label %sw.bb30.i.i64.i
    i32 10, label %sw.bb34.i.i66.i
    i32 11, label %sw.bb38.i.i68.i
  ]

sw.bb3.i.i48.i:                                   ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %666 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i47.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %666, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb4.i.i50.i:                                   ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %667 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i49.i = getelementptr %struct.mdp5_cfg_hw, ptr %667, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb8.i.i52.i:                                   ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %668 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i51.i = getelementptr %struct.mdp5_cfg_hw, ptr %668, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb12.i.i54.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %669 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i53.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %669, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb15.i.i56.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %670 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i55.i = getelementptr %struct.mdp5_cfg_hw, ptr %670, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb19.i.i58.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %671 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i57.i = getelementptr %struct.mdp5_cfg_hw, ptr %671, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb23.i.i60.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %672 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i59.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %672, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb26.i.i62.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %673 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i61.i = getelementptr %struct.mdp5_cfg_hw, ptr %673, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb30.i.i64.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %674 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i63.i = getelementptr %struct.mdp5_cfg_hw, ptr %674, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb34.i.i66.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %675 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i65.i = getelementptr %struct.mdp5_cfg_hw, ptr %675, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb38.i.i68.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %676 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i67.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %676, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

sw.bb41.i.i70.i:                                  ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %677 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i69.i = getelementptr %struct.mdp5_cfg_hw, ptr %677, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i

do.body45.i.i71.i:                                ; preds = %mdp5_write.exit.i645
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC_STRIDE_B.exit.i:                ; preds = %sw.bb41.i.i70.i, %sw.bb38.i.i68.i, %sw.bb34.i.i66.i, %sw.bb30.i.i64.i, %sw.bb26.i.i62.i, %sw.bb23.i.i60.i, %sw.bb19.i.i58.i, %sw.bb15.i.i56.i, %sw.bb12.i.i54.i, %sw.bb8.i.i52.i, %sw.bb4.i.i50.i, %sw.bb3.i.i48.i
  %retval.0.in.i.i72.i = phi ptr [ %arrayidx44.i.i69.i, %sw.bb41.i.i70.i ], [ %base39.i.i67.i, %sw.bb38.i.i68.i ], [ %arrayidx37.i.i65.i, %sw.bb34.i.i66.i ], [ %arrayidx33.i.i63.i, %sw.bb30.i.i64.i ], [ %arrayidx29.i.i61.i, %sw.bb26.i.i62.i ], [ %base24.i.i59.i, %sw.bb23.i.i60.i ], [ %arrayidx22.i.i57.i, %sw.bb19.i.i58.i ], [ %arrayidx18.i.i55.i, %sw.bb15.i.i56.i ], [ %base13.i.i53.i, %sw.bb12.i.i54.i ], [ %arrayidx11.i.i51.i, %sw.bb8.i.i52.i ], [ %arrayidx7.i.i49.i, %sw.bb4.i.i50.i ], [ %base.i.i47.i, %sw.bb3.i.i48.i ]
  %678 = ptrtoint ptr %retval.0.in.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %retval.0.i.i73.i = load i32, ptr %retval.0.in.i.i72.i, align 4
  %add.i74.i = add i32 %retval.0.i.i73.i, 40
  %arrayidx8.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 2
  %679 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %arrayidx8.i, align 8
  %and.i75.i = and i32 %680, 65535
  %arrayidx11.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 3
  %681 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %arrayidx11.i, align 4
  %shl.i76.i = shl i32 %682, 16
  %or13.i = or i32 %shl.i76.i, %and.i75.i
  %683 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %684)
  %cmp.i78.i = icmp slt i32 %684, 1
  br i1 %cmp.i78.i, label %do.end.i79.i, label %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i.mdp5_write.exit82.i_crit_edge, !prof !74

REG_MDP5_PIPE_SRC_STRIDE_B.exit.i.mdp5_write.exit82.i_crit_edge: ; preds = %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit82.i

do.end.i79.i:                                     ; preds = %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit82.i

mdp5_write.exit82.i:                              ; preds = %do.end.i79.i, %REG_MDP5_PIPE_SRC_STRIDE_B.exit.i.mdp5_write.exit82.i_crit_edge
  %685 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %686, i32 %add.i74.i
  tail call void @msm_writel(i32 noundef %or13.i, ptr noundef %add.ptr.i81.i) #6
  %687 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %687, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %do.body45.i.i108.i [
    i32 12, label %sw.bb41.i.i107.i
    i32 1, label %sw.bb3.i.i85.i
    i32 2, label %sw.bb4.i.i87.i
    i32 3, label %sw.bb8.i.i89.i
    i32 4, label %sw.bb12.i.i91.i
    i32 5, label %sw.bb15.i.i93.i
    i32 6, label %sw.bb19.i.i95.i
    i32 7, label %sw.bb23.i.i97.i
    i32 8, label %sw.bb26.i.i99.i
    i32 9, label %sw.bb30.i.i101.i
    i32 10, label %sw.bb34.i.i103.i
    i32 11, label %sw.bb38.i.i105.i
  ]

sw.bb3.i.i85.i:                                   ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %688 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i84.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %688, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb4.i.i87.i:                                   ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %689 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i86.i = getelementptr %struct.mdp5_cfg_hw, ptr %689, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb8.i.i89.i:                                   ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %690 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i88.i = getelementptr %struct.mdp5_cfg_hw, ptr %690, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb12.i.i91.i:                                  ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %691 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i90.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %691, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb15.i.i93.i:                                  ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %692 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i92.i = getelementptr %struct.mdp5_cfg_hw, ptr %692, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb19.i.i95.i:                                  ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %693 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i94.i = getelementptr %struct.mdp5_cfg_hw, ptr %693, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb23.i.i97.i:                                  ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %694 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i96.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %694, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb26.i.i99.i:                                  ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %695 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i98.i = getelementptr %struct.mdp5_cfg_hw, ptr %695, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb30.i.i101.i:                                 ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %696 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i100.i = getelementptr %struct.mdp5_cfg_hw, ptr %696, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb34.i.i103.i:                                 ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %697 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i102.i = getelementptr %struct.mdp5_cfg_hw, ptr %697, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb38.i.i105.i:                                 ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %698 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i104.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %698, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

sw.bb41.i.i107.i:                                 ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %699 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i106.i = getelementptr %struct.mdp5_cfg_hw, ptr %699, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC0_ADDR.exit.i

do.body45.i.i108.i:                               ; preds = %mdp5_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC0_ADDR.exit.i:                   ; preds = %sw.bb41.i.i107.i, %sw.bb38.i.i105.i, %sw.bb34.i.i103.i, %sw.bb30.i.i101.i, %sw.bb26.i.i99.i, %sw.bb23.i.i97.i, %sw.bb19.i.i95.i, %sw.bb15.i.i93.i, %sw.bb12.i.i91.i, %sw.bb8.i.i89.i, %sw.bb4.i.i87.i, %sw.bb3.i.i85.i
  %retval.0.in.i.i109.i = phi ptr [ %arrayidx44.i.i106.i, %sw.bb41.i.i107.i ], [ %base39.i.i104.i, %sw.bb38.i.i105.i ], [ %arrayidx37.i.i102.i, %sw.bb34.i.i103.i ], [ %arrayidx33.i.i100.i, %sw.bb30.i.i101.i ], [ %arrayidx29.i.i98.i, %sw.bb26.i.i99.i ], [ %base24.i.i96.i, %sw.bb23.i.i97.i ], [ %arrayidx22.i.i94.i, %sw.bb19.i.i95.i ], [ %arrayidx18.i.i92.i, %sw.bb15.i.i93.i ], [ %base13.i.i90.i, %sw.bb12.i.i91.i ], [ %arrayidx11.i.i88.i, %sw.bb8.i.i89.i ], [ %arrayidx7.i.i86.i, %sw.bb4.i.i87.i ], [ %base.i.i84.i, %sw.bb3.i.i85.i ]
  %700 = ptrtoint ptr %retval.0.in.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %retval.0.i.i110.i = load i32, ptr %retval.0.in.i.i109.i, align 4
  %add.i111.i = add i32 %retval.0.i.i110.i, 20
  %aspace.i = getelementptr inbounds %struct.msm_kms, ptr %mdp5_kms, i32 0, i32 3
  %701 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %aspace.i, align 4
  %call15.i = tail call i32 @msm_framebuffer_iova(ptr noundef %fb, ptr noundef %702, i32 noundef 0) #6
  %703 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %704)
  %cmp.i113.i = icmp slt i32 %704, 1
  br i1 %cmp.i113.i, label %do.end.i114.i, label %REG_MDP5_PIPE_SRC0_ADDR.exit.i.mdp5_write.exit117.i_crit_edge, !prof !74

REG_MDP5_PIPE_SRC0_ADDR.exit.i.mdp5_write.exit117.i_crit_edge: ; preds = %REG_MDP5_PIPE_SRC0_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit117.i

do.end.i114.i:                                    ; preds = %REG_MDP5_PIPE_SRC0_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit117.i

mdp5_write.exit117.i:                             ; preds = %do.end.i114.i, %REG_MDP5_PIPE_SRC0_ADDR.exit.i.mdp5_write.exit117.i_crit_edge
  %705 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %706, i32 %add.i111.i
  tail call void @msm_writel(i32 noundef %call15.i, ptr noundef %add.ptr.i116.i) #6
  %707 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %707, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %1, label %do.body45.i.i143.i [
    i32 12, label %sw.bb41.i.i142.i
    i32 1, label %sw.bb3.i.i120.i
    i32 2, label %sw.bb4.i.i122.i
    i32 3, label %sw.bb8.i.i124.i
    i32 4, label %sw.bb12.i.i126.i
    i32 5, label %sw.bb15.i.i128.i
    i32 6, label %sw.bb19.i.i130.i
    i32 7, label %sw.bb23.i.i132.i
    i32 8, label %sw.bb26.i.i134.i
    i32 9, label %sw.bb30.i.i136.i
    i32 10, label %sw.bb34.i.i138.i
    i32 11, label %sw.bb38.i.i140.i
  ]

sw.bb3.i.i120.i:                                  ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %708 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i119.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %708, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb4.i.i122.i:                                  ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %709 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i121.i = getelementptr %struct.mdp5_cfg_hw, ptr %709, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb8.i.i124.i:                                  ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %710 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i123.i = getelementptr %struct.mdp5_cfg_hw, ptr %710, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb12.i.i126.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %711 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i125.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %711, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb15.i.i128.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %712 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i127.i = getelementptr %struct.mdp5_cfg_hw, ptr %712, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb19.i.i130.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %713 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i129.i = getelementptr %struct.mdp5_cfg_hw, ptr %713, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb23.i.i132.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %714 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i131.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %714, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb26.i.i134.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %715 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i133.i = getelementptr %struct.mdp5_cfg_hw, ptr %715, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb30.i.i136.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %716 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i135.i = getelementptr %struct.mdp5_cfg_hw, ptr %716, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb34.i.i138.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %717 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i137.i = getelementptr %struct.mdp5_cfg_hw, ptr %717, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb38.i.i140.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %718 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i139.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %718, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

sw.bb41.i.i142.i:                                 ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %719 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i141.i = getelementptr %struct.mdp5_cfg_hw, ptr %719, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC1_ADDR.exit.i

do.body45.i.i143.i:                               ; preds = %mdp5_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC1_ADDR.exit.i:                   ; preds = %sw.bb41.i.i142.i, %sw.bb38.i.i140.i, %sw.bb34.i.i138.i, %sw.bb30.i.i136.i, %sw.bb26.i.i134.i, %sw.bb23.i.i132.i, %sw.bb19.i.i130.i, %sw.bb15.i.i128.i, %sw.bb12.i.i126.i, %sw.bb8.i.i124.i, %sw.bb4.i.i122.i, %sw.bb3.i.i120.i
  %retval.0.in.i.i144.i = phi ptr [ %arrayidx44.i.i141.i, %sw.bb41.i.i142.i ], [ %base39.i.i139.i, %sw.bb38.i.i140.i ], [ %arrayidx37.i.i137.i, %sw.bb34.i.i138.i ], [ %arrayidx33.i.i135.i, %sw.bb30.i.i136.i ], [ %arrayidx29.i.i133.i, %sw.bb26.i.i134.i ], [ %base24.i.i131.i, %sw.bb23.i.i132.i ], [ %arrayidx22.i.i129.i, %sw.bb19.i.i130.i ], [ %arrayidx18.i.i127.i, %sw.bb15.i.i128.i ], [ %base13.i.i125.i, %sw.bb12.i.i126.i ], [ %arrayidx11.i.i123.i, %sw.bb8.i.i124.i ], [ %arrayidx7.i.i121.i, %sw.bb4.i.i122.i ], [ %base.i.i119.i, %sw.bb3.i.i120.i ]
  %720 = ptrtoint ptr %retval.0.in.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %retval.0.i.i145.i = load i32, ptr %retval.0.in.i.i144.i, align 4
  %add.i146.i = add i32 %retval.0.i.i145.i, 24
  %721 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %aspace.i, align 4
  %call18.i = tail call i32 @msm_framebuffer_iova(ptr noundef %fb, ptr noundef %722, i32 noundef 1) #6
  %723 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %724)
  %cmp.i148.i = icmp slt i32 %724, 1
  br i1 %cmp.i148.i, label %do.end.i149.i, label %REG_MDP5_PIPE_SRC1_ADDR.exit.i.mdp5_write.exit152.i_crit_edge, !prof !74

REG_MDP5_PIPE_SRC1_ADDR.exit.i.mdp5_write.exit152.i_crit_edge: ; preds = %REG_MDP5_PIPE_SRC1_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit152.i

do.end.i149.i:                                    ; preds = %REG_MDP5_PIPE_SRC1_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit152.i

mdp5_write.exit152.i:                             ; preds = %do.end.i149.i, %REG_MDP5_PIPE_SRC1_ADDR.exit.i.mdp5_write.exit152.i_crit_edge
  %725 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %726, i32 %add.i146.i
  tail call void @msm_writel(i32 noundef %call18.i, ptr noundef %add.ptr.i151.i) #6
  %727 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %727, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %1, label %do.body45.i.i178.i [
    i32 12, label %sw.bb41.i.i177.i
    i32 1, label %sw.bb3.i.i155.i
    i32 2, label %sw.bb4.i.i157.i
    i32 3, label %sw.bb8.i.i159.i
    i32 4, label %sw.bb12.i.i161.i
    i32 5, label %sw.bb15.i.i163.i
    i32 6, label %sw.bb19.i.i165.i
    i32 7, label %sw.bb23.i.i167.i
    i32 8, label %sw.bb26.i.i169.i
    i32 9, label %sw.bb30.i.i171.i
    i32 10, label %sw.bb34.i.i173.i
    i32 11, label %sw.bb38.i.i175.i
  ]

sw.bb3.i.i155.i:                                  ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %728 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i154.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %728, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb4.i.i157.i:                                  ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %729 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i156.i = getelementptr %struct.mdp5_cfg_hw, ptr %729, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb8.i.i159.i:                                  ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %730 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i158.i = getelementptr %struct.mdp5_cfg_hw, ptr %730, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb12.i.i161.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %731 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i160.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %731, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb15.i.i163.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %732 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i162.i = getelementptr %struct.mdp5_cfg_hw, ptr %732, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb19.i.i165.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %733 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i164.i = getelementptr %struct.mdp5_cfg_hw, ptr %733, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb23.i.i167.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %734 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i166.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %734, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb26.i.i169.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %735 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i168.i = getelementptr %struct.mdp5_cfg_hw, ptr %735, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb30.i.i171.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %736 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i170.i = getelementptr %struct.mdp5_cfg_hw, ptr %736, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb34.i.i173.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %737 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i172.i = getelementptr %struct.mdp5_cfg_hw, ptr %737, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb38.i.i175.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %738 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i174.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %738, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

sw.bb41.i.i177.i:                                 ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %739 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i176.i = getelementptr %struct.mdp5_cfg_hw, ptr %739, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC2_ADDR.exit.i

do.body45.i.i178.i:                               ; preds = %mdp5_write.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC2_ADDR.exit.i:                   ; preds = %sw.bb41.i.i177.i, %sw.bb38.i.i175.i, %sw.bb34.i.i173.i, %sw.bb30.i.i171.i, %sw.bb26.i.i169.i, %sw.bb23.i.i167.i, %sw.bb19.i.i165.i, %sw.bb15.i.i163.i, %sw.bb12.i.i161.i, %sw.bb8.i.i159.i, %sw.bb4.i.i157.i, %sw.bb3.i.i155.i
  %retval.0.in.i.i179.i = phi ptr [ %arrayidx44.i.i176.i, %sw.bb41.i.i177.i ], [ %base39.i.i174.i, %sw.bb38.i.i175.i ], [ %arrayidx37.i.i172.i, %sw.bb34.i.i173.i ], [ %arrayidx33.i.i170.i, %sw.bb30.i.i171.i ], [ %arrayidx29.i.i168.i, %sw.bb26.i.i169.i ], [ %base24.i.i166.i, %sw.bb23.i.i167.i ], [ %arrayidx22.i.i164.i, %sw.bb19.i.i165.i ], [ %arrayidx18.i.i162.i, %sw.bb15.i.i163.i ], [ %base13.i.i160.i, %sw.bb12.i.i161.i ], [ %arrayidx11.i.i158.i, %sw.bb8.i.i159.i ], [ %arrayidx7.i.i156.i, %sw.bb4.i.i157.i ], [ %base.i.i154.i, %sw.bb3.i.i155.i ]
  %740 = ptrtoint ptr %retval.0.in.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %retval.0.i.i180.i = load i32, ptr %retval.0.in.i.i179.i, align 4
  %add.i181.i = add i32 %retval.0.i.i180.i, 28
  %741 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %aspace.i, align 4
  %call21.i = tail call i32 @msm_framebuffer_iova(ptr noundef %fb, ptr noundef %742, i32 noundef 2) #6
  %743 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %744)
  %cmp.i183.i = icmp slt i32 %744, 1
  br i1 %cmp.i183.i, label %do.end.i184.i, label %REG_MDP5_PIPE_SRC2_ADDR.exit.i.mdp5_write.exit187.i_crit_edge, !prof !74

REG_MDP5_PIPE_SRC2_ADDR.exit.i.mdp5_write.exit187.i_crit_edge: ; preds = %REG_MDP5_PIPE_SRC2_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdp5_write.exit187.i

do.end.i184.i:                                    ; preds = %REG_MDP5_PIPE_SRC2_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %mdp5_write.exit187.i

mdp5_write.exit187.i:                             ; preds = %do.end.i184.i, %REG_MDP5_PIPE_SRC2_ADDR.exit.i.mdp5_write.exit187.i_crit_edge
  %745 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %746, i32 %add.i181.i
  tail call void @msm_writel(i32 noundef %call21.i, ptr noundef %add.ptr.i186.i) #6
  %747 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %747, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %do.body45.i.i213.i [
    i32 12, label %sw.bb41.i.i212.i
    i32 1, label %sw.bb3.i.i190.i
    i32 2, label %sw.bb4.i.i192.i
    i32 3, label %sw.bb8.i.i194.i
    i32 4, label %sw.bb12.i.i196.i
    i32 5, label %sw.bb15.i.i198.i
    i32 6, label %sw.bb19.i.i200.i
    i32 7, label %sw.bb23.i.i202.i
    i32 8, label %sw.bb26.i.i204.i
    i32 9, label %sw.bb30.i.i206.i
    i32 10, label %sw.bb34.i.i208.i
    i32 11, label %sw.bb38.i.i210.i
  ]

sw.bb3.i.i190.i:                                  ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %748 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i189.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %748, i32 0, i32 4, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb4.i.i192.i:                                  ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %749 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx7.i.i191.i = getelementptr %struct.mdp5_cfg_hw, ptr %749, i32 0, i32 4, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb8.i.i194.i:                                  ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %750 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx11.i.i193.i = getelementptr %struct.mdp5_cfg_hw, ptr %750, i32 0, i32 4, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb12.i.i196.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %751 = load ptr, ptr @mdp5_cfg, align 4
  %base13.i.i195.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %751, i32 0, i32 5, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb15.i.i198.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %752 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx18.i.i197.i = getelementptr %struct.mdp5_cfg_hw, ptr %752, i32 0, i32 5, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb19.i.i200.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %753 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx22.i.i199.i = getelementptr %struct.mdp5_cfg_hw, ptr %753, i32 0, i32 5, i32 1, i32 2
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb23.i.i202.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %754 = load ptr, ptr @mdp5_cfg, align 4
  %base24.i.i201.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %754, i32 0, i32 6, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb26.i.i204.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %755 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx29.i.i203.i = getelementptr %struct.mdp5_cfg_hw, ptr %755, i32 0, i32 6, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb30.i.i206.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %756 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx33.i.i205.i = getelementptr %struct.mdp5_cfg_hw, ptr %756, i32 0, i32 4, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb34.i.i208.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %757 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx37.i.i207.i = getelementptr %struct.mdp5_cfg_hw, ptr %757, i32 0, i32 5, i32 1, i32 3
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb38.i.i210.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %758 = load ptr, ptr @mdp5_cfg, align 4
  %base39.i.i209.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %758, i32 0, i32 7, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

sw.bb41.i.i212.i:                                 ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %759 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx44.i.i211.i = getelementptr %struct.mdp5_cfg_hw, ptr %759, i32 0, i32 7, i32 1, i32 1
  br label %REG_MDP5_PIPE_SRC3_ADDR.exit.i

do.body45.i.i213.i:                               ; preds = %mdp5_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !80
  unreachable

REG_MDP5_PIPE_SRC3_ADDR.exit.i:                   ; preds = %sw.bb41.i.i212.i, %sw.bb38.i.i210.i, %sw.bb34.i.i208.i, %sw.bb30.i.i206.i, %sw.bb26.i.i204.i, %sw.bb23.i.i202.i, %sw.bb19.i.i200.i, %sw.bb15.i.i198.i, %sw.bb12.i.i196.i, %sw.bb8.i.i194.i, %sw.bb4.i.i192.i, %sw.bb3.i.i190.i
  %retval.0.in.i.i214.i = phi ptr [ %arrayidx44.i.i211.i, %sw.bb41.i.i212.i ], [ %base39.i.i209.i, %sw.bb38.i.i210.i ], [ %arrayidx37.i.i207.i, %sw.bb34.i.i208.i ], [ %arrayidx33.i.i205.i, %sw.bb30.i.i206.i ], [ %arrayidx29.i.i203.i, %sw.bb26.i.i204.i ], [ %base24.i.i201.i, %sw.bb23.i.i202.i ], [ %arrayidx22.i.i199.i, %sw.bb19.i.i200.i ], [ %arrayidx18.i.i197.i, %sw.bb15.i.i198.i ], [ %base13.i.i195.i, %sw.bb12.i.i196.i ], [ %arrayidx11.i.i193.i, %sw.bb8.i.i194.i ], [ %arrayidx7.i.i191.i, %sw.bb4.i.i192.i ], [ %base.i.i189.i, %sw.bb3.i.i190.i ]
  %760 = ptrtoint ptr %retval.0.in.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %retval.0.i.i215.i = load i32, ptr %retval.0.in.i.i214.i, align 4
  %761 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %aspace.i, align 4
  %call24.i = tail call i32 @msm_framebuffer_iova(ptr noundef %fb, ptr noundef %762, i32 noundef 3) #6
  %763 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %764)
  %cmp.i218.i = icmp slt i32 %764, 1
  br i1 %cmp.i218.i, label %do.end.i219.i, label %REG_MDP5_PIPE_SRC3_ADDR.exit.i.set_scanout_locked.exit_crit_edge, !prof !74

REG_MDP5_PIPE_SRC3_ADDR.exit.i.set_scanout_locked.exit_crit_edge: ; preds = %REG_MDP5_PIPE_SRC3_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_scanout_locked.exit

do.end.i219.i:                                    ; preds = %REG_MDP5_PIPE_SRC3_ADDR.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #6
  br label %set_scanout_locked.exit

set_scanout_locked.exit:                          ; preds = %do.end.i219.i, %REG_MDP5_PIPE_SRC3_ADDR.exit.i.set_scanout_locked.exit_crit_edge
  %add.i216.i = add i32 %retval.0.i.i215.i, 32
  %765 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i221.i = getelementptr i8, ptr %766, i32 %add.i216.i
  tail call void @msm_writel(i32 noundef %call24.i, ptr noundef %add.ptr.i221.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_default_csc_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_iova(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_ctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 947, i32 6}
!2 = !{ptr @mdp5_plane_funcs, !3, !"mdp5_plane_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 133, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 72, i32 16}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 73, i32 27}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 75, i32 17}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 78, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 79, i32 16}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 80, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 81, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 82, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 183, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 183, i32 23}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 184, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 184, i32 17}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 184, i32 31}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 185, i32 3}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 185, i32 17}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 185, i32 31}
!36 = !{ptr @stage2name.names, !37, !"names", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 181, i32 21}
!38 = !{ptr @mdp5_plane_helper_funcs, !39, !"mdp5_plane_helper_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 439, i32 44}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 153, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 172, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 197, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 280, i32 5}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 337, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 879, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 915, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 571, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 594, i32 3}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 169, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 702, i32 3}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c", i32 709, i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i8 0, i8 2}
!76 = !{!77}
!77 = distinct !{!77, !78, !"drm_plane_state_src: %agg.result"}
!78 = distinct !{!78, !"drm_plane_state_src"}
!79 = !{i64 2157206729, i64 2157207234, i64 2157206766, i64 2157206822, i64 2157206856, i64 2157206880, i64 2157206921, i64 2157206942, i64 2157206970, i64 2157207004}
!80 = !{i64 2157208284, i64 2157208789, i64 2157208321, i64 2157208377, i64 2157208411, i64 2157208435, i64 2157208476, i64 2157208497, i64 2157208525, i64 2157208559}
!81 = !{i64 2157226003, i64 2157226508, i64 2157226040, i64 2157226096, i64 2157226130, i64 2157226154, i64 2157226195, i64 2157226216, i64 2157226244, i64 2157226278}
